unit Glavn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Buttons,
  Menus, Inifiles,XPMan,WinSock, Psock,ShellApi, Mask;

type
  TJPKF = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DopPath: TPopupMenu;
    N1: TMenuItem;
    PCK: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabError: TDBGrid;
    Panel2: TPanel;
    UserBut: TSpeedButton;
    AddBut: TSpeedButton;
    EditBut: TSpeedButton;
    DelBut: TSpeedButton;
    AktBut: TSpeedButton;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    TabErrorDel: TDBGrid;
    Panel5: TPanel;
    ReturnBut: TSpeedButton;
    Panel6: TPanel;
    Soderdel: TDBMemo;
    Panel7: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    ClosBut: TSpeedButton;
    PCS: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    SoderM: TDBMemo;
    SoderOtmetka: TDBMemo;
    TabSheet5: TTabSheet;
    Vipiskatab: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    VipiskaSod: TDBGrid;
    PrnTab: TDBGrid;
    mailTab: TDBGrid;
    DubleBut: TSpeedButton;
    MailBut: TSpeedButton;
    AllMailBut: TSpeedButton;
    Panel11: TPanel;
    SetBut: TSpeedButton;
    Panel12: TPanel;
    ConnectBut: TSpeedButton;
    Panel14: TPanel;
    PrnBut: TSpeedButton;
    FltBut: TSpeedButton;
    XPManifest1: TXPManifest;
    PCF: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label1: TLabel;
    DR1: TDateTimePicker;
    ErBox: TCheckBox;
    De1: TDateTimePicker;
    Label8: TLabel;
    De2: TDateTimePicker;
    Dr2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Opst: TEdit;
    Label11: TLabel;
    ErrorBox: TComboBox;
    Label9: TLabel;
    OperBox: TComboBox;
    Label12: TLabel;
    Numt: TEdit;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel13: TPanel;
    Label13: TLabel;
    FioErrT: TDBEdit;
    Label14: TLabel;
    FioNarT: TEdit;
    AllBox: TRadioButton;
    AddBox: TRadioButton;
    Vipbox: TRadioButton;
    ClosBox: TRadioButton;
    TabSheet8: TTabSheet;
    Panel15: TPanel;
    Label15: TLabel;
    ErrorStatBox: TRadioButton;
    OpstatBox: TRadioButton;
    PanelStat: TPanel;
    tabStat: TDBGrid;
    TabStatOps: TDBGrid;
    OperStatBox: TRadioButton;
    TabOperStat: TDBGrid;
    UsStatBox: TRadioButton;
    SortDatMenu: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure UserButClick(Sender: TObject);
    procedure AddButClick(Sender: TObject);
    procedure EditButClick(Sender: TObject);
    procedure ConnectButClick(Sender: TObject);
    procedure FltButClick(Sender: TObject);
    procedure DelButClick(Sender: TObject);
    procedure PrnButClick(Sender: TObject);
    procedure AktButClick(Sender: TObject);
    procedure TabErrorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DR1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Dr2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SetButClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ReturnButClick(Sender: TObject);
    procedure ErBoxClick(Sender: TObject);
    procedure TabErrorCellClick(Column: TColumn);
    procedure TabErrorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClosButClick(Sender: TObject);
    procedure TabErrorEnter(Sender: TObject);
    procedure VipiskatabCellClick(Column: TColumn);
    procedure VipiskatabEnter(Sender: TObject);
    procedure VipiskatabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure VipiskatabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PCKChange(Sender: TObject);
    procedure DubleButClick(Sender: TObject);
    procedure MailButClick(Sender: TObject);
    procedure AllMailButClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NumtExit(Sender: TObject);
    procedure OpstExit(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure TabSheet5Exit(Sender: TObject);
    procedure TabSheet8Exit(Sender: TObject);
    procedure tabStatEnter(Sender: TObject);
    procedure tabStatCellClick(Column: TColumn);
    procedure tabStatDblClick(Sender: TObject);
    procedure ErrorStatBoxClick(Sender: TObject);
    procedure OpstatBoxClick(Sender: TObject);
    procedure tabStatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabStatOpsEnter(Sender: TObject);
    procedure TabStatOpsCellClick(Column: TColumn);
    procedure TabStatOpsDblClick(Sender: TObject);
    procedure OperStatBoxClick(Sender: TObject);
    procedure TabOperStatEnter(Sender: TObject);
    procedure TabOperStatCellClick(Column: TColumn);
    procedure TabOperStatDblClick(Sender: TObject);
    procedure TabOperStatKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UsStatBoxClick(Sender: TObject);
    procedure TabStatOpsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure SetRU;
    Function CorrectChar(s:string):string;
    Function KontrolStr(s:string) : boolean;
    Function Mess(text:string;IQ,IB:Integer): integer;
    Procedure Logfil(text:string);
    function GetVar(const VarName: string): string;
    function GetLocalIP: String;
    Procedure AllDoklad;
    Procedure SpravkaDoc;
  end;

var
  JPKF      : TJPKF;
  INF       : Tinifile;

  Param     : record
    IdOper  : integer;
    FioOper : string;
    BdPath  : string;
    AutoCon : boolean;
    Reg     : integer;
    Oper    : integer;
    TOP     : Integer;
    TipDokl : integer;
    MassDok : Integer;
    MassVip : Integer;
    PrnVip  : boolean;
    AutoUs  : boolean;
    lastoper: boolean;
  end;

  User : record
    host  : string;
    port  : integer;
    log   : string;
    pass  : string;
    mail  : string;
  end;

  fltz : record
    Dat1  : TdateTime;
    Dat2  : Tdatetime;
    Error : Boolean;
    TipEr : integer;
    De1   : TdateTime;
    De2   : TdateTime;
    Ops   : string;
    Box   : Integer;
    Numt  : string;
  end;

  fltv : record
    Dat1  : TdateTime;
    Dat2  : Tdatetime;
    Ops   : string;
    Box   : Integer;
    Numt  : string;
  end;

  fltS : record
    Dat1  : TdateTime;
    Dat2  : Tdatetime;
    Error : Boolean;
    TipEr : integer;
    De1   : TdateTime;
    De2   : TdateTime;
    Ops   : string;
  end;

  lastoper : record
    dt      : TdateTime;
    Indops  : string;
    Bos     : integer;
    Fio     : string;
    Tip     : Integer;
  end;
  TD  : TdateTime;
  ID  : Int64;
  Skript : String;
implementation

uses BazaForma, Addforma, ReportForm, SetupForma, DokladForma, PathBdForma,
  UserForma, PassForma, MailForma, LoadForma;

{$R *.dfm}

function TJPKF.GetVar(const VarName: string): string;
//Возвращает значение системной переменной (т.н. "переменные окружения") 
var
  r: array[0..255] of char;
begin
  r:='';
  GetEnvironmentVariable(PChar(VarName), r, 255);
  Result:=r
end;

function TJPKF.GetLocalIP: String;
const WSVer = $101;
var
  wsaData: TWSAData;
  P: PHostEnt;
  Buf: array [0..127] of Char;
begin
  Result := '';
  if WSAStartup(WSVer, wsaData) = 0 then begin
    if GetHostName(@Buf, 128) = 0 then begin
      P := GetHostByName(@Buf);
      if P <> nil then Result := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
    end;
    WSACleanup;
  end;
end;


procedure TJPKF.Logfil(text: string);
var
  logfile : String;
  Lo : TextFile;
begin
  logfile:=ExtractFilePath(Paramstr(0))+'LOG\';
  try
    if not ForceDirectories(logfile) then exit;
    logfile:=logfile+FormatDateTime('yyyymmdd', Now)+'.log';
    AssignFile(Lo,Logfile);
    if FileExists(logfile) then Append(Lo) else Rewrite(Lo);
    WriteLn(Lo,FormatdateTime('hh:nn:ss',now)+';'+GetVar('COMPUTERNAME')+';'+GetLocalIP+';'+param.FioOper+';'+text);
    CloseFile(Lo);
  except
  end;
end;

function TJPKF.Mess(text: string; IQ, IB: Integer): integer;
begin
  result:=Application.MessageBox(Pchar(text),Pchar(caption),IB+IQ);
end;

function TJPKF.KontrolStr(s: string): boolean;
var
  I:integer;
begin
  result:=true;
  For I:=1 to Length(s) do begin
    case s[I] of
      '1','2','3','4','5','6','7','8','9','0':;
      else result:=false; exit;
    end;
  end;
end;



Procedure TJPKF.AllDoklad;  {Массовая докладная}
var
  RP,IZ : integer;
  S:string;
  List : TstringList;
begin
  if baza.Reestr_sql.RecordCount=0 then exit;
  if Length(Trim(baza.sql_userIndPoctamt.Value))=0 then exit;
  JPKF.Logfil('Массовое формирование докладной');
  baza.Sql_Ops_Sprav.Active:=false;
  baza.Sql_Ops_Sprav.Parameters[0].Value:=baza.sql_userIndPoctamt.Value;
  baza.Sql_Ops_Sprav.Active:=true;
  if baza.sql_ops_sprav.RecordCount=0 then exit;
  IZ:=0;
  param.MassDok:=2;
  Doklad.ShowModal;
  if JPKF.Mess('Печать без предварительного просмотра?',MB_iconquestion,Mb_YesNo)=idYes then begin
    Logfil('Установлен режим печати без предварительного просмотра');
    RP:=1;
  end else begin
    Logfil('Предварительный просмотр перед печатью');
    RP:=2;
  end;
  case Doklad.FromBox.ItemIndex of
    0: begin
      with report do begin
        QRLabel21.Caption:='Начальнику почтамта';
        QRLabel22.Caption:=baza.sql_userBoskomu.Value;
      end;
    end;
    1: begin
      with report do begin
        QRLabel21.Caption:='Зам. начальника почтамта';
        QRLabel22.Caption:=baza.sql_userUser1komu.Value;
       end;
    end;
    2: begin
      with report do begin
        QRLabel21.Caption:='Начальнику информпункта';
        QRLabel22.Caption:=baza.sql_userUser2komu.Value;
      end;
    end;
  end;


  List:=TstringList.Create;
  List.Add('Р Е Е С Т Р   Д О К Л А Д Н Ы Х   ');
  list.Add(''+report.QRLabel21.Caption);
  list.Add('');
  list.Add('Сформированных '+FormatDateTime('dd.mm.yyyy',date));
  list.Add('');
  list.Add('содержащих нарушения за период контроля  с '+FormatDateTime('dd.mm.yyyy',JPKF.Dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',JPKF.Dr2.Date));
  list.Add('');
  list.Add('По следующим ОПС :');
  list.Add('');
  while not baza.Sql_Ops_Sprav.Eof do begin
    JPKF.StatusBar1.panels[2].Text:=baza.Sql_Ops_SpravPOSTINDEX.AsString;
    Application.ProcessMessages;
    baza.sql_doklad.Active:=false;
    baza.sql_doklad.Parameters[0].Value:=baza.Sql_Ops_SpravPOSTINDEX.AsString;
    baza.sql_doklad.Active:=true;
    baza.sql_doklad.Filtered:=false;
    baza.sql_doklad.Filter:='(DATAREG>='+FormatDateTime('dd.mm.yyyy',JPKF.Dr1.Date)+') and (DATAREG<='+FormatDateTime('dd.mm.yyyy',JPKF.Dr2.Date)+')';
    baza.sql_doklad.Filtered:=true;
    if FormatDateTime('dd.mm.yyyy',JPKF.DR1.Date)<>FormatDateTime('dd.mm.yyyy',JPKF.Dr2.Date) then param.TipDokl:=1 else param.TipDokl:=2;
    Logfil('Установленны параметры отбора записей для докладной по ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+baza.Sql_Ops_SpravOPSNAME.Value);
    if baza.sql_doklad.RecordCount>0 then begin
      list.Add(baza.Sql_Ops_SpravPOSTINDEX.Value+' '+baza.Sql_Ops_SpravOPSNAME.Value);
      param.TipDokl:=1;
      JPKF.Logfil('Определние направления докладной '+report.QRLabel21.Caption);
      Report.QRMemo5.Lines.Clear;
      Report.QRMemo1.Lines.Clear;
      if param.TipDokl=2 then
        s:='                Довожу до Вашего сведения, что '+FormatDateTime('dd.mm.yyyy',baza.Reestr_sqlDataReg.Value)+', оператром информпункта при проведении';
      if param.TipDokl=1 then
        s:='                Довожу до Вашего сведения, что в период с '+FormatDateTime('dd.mm.yyyy',JPKF.DR1.DateTime)+' по '+FormatDateTime('dd.mm.yyyy',JPKF.DR2.DateTime)+', оператрами информпункта при проведении';
      s:=s+' проверки первичных документов поступивших из ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+baza.Sql_Ops_SpravOPSNAME.Value+' были выявлены следующие нарушения';
      Report.QRMemo5.Lines.Add(s);
     // s:='                Прошу принять меры дисциплинарного наказания к начальнику отделния связи допустившего данное нарушение.';
      //Report.QRMemo1.Lines.Add(s);
      case Doklad.ToBox.ItemIndex of
        0: s:='Начальник информпункта                                               '+baza.sql_userUser2.Value;
        1: s:='Оператор информпункта                                               '+param.FioOper;
      else
        s:='';
      end;
      Report.QRMemo1.Lines.Add('');
      Report.QRMemo1.Lines.Add('');
      Report.QRMemo1.Lines.Add('');
      Report.QRMemo1.Lines.Add('                '+s);
      if RP=1 then report.Doklad.Print else report.Doklad.Preview;
      inc(iz);
    end;
    baza.Sql_Ops_Sprav.Next;
  end;
  List.Add('');
  List.Add('');
  List.Add('          '+s);
 // List.SaveToFile(ExtractFilePath(paramstr(0))+'dokladr.txt');
//ShellExecute(handle,'print',pchar(paramstr(0)+'dokladr.txt'),nil,nil,sw_hide);
  baza.Sql_Ops_Sprav.Active:=false;
  baza.Doklad.Active:=false;
  baza.Doklad.Active:=true;
  baza.Doklad.Append;
  baza.DokladDat1.Value:=dr1.Date;
  baza.DokladDat2.Value:=dr2.Date;
  baza.DokladDatcr.Value:=Date;
  baza.dokladUserD.Value:=Param.FioOper;
  baza.Doklad.Post;
  baza.Doklad.Active:=false;
  baza.sql_doklad_i.Active:=false;
  baza.sql_doklad_i.Active:=true;
  baza.sql_doklad_i.Last;
  report.FreeSoob.Lines.AddStrings(list);
  if RP=1 then report.Friirep.Print else report.Friirep.Preview;
  List.Free;
  if baza.sql_doklad_i.RecordCount>0 then
    Statusbar1.Panels[1].Text:='Последние докладные с '+FormatDateTime('dd.mm.yyyy',baza.sql_doklad_iDat1.Value)+' по '+'с '+FormatDateTime('dd.mm.yyyy',baza.sql_doklad_iDat2.Value);
  JPKF.Mess('Формирование '+IntToStr(Iz)+' докладных завершено',MB_IconInformation,MB_Ok);
  JPKF.StatusBar1.Panels[2].Text:='';
  JPKF.logfil('Формирование '+IntToStr(Iz)+' докладных завершено');
end;



Procedure AllVipsiska;   {Массовая выписка}
var
  ds    :TdateTime;
  IZ : integer;
  I     : int64;
begin
  Param.MassVip:=2;
  if baza.Reestr_sql.RecordCount=0 then exit;
  if Length(Trim(baza.sql_userIndPoctamt.Value))=0 then exit;
  JPKF.logfil('Массовое формирование выписок');
  I:=baza.Reestr_sqlId.Value;
  baza.Sql_Ops_Sprav.Active:=false;
  baza.Sql_Ops_Sprav.Parameters[0].Value:=baza.sql_userIndPoctamt.Value;
  baza.Sql_Ops_Sprav.Active:=true;
  if baza.sql_ops_sprav.RecordCount=0 then exit;
  //if JPKF.Mess('Печать без предварительного просмотра?',MB_iconquestion,Mb_YesNo)=IdYes then RP:=1 else RP:=2;
  baza.Sql_Ops_Sprav.First;
  IZ:=0;
  while not baza.Sql_Ops_Sprav.Eof do begin
    JPKF.StatusBar1.panels[2].Text:=baza.Sql_Ops_SpravPOSTINDEX.AsString;
    Application.ProcessMessages;
    Ds:=JPKF.DR1.Date;
    baza.sql_akte.Active:=true;
    while Ds<=JPKF.Dr2.Date do begin
      baza.sql_akte.Filtered:=false;
      baza.sql_akte.Filter:='(OTMETKA=0) and (DATAREG='+FormatDateTime('dd.mm.yyyy',Ds)+') and (INDOPS='''+trim(baza.Sql_Ops_SpravPOSTINDEX.AsString)+''')';
      baza.sql_akte.Filtered:=true;
      report.QRLabel13.Caption:=param.FioOper;
      JPKF.Logfil('Установленны параметры отбора записей для выписок по ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+baza.Sql_Ops_SpravOPSNAME.Value);
      if baza.sql_akte.RecordCount>0 then begin
        Inc(Iz,1);
        param.PrnVip:=false;
        //IF RP=1 then report.Akt.Print else report.Akt.Preview;
        report.Akt.Print;
      end;
      Ds:=Ds+1;
    end;
    baza.Sql_Ops_Sprav.Next;
  end;
  baza.Sql_Ops_Sprav.Active:=false;
  baza.sql_akte.Active:=false;
  JPKF.Mess('Формирование '+IntToStr(IZ)+' выписок завершено',MB_IconInformation,MB_Ok);
  JPKF.logfil('Формирование '+IntToStr(IZ)+' выписок завершено');
  JPKF.StatusBar1.Panels[2].Text:='';
  baza.sql_vip.Active:=false;
  baza.sql_vip.Active:=true;
  baza.sql_vip.Last;
  baza.Reestr_sql.Active:=false;
  baza.Reestr_sql.Active:=true;
  baza.Reestr_sql.Locate('ID',I,[]);
end;

Procedure TJPKF.SpravkaDoc; {все варианты справок}
Var
  Reg,Kod:boolean;
  Iz: Integer;
  s,so:string;
begin
  Logfil('Начало формирования справки');
  baza.sql_Upd.Active:=false;
  baza.sql_Upd.SQL.Text:='Select OPSNAME from OPS where POSTINDEX='''+baza.sql_userIndPoctamt.Value+''' and OPSTYPE=''П''';
  baza.sql_Upd.Active:=true;
  with report.QRMemo9.Lines do begin
    Clear;
    Add('УФПС СВЕРДЛОВСКОЙ ОБЛАСТИ - ФИЛИАЛ ФГУП «ПОЧТА РОССИИ»');
    add('');
    if baza.sql_Upd.RecordCount>0 then Add(baza.sql_Upd['OPSNAME']) else Add('');
  end;
  Case Application.MessageBox(Pchar('Формировать справку : '+#13+'Да - По текущему ОПС'+#13+'НЕТ - По всем ОПС в диапазоне'),Pchar(caption),Mb_YesNoCancel) of
    IdYes: begin
        LogFil('По  ОПС '+baza.Reestr_sqlIndOps.Value+' '+baza.Reestr_sqlOPSNAME.Value);
        baza.sql_sprav.Active:=false;
        baza.sql_sprav.SQL.Clear;
        baza.sql_sprav.sql.Add('SELECT SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
        baza.sql_sprav.sql.Add('FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror)');
        baza.sql_sprav.sql.Add('WHERE (Gurnall.IndOps='''+baza.Reestr_sqlIndOps.Value+''') and (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
        baza.sql_sprav.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_sprav.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        logfil('За период регистрации'+FormatdateTime('dd.mm.yyyy',dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.Date));
        if ErBox.Checked=true then begin
          baza.sql_sprav.sql.Add(' and (Gurnall.DATERROR>=:DI1 and Gurnall.DATERROR<=:DI2)');
          baza.sql_sprav.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_sprav.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
          logfil('За период ошибок '+FormatdateTime('dd.mm.yyyy',de1.Date)+' по '+FormatDateTime('dd.mm.yyyy',de2.Date));
        end;
        baza.sql_sprav.sql.Add('GROUP BY SprError.id, SprError.NumError, SprError.TextError');
        baza.sql_sprav.sql.Add('ORDER BY SprError.NumError');
        baza.sql_sprav.Active:=true;

       if baza.sql_sprav.RecordCount=0 then begin
         Mess('Нет данных для формирования справки',Mb_IconWarning,Mb_Ok);
         LogFil('Нет данных для формирования справки');
         exit;
       end;

       Report.QRLabel51.Caption:='За период с '+FormatDateTime('dd.mm.yyyy',dr1.date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.date);
       with Report.QRMemo11.Lines do begin
         Clear;
         s:='          При проверке первичных кассовых и производственных документво из ОПС '+baza.Reestr_sqlIndOps.Value+' '+
             baza.Reestr_sqlOPSNAME.Value+' поступившие на информационный пункт почтамта в период с '+
             FormatDateTime('dd.mm.yyyy',dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.Date)+' выявлены следующие нарушения:';
         Add(s);
       end;
      with Report.QRMemo12.Lines do begin
        Clear; s:='';
        if (InputQuery('Номера пунктов нарушений','Номер через запятую',so) = true) and (length(trim(so))>0) then begin
          LogFil('Указан пункт о примировании '+so);
          s:='          В свзи с чем прошу понизить КТУ начальнику ОПС '+baza.Reestr_sqlIndOps.Value+' '+
             baza.Reestr_sqlOPSNAME.Value+' в соотвествии c пунктом '+so+' положения о материальном стимулировании работников.'+#13+
             '         Документы с подписью об ознакомлении с допущенными нарушениями прилагаются.';
              
        end;
        Add(s);
        Add('');
        Add('');
        Add('');
        Add('          '+baza.sql_userUser2Dolgn.value+'________________________'+baza.sql_userUser2.Value);
        Add('');
        Add('');
        Add('');
        Add('          Ознакомлен(а) _______________ ________________ _________________ _____________ ');
        Add('                                        (Должность)            (Подпись)               (Расшифровка)           (Дата)');

      end;
      Report.SpravReport.PreviewModal;
      baza.sql_sprav.Active:=false;
      LogFil('Формирвоание справки завершено ');
    end;
    IdNo : begin
      LogFil('Массовое формирование справки');
      so:='';
      if (InputQuery('Номера пунктов нарушений','Номер через запятую',so) = true) then Kod:=true else Kod:=false;
      if Kod=true then LogFil('Указан код положения '+so);
      if Application.MessageBox('Печатать справки без предварительного просмотра',Pchar(caption),Mb_YesNo)=IdYes then Reg:=true else reg:=False;
      baza.Sql_Ops_Sprav.Active:=false;
      baza.Sql_Ops_Sprav.Parameters[0].Value:=baza.sql_userIndPoctamt.Value;
      baza.Sql_Ops_Sprav.Active:=true;
      if baza.sql_ops_sprav.RecordCount=0 then exit;
      logfil('За период регистрации '+FormatdateTime('dd.mm.yyyy',dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.Date));
      if ErBox.Checked=true then logfil('За период ошибок '+FormatdateTime('dd.mm.yyyy',de1.Date)+' по '+FormatDateTime('dd.mm.yyyy',de2.Date));
      baza.Sql_Ops_Sprav.First;
      LogFil('Начало перебора справочника ОПС');
      while not baza.Sql_Ops_Sprav.Eof do begin
        baza.sql_sprav.Active:=false;
        baza.sql_sprav.SQL.Clear;
        baza.sql_sprav.sql.Add('SELECT SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
        baza.sql_sprav.sql.Add('FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror)');
        baza.sql_sprav.sql.Add('WHERE (Gurnall.IndOps='''+baza.Sql_Ops_SpravPOSTINDEX.Value+''') and (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
        baza.sql_sprav.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_sprav.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        if ErBox.Checked=true then begin
          baza.sql_sprav.sql.Add(' and (Gurnall.DATERROR>=:DI1 and Gurnall.DATERROR<=:DI2)');
          baza.sql_sprav.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_sprav.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
        end;
        baza.sql_sprav.sql.Add('GROUP BY SprError.id, SprError.NumError, SprError.TextError');
        baza.sql_sprav.sql.Add('ORDER BY SprError.NumError');
        baza.sql_sprav.Active:=true;

        if (baza.sql_sprav.RecordCount>0) then begin
          LogFil('По ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+baza.Sql_Ops_SpravOPSNAME.Value+' - '+IntToStr(baza.sql_sprav.RecordCount));
          Report.QRLabel51.Caption:='За период с '+FormatDateTime('dd.mm.yyyy',dr1.date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.date);
          with Report.QRMemo11.Lines do begin
            Clear;
            s:='          При проверке первичных кассовых и производственных документво из ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+
            baza.Sql_Ops_SpravOPSNAME.Value+' поступившие на информационный пункт почтамта в период с '+
            FormatDateTime('dd.mm.yyyy',dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',dr2.Date)+' выявлены следующие нарушения:';
            Add(s);
          end;
          s:='';
          with Report.QRMemo12.Lines do begin
            Clear;
            if (Kod=true) and (length(trim(so))>0) then begin
              s:='          В свзи с чем прошу понизить КТУ начальнику ОПС '+baza.Sql_Ops_SpravPOSTINDEX.Value+' '+
              baza.Sql_Ops_SpravOPSNAME.Value+' в соотвествии c пунктом '+so+' положения о материальном стимулировании работников.'+#13+
              '         Документы с подписью об ознакомлении с допущенными нарушениями прилагаются.';
              Add(s);
            end;
            Add('');
            Add('');
            Add('');
            Add('          '+baza.sql_userUser2Dolgn.value+'________________________'+baza.sql_userUser2.Value);
            Add('');
            Add('');
            Add('');
            Add('          Ознакомлен(а) _______________ ________________ _________________ _____________ ');
            Add('                                        (Должность)            (Подпись)               (Расшифровка)           (Дата)');
          end;
          Inc(Iz,1);
          with Report.SpravReport do if Reg=true then Print else Preview;
        end;
        baza.Sql_Ops_Sprav.Next;
      end;
      Mess('Формирвание справки завершено'+#13+'Сформировано '+IntToStr(Iz),Mb_IconInformation,Mb_Ok);
    end;
    IdCancel : exit;
  end;

end;


procedure TJPKF.SetRU;  // Смена раскладки (первод АНГ->РУС)
var
  Layout: array [0.. KL_NAMELENGTH] of char;
begin
  LoadKeyboardLayout(StrCopy(Layout, '00000419'), KLF_ACTIVATE);
end;

Function TJPKF.CorrectChar(s:string):string;
var
  I:integer;
  S1: string;
begin
  s:=Trim(S);
  s1:='';
  For I:=1 to lenGth(s) do begin
    case S[I] of
      'Q','q' : s1:=s1+'Й';
      'W','w' : s1:=s1+'Ц';
      'E','e' : s1:=s1+'У';
      'R','r' : s1:=s1+'К';
      'T','t' : s1:=s1+'Е';
      'Y','y' : s1:=s1+'Н';
      'U','u' : s1:=s1+'Г';
      'I','i' : s1:=s1+'Ш';
      'O','o' : s1:=s1+'Щ';
      'P','p' : s1:=s1+'З';
      '{','[' : s1:=s1+'Х';
      '}',']' : s1:=s1+'Ъ';
      //
      'A','a' : s1:=s1+'Ф';
      'S','s' : s1:=s1+'Ы';
      'D','d' : s1:=s1+'В';
      'F','f' : s1:=s1+'А';
      'G','g' : s1:=s1+'П';
      'H','h' : s1:=s1+'Р';
      'J','j' : s1:=s1+'О';
      'K','k' : s1:=s1+'Л';
      'L','l' : s1:=s1+'Д';
      ':',';' : s1:=s1+'Ж';
      '"','''' : s1:=s1+'Э';
      //
      'Z','z' : s1:=s1+'Я';
      'X','x' : s1:=s1+'Ч';
      'C','c' : s1:=s1+'С';
      'V','v' : s1:=s1+'М';
      'B','b' : s1:=s1+'И';
      'N','n' : s1:=s1+'Т';
      'M','m' : s1:=s1+'Ь';
      '<',',' : s1:=s1+'Б';
      '>','.' : s1:=s1+'Ю';
      //
      '~','`' : s1:=s1+'Ё';
      ' ' : s1:=s1+'.';
    else
      s1:=s1+s[I];
    end
  end;
  Result:=s1;
end;


procedure Prostava;
var
s:string;
begin
  if baza.sql_vip.RecordCount=0 then exit;
  baza.sql_vip.First;
  while not baza.sql_vip.Eof do begin
    baza.sql_vip_sod.Active:=false;
    baza.sql_Vip_prn.Active:=false;
    baza.Sql_Vip_MAIL.Active:=false;
    baza.sql_vip_sod.Parameters[0].Value:=baza.sql_vipID.Value;
    baza.sql_vip_prn.Parameters[0].Value:=baza.sql_vipID.Value;
    baza.Sql_Vip_MAIL.Parameters[0].Value:=baza.sql_vipID.Value;
    baza.sql_vip_sod.Active:=true;
    baza.sql_Vip_prn.Active:=true;
    baza.Sql_Vip_MAIL.Active:=true;
    baza.sql_Vip_prn.First;
    baza.Sql_Vip_MAIL.First;
    baza.sql_vip_sod.First;
    while not baza.sql_vip_sod.Eof do begin
      if baza.Sql_Vip_MAIL.RecordCount>0 then begin
        s:='Update Gurnall set DatMailVip='''+baza.Sql_Vip_MAILDAT_MAIL.AsString+''' where ID='+baza.sql_vip_sodID_ZAP.AsString+' and DatMailVip is Null ;';
        baza.sql_Upd.SQL.Text:=(s);
        baza.sql_Upd.ExecSQL;
      end;
      if baza.sql_Vip_prn.RecordCount>0 then begin
        s:='Update Gurnall set DATPRNVIP='''+baza.sql_Vip_prnDAT_PRINT.AsString+''' where ID='+baza.sql_vip_sodID_ZAP.AsString+' and DATPRNVIP is Null ;';
        baza.sql_Upd.SQL.Text:=(s);
        baza.sql_Upd.ExecSQL;
      end;
      baza.sql_vip_sod.Next;
    end;
    baza.sql_vip.Next;
  end;
end;

procedure TJPKF.FormCreate(Sender: TObject);
Var
  I:Integer;
begin
  Logfil('Иницаилизация ПО');
  Param.Reg:=0;
  dr1.Date:=date;
  dr2.Date:=date;
  de1.Date:=date;
  de2.Date:=date;
  with Constraints do begin
    MinWidth:=Width;
    MinHeight:=Height;
  end;
  Logfil('Чтение файла параметров');
  INF:=Tinifile.Create(ChangefileExt(Paramstr(0),'.ini'));
  Param.BdPath:=INF.ReadString('BD','BD',ChangeFileExt(ExtractFileName(Paramstr(0)),'.mdb'));
  param.AutoUs:=INF.ReadBool('USER','AUTO',false);
  param.AutoCon:=INF.ReadBool('BD','CONNECT',false);
  //param.lastoper:=INF.ReadBool('USER','LASTOPER',false);
  for I:=0 to PCK.PageCount-1 do PCK.ActivePageIndex:=I;
  PCK.ActivePageIndex:=0;
  AddBut.Caption:='Добавить'+#13+'Нарушение';
  ConnectBut.Caption:='Соедениться'+#13+'c БД';
  fltz.Dat1:=dR1.Date;
  fltz.Dat2:=dr2.Date;
  fltz.Error:=ErBox.Checked;
  fltz.De1:=de1.Date;
  fltz.De2:=de2.Date;
  fltz.Ops:=opst.Text;
  fltz.Numt:=numt.Text;
  fltz.TipEr:=errorbox.ItemIndex;
  if Allbox.Checked=true then fltz.Box:=3;
  if Addbox.Checked=true then fltz.Box:=0;
  if Vipbox.Checked=true then fltz.Box:=1;
  if Closbox.Checked=true then fltz.Box:=2;
  fltv.Dat1:=dR1.Date;
  fltv.Dat2:=dr2.Date;
  fltv.Ops:=opst.Text;
  fltv.Numt:=numt.Text;
  if Allbox.Checked=true then fltv.Box:=3;
  if Addbox.Checked=true then fltv.Box:=0;
  if Vipbox.Checked=true then fltv.Box:=1;
  if Closbox.Checked=true then fltv.Box:=2;
  flts.Dat1:=dR1.Date;
  flts.Dat2:=dr2.Date;
  flts.Error:=ErBox.Checked;
  flts.De1:=de1.Date;
  flts.De2:=de2.Date;
  flts.Ops:=opst.Text;
  flts.TipEr:=errorbox.ItemIndex;
  user.host:='';
  user.port:=25;
  user.log:='';
  user.pass:='';
  user.mail:='';
  SetBut.Caption:='Пара-'+#13+'метры' ;
  Logfil('Иницаилизация ПО');
end;

procedure TJPKF.UserButClick(Sender: TObject);
var
  s:string;
begin
  if ConnectBut.tag=0 then exit;
  SetRu;
  JPKF.logfil('Авторизация пользователя');
  try
    baza.sql_user_w.Active:=true;

  except
    JPKF.logfil('Таблица пользователй не найдена');
  end;
  if baza.sql_user_w.Active=false then begin
    s:='CREATE TABLE USERWT ('+
      'ID INTEGER NOT NULL,'+
      'NAMEUSER VARCHAR(30),'+
      'DATCREAT DATETIME,'+
      'DATIN DATETIME,'+
      'DATCLOS DATETIME,'+
      'TIPUSER INTEGER,'+
      'STATUS INTEGER,'+
      'MAIL VARCHAR(255),'+
      'LOG VARCHAR(50),'+
      'PAS VARCHAR(50),'+
      'SERV VARCHAR(50),'+
      'PORT INTEGER)';
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Text:=s;
    baza.sql_Upd.ExecSQL;
    JPKF.Logfil('таблица пользователй создана');
    try
      baza.sql_user_w.Active:=true;
      UserW.ShowModal;
    except

    end;
  end;
  if baza.sql_user_W.RecordCount=0 then begin
    JPKF.logfil('Таблица пользователй пуста');
    UserW.ShowModal;
    exit;
  end;
  Param.Reg:=1;
  Pass.Label1.Caption:='Введите табельный номер';
  Pass.Caption:='Авторизация пользователя';
  Pass.ShowModal;
end;

procedure TJPKF.AddButClick(Sender: TObject);
begin
  Logfil('Добавление нового нарушения');
  param.Oper:=1;
  Add.Label3.Caption:=param.FioOper;
  add.OpsT.Text:='';
  add.Label6.Caption:='Не определено';
  add.TipError.ItemIndex:=0;
  add.BosBox.ItemIndex:=0;
  add.FioBos.Text:='';
  add.Memo1.Lines.clear;
  add.ErrorNotBox.Checked:=false;
  Add.Caption:='Добавление выявеленного нарушения';
  add.Panel3.Visible:=false;
  add.Panel2.Visible:=true;
  if baza.sql_userTipPodr.Value<=1 then begin
    add.ProcT.Text:='100';
    add.ProcT.Enabled:=false;
    with add.BosBox do begin
      with Items do begin
        Clear;
        Add('Начальник ОПС');
        Add('Заместитель начальника ОПС');
        Add('Контролер');
      end;
      ItemIndex:=0;
      add.ErrorNotBox.Enabled:=false;
    end;
  end else begin
    add.ProcT.Text:='0';
    add.ProcT.Enabled:=true;
    add.OpsT.Text:=baza.sql_userIndPodr.AsString;
    add.ErrorNotBox.Enabled:=true;
    with add.BosBox do begin
      with Items do begin
        Clear;
        Add('Начальник ОПС');
        Add('Заместитель начальника ОПС');
        Add('Контролер');
        Add('Оператор');
        Add('Почтальен');
      end;
      ItemIndex:=0;
    end;
  end;
  Add.ShowModal;
end;

procedure TJPKF.EditButClick(Sender: TObject);
Var
I1: integer;
begin
  if baza.Reestr_sql.RecordCount=0 then exit;
  logfil('Редактирование нарушения');
  param.Oper:=2;
  td:=baza.Reestr_sqlDataReg.Value;
  add.Dt1.Date:=baza.Reestr_sqlDatError.Value;
  add.Label3.Caption:=baza.Reestr_sqlOper.Value;
  add.Memo1.Lines.Clear;
  add.Memo1.Lines.Add(baza.Reestr_sqlSoder.AsString);
  add.OpsT.Text:=baza.Reestr_sqlIndOps.Value;
  add.label6.Caption:=baza.Reestr_sqlOPSNAME.Value;
  //add.TipError.ItemIndex:=baza.Reestr_sqlTipError.Value;
  //if baza.Sql_error.Locate('Id',baza.Reestr_sqltiperror.Value,[]) then begin
 //   add.TipError.ItemIndex:=baza.Sql_errorId.Value;
 // end else Showmessage('!');
  add.BosBox.ItemIndex:=baza.Reestr_sqlTipFioError.Value;
  add.ProcT.Text:=baza.Reestr_sqlProc.AsString;
  add.FioBos.Text:=baza.Reestr_sqlfioError.Value;
  Add.Caption:='Редактирование нарушения';
  baza.sql_ops.Active:=false;
  baza.sql_ops.Parameters[0].Value:=baza.Reestr_sqlIndOps.value;
  baza.sql_ops.Parameters[1].Value:=baza.sql_userIndPoctamt.Value;
  baza.sql_ops.active:=true;
  ID:=baza.Reestr_sqlId.Value;
  add.Panel3.Visible:=false;
  add.Panel2.Visible:=true;
  add.ErrorNotBox.Enabled:=false;
  add.ErrorNotBox.Checked:=false;
  add.ShowModal;
end;

procedure TJPKF.ConnectButClick(Sender: TObject);
Var I,im:Integer; Listf:tstringlist;
begin
  if ConnectBut.tag=0 then begin
     baza.BD.Connected:=false;
   // baza.BD.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=JlPk.mdb;Persist Security Info=False';
    try
      logfil('Оперделние параметров подключения к БД');
      baza.BD.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;'+
                      'User ID=Admin;Data Source='+Param.BdPath+
                      ';Mode=Share Deny None;Extended Properties="";'+
                      'Jet OLEDB:System database="";'+
                      'Jet OLEDB:Registry Path="";'+
                      'Jet OLEDB:Database Password="";'+
                      'Jet OLEDB:Engine Type=5;'+
                      'Jet OLEDB:Database Locking Mode=1;'+
                      'Jet OLEDB:Global Partial Bulk Ops=2;'+
                      'Jet OLEDB:Global Bulk Transactions=1;'+
                      'Jet OLEDB:New Database Password="";'+
                      'Jet OLEDB:Create System Database=False;'+
                      'Jet OLEDB:Encrypt Database=False;'+
                      'Jet OLEDB:Don'+''''+'t Copy Locale on Compact=False;' +
                      'Jet OLEDB:Compact Without Replica Repair=False;'+
                      'Jet OLEDB:SFP=False';
      baza.BD.Connected:=true;
      listf:=Tstringlist.Create;
      baza.BD.GetFieldNames('Gurnall',Listf);
      Im:=0;
      For I:=0 to listf.Count-1 do if AnsiUpperCase(listf.Strings[I])='ERRORNOT' then im:=im+1;
      if Im=0 then begin
          baza.sql_Upd.SQL.Text:=('ALTER TABLE Gurnall ADD ERRORNOT INTEGER');
          baza.sql_Upd.ExecSQL;
          baza.sql_Upd.SQL.Text:=('ALTER TABLE GurnalDel ADD ERRORNOT INTEGER');
          baza.sql_Upd.ExecSQL;
      end;
      Im:=0;
      For I:=0 to listf.Count-1 do if AnsiUpperCase(listf.Strings[I])='DATMAILVIP' then im:=1;
      if im=0 then begin
        baza.sql_Upd.SQL.Text:=('ALTER TABLE Gurnall ADD DATMAILVIP TIMESTAMP');
        baza.sql_Upd.ExecSQL;
        baza.sql_Upd.SQL.Text:=('ALTER TABLE GurnalDel ADD DATMAILVIP TIMESTAMP');
        baza.sql_Upd.ExecSQL;
      end;
      Im:=0;
      For I:=0 to listf.Count-1 do if AnsiUpperCase(listf.Strings[I])='DATPRNVIP' then im:=1;
      if im=0 then begin
          baza.sql_Upd.SQL.Text:=('ALTER TABLE Gurnall ADD DATPRNVIP TIMESTAMP');
          baza.sql_Upd.ExecSQL;
          baza.sql_Upd.SQL.Text:=('ALTER TABLE GurnalDel ADD DATPRNVIP TIMESTAMP');
          baza.sql_Upd.ExecSQL;
      end;
      listf.Free;
      logfil('Соединение с БД установлено');
      ConnectBut.Tag:=1;
      PCK.Enabled:=true;
      ConnectBut.Caption:='Отключиться'+#13+'от БД';
      baza.sql_user.Active:=true;
      if baza.sql_userTipPodr.Value>0 then begin
        label5.Visible:=false;
        AktBut.Visible:=false;
        UserBut.Width:=(Panel2.Width-8) div 5;
        AddBut.Left:=UserBut.Width+UserBut.Left+1;
        AddBut.Width:= (Panel2.Width-8) div 5;
        EditBut.Left:=AddBut.Left+addbut.Width+1;
        EditBut.Width:= (Panel2.Width-8) div 5;
        ClosBut.Left:=Editbut.Left+editbut.Width+1;
        ClosBut.Width:= (Panel2.Width-8) div 5;
        DelBut.Left:=ClosBut.Left+ClosBut.Width+1;
        DelBut.Width:= (Panel2.Width-8) div 5;
        AktBut.Left:=DelBut.Left+DelBut.Width+1;
        AktBut.Width:= (Panel2.Width-8) div 5;
        if baza.sql_userTipPodr.Value =2 then
          Pck.Pages[2].TabVisible:=false
        else Pck.Pages[2].TabVisible:=true;
      end;
      UserBut.Enabled:=true;
      if param.AutoUs=true then UserBut.Click;
    except
      Mess('Ошибка соединения с БД',Mb_IconWarning,Mb_Ok);
      logfil('Ошибка соединения с БД');
    end;
  end else begin
    logfil('Отключение от БД');
    baza.BD.Connected:=false;
    ConnectBut.Tag:=0;
    ConnectBut.Caption:='Соедениться'+#13+'c БД';
    UserBut.Enabled:=false;
    UserBut.Tag:=0;
    Addbut.Enabled:=false;
    EditBut.Enabled:=false;
    DelBut.Enabled:=false;
    AktBut.Enabled:=false;
    FltBut.Enabled:=false;
    PrnBut.Enabled:=false;
    dr1.Enabled:=false;
    dr2.Enabled:=false;
    Opst.Enabled:=false;
    SetBut.Enabled:=false;
    operbox.Enabled:=false;
    ErBox.Enabled:=false;
    param.Reg:=0;
    StaTusBar1.Panels[0].Text:='';
    UserBut.Caption:='Регистрация';
    PCK.Enabled:=false;
    PCK.ActivePageIndex:=0;
    PCS.Enabled:=false;
    PCS.ActivePageIndex:=0;
    ReturnBut.Enabled:=false;
    AllBox.Enabled:=false;
    AddBox.Enabled:=false;
    VipBox.Enabled:=false;
    ClosBox.Enabled:=false;
    ClosBut.Enabled:=false;
    errorbox.Enabled:=false;
    FioNart.Enabled:=false;
    For I:=0 to Pcf.PageCount-1 do pcf.Pages[I].TabVisible:=true;
    Pcf.ActivePageIndex:=0;
    Pcf.Enabled:=false;
  end;
end;

procedure TJPKF.FltButClick(Sender: TObject);
var
  s,s1:String;
  I1:integer;
begin
  if ConnectBut.Tag=0 then exit;

  case PCK.ActivePageIndex of
    0: begin
       logfil('Определение параметров отбора значений в таблице нарушений');
      s:='(DATAREG>='+FormatDateTime('dd.mm.yyyy',dr1.Date)+') and (DATAREG<='+FormatDateTime('dd.mm.yyyy',dr2.Date)+')';
      if length(trim(Opst.Text))>0 then begin
        if (Kontrolstr(Opst.Text)=false) then begin
          Mess('Индекс ОПС состоит только из цифр',Mb_IconInformation,Mb_Ok);
          Opst.SetFocus;
          exit;
        end;
        s:=s+' and (IndOps='+Opst.Text+')';
      end;
      if Length(FioNart.Text)>0 then s:=s+' and (FIOERROR LIKE ''%'+FioNart.Text+'%'')';
      if ErBox.Checked=true then
        s:=s+' and (DATERROR>='+FormatDateTime('dd.mm.yyyy',de1.Date)+') and (DATERROR<='+FormatDateTime('dd.mm.yyyy',de2.Date)+')';
      if OperBox.ItemIndex>0 then
        s:=s+' and (OPER='''+OperBox.Text+''')';
        s1:='';
      if Addbox.Checked=true then s:=s+' and (otmetka=0)';
      if Vipbox.Checked=true then s:=s+' and (otmetka=1)';
      if Closbox.Checked=true then s:=s+' and (otmetka=2)';
      if errorbox.ItemIndex>0 then begin
        if baza.Sql_error.Locate('NumError',copy(errorbox.Text,1,Pos(' ',errorbox.Text)-1),[]) then begin
              s:=s+' and (TipError='+IntToStr(baza.Sql_errorId.Value)+')';
        end;
      end;
      if Length(trim(numt.Text))>0 then begin
        if (Kontrolstr(Numt.Text)=false) then begin
          Mess('Номер записи состоит только из цифр',Mb_IconInformation,Mb_Ok);
          numt.SetFocus;
          exit;
        end;
        s:=s+' and (ID='+numt.text+')';
      end;
      baza.Reestr_sql.Filtered:=false;
      baza.Reestr_sql.Filter:=s;
      baza.Reestr_sql.Filtered:=true;
      logfil('Фильтр в таблице нарушений установлен');
      if baza.Reestr_sql.RecordCount>0 then begin
         logfil('Записей в отборе '+IntToStr(baza.Reestr_sql.RecordCount));
        if param.TOP<=1 then begin
          AktBut.Enabled:=true;
          EditBut.Enabled:=true;
          ClosBut.enabled:=true;
          DelBut.Enabled:=true;
        end;
        PrnBut.Enabled:=true;
        taberror.SetFocus;
      end else begin
         logfil('Записей в отборе 0');
        if param.TOP<=1 then begin
          AktBut.Enabled:=false;
          EditBut.Enabled:=false;
          ClosBut.Enabled:=false;
          DelBut.Enabled:=false;
        end;
        PrnBut.Enabled:=false;
      end;
    end;
    1: begin
    end;
    2: begin
     logfil('Опредение параметров отбора таблице выписок');
      s:='(DTC>='''+FormatDateTime('dd.mm.yyyy hh:nn:ss',dr1.DateTime)+''') and (DTC<='''+FormatDateTime('dd.mm.yyyy hh:nn:ss',dr2.DateTime)+''')';
      if length(trim(Opst.Text))>0 then begin
        if (Kontrolstr(Opst.Text)=false) then begin
          Mess('Индекс ОПС состоит только из цифр',Mb_IconInformation,Mb_Ok);
          Opst.SetFocus;
          exit;
        end;
        s:=s+' and (IndOps='+Opst.Text+')';
      end;
      if OperBox.ItemIndex>0 then
        s:=s+' and (UserCr='''+OperBox.Text+''')';
      baza.sql_vip.Filtered:=false;
      baza.sql_vip.Filter:=s;
      baza.sql_vip.Filtered:=true;
      logfil('Фильтр в таблице выписок установлен');
      baza.sql_Vip_prn.Active:=false;
      baza.sql_vip_sod.Active:=false;
      if baza.sql_vip.RecordCount>0 then begin
         logfil('Записей в таблице '+IntToStr(baza.sql_vip.RecordCount));
        DubleBut.Enabled:=true;
        if (length(trim(user.host))>0) and (length(trim(user.log))>0) and
           (length(trim(user.mail))>0) and (length(trim(IntToStr(user.port)))>0) then
        begin
          MailBut.Enabled:=true;
          AllMailBut.Enabled:=true;
        end;
      end else begin
       logfil('В таблице выписок 0 записей');
        DubleBut.Enabled:=false;
        MailBut.Enabled:=false;
        AllMailBut.Enabled:=false;
      end;
      vipiskatab.SetFocus;
      vipiskatab.OnEnter(sender);
    end;
    3: begin
      logfil('Определение параметров отбора значений в таблице нарушений для статистики');
      if Errorstatbox.Checked=true then begin
        baza.sql_stat.Active:=false;
        baza.sql_stat_ops.Active:=false;
        baza.sql_stat.SQL.Clear;
        baza.sql_stat.sql.Add('SELECT SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
        baza.sql_stat.sql.Add('FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror)');
        baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
        baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        if ErBox.Checked=true then begin
          baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
          baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
        end;
        baza.sql_stat.sql.Add('GROUP BY SprError.id, SprError.NumError, SprError.TextError');
        baza.sql_stat.sql.Add('ORDER BY SprError.NumError');
        baza.sql_stat.Active:=true;
        tabStat.SetFocus;
        if baza.sql_stat.RecordCount>0 then PrnBut.Enabled:=true else PrnBut.Enabled:=false;
      end;
      if OpstatBox.Checked=true then begin
        baza.sql_stat.Active:=false;
        baza.sql_stat_ops.Active:=false;
        baza.sql_stat_ops.SQL.Clear;
        baza.sql_stat_ops.sql.Add('SELECT Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
        baza.sql_stat_ops.sql.Add('FROM Gurnall LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
        baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
        baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        if ErBox.Checked=true then begin
          baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
          baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
        end;
        baza.sql_stat_ops.sql.Add('GROUP BY Gurnall.Indops, ops.Opsname');
        baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
        baza.sql_stat_ops.Active:=true;
        tabStatops.SetFocus;
        if baza.sql_stat_ops.RecordCount>0 then PrnBut.Enabled:=true else PrnBut.Enabled:=false;
      end;// else begin
      if OperStatBox.Checked=true then begin
        baza.sql_stat.Active:=false;
        baza.sql_stat_ops.Active:=false;
        baza.sql_stat_oper.Active:=false;
        baza.sql_stat_oper.SQL.Clear;
        baza.sql_stat_oper.sql.Add('SELECT Count(*) AS Kol, Gurnall.oper');
        baza.sql_stat_oper.sql.Add('FROM Gurnall ');
        baza.sql_stat_oper.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2) ');
        baza.sql_stat_oper.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_stat_oper.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        if ErBox.Checked=true then begin
          baza.sql_stat_oper.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
          baza.sql_stat_oper.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_stat_oper.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
        end;
        baza.sql_stat_oper.sql.Add('GROUP BY Gurnall.oper');
        baza.sql_stat_oper.sql.Add('ORDER BY Gurnall.oper');
        baza.sql_stat_oper.Active:=true;
        taboperstat.SetFocus;
        if baza.sql_stat_oper.RecordCount>0 then PrnBut.Enabled:=true else PrnBut.Enabled:=false;
      end;
      if UsStatBox.Checked=true then begin
        baza.sql_stat.Active:=false;
        baza.sql_stat_ops.Active:=false;
        baza.sql_stat_ops.SQL.Clear;
        baza.sql_stat_ops.sql.Add('SELECT Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
        baza.sql_stat_ops.sql.Add('FROM Gurnall LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
        baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
        baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
        baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
        if ErBox.Checked=true then begin
          baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
          baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
          baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
        end;
        baza.sql_stat_ops.sql.Add('GROUP BY Gurnall.Indops, ops.Opsname');
        baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
        baza.sql_stat_ops.Active:=true;
        tabStatops.SetFocus;
        if baza.sql_stat_ops.RecordCount>0 then PrnBut.Enabled:=true else PrnBut.Enabled:=false;
      end;
    end;
  end;

end;

procedure TJPKF.DelButClick(Sender: TObject);

begin
  if baza.Reestr_sql.RecordCount=0 then exit;
  if Mess('Вы действительно хотитет удалить текущую запись?',Mb_iconQuestion,Mb_YesNo)=IdNo then exit;
  logfil('Попытка удаление записи № '+baza.Reestr_sqlId.AsString);
  Param.Reg:=2;
  Pass.Label1.Caption:='';
  Pass.Caption:='Подтверждение прав';
  Pass.ShowModal;
end;

procedure TJPKF.PrnButClick(Sender: TObject);
Var
  textl     : TstringList;
  s1,s2,s3  : String;
  I1,I2,I3,I4  : integer;
begin
  case pck.ActivePageIndex of
    0: begin
      if baza.Reestr_sql.RecordCount=0 then exit;
      logfil('Печать журнала за период с '+FormatDateTime('dd.mm.yyyy',dr1.Date)+' по '+ FormatDateTime('dd.mm.yyyy',dr2.Date));
      Report.QRLabel7.Caption:='за период с '+FormatDateTime('dd.mm.yyyy',dr1.Date)+' по '+ FormatDateTime('dd.mm.yyyy',dr2.Date);
      if baza.sql_userTipPodr.Value<2 then
        report.QRLabel39.Caption:=baza.sql_userIndPoctamt.Value+' '+baza.sql_userNamePodr.Value
      else
        report.QRLabel39.Caption:='ОПС '+baza.sql_userIndPodr.Value+' '+baza.sql_userNamePodr.Value;
      if Length(trim(opst.Text))>0 then begin
        report.qrlabel7.Caption:=report.QRLabel7.Caption+', ОПС '+opst.Text;
        logfil(' по ОПС '+opst.Text);
      end;
      Report.QRLabel19.Caption:='Оператор ИП _________________________ '+param.FioOper;
      Report.Reesrtr.Preview;
    end;
    3: begin
      Textl:=TstringList.Create;
      TextL.add('СТАТИСТИКА ВЫЯВЛЕНЫХ НАРУШЕНИЙ за период с '+FormatdateTime('dd.mm.yyyy',Dr1.Date)+' по '+FormatdateTime('dd.mm.yyyy',Dr2.Date));
      TextL.add('');
      if ErrorStatBox.Checked=true then begin
        I1:=baza.sql_stat.RecNo;
        baza.sql_stat.First;
        while not baza.sql_stat.Eof do begin
          s1:=VarToStr(baza.sql_stat['TextError']);
          for I4:=1 to 70-Length(s1) do s1:=s1+'.';
          s2:=IntTostr(baza.sql_stat['Kol']);
          for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
          textl.Add(s1+' - '+s2);
          textl.Add('');
          TabstatOps.OnEnter(sender);
          baza.sql_stat_ops.First;
          while not baza.sql_stat_ops.Eof do begin
            s1:='  '+IntToStr(baza.sql_stat_ops.recNo)+' - '+baza.sql_stat_ops['IndOps']+' - '+baza.sql_stat_ops['Opsname'];
            for I4:=1 to 70- length(s1) do s1:=s1+'.';
            s2:=IntTostr(baza.sql_stat_ops['Kol']);
            for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
            textl.Add(s1+' - '+s2);
            baza.sql_stat_ops.Next;
          end;
          baza.sql_stat.Next;
          s1:='';
          for I4:=1 to 93 do s1:='-'+s1;
          textl.Add(s1);
          TextL.add('');
        end;
        baza.sql_stat.RecNo:=I1;
      end;// else begin
      if OpStatBox.Checked=true then begin
        I1:=baza.sql_stat_ops.RecNo;
        baza.sql_stat_ops.First;
        while not baza.sql_stat_ops.Eof do begin
          s1:=baza.sql_stat_ops['IndOps']+' - '+baza.sql_stat_ops['Opsname'];
          for I4:=1 to 76- length(s1) do s1:=s1+'.';
          s2:=IntTostr(baza.sql_stat_ops['Kol']);
          for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
          textl.Add(s1+' - '+s2);
          TextL.add('');
          Tabstatops.OnEnter(sender);
          baza.sql_stat.First;
          while not baza.sql_stat.Eof do begin
            s1:=baza.sql_stat['TextError'];
            for I4:=1 to 70-Length(s1) do s1:=s1+'.';
            s2:=IntTostr(baza.sql_stat['Kol']);
            for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
            textl.Add('  '+IntToStr(baza.sql_stat.recNo)+' - '+s1+' - '+s2);
            baza.sql_stat.Next;
          end;
          baza.sql_stat_ops.Next;
          s1:='';
          for I4:=1 to 99 do s1:='-'+s1;
          textl.Add(s1);
          TextL.add('');
        end;
        baza.sql_stat_ops.RecNo:=I1;
      end;// else begin
      if OperStatBox.Checked=true then begin
        I1:=baza.sql_stat_oper.RecNo;
        baza.sql_stat_oper.First;
        while not baza.sql_stat_oper.Eof do begin
          s1:=VarToStr(baza.sql_stat_oper['OPER']);
          for I4:=1 to 76- length(s1) do s1:=s1+'.';
          s2:=IntToStr(baza.sql_stat_oper['KOL']);
          for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
          textl.Add(s1+' - '+s2);
          TextL.add('');
          tabOperstat.OnEnter(sender);
          baza.sql_stat_ops.First;
          while not baza.sql_stat_ops.Eof do begin
            s1:=baza.sql_stat_ops['IndOps']+' - '+baza.sql_stat_ops['Opsname'];
            for I4:=1 to 76- length(s1) do s1:=s1+'.';
            s2:=IntTostr(baza.sql_stat_ops['Kol']);
            for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
            textl.Add(s1+' - '+s2);
            TextL.add('');
            Tabstatops.OnEnter(sender);
            baza.sql_stat.First;
            while not baza.sql_stat.Eof do begin
              s1:=baza.sql_stat['TextError'];
              for I4:=1 to 70-Length(s1) do s1:=s1+'.';
              s2:=IntTostr(baza.sql_stat['Kol']);
              for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
              textl.Add('  '+IntToStr(baza.sql_stat.recNo)+' - '+s1+' - '+s2);
              baza.sql_stat.Next;
            end;
            baza.sql_stat_ops.Next;
            TextL.add('');
          end;
          baza.sql_stat_oper.Next;
          s1:='';
          for I4:=1 to 99 do s1:='-'+s1;
          textl.Add(s1);
          TextL.add('');
        end;
        baza.sql_stat_oper.RecNo:=I1;
      end;
      if UsStatBox.Checked=true then begin
        I1:=baza.sql_stat_ops.RecNo;
        baza.sql_stat_ops.First;
        while not baza.sql_stat_ops.Eof do begin
          s1:=baza.sql_stat_ops['IndOps']+' - '+baza.sql_stat_ops['Opsname'];
          for I4:=1 to 76- length(s1) do s1:=s1+'.';
          s2:=IntTostr(baza.sql_stat_ops['Kol']);
          for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
          textl.Add(s1+' - '+s2);
          TextL.add('');
          Tabstatops.OnDblClick(sender);
          baza.sql_stat_oper.First;
          while not baza.sql_stat_oper.Eof do begin
            S1:=VarToStr(baza.sql_stat_oper['Oper']);
            for I4:=1 to 74-Length(s1) do s1:=s1+'.';
            s2:=IntTostr(baza.sql_stat_oper['Kol']);
            for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
            textl.Add('  '+s1+' - '+s2);
            Taboperstat.OnDblClick(sender);
            baza.sql_stat.First;
            while not baza.sql_stat.Eof do begin
              s1:=baza.sql_stat['TextError'];
              for I4:=1 to 70-Length(s1) do s1:=s1+'.';
              s2:=IntTostr(baza.sql_stat['Kol']);
              for I4:=1 to 20-LenGth(s2) do S2:='.'+s2;
              textl.Add('  '+IntToStr(baza.sql_stat.recNo)+' - '+s1+' - '+s2);
              baza.sql_stat.Next;
            end;
            baza.sql_stat_oper.Next;
            TextL.add('');
          end;
          baza.sql_stat_ops.Next;
          s1:='';
          for I4:=1 to 99 do s1:='-'+s1;
          textl.Add(s1);
          TextL.add('');
        end;
        baza.sql_stat_ops.RecNo:=I1;
      end;
      TextL.add('Сформирован '+FormatDateTime('dd.mm.yyyy hh:nn:ss',now));
      TextL.add('');
      TextL.add('Оператор ИП _________________________ '+param.FioOper);
      s1:=GetEnvironmentVariable('temp')+'\repstat.txt';
      textl.SaveToFile(S1);
      Textl.Free;
      ShellExecute(handle,'open',Pchar(S1),nil,nil,SW_SHOW);
    end;
  end;
end;

procedure TJPKF.AktButClick(Sender: TObject);
begin
  if baza.Reestr_sql.RecordCount=0 then exit;

  Case Mess('Сформирвать выписку по: '+#13+'Да - Текущему ОПС'+#13+'Нет - По всем ОПС в текущем диапазоне',MB_IconQuestion,Mb_YesNoCancel) of
      IdYes : begin
        logfil('Формирование выписки по дате '+baza.Reestr_sqlDataReg.asstring+' по ОПС '+baza.Reestr_sqlIndOps.AsString);
        Param.MassVip:=1;
        param.PrnVip:=false;
        Id:=baza.Reestr_sqlId.Value;
        baza.sql_akte.Active:=true;
        baza.sql_akte.Filtered:=false;
        baza.sql_akte.Filter:='(OTMETKA=0) and (DATAREG='+FormatDateTime('dd.mm.yyyy',baza.Reestr_sqlDataReg.Value)+') and (INDOPS='''+trim(baza.Reestr_sqlIndOps.AsString)+''')';
        baza.sql_akte.Filtered:=true;
        report.QRLabel13.Caption:=param.FioOper;
        report.Akt.Preview;
        baza.sql_akte.Active:=false;
        baza.Reestr_sql.Locate('ID',Id,[]);
        taberror.SetFocus;
        Taberror.OnEnter(sender);
      end;
      IdNo : begin
        AllVipsiska;
        with taberror do begin
          SetFocus;
          OnEnter(sender);
        end;
      end;
  end;
end;

procedure TJPKF.TabErrorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if UserBut.Tag=1 then begin
    if (key=vk_insert) and (param.TOP<=1)then addbut.Click;
    if (shift=[ssCtrl]) and (key=vk_return) and (param.TOP<=1) then editbut.Click;
    if (shift=[ssShift]) and (key=vk_return) and (param.TOP<=1) then Closbut.Click;
    if (key=vk_delete) and (param.TOP<=1)then delbut.Click;
    if (shift=[ssShift]) and (key=Ord('R')) then PrnBut.Click;
    if (shift=[ssCtrl]) and (key=Ord('F')) then FltBut.Click;
    if (shift=[ssCtrl]) and (key=Ord('V')) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2) then AktBut.Click;
{    if (shift=[ssShift]) and (key=Ord('V')) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2) then begin
      AllVipsiska;
      with taberror do begin
        SetFocus;
        OnEnter(sender);
      end;
    end; 
    if (shift=[ssShift]) and (key=Ord('D')) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2)  then begin
      AllDoklad;
      with taberror do begin
        SetFocus;
        OnEnter(sender);
      end;
    end;  }
    if (shift=[ssCtrl]) and (key=Ord('D')) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2) then begin
      if baza.Reestr_sql.RecordCount=0 then exit;
      Case Mess('Сформирвать докладную по: '+#13+'Да - текущему ОПС'+#13+'Нет - По всем ОПС в текущем диапазоне',MB_IconQuestion,Mb_YesNoCancel) of
        IdYes : begin
          baza.sql_doklad.Active:=false;
          baza.sql_doklad.Parameters[0].Value:=baza.Reestr_sqlIndOps.AsString;
          baza.sql_doklad.Active:=true;
          baza.sql_doklad.Filtered:=false;
          param.TipDokl:=1;

          if Mess('Формировать докладную по всему диапазону для этого ОПС ?',Mb_IconQuestion,Mb_YesNo)=IdNo then begin
            baza.sql_doklad.Filter:='(DATAREG='+FormatDateTime('dd.mm.yyyy',baza.Reestr_sqlDataReg.Value)+')';
            baza.sql_doklad.Filtered:=true;
            param.TipDokl:=2;
            logfil('Формирование докладной по ОПС '+baza.Reestr_sqlIndOps.AsString+' по дате '+baza.Reestr_sqlDataReg.AsString);
          end else begin
            baza.sql_doklad.Filter:='(DATAREG>='+FormatDateTime('dd.mm.yyyy',JPKF.Dr1.Date)+') and (DATAREG<='+FormatDateTime('dd.mm.yyyy',JPKF.Dr2.Date)+')';
            baza.sql_doklad.Filtered:=true;
            logfil('Формирование докладной по ОПС '+baza.Reestr_sqlIndOps.AsString+' по диапазону с '+FormatDateTime('dd.mm.yyyy',JPKF.Dr1.Date)+' по '+FormatDateTime('dd.mm.yyyy',JPKF.Dr2.Date));
          end;
          param.MassDok:=1;
          Doklad.ShowModal;
        end;
        IdNo : begin
          AllDoklad;
          with taberror do begin
            SetFocus;
            OnEnter(sender);
          end;
        end;
      end;
    end;
  end;
  if (shift=[ssShift]) and (key=Ord('U')) then UserBut.Click;
  if (shift=[ssCtrl]) and (key=Ord('S')) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2) then SpravkaDoc;
end;

procedure TJPKF.DR1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then Dr2.SetFocus;
  if (shift=[ssCtrl]) and (key=Ord('F')) then FltBut.Click;
end;

procedure TJPKF.Dr2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then Opst.SetFocus;
  if (shift=[ssCtrl]) and (key=Ord('F')) then FltBut.Click;
end;

procedure TJPKF.OpstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (shift=[ssCtrl]) and (key=Ord('F')) then FltBut.Click;
end;

procedure TJPKF.SetButClick(Sender: TObject);
begin
  if baza.sql_user_W.RecordCount>0 then
    setup.ShowModal
  else UserW.ShowModal;
end;

procedure TJPKF.FormDestroy(Sender: TObject);
begin
  Logfil('Сохранение файла настроек');
  INF.WriteString('BD','BD',param.BdPath);
  INF.WriteBool('USER','AUTO',param.AutoUs);
  INF.WriteBool('BD','CONNECT',param.AutoCon);
  //INF.WriteBool('USER','LASTOPER',param.lastoper);
  inf.Free;
  Logfil('Завершение работы');
  Logfil('**********************************************************************');
end;

procedure TJPKF.N1Click(Sender: TObject);
begin
  if ConnectBut.tag=1 then
      with PathBd do begin
        patt.Enabled:=false;
        PathBut.Enabled:=false;
        ShowModal;
      end
 else
    with PathBd do begin
      patt.Enabled:=true;
      PathBut.Enabled:=true;
      ShowModal;
    end;
end;

procedure TJPKF.ReturnButClick(Sender: TObject);
Var
  s:string;
begin
  if Mess('Вы действительно хотите вернуть запись в работу?',Mb_IconQuestion,Mb_YesNo)=IdNo then Exit;
  logfil('Возврат записи '+baza.Reestr_del_sqlIdZ.AsString+' в работу ');
  try
    S:='INSERT INTO Gurnall (ID,DataReg,Oper,DatError,IndOps,Soder,Otmetka,DataOtmetka,FioOm,tiperror,fioError,TipFioError,Proc) values ('+
      baza.Reestr_del_sqlIdZ.AsString+','+
      ''''+baza.reestr_del_sqlDataReg.asstring+''''+','+
      ''''+baza.reestr_del_sqlOPER.value +''''+','+
      ''''+baza.Reestr_del_sqlDatError.asstring+''''+','+
      ''''+baza.Reestr_del_sqlIndOps.value +''''+','+
      ''''+baza.Reestr_del_sqlSoder.value +''''+
      ',0,'+
      ''''+baza.Reestr_del_sqlDataOtmetka.Asstring+''''+','+
      ''''+baza.Reestr_del_sqlFioOm.value +''',';
    if length(trim(baza.Reestr_del_sqltiperror.AsString))>0 then s:=s+baza.Reestr_del_sqltiperror.AsString+',' else s:=s+'0,';
    s:=s+''''+baza.reestr_del_sqlfioerror.Value+''',';
    if length(trim(baza.Reestr_del_sqlTipFioError.AsString))>0 then s:=s+baza.Reestr_del_sqlTipFioError.AsString+',' else s:=s+'0,';
    s:=s+baza.Reestr_del_sqlProc.AsString+');';
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Clear;
    baza.sql_Upd.SQL.Text:=(s);
    baza.sql_Upd.ExecSQL;
    baza.Reestr_sql.Active:=false;
    baza.Reestr_sql.Active:=true;
    Baza.sql_Upd.SQL.Text:=('DELETE FROM GurnalDel where ID='+baza.Reestr_del_sqlID.AsString+';');
    baza.sql_Upd.ExecSQL;
    baza.Reestr_del_sql.Active:=false;
    baza.Reestr_del_sql.Active:=true;
    logfil('Запись успшено восcтановлена');
  except
    Application.MessageBox('Ошибка восстановления записи',Pchar(Caption),Mb_Ok+Mb_IconWarning);
    logfil('Ошибка востановления записи');
  end;

end;

procedure TJPKF.ErBoxClick(Sender: TObject);
begin
  if ErBox.Checked=true then begin
    de1.Enabled:=true;
    de2.Enabled:=true;
  end else begin
    de1.Enabled:=false;
    de2.Enabled:=false;
  end;
end;

procedure TJPKF.TabErrorCellClick(Column: TColumn);
begin
  if baza.Reestr_sql.RecordCount>0 then
    if baza.Reestr_sqlOtmetka.Value<=1 then begin
      EditBut.Enabled:=true;
      ClosBut.Enabled:=true;
      delbut.Enabled:=true;
      if baza.Reestr_sqlOtmetka.Value=0 then Aktbut.Enabled:=true else Aktbut.Enabled:=false;
    end else begin                           
      EditBut.Enabled:=false;
      ClosBut.Enabled:=false;
      delbut.Enabled:=false;
      Aktbut.Enabled:=false;
    end
  else begin
    EditBut.Enabled:=false;
    ClosBut.Enabled:=false;
    AktBut.Enabled:=false;
    delbut.Enabled:=false;
  end;
  
end;

procedure TJPKF.TabErrorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if baza.Reestr_sql.RecordCount>0 then
    if baza.Reestr_sqlOtmetka.Value<=1 then begin
      EditBut.Enabled:=true;
      ClosBut.Enabled:=true;
      delbut.Enabled:=true;
      if baza.Reestr_sqlOtmetka.Value=0 then Aktbut.Enabled:=true else Aktbut.Enabled:=false;
    end else begin                           
      EditBut.Enabled:=false;
      ClosBut.Enabled:=false;
      delbut.Enabled:=false;
      Aktbut.Enabled:=false;
    end
  else begin
    EditBut.Enabled:=false;
    ClosBut.Enabled:=false;
    AktBut.Enabled:=false;
    delbut.Enabled:=false;
  end;
end;

procedure TJPKF.ClosButClick(Sender: TObject);
begin
  param.Oper:=3;
  logfil('Редактирование \ Закрытие записи');
  Add.Caption:='Редактирование нарушения';
  add.Panel3.Visible:=true;
  add.Panel3.Align:=alClient;
  add.Panel2.Visible:=false;
  add.Memo2.Lines.Clear;
  add.Memo2.Lines.Text:=(baza.Reestr_sqlSoderOtmetki.Value);
  Add.ShowModal;
end;

procedure TJPKF.TabErrorEnter(Sender: TObject);
begin
  if baza.Reestr_sql.RecordCount>0 then
    if baza.Reestr_sqlOtmetka.Value<=1 then begin
      EditBut.Enabled:=true;
      ClosBut.Enabled:=true;
      delbut.Enabled:=true;
      if baza.Reestr_sqlOtmetka.Value=0 then Aktbut.Enabled:=true else Aktbut.Enabled:=false;
    end else begin                           
      EditBut.Enabled:=false;
      ClosBut.Enabled:=false;
      delbut.Enabled:=false;
      Aktbut.Enabled:=false;
    end
  else begin
    EditBut.Enabled:=false;
    ClosBut.Enabled:=false;
    AktBut.Enabled:=false;
    delbut.Enabled:=false;
  end;
end;

procedure TJPKF.VipiskatabCellClick(Column: TColumn);
begin
  baza.sql_vip_sod.Active:=false;
  baza.sql_Vip_prn.Active:=false;
  baza.Sql_Vip_MAIL.Active:=false;
  if baza.sql_vip.RecordCount=0 then exit;
  baza.sql_vip_sod.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_prn.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.Sql_Vip_MAIL.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_sod.Active:=true;
  baza.sql_Vip_prn.Active:=true;
  baza.Sql_Vip_MAIL.Active:=true;
end;

procedure TJPKF.VipiskatabEnter(Sender: TObject);
begin
  baza.sql_vip_sod.Active:=false;
  baza.sql_Vip_prn.Active:=false;
  baza.Sql_Vip_MAIL.Active:=false;
  if baza.sql_vip.RecordCount=0 then exit;
  baza.sql_vip_sod.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_prn.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.Sql_Vip_MAIL.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_sod.Active:=true;
  baza.sql_Vip_prn.Active:=true;
  baza.Sql_Vip_MAIL.Active:=true;
end;

procedure TJPKF.VipiskatabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  baza.sql_vip_sod.Active:=false;
  baza.sql_Vip_prn.Active:=false;
  baza.Sql_Vip_MAIL.Active:=false;
  if baza.sql_vip.RecordCount=0 then exit;
  baza.sql_vip_sod.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_prn.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.Sql_Vip_MAIL.Parameters[0].Value:=baza.sql_vipID.Value;
  baza.sql_vip_sod.Active:=true;
  baza.sql_Vip_prn.Active:=true;
  baza.Sql_Vip_MAIL.Active:=true;
end;

procedure TJPKF.TabSheet1Show(Sender: TObject);
begin
  PCS.ActivePageIndex:=0;
end;

procedure TJPKF.VipiskatabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return then DubleBut.Click;
  if (key=vk_insert) and (param.TOP<=1) and (baza.sql_userTipPodr.Value<2) then Prostava;
end;

procedure TJPKF.PCKChange(Sender: TObject);
begin
  Case PCK.ActivePageIndex of
    0: begin
  if AktBut.Visible=true then
    UserBut.Width:=(Panel2.Width-8) div 6
  else UserBut.Width:=(Panel2.Width-8) div 5;
  AddBut.Left:=UserBut.Width+UserBut.Left+1;
  if AktBut.Visible=true then
    AddBut.Width:= (Panel2.Width-8) div 6
  else AddBut.Width:= (Panel2.Width-8) div 5;
  EditBut.Left:=AddBut.Left+addbut.Width+1;
  if AktBut.Visible=true then
    EditBut.Width:= (Panel2.Width-8) div 6
  else EditBut.Width:= (Panel2.Width-8) div 5;
  ClosBut.Left:=Editbut.Left+editbut.Width+1;
  if AktBut.Visible=true then
    ClosBut.Width:= (Panel2.Width-8) div 6
  else ClosBut.Width:= (Panel2.Width-8) div 5;
  DelBut.Left:=ClosBut.Left+ClosBut.Width+1;
  if AktBut.Visible=true then
    DelBut.Width:= (Panel2.Width-8) div 6
  else DelBut.Width:= (Panel2.Width-8) div 5;
  AktBut.Left:=DelBut.Left+DelBut.Width+1;
  if AktBut.Visible=true then
    AktBut.Width:= (Panel2.Width-8) div 6
  else AktBut.Width:= (Panel2.Width-8) div 5;
      if userbut.Tag=1 then begin
        erbox.Enabled:=true;
        allbox.Enabled:=true;
        addbox.Enabled:=true;
        VipBox.Enabled:=true;
        ClosBox.Enabled:=true;
        ErrorBox.Enabled:=true;
        if erbox.Checked=true then begin
          de1.Enabled:=true;
          de2.Enabled:=true;
        end;
 {       fltv.Dat1:=dr1.DateTime;
        fltv.Dat2:=dr2.DateTime;
        fltv.Ops:=opst.Text;
        fltv.Numt:=numt.Text;
        if Allbox.Checked=true then fltv.Box:=3;
        if Addbox.Checked=true then fltv.Box:=0;
        if Vipbox.Checked=true then fltv.Box:=1;
        if Closbox.Checked=true then fltv.Box:=2;   }
        dr1.Date:=fltz.Dat1;
        dr2.Date:=fltz.Dat2;
        ErBox.Checked:=fltz.Error;
        De1.Date:=fltz.De1;
        de2.Date:=fltz.De2;
        opst.Text:=fltz.Ops;
        Numt.Text:=fltz.numt;
        errorbox.ItemIndex:=fltz.TipEr;
        case  fltz.Box of
          0: Addbox.Checked:=true;
          1: Vipbox.Checked:=true;
          2: Vipbox.Checked:=true;
          3: Allbox.Checked:=true;
        end;
        fltbut.Click;
      end;
    end;
    2: begin
      if userbut.Tag=1 then begin
        erbox.Enabled:=false;
          de1.Enabled:=false;
          de2.Enabled:=false;
        allbox.Enabled:=false;
        addbox.Enabled:=false;
        VipBox.Enabled:=false;
        ClosBox.Enabled:=false;
        Errorbox.Enabled:=false;
      {  fltz.Dat1:=dR1.Date;
        fltz.Dat2:=dr2.Date;
        fltz.Error:=ErBox.Checked;
        fltz.De1:=de1.Date;
        fltz.De2:=de2.Date;
        fltz.Ops:=opst.Text;
        fltz.TipEr:=errorbox.ItemIndex;
        fltz.Numt:=numt.Text;
        if Allbox.Checked=true then fltz.Box:=3;
        if Addbox.Checked=true then fltz.Box:=0;
        if Vipbox.Checked=true then fltz.Box:=1;
        if Closbox.Checked=true then fltz.Box:=2;  }
        dr1.Date:=fltv.Dat1;
        dr2.Date:=fltv.Dat2;
        Opst.Text:=fltv.Ops;
        numt.Text:=fltv.Numt;
        case  fltv.Box of
          0: Addbox.Checked:=true;
          1: Vipbox.Checked:=true;
          2: Vipbox.Checked:=true;
          3: Allbox.Checked:=true;
        end;
        fltbut.Click;
      end;
    end;
    3: begin
      dr1.Date:=flts.Dat1;
      dr2.Date:=flts.Dat2;
      Opst.Text:=flts.Ops;
      if ErBox.Checked=true then begin
        flts.Error:=ErBox.Checked;
        de1.Date:= flts.De1;
        de2.Date:= flts.De2;
      end;
      errorbox.ItemIndex:=flts.TipEr;
      fltbut.Click;
    end;
  end;
end;

procedure TJPKF.DubleButClick(Sender: TObject);
begin

  if baza.sql_vip.RecordCount>0 then begin
    logfil('Откртие дубликата выписки '+baza.sql_vipID.AsString);
      report.QRlabel32.Caption:='Повторно распечатал _____________________________'+param.FioOper;
    report.RepDuble.Preview;
  end;
end;

procedure TJPKF.MailButClick(Sender: TObject);
Var
  SL:TStringList;
  S:String;
begin
  if Length(trim(user.mail))=0 then begin
    Mess('Не указан Адрес электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Адрес электронной почты');
    Exit;
  end;
  if Length(trim(user.host))=0 then begin
    Mess('Не указан Сервер электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Сервер электронной почты');
    Exit;
  end;
  if Length(trim(user.log))=0 then begin
    Mess('Не указан Логин электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Логин электронной почты');
    Exit;
  end;
  With MailF Do Begin
    logfil('Формирование текста выписики для отправки по электронной почте по ОПС '+baza.sql_vipIndOps.Value+' '+baza.sql_vipOPSNAME.Value);
    ProgressBar1.Min:=0;
    ProgressBar1.Position:=0;
    SL:=TstringList.Create;
    S:='Начальнику ОПС '+baza.sql_vipIndOps.Value+' '+baza.sql_vipOPSNAME.Value;
    SL.Add(S);
    Sl.Add('');
    S:='ВЫПИСКА из журнала производственного контроля о выявленом нарушении';
    SL.Add(S);
    Sl.Add('');
    s:=baza.sql_vip_sodDataReg.AsString+', оператором информпункта  почтамта при проведении проверки первичных';
    SL.Add(S);
    S:='документов поступивших из вашего ОПС были выявлены следующие нарушения:';
    Sl.Add(S);
    Sl.Add('');
    baza.sql_vip_sod.First;
    while not baza.sql_vip_sod.Eof do begin
      s:=baza.sql_vip_sodDatError.AsString+' - '+baza.sql_vip_sodSoder.Value;
      Sl.Add(S);
      baza.sql_vip_sod.Next;
    end;
    baza.sql_vip_sod.First;
    Sl.Add('');
    s:='   Вам необходимо в трехдневный срок предоставить объяснение о причинах приведших'+#13+
       'к выявленным нарушениям. А так же приянть все меры для устранения данных  нарушений.';
    SL.Add(S);
    Sl.Add('');
    Sl.Add(baza.sql_userUser2Dolgn.Value+'             '+baza.sql_userUser2.Value);
    sl.Add('');
    sl.Add('');
    sl.Add(' Ознакомлен (а) _________________ ______________________ __________________________');
    sl.Add('                     Дата              Подпись                расшифровка          ');
    sl.Add('');
    Sl.Add('  Подписанный экземпляр подлежит обязательному возврату в информпункт почтамта не  ');
    Sl.Add('двух рабочих дней с момента поступления в ОПС');
    Show;
    baza.sql_Upd.active:=false;
    baza.sql_Upd.SQL.Text:='select B.MAIL From MAILTAB B where B.POSTIND='''+baza.sql_vipIndOps.Value+'''';
    baza.sql_Upd.Active:=true;
    //ShowMessage(baza.sql_Upd.Fields[0].FullName+#13+ baza.sql_Upd.Fields[0].AsString);
    label1.Caption:='Отправка выписки в ОПС : '+baza.sql_vipIndOps.Value+' - '+baza.sql_Upd['MAIL'];
    Application.ProcessMessages;
    if Length(trim(baza.sql_Upd['MAIL']))=0 then begin
      Mess('Не указан Адрес электронной почты ОПС'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
      logfil('Не указан Адрес электронной почты ОПС');
      Exit;
    end;
    try
   //   SendMail(user.host,'',baza.sql_Upd['MAIL'],user.mail,Sl.Text,'',user.log,user.pass);
        with smtps do begin
          if Connected=true then Disconnect;
          Host:=user.host;
          Port:=user.port;
          UserID:=user.log;
          with PostMessage do begin
            FromAddress:=user.mail;
            //FromName:=baza.sql_userNamePodr.Value;
            with ToAddress do begin
              Clear;
              Add(baza.sql_Upd['MAIL']);
            end;
            ReplyTo:=user.mail;
            Subject:='Выписка из журанла производвенного контроля';
            with Body do begin
              Clear;
              AddStrings(sl);
            end;
          end;
          try
            Connect;
            if Connected=true then begin
              try
                smtps.SendMail;
                try
                  baza.VipiskaMail.Active:=true;
                  baza.VipiskaMail.Append;
                  baza.VipiskaMailID_VIP.Value:=baza.sql_vipID.value;
                  baza.VipiskaMailDAT_MAIL.Value:=now;
                  baza.VipiskaMail.Post;
                  baza.sql_vip_sod.First;
                  while not baza.sql_vip_sod.Eof do begin
                    s:='Update Gurnall set DatMailVip='''+baza.VipiskaMailDAT_MAIL.AsString+''' where ID='+baza.sql_vip_sodID_ZAP.AsString+' and DatMailVip is Null ;';
                    baza.sql_Upd.SQL.Text:=(s);
                    baza.sql_Upd.ExecSQL;
                    baza.sql_vip_sod.Next;
                  end;
                except
                  JPKF.Logfil('Ошибка регистрации отправки в БД');
                  JPKF.Mess('Ошибка регистрации отправки в БД',MB_IconWarning,Mb_Ok);
                end;
              except
                JPKF.Logfil('Ошибка отправки письма');
                JPKF.Mess('Ошибка отправки письма',MB_IconWarning,Mb_Ok);
              end;
            end;
          except
            JPKF.Logfil('Ошибка соединения с сервером ');
            JPKF.Mess(('Ошибка соединения с сервером '+user.host),MB_IconWarning,Mb_Ok);
          end;
          if Connected=true then Disconnect;
        end;
    except
      JPKF.Logfil('Ошибка формирования текста письма');
      JPKF.Mess('Ошибка формирования текста письма',MB_IconWarning,Mb_Ok);
    end;
    //sl.SaveToFile(extractFilePath(Paramstr(0))+'mail.txt');
    Sl.Free;
    baza.VipiskaMail.Active:=false;
    baza.Sql_Vip_MAIL.Active:=false;
    baza.Sql_Vip_MAIL.Active:=true;
    Close;
  End;
end;

procedure TJPKF.AllMailButClick(Sender: TObject);
label ds;
var
  I:Int64;
  SL:TstringList;
  S:String;
begin
  if Length(trim(user.mail))=0 then begin
    Mess('Не указан Адрес электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Адрес электронной почты');
    Exit;
  end;
  if Length(trim(user.host))=0 then begin
    Mess('Не указан Сервер электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Сервер электронной почты');
    Exit;
  end;
  if Length(trim(user.log))=0 then begin
    Mess('Не указан Логин электронной почты'+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok);
    logfil('Не указан Логин электронной почты');
    Exit;
  end;

  I:=baza.sql_vip.RecNo;
  baza.sql_vip.First;
  while not baza.sql_vip.Eof do begin
    With MailF Do Begin
      logfil('Формирование текста выписики для отправки по электронной почте по ОПС '+baza.sql_vipIndOps.Value+' '+baza.sql_vipOPSNAME.Value);
      SL:=TstringList.Create;
      S:='Начальнику ОПС '+baza.sql_vipIndOps.Value+' '+baza.sql_vipOPSNAME.Value;
      SL.Add(S);
      Sl.Add('');
      S:='ВЫПИСКА из журнала производственного контроля о выявленом нарушении';
      SL.Add(S);
      Sl.Add('');
      baza.sql_vip_sod.Active:=false;
      baza.sql_vip_sod.Parameters[0].Value:=baza.sql_vipID.Value;
      baza.sql_vip_sod.Active:=true;
      s:=baza.sql_vip_sodDataReg.AsString+', оператором информпункта  почтамта при проведении проверки первичных';
      SL.Add(S);
      S:='документов поступивших из вашего ОПС были выявлены следующие нарушения:';
      Sl.Add(S);
      Sl.Add('');
      baza.sql_vip_sod.First;
      while not baza.sql_vip_sod.Eof do begin
        s:=baza.sql_vip_sodDatError.AsString+' - '+baza.sql_vip_sodSoder.Value;
        Sl.Add(S);
        baza.sql_vip_sod.Next;
      end;
      baza.sql_vip_sod.Active:=false;
      Sl.Add('');
      s:='   Вам необходимо в трехдневный срок предоставить объяснение о причинах приведших'+#13+
         'к выявленным нарушениям. А так же приянть все меры для устранения данных  нарушений.';
      SL.Add(S);
      Sl.Add('');
      Sl.Add(baza.sql_userUser2Dolgn.Value+'             '+baza.sql_userUser2.Value);
      sl.Add('');
      sl.Add('');
      sl.Add(' Ознакомлен (а) _________________ ______________________ __________________________');
      sl.Add('                     Дата              Подпись                расшифровка          ');
      sl.Add('');
      Sl.Add('  Подписанный экземпляр подлежит обязательному возврату в информпункт почтамта не  ');
      Sl.Add('двух рабочих дней с момента поступления в ОПС');
      Show;
      baza.sql_Upd.active:=false;
      baza.sql_Upd.SQL.Text:='select B.MAIL From MAILTAB B where B.POSTIND='''+baza.sql_vipIndOps.Value+'''';
      baza.sql_Upd.Active:=true;
      label1.Caption:='Отправка выписки в ОПС : '+baza.sql_vipIndOps.Value+' - '+baza.sql_Upd['MAIL'];
      Application.ProcessMessages;
      if Length(trim(baza.sql_Upd['MAIL']))=0 then begin
        Mess('Не указан Адрес электронной почты ОПС '+baza.sql_vipIndOps.Value+#13+'Отправка не возможна',Mb_iconWarning,Mb_ok,);
        Logfil('Не указан Адрес электронной почты ОПС '+baza.sql_vipIndOps.Value);
        goto ds;
      end;
    try
   //   SendMail(user.host,'',baza.sql_Upd['MAIL'],user.mail,Sl.Text,'',user.log,user.pass);
        with smtps do begin
          if Connected=true then Disconnect;
          Host:=user.host;
          Port:=user.port;
          UserID:=user.log;
          with PostMessage do begin
            FromAddress:=user.mail;
           // FromName:=baza.sql_userNamePodr.Value;
            with ToAddress do begin
              Clear;
              Add(baza.sql_Upd['MAIL']);
            end;
            ReplyTo:=user.mail;
            Subject:='Выписка из журанла производвенного контроля';
            with Body do begin
              Clear;
              AddStrings(sl);
            end;
          end;
          try
            Connect;
            if Connected=true then begin
              try
                smtps.SendMail;
                try
                  baza.VipiskaMail.Active:=true;
                  baza.VipiskaMail.Append;
                  baza.VipiskaMailID_VIP.Value:=baza.sql_vipID.value;
                  baza.VipiskaMailDAT_MAIL.Value:=now;
                  baza.VipiskaMail.Post;
                  baza.VipiskaMail.Active:=false;
                  while not baza.sql_vip_sod.Eof do begin
                    s:='Update Gurnall set DatMailVip='''+baza.VipiskaMailDAT_MAIL.AsString+''' where ID='+baza.sql_vip_sodID_ZAP.AsString+' and DatMailVip is Null ;';
                    baza.sql_Upd.SQL.Text:=(s);
                    baza.sql_Upd.ExecSQL;
                    baza.sql_vip_sod.Next;
                  end;                  
                except
                  JPKF.Logfil('Ошибка регистрации отправки в БД');
                  JPKF.Mess('Ошибка регистрации отправки в БД',MB_IconWarning,Mb_Ok);                
                end;
              except
                JPKF.Logfil('Ошибка отправки письма');
                JPKF.Mess('Ошибка отправки письма',MB_IconWarning,Mb_Ok);
              end;
            end;
          except
            JPKF.Logfil('Ошибка соединения с сервером');
            JPKF.Mess('Ошибка соединения с сервером',MB_IconWarning,Mb_Ok);
          end;
          if Connected=true then Disconnect;
        end;
    except
      JPKF.Logfil('Ошибка формирования текста письма');
      JPKF.Mess('Ошибка формирования текста письма',MB_IconWarning,Mb_Ok);
    end;
      ds :
      //sl.SaveToFile(extractFilePath(Paramstr(0))+IntTostr(baza.sql_vipID.Value)+'.txt');
      Sl.Free;
      Close;
    End;
    baza.sql_vip.Next;
  end;
  baza.sql_vip.RecNo:=I;
  VipiskaTab.SetFocus;
end;

procedure TJPKF.FormResize(Sender: TObject);
begin
///
  TabError.Columns[5].Width:=Taberror.Width-45-
  TabError.Columns[0].Width-TabError.Columns[1].Width-
  TabError.Columns[2].Width-TabError.Columns[3].Width-
  TabError.Columns[4].Width-TabError.Columns[6].Width-TabError.Columns[7].Width;
///
  TabErrorDel.Columns[4].Width:=TabErrorDel.Width-45-
  TabErrorDel.Columns[0].Width-TabErrorDel.Columns[1].Width-
  TabErrorDel.Columns[2].Width-TabErrorDel.Columns[3].Width-
  TabErrorDel.Columns[5].Width;
///
  VipiskaTab.Columns[3].Width:=VipiskaTab.Width-45-
  VipiskaTab.Columns[0].Width-VipiskaTab.Columns[1].Width-
  VipiskaTab.Columns[2].Width-VipiskaTab.Columns[4].Width;
///
  Fioerrt.Width:=Panel13.Width-FioErrt.Left-3;
  if AktBut.Visible=true then
    UserBut.Width:=(Panel2.Width-8) div 6
  else UserBut.Width:=(Panel2.Width-8) div 5;
  AddBut.Left:=UserBut.Width+UserBut.Left+1;
  if AktBut.Visible=true then
    AddBut.Width:= (Panel2.Width-8) div 6
  else AddBut.Width:= (Panel2.Width-8) div 5;
  EditBut.Left:=AddBut.Left+addbut.Width+1;
  if AktBut.Visible=true then
    EditBut.Width:= (Panel2.Width-8) div 6
  else EditBut.Width:= (Panel2.Width-8) div 5;
  ClosBut.Left:=Editbut.Left+editbut.Width+1;
  if AktBut.Visible=true then
    ClosBut.Width:= (Panel2.Width-8) div 6
  else ClosBut.Width:= (Panel2.Width-8) div 5;
  DelBut.Left:=ClosBut.Left+ClosBut.Width+1;
  if AktBut.Visible=true then
    DelBut.Width:= (Panel2.Width-8) div 6
  else DelBut.Width:= (Panel2.Width-8) div 5;
  AktBut.Left:=DelBut.Left+DelBut.Width+1;
  if AktBut.Visible=true then
    AktBut.Width:= (Panel2.Width-8) div 6
  else AktBut.Width:= (Panel2.Width-8) div 5;
  ReturnBut.Width:=Panel5.Width-4;
  DubleBut.Width:=(Panel8.Width-3) div 3;
  MailBut.Left:=DubleBut.Left+DubleBut.Width+1;
  mailBut.Width:=DubleBut.Width;
  AllMailBut.Left:=MailBut.Left+MailBut.Width;
  AllMailBut.Width:=Dublebut.Width;
  Panel10.Width:=Panel9.Width div 2;
  VipiskaSod.Columns[2].Width:=VipiskaSod.Width-Vipiskasod.Columns[0].Width-
  Vipiskasod.Columns[1].Width-55;
  PrnTab.Width:=panel10.Width div 2;
  Prntab.Columns[0].Width:=Prntab.Width-55;
  mailtab.Columns[0].Width:=mailtab.Width-55;
  fltbut.Width:=panel14.Width-5;
  PrnBut.Width:=panel14.Width-5;
  tabstat.Columns[1].Width:=tabstat.Width-Tabstat.Columns[0].Width-Tabstat.Columns[2].Width-35;
  tabstatops.Columns[1].Width:=tabstat.Columns[1].Width;
  tabOperStat.Columns[0].Width:=TabOperStat.Width-TabOperstat.Columns[1].Width-35;
  if errorstatbox.Checked=true then  begin
    TabStat.Visible:=false;
    TabStatOps.Visible:=false;
    TabStat.Align:=AlTop;
    TabStat.Height:=PanelStat.Height div 2;
    TabStat.Visible:=true;
    TabStatOps.Align:=AlClient;
    TabStatOps.Visible:=true;
  end;// else begin
  if OpstatBox.Checked=true then begin
    TabStatOps.Visible:=false;
    TabStat.Visible:=false;
    TabStatOps.Align:=AlTop;
    TabStatOps.Height:=PanelStat.Height -(PanelStat.Height div 2);
    TabStatOps.Visible:=true;
    TabStat.Align:=AlClient;
    TabStat.Visible:=true;
  end;// else begin
  if OperStatBox.Checked=true then begin
    TabOperStat.Visible:=false;
    TabStatOps.Visible:=false;
    TabStat.Visible:=false;
    TabOperStat.Top:=1;
    TabOperStat.Align:=AlTop;
    TabOperStat.Height:=PanelStat.Height div 3;
    TabOperStat.Visible:=true;
    TabStatOps.Top:=TabOperStat.Height+TabOperStat.Top+1;
    TabStatOps.Align:=AlTop;
    TabStatOps.Height:=PanelStat.Height div 3;
    TabStatOps.Visible:=true;
    TabStat.Align:=AlClient;
    TabStat.Visible:=true;
  end;
  if UsStatBox.Checked=true then begin
      TabOperStat.Visible:=false;
      TabStatOps.Visible:=false;
      TabStat.Visible:=false;
      TabStatOps.Top:=1;
      TabStatOps.Align:=AlTop;
      TabStatOps.Height:=PanelStat.Height div 3;
      TabStatOps.Visible:=true;
      TabOperStat.Top:= TabStatOps.Height+TabStatOps.Top+1;
      TabOperStat.Align:=AlTop;
      TabOperStat.Height:=PanelStat.Height div 3;
      TabOperStat.Visible:=true;
      TabStat.Align:=AlClient;
      TabStat.Visible:=true;
  end;
end;
procedure TJPKF.FormShow(Sender: TObject);
begin
  Logfil('Открытие основного рабочего окна');
  if param.AutoCon=true then
    if ConnectBut.Tag=0 then ConnectBut.Click;
  FormResize(sender);
end;

procedure TJPKF.NumtExit(Sender: TObject);
begin
  if (Kontrolstr(Numt.Text)=false) and (Length(numt.Text)>0) then begin
    Mess('Номер записи состоит только из цифр',Mb_IconInformation,Mb_Ok);
    numt.SetFocus;
  end;
end;

procedure TJPKF.OpstExit(Sender: TObject);
begin
  if (Kontrolstr(Opst.Text)=false) and (length(opst.Text)>0) then begin
    Mess('Индекс ОПС состоит только из цифр',Mb_IconInformation,Mb_Ok);
    Opst.SetFocus;
  end;
end;

procedure TJPKF.N3Click(Sender: TObject);
begin
  loading.ShowModal;
end;

procedure TJPKF.TabSheet1Exit(Sender: TObject);
begin
        fltz.Dat1:=dR1.Date;
        fltz.Dat2:=dr2.Date;
        fltz.Error:=ErBox.Checked;
        fltz.De1:=de1.Date;
        fltz.De2:=de2.Date;
        fltz.Ops:=opst.Text;
        fltz.TipEr:=errorbox.ItemIndex;
        fltz.Numt:=numt.Text;
        if Allbox.Checked=true then fltz.Box:=3;
        if Addbox.Checked=true then fltz.Box:=0;
        if Vipbox.Checked=true then fltz.Box:=1;
        if Closbox.Checked=true then fltz.Box:=2;
end;

procedure TJPKF.TabSheet5Exit(Sender: TObject);
begin
        fltv.Dat1:=dr1.DateTime;
        fltv.Dat2:=dr2.DateTime;
        fltv.Ops:=opst.Text;
        fltv.Numt:=numt.Text;
        if Allbox.Checked=true then fltv.Box:=3;
        if Addbox.Checked=true then fltv.Box:=0;
        if Vipbox.Checked=true then fltv.Box:=1;
        if Closbox.Checked=true then fltv.Box:=2;
end;

procedure TJPKF.TabSheet8Exit(Sender: TObject);
begin
  flts.Dat1:=dr1.Date;
  flts.Dat2:=dr2.Date;
  flts.Ops:=Opst.Text;
  if flts.Error=true then begin
    flts.De1:=de1.Date;
    flts.De2:=de2.Date;
  end;
  flts.TipEr:=errorbox.ItemIndex;
end;

procedure TJPKF.tabStatEnter(Sender: TObject);
begin
  if (baza.sql_stat.RecordCount>0) and (errorstatbox.Checked=true) then begin
    try
      baza.sql_stat_ops.Active:=false;
      baza.sql_stat_ops.SQL.Clear;
      baza.sql_stat_ops.sql.Add('SELECT SprError.id, Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('FROM (Gurnall LEFT JOIN SprError ON SprError.Id = Gurnall.tiperror) LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
      baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      if LenGth(trim(VarToStr(baza.sql_stat['Id'])))=0 then
        baza.sql_stat_ops.sql.Add(' and (Gurnall.TipError is Null)')
      else baza.sql_stat_ops.sql.Add(' and (Gurnall.TipError='+IntToStr(baza.sql_stat['Id'])+')');
      baza.sql_stat_ops.sql.Add('GROUP BY SprError.id, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
      baza.sql_stat_ops.Active:=true;
    except end;
  end;
end;

procedure TJPKF.tabStatCellClick(Column: TColumn);
begin
  if (baza.sql_stat.RecordCount>0) and (errorstatbox.Checked=true) then begin
    try
      baza.sql_stat_ops.Active:=false;
      baza.sql_stat_ops.SQL.Clear;
      baza.sql_stat_ops.sql.Add('SELECT SprError.id, Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('FROM (Gurnall LEFT JOIN SprError ON SprError.Id = Gurnall.tiperror) LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
      baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      if LenGth(trim(VarToStr(baza.sql_stat['Id'])))=0 then
        baza.sql_stat_ops.sql.Add(' and (Gurnall.TipError is Null)')
      else baza.sql_stat_ops.sql.Add(' and (Gurnall.TipError='+IntToStr(baza.sql_stat['Id'])+')');
      baza.sql_stat_ops.sql.Add('GROUP BY SprError.id, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
      baza.sql_stat_ops.Active:=true;
    except end;
  end;
end;

procedure TJPKF.tabStatDblClick(Sender: TObject);
begin
  tabstat.OnEnter(sender);
end;

procedure TJPKF.ErrorStatBoxClick(Sender: TObject);
begin
  TabOperStat.Visible:=false;
  TabStat.Visible:=false;
  TabStatOps.Visible:=false;
  TabStat.Align:=AlTop;
  TabStat.Height:=PanelStat.Height div 2;
  TabStat.Visible:=true;
  TabStatOps.Align:=AlClient;
  TabStatOps.Visible:=true;
  Fltbut.Click;
end;

procedure TJPKF.OpstatBoxClick(Sender: TObject);
begin
  TabOperStat.Visible:=false;
  TabStatOps.Visible:=false;
  TabStat.Visible:=false;
  TabStatOps.Align:=AlTop;
  TabStatOps.Height:=PanelStat.Height -(PanelStat.Height div 2);
  TabStatOps.Visible:=true;
  TabStat.Align:=AlClient;
  TabStat.Visible:=true;
  Fltbut.Click;
end;

procedure TJPKF.tabStatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
TabStat.OnEnter(sender);
end;

procedure TJPKF.TabStatOpsEnter(Sender: TObject);
begin
  if (baza.sql_stat_ops.RecordCount>0) then begin
    if (OpStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT Gurnall.IndOps, SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add('GROUP BY Gurnall.IndOps, SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY Gurnall.IndOps,SprError.NumError');
      baza.sql_stat.Active:=true;
      except end;
    end;
    if (OperStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT Gurnall.IndOps, SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add(' and (Gurnall.oper ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat.sql.Add('GROUP BY Gurnall.IndOps, SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY Gurnall.IndOps,SprError.NumError');
      baza.sql_stat.Active:=true;
      except end;
    end;
    if (UsStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat_oper.Active:=false;
      baza.sql_stat_oper.SQL.Clear;
      baza.sql_stat_oper.sql.Add('SELECT Count(*) AS Kol, Gurnall.fioError as oper');
      baza.sql_stat_oper.sql.Add('FROM Gurnall ');
      baza.sql_stat_oper.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2) ');
      baza.sql_stat_oper.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_oper.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_oper.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_oper.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_oper.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat_oper.SQL.Add(' and (Gurnall.Indops='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat_oper.sql.Add(' GROUP BY Gurnall.fioError');
      baza.sql_stat_oper.sql.Add(' ORDER BY Gurnall.fioError');
      baza.sql_stat_oper.Active:=true;
      taboperstat.OnEnter(sender);
      except end;
    end;
  end;
end;

procedure TJPKF.TabStatOpsCellClick(Column: TColumn);
begin
  if (baza.sql_stat_ops.RecordCount>0) then begin
    if (OpStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT Gurnall.IndOps, SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add('GROUP BY Gurnall.IndOps, SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY Gurnall.IndOps,SprError.NumError');
      baza.sql_stat.Active:=true;
      except end;
    end;
    if (OperStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT Gurnall.IndOps, SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add(' and (Gurnall.oper ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat.sql.Add('GROUP BY Gurnall.IndOps, SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY Gurnall.IndOps,SprError.NumError');
      baza.sql_stat.Active:=true;
      except end;
    end;
    if (UsStatBox.Checked=true) then begin
      try
      baza.sql_stat_oper.Active:=false;
      baza.sql_stat_oper.SQL.Clear;
      baza.sql_stat_oper.sql.Add('SELECT Count(*) AS Kol, Gurnall.fioError as oper');
      baza.sql_stat_oper.sql.Add('FROM Gurnall ');
      baza.sql_stat_oper.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2) ');
      baza.sql_stat_oper.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_oper.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_oper.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_oper.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_oper.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat_oper.SQL.Add(' and (Gurnall.Indops='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat_oper.sql.Add(' GROUP BY Gurnall.fioError');
      baza.sql_stat_oper.sql.Add(' ORDER BY Gurnall.fioError');
      baza.sql_stat_oper.Active:=true;
      TabOperStat.OnDblClick(Column);
      except end;
    end;
  end;
end;

procedure TJPKF.TabStatOpsDblClick(Sender: TObject);
begin
  TabStatOps.OnEnter(sender);
end;

procedure TJPKF.OperStatBoxClick(Sender: TObject);
begin
      TabOperStat.Visible:=false;
      TabStatOps.Visible:=false;
      TabStat.Visible:=false;
      TabOperStat.Top:=1;
      TabOperStat.Align:=AlTop;
      TabOperStat.Height:=PanelStat.Height div 3;
      TabOperStat.Columns[0].Title.caption:='Контролер';
      TabOperStat.Visible:=true;
      TabStatOps.Top:=TabOperStat.Height+TabOperStat.Top+1;
      TabStatOps.Align:=AlTop;
      TabStatOps.Height:=PanelStat.Height div 3;
      TabStatOps.Visible:=true;
      TabStat.Align:=AlClient;
      TabStat.Visible:=true;
  Fltbut.Click;
end;

procedure TJPKF.TabOperStatEnter(Sender: TObject);
begin
  if (baza.sql_stat_oper.RecordCount>0) then begin
    if (OperStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat_ops.Active:=false;
      baza.sql_stat_ops.SQL.Clear;
      baza.sql_stat_ops.sql.Add('SELECT Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('FROM Gurnall LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
      baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat_ops.sql.Add(' and (Gurnall.oper ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat_ops.sql.Add('GROUP BY Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
      baza.sql_stat_ops.Active:=true;
      TabStatOps.OnEnter(sender);
      except end;
    end;
    if UsStatbox.Checked=true then begin
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror)');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.FioError ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add('GROUP BY SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY SprError.NumError');
      baza.sql_stat.Active:=true;
    end;
  end;
end;

procedure TJPKF.TabOperStatCellClick(Column: TColumn);
begin
  if (baza.sql_stat_oper.RecordCount>0) then begin
    if (OperStatBox.Checked=true) then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat_ops.Active:=false;
      baza.sql_stat_ops.SQL.Clear;
      baza.sql_stat_ops.sql.Add('SELECT Count(*) AS Kol, Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('FROM Gurnall LEFT JOIN Ops ON Ops.POSTINDEX=Gurnall.Indops');
      baza.sql_stat_ops.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat_ops.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat_ops.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat_ops.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat_ops.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat_ops.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat_ops.sql.Add(' and (Gurnall.oper ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat_ops.sql.Add('GROUP BY Gurnall.Indops, ops.Opsname');
      baza.sql_stat_ops.sql.Add('ORDER BY Gurnall.Indops');
      baza.sql_stat_ops.Active:=true;
      TabStatOps.OnDblClick(Column);
      except end;
    end;
    if UsStatbox.Checked=true then begin
      try
      baza.sql_stat.Active:=false;
      baza.sql_stat.SQL.Clear;
      baza.sql_stat.sql.Add('SELECT SprError.Id, SprError.NumError, SprError.TextError, Count(*) AS Kol');
      baza.sql_stat.sql.Add('FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperror)');
      baza.sql_stat.sql.Add('WHERE (Gurnall.DATAREG>=:D1 and Gurnall.DATAREG<=:D2)');
      baza.sql_stat.Parameters[0].Value:=FormatDateTime('dd.mm.yyyy',dr1.Date);
      baza.sql_stat.Parameters[1].Value:=FormatDateTime('dd.mm.yyyy',dr2.Date);
      if ErBox.Checked=true then begin
        baza.sql_stat.sql.Add(' and (Gurnall.DATERROR>=:D1 and Gurnall.DATERROR<=:D2)');
        baza.sql_stat.Parameters[2].Value:=FormatDateTime('dd.mm.yyyy',de1.Date);
        baza.sql_stat.Parameters[3].Value:=FormatDateTime('dd.mm.yyyy',de2.Date);
      end;
      baza.sql_stat.SQL.Add(' and (Gurnall.FioError ='''+baza.sql_stat_oper['Oper']+''')');
      baza.sql_stat.SQL.Add(' and (Gurnall.IndOps='''+baza.sql_stat_ops['IndOps']+''')');
      baza.sql_stat.sql.Add('GROUP BY SprError.id, SprError.NumError, SprError.TextError');
      baza.sql_stat.sql.Add('ORDER BY SprError.NumError');
      baza.sql_stat.Active:=true;
      except end;
    end;
  end;
end;

procedure TJPKF.TabOperStatDblClick(Sender: TObject);
begin
  tabOperStat.OnEnter(sender);
end;

procedure TJPKF.TabOperStatKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tabOperStat.OnEnter(sender);
end;

procedure TJPKF.UsStatBoxClick(Sender: TObject);
begin
      TabOperStat.Visible:=false;
      TabStatOps.Visible:=false;
      TabStat.Visible:=false;
      TabStatOps.Top:=1;
      TabStatOps.Align:=AlTop;
      TabStatOps.Height:=PanelStat.Height div 3;
      TabStatOps.Visible:=true;
      TabOperStat.Top:= TabStatOps.Height+TabStatOps.Top+1;
      TabOperStat.Align:=AlTop;
      TabOperStat.Columns[0].Title.Caption:='Нарушитель';
      TabOperStat.Height:=PanelStat.Height div 3;
      TabOperStat.Visible:=true;
      TabStat.Align:=AlClient;
      TabStat.Visible:=true;
end;

procedure TJPKF.TabStatOpsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TabStatOps.OnEnter(sender);
end;

procedure TJPKF.N4Click(Sender: TObject);
Var I : Int64;
begin
  with baza.Reestr_sql do begin
    if RecordCount>0 then begin
      I:=baza.Reestr_sqlId.Value;
      Active:=false;
      sql.Text:='Select * From Reestr Order By '+Taberror.SelectedField.FullName+' ASC';
      Active:=true;
      locate('Id',I,[]);
    end;
  end;
end;

procedure TJPKF.N5Click(Sender: TObject);
Var I : int64;
begin
  with baza.Reestr_sql do begin
    if RecordCount>0 then begin
      I:=baza.Reestr_sqlId.Value;
      Active:=false;
      sql.Text:='Select * From Reestr Order By '+Taberror.SelectedField.FullName+' DESC';
      Active:=true;
      locate('Id',I,[]);
    end;
  end;
end;

procedure TJPKF.N6Click(Sender: TObject);
Var I : int64;
begin
  with baza.Reestr_sql do begin
    if RecordCount>0 then begin
      I:=baza.Reestr_sqlId.Value;
      Active:=false;
      sql.Text:='Select * From Reestr Order By Id';
      Active:=true;
      locate('Id',I,[]);
    end;
  end;

end;

end.
