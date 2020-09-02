unit GlavnForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, iniFiles, Grids, DBGrids,
  XPMan,Psock,WinSock,DateUtils, Menus;

type
  TGlavn = class(TForm)
    ConnectPanel: TGroupBox;
    ButConnectPanel: TPanel;
    BdPanel: TPanel;
    StatusBar1: TStatusBar;
    ConnectBut: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ServerT: TEdit;
    BdT: TEdit;
    loginT: TEdit;
    PasswT: TEdit;
    DatPanel: TPanel;
    RegionPanel: TPanel;
    Label1: TLabel;
    RegionBox: TComboBox;
    CityPanel: TPanel;
    Label2: TLabel;
    CityBox: TComboBox;
    TabCityPanel: TPanel;
    StreetPanel: TPanel;
    Label3: TLabel;
    StreetBox: TComboBox;
    TabStreetPanel: TPanel;
    HausPanel: TPanel;
    Label4: TLabel;
    HauseBox: TComboBox;
    IndexPanel: TPanel;
    TabCity: TDBGrid;
    TabStreet: TDBGrid;
    Label9: TLabel;
    XPManifest1: TXPManifest;
    PrevBut: TSpeedButton;
    NextBut: TSpeedButton;
    Label10: TLabel;
    GlavMenu: TMainMenu;
    MenuFile: TMenuItem;
    MenuService: TMenuItem;
    MenuFileClosd: TMenuItem;
    MenuServiceExport: TMenuItem;
    MenuInfo: TMenuItem;
    procedure ConnectButClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ServerTExit(Sender: TObject);
    procedure BdTExit(Sender: TObject);
    procedure loginTExit(Sender: TObject);
    procedure PasswTExit(Sender: TObject);
    procedure RegionBoxChange(Sender: TObject);
    procedure RegionBoxExit(Sender: TObject);
    procedure RegionBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CityBoxChange(Sender: TObject);
    procedure CityBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CityBoxExit(Sender: TObject);
    procedure TabCityCellClick(Column: TColumn);
    procedure TabCityDblClick(Sender: TObject);
    procedure CityBoxCloseUp(Sender: TObject);
    procedure RegionBoxCloseUp(Sender: TObject);
    procedure TabCityEnter(Sender: TObject);
    procedure TabCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StreetBoxChange(Sender: TObject);
    procedure StreetBoxCloseUp(Sender: TObject);
    procedure StreetBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabStreetCellClick(Column: TColumn);
    procedure TabStreetDblClick(Sender: TObject);
    procedure TabStreetEnter(Sender: TObject);
    procedure HauseBoxChange(Sender: TObject);
    procedure TabStreetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HauseBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ServerTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BdTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure loginTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasswTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HauseBoxCloseUp(Sender: TObject);
    procedure NextButClick(Sender: TObject);
    procedure PrevButClick(Sender: TObject);
    procedure MenuFileClosdClick(Sender: TObject);
    procedure MenuServiceExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WriteLog (text:string);
    Function Code(text,password: string;decode: boolean) :string;
  end;

Const
  KeyPas : String = 'Djuke,bytcb,bhcr[hel[hfybtnujhljtnthgtymt';

var
  Glavn   : TGlavn;
  INF     : TiniFile;
  Sp,DE   : string;
  D1,D2   : TDateTime;
  OpenExp : Boolean;
implementation

uses BazaForma, ExportForma;

{$R *.dfm}
// Служебные функции

function LocalIP: string;
type
  TaPInAddr = array[0..10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  Buffer: array[0..63] of Char;
  I: Integer;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);
  Result := '';
  GetHostName(Buffer, SizeOf(Buffer));
  phe := GetHostByName(buffer);
  if phe = nil then Exit;
  pPtr := PaPInAddr(phe^.h_addr_list); 
  I := 0;
  while pPtr^[I] <> nil do 
  begin
    Result := inet_ntoa(pptr^[I]^); 
    Inc(I);
  end; 
  WSACleanup;
end; 

function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

function GetUserFromWindows: string;
var
  UserName : string;
  UserNameLen : Dword;
begin
  UserNameLen := 255;
  SetLength(userName, UserNameLen);
  if GetUserName(PChar(UserName), UserNameLen) then
    Result := Copy(UserName,1,UserNameLen - 1)
  else
    Result := 'Unknown';
