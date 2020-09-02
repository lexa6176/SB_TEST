unit NoPayPricinaForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TNoPayPricina = class(TForm)
    NoDeliveryGroup: TRadioGroup;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ButNoDeliver: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ButNoDeliverClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NoPayPricina: TNoPayPricina;

implementation

uses BazaForma, MainForma, ListForma, NonpaymentForma;

{$R *.dfm}

procedure TNoPayPricina.FormShow(Sender: TObject);
begin
  with baza.SQL_SPR_NO_DELIVERY do begin
    Active:=false;
    Active:=true;
    First;
    NoDeliveryGroup.Items.Clear;
    while not EOF do begin
      NoDeliveryGroup.Items.Add(Trim(Baza.SQL_SPR_NO_DELIVERYOpisanie.Value)+' ('+Trim(baza.SQL_SPR_NO_DELIVERYPARAMVALUE.AsString)+')');
      if Baza.SQL_SPR_NO_DELIVERYDEF.Value=1 then NoDeliveryGroup.ItemIndex:=NoDeliveryGroup.Items.Count-1;
      Next;
    end;
    if RecordCount>=6 then NoDeliveryGroup.Columns:=2 else NoDeliveryGroup.Columns:=1;
  end;
end;

procedure TNoPayPricina.ButNoDeliverClick(Sender: TObject);
var I1,I2 :integer;
begin
  IF List1=3 then begin
     main.Log('Выбор причины массовой неоплаты не оплаты ');
    I1:=POS('(',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])+1;
    I2:=POS(')',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])-POS('(',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])-1 ;
    IdAllNoPay:=StrToInt(Copy(NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex],I1,I2));
    NoPayPricina.Close;
  end else begin
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Отметка невыплаты ЛС : '+Trim(baza.SQL_LIST_LSNLS.AsString)+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
    if TypNoDel=false then main.Log('Отметка причины не оплаты ЛС: '+Trim(baza.SQL_LIST_LSNLS.AsString))
      else main.Log('Отметка причины не оплаты ЛС: '+Trim(baza.SP_FIND_NOPAYNLS.AsString));
    with baza.SP_MONETY_UPD do begin
      if TypNoDel=false then Parameters[1].Value:=Baza.sql_List_LsId.Value else Parameters[1].Value:=baza.SP_FIND_NOPAYID.Value;
      Parameters[2].Value:=3;
      Parameters[3].Value:=0;
      I1:=POS('(',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])+1;
      I2:=POS(')',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])-POS('(',NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex])-1 ;
      Parameters[4].Value:=StrToInt(Copy(NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex],I1,I2));
      Parameters[5].Value:=UserWorc.ID;
      Parameters[6].Value:=0;
      main.Log('Выбрана причина '+NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex]+' Код '+Copy(NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex],I1,I2));
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Причина не оплаты '+NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex]+' Код '+Copy(NoDeliveryGroup.Items[NoDeliveryGroup.ItemIndex],I1,I2));
      ExecProc;
      if Parameters[0].Value=0 then NoPayPricina.Close else main.Mes('Ошибка отметки не оплаты ЛС '+Trim(baza.SQL_LIST_LSNLS.AsString),Mb_Ok+MB_IconError);
    end;
    main.Log('Отметка причны не оплаты выполнена');
  end;
end;

procedure TNoPayPricina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if List1=1 then begin
    with Baza.SP_FIND_NOPAY do begin
      Active:=false;
      Parameters[1].Value:=Nonpayment.textLsT.Text;
      Active:=true;
      if RecordCount=0 then begin
        Nonpayment.TextLsT.Text:='';
        Nonpayment.TextLsT.setFocus;
      end else
        Nonpayment.LsTable.SetFocus;
    end;
  end;
  if List1=2 then begin
    ID:=Baza.SQL_LIST_LSID.Value;
    baza.SQL_LIST_LS.Active:=false;
    Baza.SQL_LIST_LS.Parameters[0].Value:=Baza.SQL_LISTID.Value;
    baza.SQL_LIST_LS.Active:=true;
    baza.SQL_LIST_LS.Locate('ID',ID,[]);
    with List do begin
    {  with baza.SP_LIST_ITOGI do begin
        Parameters[1].value:=Baza.SQL_LISTID.Value;
        ExecProc;
        if Parameters[0].Value=0 then begin
          if Parameters[4].Value = 0 then Label14.Caption:=''
            else Label14.Caption:=Parameters[4].Value;
          if LenGth(Trim(VarToStr(Parameters[5].Value))) = 0 then Label16.Caption:=''
            else Label16.Caption:=CurrToStr(Parameters[5].Value);
          if Parameters[6].Value = 0 then Label15.Caption:=''
            else Label15.Caption:=Parameters[6].Value;
          if LenGth(Trim(VarToStr(Parameters[7].Value))) = 0 then Label17.Caption:=''
            else Label17.Caption:=CurrToStr(Parameters[7].Value);
        end;
      end;}
      TableListLs.SetFocus;
    end;
  end;
  List1:=0;
  main.Log('Форма указания причин закрыта');
end;

procedure TNoPayPricina.FormCreate(Sender: TObject);
begin
  main.Log('Открыта форма указания причины не оплаты');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
end;

end.
