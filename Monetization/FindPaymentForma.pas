unit FindPaymentForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls;

type
  TFindPayment = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    TextLsT: TEdit;
    TextFmT: TEdit;
    TextImT: TEdit;
    TextOtT: TEdit;
    TextCityT: TEdit;
    TextStritT: TEdit;
    TextDomT: TEdit;
    TextKorpT: TEdit;
    TextSumT: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    ButFlt: TSpeedButton;
    ButPrn: TSpeedButton;
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    TabResFind: TDBGrid;
    SumZnakList: TComboBox;
    Mes1: TComboBox;
    Mes2: TComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText12: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    Label29: TLabel;
    Label30: TLabel;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    Label35: TLabel;
    ButPrnSpr: TSpeedButton;
    procedure ButFltClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButPrnSprClick(Sender: TObject);
    procedure ButPrnClick(Sender: TObject);
    procedure TabResFindCellClick(Column: TColumn);
    procedure TabResFindEnter(Sender: TObject);
    procedure TabResFindDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindPayment: TFindPayment;

implementation

uses BazaForma, MainForma, ProcessFindForma, ReportingForma;

{$R *.dfm}

procedure TFindPayment.ButFltClick(Sender: TObject);
Var S,SC : String;
begin
  main.log('Поиск по реквизитам');
  If Length(Trim(TextLst.Text))=0 then begin
    if UserWorc.URD>0 then begin
      main.Log('Для поиска не указан ЛС проврка введенных реквизитов');
      if Length(Trim(TextFmT.Text))=0 then begin
        Main.Mes('Необходимо указать фамилию',Mb_Ok+Mb_IconInformation);
        TextFmT.SetFocus;
        Exit;
      end;
      if Length(Trim(TextImT.Text))=0 then begin
        Main.Mes('Необходимо указать имя',Mb_Ok+Mb_IconInformation);
        TextImT.SetFocus;
        Exit;
      end;
      if Length(Trim(TextOtT.Text))=0 then begin
        Main.Mes('Необходимо указать отчество',Mb_Ok+Mb_IconInformation);
        TextOtT.SetFocus;
        Exit;
      end;
      if Length(Trim(TextCityT.Text))=0 then begin
        Main.Mes('Необходимо указать населенный пункт',Mb_Ok+Mb_IconInformation);
        TextCityT.SetFocus;
        Exit;
      end;
      if Length(Trim(TextStritT.Text))=0 then begin
        Main.Mes('Необходимо указать улицу',Mb_Ok+Mb_IconInformation);
        TextStritT.SetFocus;
        Exit;
      end;
      if Length(Trim(TextDomT.Text))=0 then begin
        Main.Mes('Необходимо указать дом',Mb_Ok+Mb_IconInformation);
        TextDomT.SetFocus;
        Exit;
      end;
    end;
  end;
  S:='';
  main.Log('Параметры определены, поиск начат');
  If Length(Trim(TextLst.Text))>0 then S:=S+'(V.NLS='''+Trim(TextLsT.Text)+''') AND ';
  If Length(Trim(TextSumT.Text))>0 then S:=S+'(V.SMVYP'+SumZnakList.text+TextSumT.Text+') AND ';
  If Length(Trim(TextFmT.Text))>0 then S:=S+'(V.FM LIKE ''%'+TextFmT.Text+'%'') AND ';
  If Length(Trim(TextImT.Text))>0 then S:=S+'(V.IM LIKE ''%'+TextImT.Text+'%'') AND ';
  If Length(Trim(TextOtT.Text))>0 then S:=S+'(V.OT LIKE ''%'+TextOtT.Text+'%'') AND ';
  if Length(Trim(TextCityT.Text))>0 then S:=S+'(V.CITY LIKE ''%'+TextCityT.Text+'%'') AND ';
  if Length(Trim(TextStritT.Text))>0 then S:=S+'(V.STRIT LIKE ''%'+TextStritT.Text+'%'') AND ';
  if Length(Trim(TextDomT.Text))>0 then S:=S+'(V.DOM LIKE ''%'+TextDomT.Text+'%'') AND ';
  if Length(Trim(TextKorpT.Text))>0 then S:=S+'(V.KORP LIKE ''%'+TextKorpT.Text+'%'') AND ';
  S:=S+'(CAST(V.MES as Int)>='+Copy(Mes1.Text,1,2)+') AND (CAST(V.MES as Int)<='+Copy(Mes2.Text,1,2)+') AND ';
  S:=S+'(CAST(V.GOD as Int)>='+Copy(Mes1.Text,4,4)+') AND (CAST(V.GOD as Int)<='+Copy(Mes2.Text,4,4)+')';
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Поиск выплаты');
  with baza.SQL_FIND do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SET LANGUAGE Italian;');
    SQL.Add('SELECT CAST(V.DTR as DATE), * FROM V_MONETY_ALL V WHERE '+S+' ORDER BY V.ID');
    main.Log(SQL.Text);
    Active:=true;
    main.log('Поиск по реквизитам заврешен. Найдено: '+IntToStr(baza.SQL_FIND.RecordCount));
  end;
  TabResFind.SetFocus;
end;

procedure TFindPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Baza.SQL_PERIOD.Active:=false;
  Baza.SQL_FIND.Active:=false;
  main.Log('Форма поиска выплат закрыта');
  FindPayment.Free;
end;

procedure TFindPayment.FormCreate(Sender: TObject);
begin
  main.Log('Открыта форма поиска выплат');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  with Baza.SQL_PERIOD do begin
    Active:=false;
    Active:=true;
    First;
    Mes1.Items.Clear;
    while not EOF do begin
      Mes1.Items.add(Baza.SQL_PERIODMES.AsString+'-'+baza.SQL_PERIODGOD.AsString);
      Next;
    end;
    Active:=false;
    Mes2.Items.AddStrings(Mes1.Items);
    Mes1.ItemIndex:=0;
    Mes2.ItemIndex:=Mes2.Items.Count-1;
  end;
end;

procedure TFindPayment.ButPrnSprClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать справки по ЛС '+Trim(baza.SQL_FINDNLS.AsString));
  with baza.SP_SPRAV_LS do begin
    Active:=false;
    Parameters[1].Value:=baza.SQL_FINDNLS.Value;
    parameters[2].Value:=UserWorc.ID;
    Active:=true;
    Reporting.RepLS.PreviewModal;
    Active:=false;
  end;
end;

procedure TFindPayment.ButPrnClick(Sender: TObject);
Var S,SC : String;
begin
  If Length(Trim(TextLst.Text))>0 then S:=S+'(V.NLS='''+Trim(TextLsT.Text)+''') AND ';
  If Length(Trim(TextSumT.Text))>0 then S:=S+'(V.SMVYP'+SumZnakList.text+TextSumT.Text+') AND ';
  If Length(Trim(TextFmT.Text))>0 then S:=S+'(V.FM LIKE ''%'+TextFmT.Text+'%'') AND ';
  If Length(Trim(TextImT.Text))>0 then S:=S+'(V.IM LIKE ''%'+TextImT.Text+'%'') AND ';
  If Length(Trim(TextOtT.Text))>0 then S:=S+'(V.OT LIKE ''%'+TextOtT.Text+'%'') AND ';
  if Length(Trim(TextCityT.Text))>0 then S:=S+'(V.CITY LIKE ''%'+TextCityT.Text+'%'') AND ';
  if Length(Trim(TextStritT.Text))>0 then S:=S+'(V.STRIT LIKE ''%'+TextStritT.Text+'%'') AND ';
  if Length(Trim(TextDomT.Text))>0 then S:=S+'(V.DOM LIKE ''%'+TextDomT.Text+'%'') AND ';
  if Length(Trim(TextKorpT.Text))>0 then S:=S+'(V.KORP LIKE ''%'+TextKorpT.Text+'%'') AND ';
  S:=S+'(CAST(V.MES as Int)>='+Copy(Mes1.Text,1,2)+') AND (CAST(V.MES as Int)<='+Copy(Mes2.Text,1,2)+') AND ';
  S:=S+'(CAST(V.GOD as Int)>='+Copy(Mes1.Text,4,4)+') AND (CAST(V.GOD as Int)<='+Copy(Mes2.Text,4,4)+')';
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать реестра по вылатамм ЛС');
  with Reporting.SQL_FIND_GR do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SET LANGUAGE Italian;');
    SQL.Add('SELECT ID,NLS,FM,IM,OT, CAST(V.DTR as DATE) DTR,PSR,PNM,NUMLIST,SMVYP,PAID,OPISANIE,GOD,MES,DATLIST FROM V_MONETY_ALL V WHERE '+S+' GROUP BY ID,NLS,FM,IM,OT, CAST(V.DTR as DATE),PSR,PNM,NUMLIST,SMVYP,PAID,OPISANIE,GOD,MES,DATLIST ORDER BY V.ID');
    //ShowMessage(SQL.Text);
    Active:=true;
    main.log('Поиск по реквизитам заврешен. Найдено: '+IntToStr(baza.SQL_FIND.RecordCount));
  end;

  Reporting.RepFindReestr.PreviewModal;
end;

procedure TFindPayment.TabResFindCellClick(Column: TColumn);
begin
  if (baza.SQL_FIND.Active=true) and (baza.SQL_FIND.RecordCount>0) then begin
    GroupBox1.Visible:=true;
    ButPrn.Enabled:=true;
  end else begin
    GroupBox1.Visible:=false;
    ButPrn.Enabled:=false;
  end;
end;

procedure TFindPayment.TabResFindEnter(Sender: TObject);
begin
  if (baza.SQL_FIND.Active=true) and (baza.SQL_FIND.RecordCount>0) then begin
    GroupBox1.Visible:=true;
    ButPrn.Enabled:=true;
  end else begin
    GroupBox1.Visible:=false;
    ButPrn.Enabled:=false;
  end;
end;

procedure TFindPayment.TabResFindDblClick(Sender: TObject);
begin
  if (baza.SQL_FIND.Active=true) and (baza.SQL_FIND.RecordCount>0) then begin
    GroupBox1.Visible:=true;
    ButPrn.Enabled:=true;
  end else begin
    GroupBox1.Visible:=false;
    ButPrn.Enabled:=false;
  end;
end;

end.