end;

function GetFileVersion(const FileName: string): string;
type
  PDWORD = ^DWORD;
  PLangAndCodePage = ^TLangAndCodePage;
  TLangAndCodePage = packed record
    wLanguage: WORD;
    wCodePage: WORD;
  end;
  PLangAndCodePageArray = ^TLangAndCodePageArray;
  TLangAndCodePageArray = array[0..0] of TLangAndCodePage;
var
  loc_InfoBufSize: DWORD;
  loc_InfoBuf: PChar;
  loc_VerBufSize: DWORD;
  loc_VerBuf: PChar;
  cbTranslate: DWORD;
  lpTranslate: PDWORD;
  i: DWORD;
begin
  Result := '';
  if (Length(FileName) = 0) or (not Fileexists(FileName)) then
    Exit;
  loc_InfoBufSize := GetFileVersionInfoSize(PChar(FileName), loc_InfoBufSize);
  if loc_InfoBufSize > 0 then
  begin
    loc_VerBuf := nil;
    loc_InfoBuf := AllocMem(loc_InfoBufSize);
    try
      if not GetFileVersionInfo(PChar(FileName), 0, loc_InfoBufSize, loc_InfoBuf)
        then
        exit;
      if not VerQueryValue(loc_InfoBuf, '\\VarFileInfo\\Translation',
        Pointer(lpTranslate), DWORD(cbTranslate)) then
        exit;
      for i := 0 to (cbTranslate div SizeOf(TLangAndCodePage)) - 1 do
      begin
        if VerQueryValue(
          loc_InfoBuf,
          PChar(Format(
          'StringFileInfo\0%x0%x\FileVersion', [
          PLangAndCodePageArray(lpTranslate)[i].wLanguage,
            PLangAndCodePageArray(lpTranslate)[i].wCodePage])),
            Pointer(loc_VerBuf),
          DWORD(loc_VerBufSize)
          ) then
        begin
          Result := loc_VerBuf;
          Break;
        end;
      end;
    finally
      FreeMem(loc_InfoBuf, loc_InfoBufSize);
    end;
  end;
end;


// процедура записи в лог файл
procedure TGlavn.WriteLog(text: string);
Var
  S:string;
  SF:TextFile;
begin
  S:=ExtractFilepath(Paramstr(0))+'LOG\';
  If not ForceDirectories(S) then Exit;
  S:=S+GetComputerNetName+'_'+FormatDateTime('yyyymmdd',now)+'.log';
  AssignFile(SF,S);
  if not Fileexists(S) then Rewrite(SF) else Append(SF);
  WriteLn(SF,FormatdateTime('hh:nn:ss',time),' - ',text);
  CloseFile(SF);
end;


Function Tglavn.Code(text,password: string;decode: boolean) :string;
var
 i, PasswordLength: integer;
 sign: shortint;
begin
 PasswordLength := length(password);
 if PasswordLength = 0 then Exit;
 if decode then sign := -1 else sign := 1;
 for i := 1 to Length(text) do
  text[i] := chr(ord(text[i]) + sign * ord(password[i mod PasswordLength + 1]));
  Result:=text;
End;

 // Создание формы
procedure TGlavn.FormCreate(Sender: TObject);
begin
  WriteLog('Запуск программы');
  WriteLog('Версия ПО : '+GetFileVersion(Paramstr(0)));
  WriteLog('IP клиента : '+LocalIP);
  WriteLog('Имя ПК : '+GetComputerNetName);
  WriteLog('Пользователь : '+GetUserFromWindows);
  Caption:=Caption+' (Версия : '+GetFileVersion(Paramstr(0))+')';
  INF:=TiniFile.Create(ChangeFileext(Paramstr(0),'.ini'));
  DE:=INF.ReadString('SETUP','EXPORTPATH',ExtractFilePath(ParamStr(0)));
  Servert.Text:=INF.ReadString('SETUP','SERVER','127.0.0.1');
  BdT.Text:=INF.ReadString('SETUP','BD','ADRPOST');
  SP:=INF.ReadString('SETUP','LOGIN','');
  if length(Trim(SP))=0 then LoginT.Text:='SA'
    else LoginT.Text:=Code(SP,KeyPas,true);
  SP:= INF.ReadString('SETUP','PASSW','');
  if length(Trim(SP))=0 then PasswT.Text:='PasWord!1'
    else  PasswT.Text:=Code(SP,KeyPas,true);
  ConnectBut.Caption:='Подключиться';
  RegionBox.Items.Clear;
  CityBox.Items.Clear;
  StreetBox.Items.Clear;
  HauseBox.Items.Clear;
  RegionBox.Text:='';
  CityBox.Text:='';
  StreetBox.Text:='';
  HauseBox.Text:='';
  Label10.Caption:='';
  Label9.Caption:='';
  OpenExp:=false;
