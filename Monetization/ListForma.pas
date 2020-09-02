unit ListForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Gauges, Menus;

type
  TList = class(TForm)
    StatusBar1: TStatusBar;
    PanelBut: TPanel;
    PanelFiltr: TPanel;
    ButListCreate: TSpeedButton;
    ButFltr: TSpeedButton;
    Panel1: TPanel;
    TableList: TDBGrid;
    PanelItogoList: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Panel2: TPanel;
    TableListLs: TDBGrid;
    PanelLs: TPanel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ButListPrn: TSpeedButton;
    ButAllListPrn: TSpeedButton;
    ButNoDeliv: TSpeedButton;
    ButListDel: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CheckBoxCr: TCheckBox;
    CheckBoxPrn: TCheckBox;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    TextOpsT: TEdit;
    TextNumT: TEdit;
    Label10: TLabel;
    DBText8: TDBText;
    CheckBoxDel: TCheckBox;
    ButListClose: TSpeedButton;
    CheckBoxCl: TCheckBox;
    ButListCloseAll: TSpeedButton;
    Label11: TLabel;
    DBText9: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    textLsT: TEdit;
    Process: TGauge;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ButSpListPrn: TSpeedButton;
    Panel4: TPanel;
    PmList: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PopLS: TPopupMenu;
    N3: TMenuItem;
    procedure ButListCreateClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButFltrClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TableListCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure TableListEnter(Sender: TObject);
    procedure TableListDblClick(Sender: TObject);
    procedure TableListKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButListDelClick(Sender: TObject);
    procedure ButNoDelivClick(Sender: TObject);
    procedure ButListCloseClick(Sender: TObject);
    procedure ButListPrnClick(Sender: TObject);
    procedure TableListLsCellClick(Column: TColumn);
    procedure TableListLsDblClick(Sender: TObject);
    procedure TableListLsEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ButListCloseAllClick(Sender: TObject);
    procedure textLsTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButAllListPrnClick(Sender: TObject);
    procedure ButSpListPrnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  List  : TList;
  ID    : Int64;
implementation

uses BazaForma, MainForma, RegistryForOpsForma, ReportingForma,
  NoPayPricinaForma, ProcessLoadForma;

{$R *.dfm}

procedure TList.ButListCreateClick(Sender: TObject);
begin
  List1:=1;
  RegistryForOps:=TRegistryForOps.Create(Owner);
  //RegistryForOps.ShowModal;
end;

procedure TList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Reporting.SQL_LIST_P.Active:=false;
  baza.SP_LIST_PRNP.active:=false;
  baza.SQL_LIST_LS.active:=false;
  baza.SQL_LIST.Active:=false;
  List1:=0;
  List.Free;
end;

procedure TList.ButFltrClick(Sender: TObject);
VAR S,SC : String;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Поиск ведомостей');
  If (baza.SQL_LIST.Active=true) and (baza.SQL_LIST.RecordCount>0) then
    ID:=baza.SQL_LIST.RecNo
  else ID:=0;