end;

// Соединеие и разединение с БД
procedure TGlavn.ServerTExit(Sender: TObject);
begin

  INF.WriteString('SETUP','SERVER',Servert.Text);
  INF.UpdateFile;
end;

procedure TGlavn.BdTExit(Sender: TObject);
begin
  INF.WriteString('SETUP','BD',BdT.Text);
  INF.UpdateFile;
end;

procedure TGlavn.loginTExit(Sender: TObject);
begin
  SP:=Glavn.Code(LoginT.Text,KeyPas,false);
  INF.WriteString('SETUP','LOGIN',SP);
  INF.UpdateFile;
end;

procedure TGlavn.PasswTExit(Sender: TObject);
begin
  SP:=Glavn.Code(PasswT.Text,KeyPas,false);
  INF.WriteString('SETUP','PASSW',SP) ;
  INF.UpdateFile;
end;

procedure TGlavn.ServerTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then Bdt.SetFocus;
end;

procedure TGlavn.BdTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_return then ConnectBut.Click;
  if Key=Vk_escape then Servert.SetFocus;
end;

procedure TGlavn.loginTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return then Passwt.SetFocus;
  If key=Vk_Escape then Bdt.SetFocus;
end;

procedure TGlavn.PasswTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return then ConnectBut.Click;
  If key=Vk_Escape then logint.SetFocus;
end;

procedure TGlavn.ConnectButClick(Sender: TObject);
var
  S:string;
begin
  if Baza.Tag=1 then begin
    StaTusBar1.Panels[0].Text:='';
    StaTusBar1.Panels[1].Text:='';
    baza.BD.Connected:=false;
    baza.BD.Tag:=0;
    ConnectBut.Caption:='Подключиться';
    DatPanel.Visible:=false;
    Bdpanel.Enabled:=true;
    RegionBox.Items.Clear;
    CityBox.Items.Clear;
    CityBox.Text:='';
    TabCityPanel.Visible:=false;
    StreetBox.Items.Clear;
    StreetBox.Text:='';
    TabStreetpanel.Visible:=false;
    HauseBox.Items.Clear;
    HauseBox.Text:='';
    IndexPanel.Visible:=false;
    MenuServiceExport.Visible:=false;
    OpenExp:=false;
    Exit;

  end;
  try
    Baza.BD.ConnectionString:='Provider=SQLOLEDB.1;Password='+Passwt.Text+';Persist Security Info=True;User ID='+logint.Text+';Initial Catalog='+Bdt.Text+';Data Source='+servert.Text;
    baza.BD.Connected:=true;
    baza.BD.Tag:=1;
  except
    baza.BD.Tag:=0;
    StaTusBar1.Panels[0].Text:='Ошибка соединения с сервером или БД';
  end;
  TabStreetpanel.Visible:=false;
  OpenExp:=false;
  if baza.BD.Tag=1 then begin
    MenuServiceExport.Visible:=true;
    Bdpanel.Enabled:=false;
    DatPanel.Visible:=true;
    RegionBox.SetFocus;
    D1:=Now;
    with Baza.SQL_REGION do begin
      Active:=true;
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      RegionBox.Items.Clear;
      RegionBox.Items.Add(' ');
      while not Eof do begin
        RegionBox.Items.Add(Baza.SQL_REGION['NAME']+' ('+baza.SQL_REGION['RTYPE']+')' );
        Str(((RecNo/RecordCount)*100):15:2,s);
        StatusBar1.Panels[0].Text:='Заполнение регионов : '+Trim(S)+' %';
        Next;
      end;
      regionBox.ItemIndex:=0;
    end;
    StatusBar1.Panels[0].Text:='';
  end;

end;

// Выбор региона
procedure TGlavn.RegionBoxChange(Sender: TObject);
var
  S: string;
begin
  
  CityBox.Items.Clear;
  CityBox.Text:='';
  TabCityPanel.Visible:=false;
  StreetBox.Items.Clear;
  StreetBox.Text:='';
  TabStreetpanel.Visible:=false;
  HauseBox.Items.Clear;
  HauseBox.Text:='';
  IndexPanel.Visible:=false;
  if LenGth(Trim(RegionBox.Text))=0 then exit;
  CityBox.Items.Clear;
  TabCityPanel.Visible:=false;
  baza.SQL_CITY_T.Active:=false;
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  WriteLog('Выбор региона '+S);
  with baza.SQL_CYTI do begin
    D1:=Now;
    Active:=false;
    SQL.Text:='Select P.NAME from PLACE P where P.RegionID=(SELECT R.ID FROM REGION R WHERE UPPER(R.NAME) = '''+S+''') GROUP BY P.NAME';
    try
      Active:=true;
      CityBox.items.Clear;
      CityBox.items.Add(' ');
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      WriteLog('Заполнение списка населенных пунктов');
      if RecordCount>0 then begin
        while not Eof do begin
          CityBox.items.Add(baza.SQL_CYTI['NAME']);
          Str(((RecNo/RecordCount)*100):15:2,s);
          StatusBar1.Panels[0].Text:='Заполение Н.П. : '+Trim(S)+' %';
          next;
        end;
        CityBox.ItemIndex:=0;
      end;
    except
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;

procedure TGlavn.RegionBoxCloseUp(Sender: TObject);
begin
  RegionBox.OnChange(sender);
end;

procedure TGlavn.RegionBoxExit(Sender: TObject);
begin
  regionbox.OnChange(sender);
end;

procedure TGlavn.RegionBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_return then CityBox.SetFocus;
  if Key=Vk_Escape then begin
    RegionBox.ItemIndex:=0;
  end;
end;

// Выбор населенного пункта
procedure TGlavn.CityBoxChange(Sender: TObject);
Var
  S:String;
begin
  baza.SQL_CITY_T.Active:=false;
  TabCityPanel.Visible:=false;
  StreetBox.Items.Clear;
  StreetBox.Text:='';
  HauseBox.Clear;
  HauseBox.Text;
  IndexPanel.Visible:=false;
  if length(Trim(CityBox.Text))=0 then exit;
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  with baza.SQL_CITY_T do begin
    WriteLog('Выбор населенного пункта '+CityBox.Text);
    D1:=now;
    Active:=false;
    sql.Clear;
    Sql.Add('Select');
    Sql.Add('P.ID,');
    Sql.Add('P.NAME,');
    Sql.Add('A1.NAME As PTYPE ,');
    Sql.Add('P1.NAME As NAME2,');
    Sql.Add('A2.NAME As PTYPE2 ,');
    Sql.Add('D.NAME  As District,');
    Sql.Add('A3.NAME As DTYPE ');
    Sql.Add('from PLACE P ');
    Sql.Add('Left Join AddrType A1 on A1.ID=P.AddrTypeID ');
    Sql.Add('Left Join PLACE  P1 on P1.ID=P.PID  ');
    Sql.Add('Left Join AddrType A2 on A2.ID=P1.AddrTypeID ');
    Sql.Add('Left Join District D on D.ID=P.DistrictID ');
    Sql.Add('Left Join AddrType A3 on A3.ID=D.AddrTypeID ');
    Sql.Add('Where P.REGIONID=(SELECT R.ID FROM REGION R WHERE UPPER(R.NAME) LIKE '''+S+'%'') and UPPER(P.NAME) LIKE '''+CityBox.text+'%'';');
    Active:=True;
    StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    if RecordCount>0 then begin
       TabCityPanel.Visible:=true;
    end else begin
       TabCityPanel.Visible:=false;
    end;
  end;
end;

procedure TGlavn.TabCityDblClick(Sender: TObject);
Var
  S:string;