//  main.Log(IntToStr(ID));
  S:=''; SC:='';
  If (CheckBoxDel.Checked=true) then SC:=SC+'0,';
  If (CheckBoxCr.Checked=true) then SC:=SC+'1,';
  If (CheckBoxPrn.Checked=true) then SC:=SC+'2,';
  If (CheckBoxCl.Checked=true) then SC:=SC+'3,';
  if length(SC)=0 then begin
    Main.Mes('Необходимо укзать состояние ведомости',Mb_OK+Mb_IconError );
    Exit;
  end;
  Delete(SC,length(SC),1);
  If Length(Trim(TextOpst.Text))>0 then begin
    with baza.SP_CHEK do begin
      main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
      Parameters[1].Value:=1;
      Parameters[2].Value:=TextOpsT.Text;
      ExecProc;
      if Parameters[0].Value=0 then
        If Parameters[3].Value=0 then begin
          main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation) ;
          Exit;
        end;
    end;
    S:=S+'(INDOPS LIKE ''%'+Trim(TextOpsT.Text)+'%'') AND ';
  end;
  if Length(Trim(TextNumt.Text))>0 then S:=S+'(NUMLIST='+Trim(TextNumT.Text)+') AND ';
  S:=S+'(DATLIST>='''+FormatDateTime('dd.mm.yyyy',D1.date)+''') AND (DATLIST<='''+FormatDateTime('dd.mm.yyyy',D2.date)+''') AND';
  S:=S+' (IDSTATUS IN ('+SC+'))';
  with baza.SQL_LIST do begin
   Active:=false;
   SQL.Clear;
   SQL.Add('SET LANGUAGE russian;');
   SQL.Add('SELECT * FROM V_LIST_ALL TL ');
  // SQL.Add('SELECT * FROM TAB_LIST TL ');
  // SQL.Add('LEFT JOIN (');
  // SQL.Add('SELECT MAX(LS.ID) ID,LS.IDLIST, LS.IDSTATUS FROM TAB_LIST_STATUS LS GROUP BY LS.IDLIST,LS.IDSTATUS ');
  // SQL.Add(') as TLS on TLS.IDLIST=TL.ID and TLS.IDSTATUS=TL.STATUSL');
   SQL.Add('WHERE '+S);
   SQL.Add('ORDER BY TL.INDOPS, TL.NUMLIST');
   SQL.SaveToFile('S.txt');
   Active:=true;
  end;
  If ID>0 then Baza.SQL_LIST.locate('ID',ID,[]);
  //If ID>0 then Baza.SQL_LIST.RecNo:=ID;
 // if not Baza.SQL_LIST.Locate('ID',ID,[]) then ShowMessage(IntToStr(ID));
end;

procedure TList.FormCreate(Sender: TObject);
begin
  main.Log('Открыта форма работы с ведомостями');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  D1.Date:=Date();
  D2.Date:=date();
  textOpst.Text:='';
  TextNumT.Text:='';
  ButListCreate.Caption:='Создать'+#13+'ведомости';
  ButListCloseAll.Caption:='Закрыть'+#13+'все';
  If UserWorc.URD=0 then TableList.PopupMenu:=PmList
  else TableList.PopupMenu:=nil;
  
end;

procedure TList.TableListCellClick(Column: TColumn);
begin
  if (baza.SQL_LIST.RecordCount>0) and (baza.SQL_LIST.Active=true) then begin
    ButSpListPrn.Enabled:=true;
{    with baza.SP_LIST_ITOGI do begin
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
    end; }
    ButListCloseAll.Enabled:=true;
    ButAllListPrn.Enabled:=true;
    Case baza.SQL_LISTIDSTATUS.Value of
      1: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=true;
      end;
      2: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=true;
        ButListDel.Enabled:=false;
      end;
      0,3: begin
        ButListPrn.Enabled:=false;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=false;

      end;
    end;
    baza.SQL_LIST_LS.Active:=false;
    Baza.SQL_LIST_LS.Parameters[0].Value:=Baza.SQL_LISTID.Value;
    baza.SQL_LIST_LS.Active:=true;
    if baza.SQL_LISTIDSTATUS.Value=3 then PmList.Items[0].Visible:=true else  PmList.Items[0].Visible:=false;
    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
        end;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
        end;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
          Caption:='Отметить не оплату';
      end;
    end;

   { if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
      if baza.SQL_LIST_LSSTATUSP.Value=2 then ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
    else ButNoDeliv.Enabled:=false;  }
  end else begin
    ButListCreate.Enabled:=true;
    ButListPrn.Enabled:=false;
    ButAllListPrn.Enabled:=false;
    ButListDel.Enabled:=false;
    ButListClose.Enabled:=false;
    ButListCloseAll.Enabled:=false;
    ButNoDeliv.Enabled:=false;
    ButSpListPrn.Enabled:=false;
  end;

end;

procedure TList.FormShow(Sender: TObject);
begin
  ButFltr.Click;
  TableList.SetFocus;
 // TableList.OnEnter(Sender);
end;

procedure TList.TableListEnter(Sender: TObject);
begin
  if (baza.SQL_LIST.RecordCount>0) and (baza.SQL_LIST.Active=true) then begin
    ButSpListPrn.Enabled:=true;
{    with baza.SP_LIST_ITOGI do begin
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
    end;   }
    ButListCloseAll.Enabled:=true;
    ButAllListPrn.Enabled:=true;
    Case baza.SQL_LISTIDSTATUS.Value of
      1: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=true;
      end;
      2: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=true;
        ButListDel.Enabled:=false;
      end;
      0,3: begin
        ButListPrn.Enabled:=false;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=false;
      end;
    end;
    baza.SQL_LIST_LS.Active:=false;
    Baza.SQL_LIST_LS.Parameters[0].Value:=Baza.SQL_LISTID.Value;
    baza.SQL_LIST_LS.Active:=true;

    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
        end;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
        end;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
          Caption:='Отметить не оплату';
      end;
    end;

   { if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
      if baza.SQL_LIST_LSSTATUSP.Value=2 then ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
    else ButNoDeliv.Enabled:=false; }
  end else begin
    ButListCreate.Enabled:=true;
    ButListPrn.Enabled:=false;
    ButAllListPrn.Enabled:=false;
    ButListDel.Enabled:=false;
    ButListClose.Enabled:=false;
    ButListCloseAll.Enabled:=false;
    ButNoDeliv.Enabled:=false;
    ButSpListPrn.Enabled:=false;
  end;
end;

procedure TList.TableListDblClick(Sender: TObject);
begin
  if (baza.SQL_LIST.RecordCount>0) and (baza.SQL_LIST.Active=true) then begin
    ButSpListPrn.Enabled:=true;
{    with baza.SP_LIST_ITOGI do begin
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
    end;   }
    ButListCloseAll.Enabled:=true;
    ButAllListPrn.Enabled:=true;
    Case baza.SQL_LISTIDSTATUS.Value of
      1: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=true;
      end;
      2: begin
        ButListPrn.Enabled:=true;
        ButListClose.Enabled:=true;
        ButListDel.Enabled:=false;
      end;
      0,3: begin
        ButListPrn.Enabled:=false;
        ButListClose.Enabled:=false;
        ButListDel.Enabled:=false;
      end;
    end;
    baza.SQL_LIST_LS.Active:=false;
    Baza.SQL_LIST_LS.Parameters[0].Value:=Baza.SQL_LISTID.Value;
    baza.SQL_LIST_LS.Active:=true;

    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
        end;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
        end;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
          Caption:='Отметить не оплату';
      end;
    end;


   { if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
      if baza.SQL_LIST_LSSTATUSP.Value=2 then ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
    else ButNoDeliv.Enabled:=false;  }
  end else begin
    ButListCreate.Enabled:=true;
    ButListPrn.Enabled:=false;
    ButAllListPrn.Enabled:=false;
    ButListDel.Enabled:=false;
    ButListClose.Enabled:=false;
    ButListCloseAll.Enabled:=false;
    ButNoDeliv.Enabled:=false;
    ButSpListPrn.Enabled:=false;
  end;
end;

procedure TList.TableListKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TableList.OnEnter(Sender);
    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
        end;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
        end;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
          Caption:='Отметить не оплату';
      end;
    end;
end;

procedure TList.ButListDelClick(Sender: TObject);
Var ID : int64;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Удаление ведомости');
  main.Log('Удаление ведомсоти ОПС '+Trim(Baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString));
  with baza.SP_LIST_UPD do begin
    Parameters[1].Value:=Baza.SQL_LISTID.Value*-1;
    Parameters[3].Value:=0;
    Parameters[3].Value:=UserWorc.ID;
    ExecProc;
    ButFltr.Click;
  end;
end;

procedure TList.ButNoDelivClick(Sender: TObject);
Var I,ILS: Int64;
begin
  AllNoPay:=false;
  I:=Baza.SQL_LISTID.Value;
  ILS:=baza.SQL_LIST_LSID.Value;
  if Baza.sql_List_lsStatusP.Value=2 then begin
    List1:=2;
    TypNoDel:=false;
    NoPayPricina.ShowModal;
  end else begin
    If main.Mes('Выполнить возврат не коректно проведнной не оплаты  ЛС: '+Trim(baza.SQL_LIST_LSNLS.AsString),Mb_YesNo+MB_IconQuestion)=IdNo then Exit;
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Возврат не коректно проведнной не оплаты  ЛС: '+Trim(baza.SQL_LIST_LSNLS.AsString)+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
    with baza.SP_MONETY_UPD do begin
       Parameters[1].Value:=Baza.sql_List_LsId.Value;
       Parameters[2].Value:=-3;
       Parameters[3].Value:=null;
       Parameters[4].Value:=null;
       Parameters[5].Value:=UserWorc.ID;
       Parameters[6].Value:=0;
       ExecProc;
    end;
    with baza.sql_list_LS do begin
      Active:=false;
      Active:=true;
      Locate('ID',ILS,[]);
    end;
  end;
  with Baza.SQL_LIST do begin
    Active:=false;
    Active:=true;
    Locate('ID',I,[]);
  end;
end;

procedure TList.ButListCloseClick(Sender: TObject);
begin
  if main.Mes('Вы действительно хотите закрыть ведомость:'+#13+'ОПС: '+Trim(baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString),Mb_YesNo+Mb_IconQuestion) = idNo then Exit;
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Зарытие ведомости '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
  main.Log('Закрытие ведомости ОПС '+trim(baza.SQL_LISTINDOPS.asstring)+' №'+trim(baza.SQL_LISTNUMLIST.AsString));
  with baza.SQL_LIST_LS do begin
    First;
    main.Log('Отметка всех записей не отмеченных ЛС а ведомсти как оплаченных');
    while not Eof do begin
      if baza.SQL_LIST_LSStatusP.Value=2 then begin
        with baza.SP_MONETY_UPD do begin
          Parameters[1].Value:=Baza.sql_List_LsId.Value;
          Parameters[2].Value:=3;
          Parameters[3].Value:=1;
          Parameters[4].Value:=null;
          Parameters[5].Value:=UserWorc.ID;
          Parameters[6].Value:=0;
          ExecProc;
        end;
      end;
      Next;
    end;
    main.Log('Отметка ЛС завершена. Обработано '+IntToStr(baza.SQL_LIST_LS.RecordCount));
  end;
  with baza.SP_LIST_UPD do begin
    Parameters[1].Value:=Baza.SQL_LISTID.Value;
    Parameters[2].Value:=3;
    Parameters[3].Value:=UserWorc.ID;
    ExecProc;
    If Parameters[0].Value=0 then begin
      main.Log('Ведомость закрыта');
    end else begin
      main.Mes('Ошибка закрытия ведомости',Mb_ok+Mb_iconInformation);
    end;
  end;
  ButFltr.Click;
  TableList.SetFocus;
end;

procedure TList.ButListPrnClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
  main.Log('Начало печать ведомости ');
  TypePrn:=false;
  if baza.SQL_LISTIDSTATUS.Value=3 then begin
    main.Mes('Нельзя печать закрытую ведомсть',Mb_Ok+Mb_iconError);
    exit;
  end;
  with baza.SP_LIST_PRNP do begin
    Active:=false;
    Parameters[1].Value:=Baza.SQL_LISTID.Value;
    main.Log(IntTostr(baza.sql_listId.Value));
    Active:=true;
    with baza.SP_LIST_TYP do begin
      execproc;
      if Parameters[0].Value=0 then begin
        if Parameters[1].Value=2 then begin
          try
            with Reporting.SQL_LIST_LS_P do begin
              Active:=false;
              sql.Text:='';
              SQL.Add('SET LANGUAGE russian;');
              sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
              sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
              sql.Add('RTRIM(LTRIM(DOM))+'' КОРП ''+RTRIM(LTRIM(KORP))DOM ,KORP,SMVYP,STATUSP,REASON,');
              sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LISTID.AsString );
              sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
              sql.Add('ORDER BY STRIT,DOM,KORP,CAST(KVR as Int)');
              main.Log(sql.Text);
              Active:=true;
            end;
          except
            main.Log('Квартрира содржит символ отключен режим сортировки');
            main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартира содржит символ отключен режим сортровки');
            with Reporting.SQL_LIST_LS_P do begin
              Active:=false;
              sql.Text:='';
              SQL.Add('SET LANGUAGE russian;');
              sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
              sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
              sql.Add('RTRIM(LTRIM(DOM))+'' КОРП ''+RTRIM(LTRIM(KORP))DOM,KORP,SMVYP,STATUSP,REASON,');
              sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LISTID.AsString );
              sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
              sql.Add('ORDER BY STRIT,DOM,KORP,(KVR)');
              main.Log(sql.Text);
              Active:=true;
            end;
          end;
          baza.SQL_LIST_LS_PRN.Active:=false;
          Baza.SQL_LIST_LS_PRN.Parameters[0].Value:=Baza.SQL_LISTID.Value;
          baza.SQL_LIST_LS_PRN.Active:=true;
          main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
          reporting.QRLabel231.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
          reporting.RepList2.PreviewModal;
        end else begin
          with Reporting.SQL_LIST_LS_P do begin
            Active:=false;
            try
              with SQL do begin
                Text:='';
                Add('SET LANGUAGE russian;');
                Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LISTID.AsString );
                Add('ORDER BY DOM,KORP,CAST(KVR as Int)');
              end;
              Active:=true;
            except
              main.Log('Квартрира содржит симвволы отключен режим сортровки');
              main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартрира содржит символ отключен режим сортровки');
              Active:=false;
              with SQL do begin
                Text:='';
                Add('SET LANGUAGE russian;');
                Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LISTID.AsString );
                Add('ORDER BY DOM,KORP,(KVR)');
              end;
              Active:=true;
            end;
          end;
          baza.SQL_LIST_LS_PRN.Active:=false;
          Baza.SQL_LIST_LS_PRN.Parameters[0].Value:=Baza.SQL_LISTID.Value;
          baza.SQL_LIST_LS_PRN.Active:=true;
          reporting.QRLabel69.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
          reporting.RepList.PreviewModal;
        end;
      end;
    end;
  end;
  main.Log('Печать ведомости завершена');
end;

procedure TList.TableListLsCellClick(Column: TColumn);
begin
{  if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
    if baza.SQL_LIST_LSSTATUSP.Value=2 then
      ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
  else ButNoDeliv.Enabled:=false;     }

    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
          popupmenu:=Popls;
        end;
        tableListLs.PopupMenu:=PopLs;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
          popupmenu:=nil;
        end;
        tableListLs.PopupMenu:=nil;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
        Caption:='Отметить не оплату';
        popupmenu:=nil;
      end;
      tableListLs.PopupMenu:=nil;
    end;

end;

procedure TList.TableListLsDblClick(Sender: TObject);
begin
{  if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
    if baza.SQL_LIST_LSSTATUSP.Value=2 then
      ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
  else ButNoDeliv.Enabled:=false; }

    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
          popupmenu:=popLs;
        end;
        tableListLs.PopupMenu:=PopLs;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
          popupmenu:=nil;
        end;
        tableListLs.PopupMenu:=PopLs;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
        Caption:='Отметить не оплату';
        popupmenu:=nil;
      end;
      tableListLs.PopupMenu:=PopLs;
    end;
end;

procedure TList.TableListLsEnter(Sender: TObject);
begin
{  if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then
    if baza.SQL_LIST_LSSTATUSP.Value=2 then
      ButNoDeliv.Enabled:=true else ButNoDeliv.Enabled:=false
  else ButNoDeliv.Enabled:=false;    }

    if (baza.SQL_LISTPRINTY.Value=1) and (baza.SQL_LISTSTATUSL.Value>0) and (baza.SQL_LISTSTATUSL.Value<3) then begin
      if baza.SQL_LIST_LSSTATUSP.Value=2 then begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить не оплату';
          popupmenu:=Popls;
        end;
        tableListLs.PopupMenu:=PopLs;
      end else begin
        with ButNoDeliv do begin
          Enabled:=true;
          Caption:='Отметить оплату';
          popupmenu:=nil
        end;
        tableListLs.PopupMenu:=nil;
      end;
    end else begin
      with ButNoDeliv do begin
        Enabled:=false;
        Caption:='Отметить не оплату';
      end;
      tableListLs.PopupMenu:=nil;
    end;



end;

procedure TList.FormActivate(Sender: TObject);
begin
  if List1<=1 then TableList.SetFocus;
  if List1>1 then TableListLs.SetFocus;
end;

procedure TList.ButListCloseAllClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовое закрытие ведомостей');
  main.Log('Массовая отметка закрытия ведомостей');

  if main.Mes('Вы действительно хотите закрыть ведомость все не закрытые ведомости ?',Mb_YesNo+Mb_IconQuestion) = idNo then Exit;
  if main.Mes('Вы действительно подверждаете обработку списка в '+IntToStr(baza.SQL_LIST.RecordCount)+' шт. ',Mb_YesNo+Mb_IconQuestion) = idNo then Exit;
  Baza.SQL_LIST.First;
  with Baza.SQL_LIST do begin
    First;
    while not Eof do begin
      if baza.SQL_LISTIDSTATUS.Value=2 then begin
        main.Log('Закрытие ведомости '+trim(baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString));
        main.RegWorc(UserWorc.ID,NameArm,NameUser,'Зарытие ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
        with baza.SQL_LIST_LS do begin
          Active:=false;
          Parameters[0].Value:=Baza.SQL_LISTID.Value;
          Active:=true;
          First;
          main.Log('Отметка всех записей не отмеченных ЛС а ведомсти как оплаченных');
          while not Eof do begin
            if baza.SQL_LIST_LSStatusP.Value=2 then begin
              with baza.SP_MONETY_UPD do begin
                Parameters[1].Value:=Baza.sql_List_LsId.Value;
                Parameters[2].Value:=3;
                Parameters[3].Value:=1;
                Parameters[4].Value:=null;
                Parameters[5].Value:=UserWorc.ID;
                Parameters[6].Value:=0;
                ExecProc;
              end;
            end;
            Next;
          end;
          main.Log('Отметка ЛС завершена. Обработано '+IntToStr(baza.SQL_LIST_LS.RecordCount));
          Active:=false;
        end;
        with baza.SP_LIST_UPD do begin
          Parameters[1].Value:=Baza.SQL_LISTID.Value;
          Parameters[2].Value:=3;
          Parameters[3].Value:=UserWorc.ID;
          ExecProc;
          If Parameters[0].Value=0 then begin
            main.Log('Ведомость закрыта');
          end else begin
            main.Mes('Ошибка закрытия ведомости',Mb_ok+Mb_iconInformation);
          end;
        end;
      end;
      Next;
    end;
    main.Log('Ведомость закрыта');
  end;
  ButFltr.Click;
  TableList.SetFocus;
end;

procedure TList.textLsTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then
    If (Length(Trim(textLsT.text))>0) and (baza.SQL_LIST_LS.Active=true) then begin
      if baza.SQL_LIST_LS.Locate('NLS',Trim(TextLsT.Text),[]) then begin
        textLsT.text:='';
        TableListLs.SetFocus;
      end
    end;
end;

procedure TList.ButAllListPrnClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовая печать ведомостей');
  main.Log('Массовая печать ведомостей');
  TypePrn:=true;
  with baza.SQL_LIST_PRNM do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT TL.ID,TL.INDOPS, TL.NUMLIST FROM TAB_LIST TL ');
    SQL.Add('LEFT JOIN (  ');
    SQL.Add('SELECT MAX(LS.ID) ID,LS.IDLIST, LS.IDSTATUS FROM TAB_LIST_STATUS LS GROUP BY LS.IDLIST,LS.IDSTATUS ');
    SQL.Add(') as TLS on TLS.IDLIST=TL.ID and TLS.IDSTATUS=TL.STATUSL ');
    SQL.Add('WHERE IDSTATUS IN (1) ');
    SQL.Add('ORDER BY TL.INDOPS,TL.NUMLIST ');
    main.Log(SQL.Text);
    Active:=true;
    If RecordCount=0 then begin
      Main.Mes('Нет сфорированных реестров для печати',Mb_Ok+Mb_iconInformation);
      Exit;
    end;
    with Process do begin
      Visible:=true;
      MaxValue:=RecordCount;
      MinValue:=0;
      Progress:=0;
      Application.ProcessMessages;
    end;
    First;
    while not EOF do begin
      main.Log('Печать ведосмости для ОПС '+Trim(baza.SQL_LIST_PRNMINDOPS.AsString)+' № '+Trim(baza.SQL_LIST_PRNMNUMLIST.AsString));
      ProcessLoad.Label2.Caption:=baza.SQL_LIST_PRNMINDOPS.AsString;
      ProcessLoad.Label4.Caption:=baza.SQL_LIST_PRNMNUMLIST.AsString;
      Application.ProcessMessages;
      with baza.SP_LIST_PRNP do begin
        Active:=false;
        Parameters[1].Value:=Baza.SQL_LIST_PRNMID.Value;
        //main.Log(IntTostr(baza.SQL_LIST_PRNMId.Value));
        Active:=true;
        with baza.SP_LIST_TYP do begin
          execproc;
          if Parameters[0].Value=0 then begin
            if Parameters[1].Value=2 then begin
              try
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  SQL.Add('SET LANGUAGE Italian;');
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
                  sql.Add('ORDER BY STRIT,DOM,KORP,CAST(KVR as Int)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              except
                main.Log('Квартрира содржит символ отключен режим сортировки');
                main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартира содржит символ отключен режим сортровки');
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
                  sql.Add('ORDER BY STRIT,DOM,KORP,(KVR)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              end;
              main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
              reporting.QRLabel231.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
              reporting.RepList2.Print;
            end else begin
              try
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  SQL.Add('SET LANGUAGE Italian;');
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('ORDER BY DOM,KORP,CAST(KVR as Int)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              except
                main.Log('Квартрира содржит символ отключен режим сортировки');
                main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартира содржит символ отключен режим сортровки');
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('ORDER BY DOM,KORP,(KVR)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              end;
              main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
              reporting.QRLabel69.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
              reporting.RepList.Print;
            end;
          end;
        end;
      end;
      Next;
      Process.Progress:=RecNo;
      Application.ProcessMessages;
    end;
  end;
  main.Log('Печать ведомостей завершена');
  Process.Visible:=false;
  ButFltr.Click;
  TableList.SetFocus;
  Baza.SQL_LIST.Locate('ID',ID,[]);
end;

procedure TList.ButSpListPrnClick(Sender: TObject);
begin
  main.Log('Попытка печати списка реестров');
  if baza.SQL_LIST.RecordCount>0 then begin
    with Reporting.SQL_LIST_P do begin
      Active:=false;
      SQL.Text:=baza.SQL_LIST.SQL.Text;
      Active:=true;
    end;
    with Reporting do begin
      Qrlabel152.Caption:=DateToStr(D1.Date);
      Qrlabel153.Caption:=DateToStr(D2.Date);
      Qrlabel154.Caption:=Trim(UserWorc.Dolgn)+' _________________________ '+Trim(UserWorc.ABV);
      RepListSp.PreviewModal;
    end;
  end else main.Mes('Список выплатных ведомостей пуст',Mb_Ok+Mb_iconinformation)
end;

procedure TList.N1Click(Sender: TObject);
Var I: int64;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Возврат накладной в обработку '+Trim(baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString));
  main.Log('Возврат накладной в обработку '+Trim(baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString));
  if main.Mes('Вы дейсвительно хотет вернуть ведомость '+#13+'ОПС: '+Trim(baza.SQL_LISTINDOPS.AsString)+' № '+Trim(baza.SQL_LISTNUMLIST.AsString)+#13+'в обработку ?',Mb_YesNo+Mb_iconQuestion)=idNo then Exit;
  I:=baza.SQL_LISTID.Value;
  with baza.SP_LIST_RET do begin
    Parameters[1].Value:=baza.SQL_LISTID.Value;
    Parameters[2].Value:=UserWorc.ID;
    ExecProc;
  end;
  ButFltr.Click;
 
end;

procedure TList.N2Click(Sender: TObject);
Var
  S  : String;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовая печать ведомостей');
  main.Log('Массовая печать ведомостей');
  TypePrn:=true;
  If baza.SQL_LIST.RecordCount=0 then begin
    main.Mes('Нет записей для печати',Mb_Ok+Mb_IconError);
    exit;
  end;
  ID:=baza.SQL_LISTID.Value;
  with baza.SQL_LIST do begin
    First;
    S:='';
    while not EOF do begin
      S:=S+Trim(baza.SQL_LISTID.AsString)+',';
      Next;
    end;
    Locate('ID',ID,[]);
  end;
  Delete(S,Length(S),1);
  with baza.SQL_LIST_PRNM do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT TL.ID,TL.INDOPS, TL.NUMLIST FROM TAB_LIST TL ');
    SQL.Add('LEFT JOIN (');
    SQL.Add('SELECT MAX(LS.ID) ID,LS.IDLIST, LS.IDSTATUS FROM TAB_LIST_STATUS LS GROUP BY LS.IDLIST,LS.IDSTATUS');
    SQL.Add(') as TLS on TLS.IDLIST=TL.ID and TLS.IDSTATUS=TL.STATUSL');
    SQL.Add('WHERE TL.ID IN ('+S+')');
    SQL.Add('ORDER BY TL.INDOPS,TL.NUMLIST');
    main.Log(sql.Text);
    Active:=true;
    If RecordCount=0 then begin
      Main.Mes('Нет сфорированных реестров для печати',Mb_Ok+Mb_iconInformation);
      Exit;
    end;
    with Process do begin
      Visible:=true;
      MaxValue:=RecordCount;
      MinValue:=0;
      Progress:=0;
      Application.ProcessMessages;
    end;
    First;
    while not EOF do begin
      main.Log('Печать ведосмости для ОПС '+Trim(baza.SQL_LIST_PRNMINDOPS.AsString)+' № '+Trim(baza.SQL_LIST_PRNMNUMLIST.AsString));
      ProcessLoad.Label2.Caption:=baza.SQL_LIST_PRNMINDOPS.AsString;
      ProcessLoad.Label4.Caption:=baza.SQL_LIST_PRNMNUMLIST.AsString;
      Application.ProcessMessages;
      with baza.SP_LIST_PRNP do begin
        Active:=false;
        Parameters[1].Value:=Baza.SQL_LIST_PRNMID.Value;
        //main.Log(IntTostr(baza.SQL_LIST_PRNMId.Value));
        Active:=true;
        with baza.SP_LIST_TYP do begin
          execproc;
          if Parameters[0].Value=0 then begin
            if Parameters[1].Value=2 then begin
              try
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  SQL.Add('SET LANGUAGE Italian;');
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
                  sql.Add('ORDER BY STRIT,DOM,KORP,CAST(KVR as Int)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              except
                main.Log('Квартрира содржит символ отключен режим сортировки');
                main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартира содржит символ отключен режим сортровки');
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('GROUP BY ID,NLS, FM, IM, OT, STRIT, DOM, KORP,SMVYP,STATUSP,REASON,KVR,PSR, PNM');
                  sql.Add('ORDER BY STRIT,DOM,KORP,(KVR)');
                  main.Log(sql.Text);
                  Active:=true;
                end;
              end;
              main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
              reporting.QRLabel231.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
              reporting.RepList2.Print;
            end else begin
              try
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  SQL.Add('SET LANGUAGE Italian;');
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('ORDER BY DOM,KORP,CAST(KVR as Int)');
                  //main.Log(sql.Text);
                  Active:=true;
                end;
              except
                main.Log('Квартрира содржит символ отключен режим сортировки');
                main.RegWorc(UserWorc.ID,NameArm,NameUser,'Квартира содржит символ отключен режим сортровки');
                with Reporting.SQL_LIST_LS_P do begin
                  Active:=false;
                  sql.Text:='';
                  sql.Add('SELECT ID, RTRIM(LTRIM(NLS)) NLS, RTRIM(LTRIM(FM)) FM,');
                  sql.Add('RTRIM(LTRIM(IM)) IM, RTRIM(LTRIM(OT)) OT,RTRIM(LTRIM(STRIT)) STRIT,');
                  sql.Add('RTRIM(LTRIM(DOM)) DOM,RTRIM(LTRIM(KORP)) KORP,SMVYP,STATUSP,REASON,');
                  sql.Add('RTRIM(LTRIM(KVR)) KVR,RTRIM(LTRIM(PSR)) PSR,RTRIM(LTRIM(PNM)) PNM FROM V_MONETY_LIST T WHERE T.LISTID='+Baza.SQL_LIST_PRNMID.AsString );
                  sql.Add('ORDER BY DOM,KORP,(KVR)');
                  //main.Log(sql.Text);
                  Active:=true;
                end;
              end;
              main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать ведомости '+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
              reporting.QRLabel69.Caption:='('+main.RubToStr(baza.SP_LIST_PRNPSumList.Value,' руб. ','коп.')+')' ;
              reporting.RepList.Print;
            end;
          end;
        end;
      end;
      Next;
      Process.Progress:=RecNo;
      Application.ProcessMessages;
    end;
  end;
  main.Log('Печать ведомостей завершена');
  Process.Visible:=false;
  ButFltr.Click;
  TableList.SetFocus;
  Baza.SQL_LIST.Locate('ID',ID,[]);
end;

procedure TList.N3Click(Sender: TObject);
Var I,ILS: Int64;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Отметка массовой не оплаты ведомости '+baza.SQL_LISTNUMLIST.AsString);
  main.Log('Отметка массовой не оплаты ведомости '+baza.SQL_LISTNUMLIST.AsString);
  I:=Baza.SQL_LISTID.Value;
  ILS:=baza.SQL_LIST_LSID.Value;
  If Main.Mes('Выполнить массовую отметку не оплаты, '+#13+'ведомости '+baza.SQL_LISTNUMLIST.AsString,Mb_YesNo+Mb_IconQuestion)=idNo then exit;
  List1:=3;
  NoPayPricina.ShowModal;
  with Baza.SQL_LIST_LS do begin
    First;
    while not EOF do begin
      if Baza.sql_List_lsStatusP.Value=2 then begin
        List1:=2;
        TypNoDel:=false;
        main.RegWorc(UserWorc.ID,NameArm,NameUser,'Отметка невыплаты ЛС : '+Trim(baza.SQL_LIST_LSNLS.AsString)+', ведомость '+Trim(baza.SQL_LISTINDOPS.AsString)+'-'+Trim(baza.SQL_LISTGOD.AsString)+'-'+Trim(baza.SQL_LISTMES.AsString)+'-'+Trim(baza.SQL_LISTNUMLIST.AsString));
        main.Log('Отметка причины не оплаты ЛС: '+Trim(baza.SQL_LIST_LSNLS.AsString));
        with baza.SP_MONETY_UPD do begin
          if TypNoDel=false then Parameters[1].Value:=Baza.sql_List_LsId.Value;
          Parameters[2].Value:=3;
          Parameters[3].Value:=0;
          Parameters[4].Value:=IdAllNoPay;
          Parameters[5].Value:=UserWorc.ID;
          Parameters[6].Value:=0;
          main.Log('Выбрана причина '+IntToStr(IdAllNoPay));
          main.RegWorc(UserWorc.ID,NameArm,NameUser,'Выбрана причина 7 '+IntToStr(IdAllNoPay));
          ExecProc;
          if Parameters[0].Value=0 then NoPayPricina.Close else main.Mes('Ошибка отметки не оплаты ЛС '+Trim(baza.SQL_LIST_LSNLS.AsString),Mb_Ok+MB_IconError);
        end;
        main.Log('Отметка причны не оплаты выполнена');
      end;
      Next;
    end;
  end;
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Отметка массовой не оплаты ведомости '+baza.SQL_LISTNUMLIST.AsString+' завершена');
  main.Log('Отметка массовой не оплаты ведомости '+baza.SQL_LISTNUMLIST.AsString+' завершена');
  with baza.sql_list_LS do begin
    Active:=false;
    Active:=true;
    Locate('ID',ILS,[]);
  end;
  with Baza.SQL_LIST do begin
    Active:=false;
    Active:=true;
    Locate('ID',I,[]);
  end;
end;

end.