begin
  tabStreetpanel.Visible:=false;
  IndexPanel.Visible:=false;
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  StreetBox.Items.Clear;
  StreetBox.Text:='';
  HauseBox.Text:='';
  with baza.SQL_STREET do begin
    WriteLog('Заполнение спика улиц ');
    D1:=Now;
    Active:=false;
    sql.Text:='select S.NAME from Street S where S.PID='+baza.SQL_CITY_TID.AsString;//(select ID from Place P where P.name='''+baza.SQL_CITY_TNAME.Value+''' and P.RegionId=(select ID from Region where Name='''+S+''')) Group By S.NAME';
    Active:=true;
    StreetBox.Items.Add(' ');
    StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    If RecordCount>0 then begin
      while not EOF do begin
        StreetBox.Items.Add(baza.SQL_STREET['NAME']);
        Str(((RecNo/RecordCount)*100):15:2,s);
        StatusBar1.Panels[0].Text:='Заполнение улиц : '+Trim(S)+' %';
        Application.ProcessMessages;
        Next;
      end;
      Active:=false;
    end else begin
      nextbut.Enabled:=false;
      PrevBut.Enabled:=false;
      StatusBar1.Panels[0].Text:='Поиск ОПС';
      Application.ProcessMessages;
      with baza.SQL_FIND_IND do begin
        D1:=Now;
        Active:=false;
        SQL.Clear;
        SQL.ADD('SELECT PP.PO from PlacePostOffice PP');
        SQL.ADD('where PP.ID='+baza.SQL_CITY_TID.AsString);
        Active:=true;
        if RecordCount>0 then begin
          StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
          IndexPanel.Visible:=true;
          label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
        end else StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      end;
    end;
  end;
  Statusbar1.Panels[0].Text:='';
end;

procedure TGlavn.CityBoxCloseUp(Sender: TObject);
begin
  CityBox.OnChange(sender);
end;

procedure TGlavn.CityBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    if TabCitypanel.Visible=true then TabCity.SetFocus;
  if Key=Vk_escape then begin
    TabCityPanel.Visible:=false;
    CityBox.ItemIndex:=0;
    RegionBox.SetFocus;
  end;
end;

procedure TGlavn.CityBoxExit(Sender: TObject);
begin
  if TabCitypanel.Visible=true then TabCity.SetFocus;
end;

// Выбор населенного пункта в таблице и подготовка списка улиц
procedure TGlavn.TabCityCellClick(Column: TColumn);
Var
  S:string;
begin
  tabStreetpanel.Visible:=false;
  IndexPanel.Visible:=false;
  HauseBox.Text:='';
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  StreetBox.Items.Clear;
  StreetBox.Text:='';
  with baza.SQL_STREET do begin
    WriteLog('Заполнение спика улиц '+CityBox.Text);
    D1:=Now;
    Active:=false;
    sql.Text:='select S.NAME from Street S where S.PID='+baza.SQL_CITY_TID.AsString;//(select ID from Place P where P.name='''+baza.SQL_CITY_TNAME.Value+''' and P.RegionId=(select ID from Region where Name='''+S+''')) Group By S.NAME';
    Active:=true;
    StreetBox.Items.Add(' ');
    StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    If RecordCount>0 then begin
      while not EOF do begin
        StreetBox.Items.Add(baza.SQL_STREET['NAME']);
        Str(((RecNo/RecordCount)*100):15:2,s);
        StatusBar1.Panels[0].Text:='Заполнение улиц : '+Trim(S)+' %';
        Next;
      end;
      Active:=false;
    end else begin
      nextbut.Enabled:=false;
      PrevBut.Enabled:=false;
      StatusBar1.Panels[0].Text:='Поиск ОПС';
      Application.ProcessMessages;      
      with baza.SQL_FIND_IND do begin
        WriteLog('В населенном пункте нет улиц, ищем индекс ОПС');
        d1:=Now;
        Active:=false;
        SQL.Clear;
        SQL.ADD('SELECT PP.PO from PlacePostOffice PP');
        SQL.ADD('where PP.ID='+baza.SQL_CITY_TID.AsString);
        Active:=true;
        if RecordCount>0 then begin
          StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
          IndexPanel.Visible:=true;
          label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
          WriteLog('ОПС найдено '+label9.Caption);
        end else StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      end;
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;

procedure TGlavn.TabCityEnter(Sender: TObject);
begin
  TabCity.OnDblClick(sender);
end;

procedure TGlavn.TabCityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then StreetBox.SetFocus;
end;

// Выбор улицы, переулка и т.д.
procedure TGlavn.StreetBoxChange(Sender: TObject);
Var
S: string;
begin
  tabStreetpanel.Visible:=false;
  IndexPanel.Visible:=false;
  IndexPanel.Visible:=false;
  if length(Trim(StreetBox.Text))=0 then exit;
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  with baza.SQL_STREET_T do begin
    WriteLog('Заполнение списка улиц');
    D1:=Now;
    Active:=false;
    SQL.Clear;
    SQL.add('select S.ID,S.NAME,A1.NAME As STYPE  from Street S ');
    SQL.Add('Left Join AddrType A1 on A1.ID=S.AddrTypeID ');
    SQL.Add('where (S.PID='+baza.SQL_CITY_TID.AsString+') and (S.NAME='''+StreetBox.Text+''')');
    Active:=true;
    If RecordCount>0 then begin
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      TabStreetPanel.Visible:=true;
      TabStreetPanel.Top:=217;
      StreetPanel.Top:=100;
    end else begin
      TabStreetPanel.Visible:=false;
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    end;
  end;
end;

procedure TGlavn.StreetBoxCloseUp(Sender: TObject);
Var
S: string;
begin
  tabStreetpanel.Visible:=false;
  IndexPanel.Visible:=false;
  if length(Trim(StreetBox.Text))=0 then exit;
  S:=Copy(RegionBox.Text,1,Pos('(',RegionBox.Text)-2);
  with baza.SQL_STREET_T do begin
    WriteLog('Заполнение списка улиц');
    D1:=Now;
    Active:=false;
    SQL.Clear;
    SQL.add('select S.ID,S.NAME,A1.NAME As STYPE  from Street S ');
    SQL.Add('Left Join AddrType A1 on A1.ID=S.AddrTypeID ');
    SQL.Add('where (S.PID='+baza.SQL_CITY_TID.AsString+') and (S.NAME='''+StreetBox.Text+''')');
    Active:=true;
    If RecordCount>0 then begin
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      TabStreetPanel.Visible:=true;
      TabStreetPanel.Top:=217;
      StreetPanel.Top:=100;
    end else begin
      TabStreetPanel.Visible:=false;
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    end;
  end;

end;

// Работа со списком улиц в таблице улиц  и заполение списка строений
procedure TGlavn.TabStreetCellClick(Column: TColumn);
Var S: string;
begin
  IndexPanel.Visible:=false;
  with baza.SQL_BILD do begin
    WriteLog('Заполенние списка строений');
    D1:=Now;
    Active:=false;
    SQL.Text:='Select B.Name from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+ ') and (PlaceId='+baza.SQL_CITY_TID.AsString+');';
    //SQL.Text:='Select B.ID,B.Num, B.Name from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+ ') and (PlaceId='+baza.SQL_CITY_TID.AsString+');';
    Active:=true;
    if RecordCount>0 then begin
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      Application.ProcessMessages;
      hauseBox.Clear;
      HauseBox.Items.Add(' ');
      First;
      While not EOF do Begin
     //   if lenGth(Trim(VarToStr(baza.SQL_BILD['Num'])))>0 then HauseBox.Items.Add(VarToStr(baza.SQL_BILD['Num']));
        if lenGth(Trim(VarToStr(baza.SQL_BILD['Name'])))>0 then HauseBox.Items.Add(VarToStr(baza.SQL_BILD['Name']));
        Next;
        Str(((RecNo/RecordCount)*100):15:2,s);
        StatusBar1.Panels[0].Text:='Заполение строений : '+Trim(S)+' %';
        Application.ProcessMessages;
      end;
    end else begin
      WriteLog('Строений не найдено, определяем индекс ОПС');
      with baza.SQL_FIND_IND do begin
        StatusBar1.Panels[0].Text:='Поиск ОПС';
        Application.ProcessMessages;
        nextbut.Enabled:=false;
        PrevBut.Enabled:=false;
        D1:=Now;
        Active:=false;
        SQL.Clear;
        SQL.ADD('SELECT PP.PO from PlacePostOffice PP');
        SQL.ADD('where PP.ID='+baza.SQL_CITY_TID.AsString);
        Active:=true;
        if RecordCount>0 then begin
          StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
          IndexPanel.Visible:=true;
          label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
          WriteLog('Индекс ОПС '+label9.Caption);
        end else StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';;
      end;
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;

procedure TGlavn.TabStreetDblClick(Sender: TObject);
Var S:String;
begin
  IndexPanel.Visible:=false;
  with baza.SQL_BILD do begin
    WriteLog('Заполнение списка строений');
    D1:=Now;
    Active:=false;
    SQL.Text:='Select B.Name from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+ ') and (PlaceId='+baza.SQL_CITY_TID.AsString+');';
    //SQL.Text:='Select B.ID,B.Num, B.Name from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+ ') and (PlaceId='+baza.SQL_CITY_TID.AsString+');';
    Active:=true;
    if RecordCount>0 then begin
      StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
      hauseBox.Clear;
      HauseBox.Items.Add(' ');
      First;
      While not EOF do Begin
        //if lenGth(Trim(VarToStr(baza.SQL_BILD['Num'])))>0 then HauseBox.Items.Add(VarToStr(baza.SQL_BILD['Num']));
        if lenGth(Trim(VarToStr(baza.SQL_BILD['Name'])))>0 then HauseBox.Items.Add(VarToStr(baza.SQL_BILD['Name']));
        Next;
        Str(((RecNo/RecordCount)*100):15:2,s);
        StatusBar1.Panels[0].Text:='Заполнение строений : '+Trim(S)+' %';
        Application.ProcessMessages;
      end;
    end else begin
      nextbut.Enabled:=false;
      PrevBut.Enabled:=false;
      with baza.SQL_FIND_IND do begin
        StatusBar1.Panels[0].Text:='Поиск ОПС';
        Application.ProcessMessages;
        WriteLog('Список строений пуст, определяем индекс ОПС');
        D1:=Now;
        Active:=false;
        SQL.Clear;
        SQL.ADD('SELECT PP.PO from PlacePostOffice PP');
        SQL.ADD('where PP.ID='+baza.SQL_CITY_TID.AsString);
        Active:=true;
        if RecordCount>0 then begin
          StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
          IndexPanel.Visible:=true;
          label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
          WriteLog('Индекс ОПС определен '+label9.Caption);
        end else StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';;
      end;
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;


procedure TGlavn.StreetBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return Then begin
    StreetBox.OnChange(sender);
    if TabStreetPanel.Visible=true then TabStreet.SetFocus;
  end;
  if Key=Vk_escape then begin
    StreetBox.ItemIndex:=0;
    TabStreetpanel.Visible:=false;
    CityBox.SetFocus;
  end;
end;

procedure TGlavn.TabStreetEnter(Sender: TObject);
begin
  TabStreet.OnDblClick(Sender);
end;

procedure TGlavn.TabStreetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return then HauseBox.SetFocus;
end;

// Поиск ОПС и ДУ по устновленному НП
procedure TGlavn.HauseBoxChange(Sender: TObject);
var
  I : integer;
begin
  IndexPanel.Visible:=false;
  if length(Trim(HauseBox.Text))=0 then exit;
  StatusBar1.Panels[0].Text:='Поиск ОПС';
  Application.ProcessMessages;
  with baza.SQL_FIND_IND do begin
    WriteLog('Определение индекса ОПС по реквизитам');
    Active:=false;
    SQL.Clear;
    SQL.ADD('SELECT BP.PO from BuildingPostOffice BP');
    SQl.Add('where ID=(Select B.ID from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+') and ');
    Sql.add('(PlaceId='+baza.SQL_CITY_TID.AsString+') and ');
    //Try
    //  I:=StrToInt(HauseBox.Text);
   //   Sql.add('(B.NUM='+Trim(HauseBox.Text)+'));');
   // except
      Sql.add('(B.NAME='''+Trim(HauseBox.Text)+'''));');
  //  end;
    D1:=Now;
    Active:=true;
    if RecordCount=0 then begin
      WriteLog('Индекс не найден');
      Exit;
    end;
    IndexPanel.Visible:=true;
    label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
    with Baza.SQL_PO do begin
      Active:=false;
      Parameters[0].Value:=baza.SQL_FIND_IND['PO'];
      Active:=true;
      Label10.Caption:=Baza.SQL_POSHORTNAME.AsString;
    end;
    WriteLog('Индекс ОПС определен '+label9.Caption);
    StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    if RecordCount>1 then begin
      nextbut.Enabled:=true;
      PrevBut.Enabled:=true;
    end else begin
      nextbut.Enabled:=false;
      PrevBut.Enabled:=false;
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;

procedure TGlavn.HauseBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then HauseBox.OnChange(sender);
  if Key=Vk_Escape then begin
    HauseBox.ItemIndex:=0;
    StreetBox.SetFocus;
    Indexpanel.Visible:=false;
  end;
end;

procedure TGlavn.HauseBoxCloseUp(Sender: TObject);
var
  I : integer;
begin
  IndexPanel.Visible:=false;
  if length(Trim(HauseBox.Text))=0 then exit;
  StatusBar1.Panels[0].Text:='Поиск ОПС';
  Application.ProcessMessages;
  with baza.SQL_FIND_IND do begin
    WriteLog('Определение индекса ОПС по реквизитам');
    Active:=false;
    SQL.Clear;
    SQL.ADD('SELECT BP.PO from BuildingPostOffice BP');
    SQl.Add('where ID=(Select B.ID from Building B where (B.StreetId='+baza.SQL_STREET_TID.AsString+') and ');
    Sql.add('(PlaceId='+baza.SQL_CITY_TID.AsString+') and ');
    //Try
    //  I:=StrToInt(HauseBox.Text);
    //  Sql.add('(B.NUM='+Trim(HauseBox.Text)+'));');
    //except
      Sql.add('(B.NAME='''+Trim(HauseBox.Text)+'''));');
    //end;
    D1:=Now;
    Active:=true;
    if RecordCount=0 then begin
      WriteLog('Индекс не найден');
      Exit;
    end;
    IndexPanel.Visible:=true;
    label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
    WriteLog('Индекс ОПС определен '+label9.Caption);
    StatusBar1.Panels[1].Text:=IntTostr(SecondsBetween(Now(),D1))+' с.';
    if RecordCount>1 then begin
      nextbut.Enabled:=true;
      PrevBut.Enabled:=true;
    end else begin
      nextbut.Enabled:=false;
      PrevBut.Enabled:=false;
    end;
  end;
  StatusBar1.Panels[0].Text:='';
end;

// Следующий индекс
procedure TGlavn.NextButClick(Sender: TObject);
begin
  if not baza.SQL_FIND_IND.Eof  then begin
    baza.SQL_FIND_IND.Next;
    label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
    WriteLog('Выбран следующий '+label9.Caption);
  end;
    with Baza.SQL_PO do begin
      Active:=false;
      Parameters[0].Value:=baza.SQL_FIND_IND['PO'];
      Active:=true;
      Label10.Caption:=Baza.SQL_POSHORTNAME.AsString;
    end;
end;


// Предыдущий индекс
procedure TGlavn.PrevButClick(Sender: TObject);
begin
  if not baza.SQL_FIND_IND.Bof  then begin
    baza.SQL_FIND_IND.Prior;
    label9.Caption:=IntToStr(baza.SQL_FIND_IND['PO']);
    WriteLog('Выбран предыущий '+label9.Caption);
    with Baza.SQL_PO do begin
      Active:=false;
      Parameters[0].Value:=baza.SQL_FIND_IND['PO'];
      Active:=true;
      Label10.Caption:=Baza.SQL_POSHORTNAME.AsString;
    end;
  end;
end;

// закрытие формы  ниже ничего не должно быть это последняя процедура
procedure TGlavn.FormDestroy(Sender: TObject);
begin
  WriteLog('Закрытие программы');
  INF.WriteString('SETUP','SERVER',Servert.Text);
  INF.WriteString('SETUP','BD',BdT.Text);
  SP:=Glavn.Code(LoginT.Text,KeyPas,false);
  INF.WriteString('SETUP','LOGIN',SP);
  SP:=Glavn.Code(PasswT.Text,KeyPas,false);
  INF.WriteString('SETUP','PASSW',SP) ;
  INF.WriteString('SETUP','EXPORTPATH',DE);
  INF.Free;
end;

procedure TGlavn.MenuFileClosdClick(Sender: TObject);
begin
  Close;
end;

procedure TGlavn.MenuServiceExportClick(Sender: TObject);
begin
  if OpenExp=true then Exit;
  WriteLog('Вызов окна экспорта БД');
  with ExportFiltr do begin
    DirExportT.Text:=DE;
    Show;
  end;
end;

end.

