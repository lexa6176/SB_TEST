unit MainForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, ComCtrls,Psock,WinSock,IniFiles, VCLZip,ShellApi,
  VCLUnZip, jpeg;

type
  TMain = class(TForm)
    GM: TMainMenu;
    GM1: TMenuItem;
    GM2: TMenuItem;
    GM3: TMenuItem;
    GM4: TMenuItem;
    GM0: TMenuItem;
    GM11: TMenuItem;
    GM12: TMenuItem;
    GM21: TMenuItem;
    GM22: TMenuItem;
    GM23: TMenuItem;
    GM24: TMenuItem;
    GM41: TMenuItem;
    GM42: TMenuItem;
    SB: TStatusBar;
    MainImage: TImage;
    T1: TTimer;
    T2: TTimer;
    Uzip: TVCLUnZip;
    Czip: TVCLZip;
    GM221: TMenuItem;
    GM222: TMenuItem;
    GM224: TMenuItem;
    GM223: TMenuItem;
    GM31: TMenuItem;
    GM32: TMenuItem;
    GM01: TMenuItem;
    GM02: TMenuItem;
    GM5: TMenuItem;
    GM51: TMenuItem;
    GM013: TMenuItem;
    N11: TMenuItem;
    procedure GM12Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GM11Click(Sender: TObject);
    procedure GM41Click(Sender: TObject);
    procedure GM42Click(Sender: TObject);
    procedure GM21Click(Sender: TObject);
    procedure GM23Click(Sender: TObject);
    procedure T1Timer(Sender: TObject);
    procedure GM24Click(Sender: TObject);
    procedure T2Timer(Sender: TObject);
    procedure UzipTotalPercentDone(Sender: TObject; Percent: Integer);
    procedure GM224Click(Sender: TObject);
    procedure GM221Click(Sender: TObject);
    procedure GM222Click(Sender: TObject);
    procedure CzipTotalPercentDone(Sender: TObject; Percent: Integer);
    procedure GM223Click(Sender: TObject);
    procedure GM31Click(Sender: TObject);
    procedure GM32Click(Sender: TObject);
    procedure GM01Click(Sender: TObject);
    procedure GM02Click(Sender: TObject);
    procedure GM013Click(Sender: TObject);
    procedure GM51Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function Mes (text: string;Vid: Integer):Integer;
    Procedure Log(Text: string);
    function LocalIP: string;
    function GetComputerNetName: string;
    function GetUserFromWindows: string;
    function GetFileVersion(const FileName: string): string;
    function RubToStr(Rubs:Currency;Rub,Kop:String) : string;
    function FixFloat(source:string):string;
    Function Code(text,password: string;decode: boolean) :string;
    Procedure RegWorc(UserId:Integer;NameArm,NameUser,Text:string);
  end;

const
  mh: array[1..12] of string = ('Январь', 'Февраль',
            'Март', 'Апрель', 'Май', 'Июнь', 'Июль',
            'Август', 'Сентябрь', 'Октябрь', 'Ноябрь',
            'Декабрь');

var
  Main          : TMain;

  TypeClose     : boolean = false;    // Тип выхода из ПО

  IniFil        : TiniFile;           // Файл иницилизации ПО

  LogsFile      : record              // Параметры лог файла
    LogFile     : TextFile;
    LogFileName : String;
  end;

  DataBase      : record              // Параметры БД
    StringF     : string;
    StringR     : String;
    Server      : String;
    Baza        : String;
    Login       : String;
    Password    : String;
  end;

  Directory     : record            // Рабочие каталоги
    DirSystem   : String;           // Системный каталог
    DirArch     : String;           // Каталог хранения архивных файлов
    DirInp      : String;           // Каталог входных файлов перед загрузкой
    DirOut      : String;           // Каталог хранения выходных файлов для формирвоания и закрытия
    FileShab    : String;           // Файл шаблона выгрузки
  end;

  UserWorc      : record            // Данные пользователе
    ID          : Int64;            // ID записис
    FM          : String;           // Фамилия
    IM          : String;           // Имя
    OT          : String;           // Отчество
    ABV         : String;           // Абвиатура Фамилия ИО
    Dolgn       : String;           // Должность
    URD         : Integer;          // Уровень доступа
    Status      : Integer;          // Статус УЗ
  end;

  NameArm,                          // Имя АРМ
  NameUser      : String;           // Имя УЗ Windows

  TypNoDel      : Boolean;          // Метка точки неопалты ЛС
  AllNoPay      : Boolean = false;  // Метка массовой отметки ЛС на неоплату (отключена) используем List1
  IdAllNoPay    : Integer = 7;      // Причина массовой не оплаты


  IT            : Integer;

  PictTitle     : String;            // Имя файла заставки на главное окно ПО
  RegimLoad     : Integer = 0;       // Загрузка файлов
  TypePrn       : boolean = false;   // Тип печати
  TypeRep       : Integer = 0;       // Тип отчета
  List1         : Integer = 0;

  PassConst     : String = 'Djnrfrgjxnfpfljk,fkxnj[jxtncz,t;fnm';

implementation

uses AuntificationForma, OptionsForma, SpravForma, ProcessLoadForma,
  ProcessFindForma, BazaForma, NonpaymentForma, RegistryForOpsForma,
  FindPaymentForma, ReportingForma, FileInForma, FileOutForma, ListForma,
  NoPayPricinaForma, ReestryForOpsForma, ReportParamIpForma, LogForma;

{$R *.dfm}

procedure TMain.Log(Text: string);
begin
  If Not ForceDirectories(ExtractFilePath(LogsFile.LogFileName)) then Exit;
  Assignfile(LogsFile.LogFile,LogsFile.LogFileName);
  if Fileexists(LogsFile.LogFileName) then Append(LogsFile.LogFile) else rewrite(LogsFile.LogFile);
  WriteLn(LogsFile.LogFile,Formatdatetime('hh:nn:ss',time),' - ',text);
  Closefile(LogsFile.LogFile);
  Application.ProcessMessages;
end;

function TMain.Mes(text: string; Vid: Integer): Integer;
Var
  S: string;
begin
  Log(text);
  Result:=Application.MessageBox(Pchar(Text),Pchar(caption),Vid);
  Case Result of
    1: S:='"Oк"';
    2: S:='"Отменть"';
    3: S:='"Первать"';
    4: S:='"Повтрить"';
    5: S:='"Игнорировать"';
    6: S:='"Да"';
    7: S:='"Нет"';
  end;
  log('Пользователь нажал кнопку '+S);
end;

function TMain.LocalIP: string;
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

function TMain.GetComputerNetName: string;
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

function TMain.GetUserFromWindows: string;
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

function TMain.GetFileVersion(const FileName: string): string;
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


function Tmain.FixFloat(source:string):string;
var s:string;
    sep: array [0..20] of char;
    i:integer;
begin
 s:=source;
 if s='' then s:='0';
 if GetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SDECIMAL, sep, 19)<=0 then
  sep[0]:=#0;
 if sep[0]=',' then
  begin
   i:=pos('.',s);
   if i>0 then s[i]:=sep[0];
  end;
 if sep[0]='.' then
  begin
   i:=pos(',',s);
   if i>0 then s[i]:=sep[0];
  end;
 result:=s;
end;

function CifrToStr(Cifr:String;Pr:Integer;Padeg:Integer) : string;
{Функция возвращает прописью 1 цифры признак 3-единицы 2-десятки 1-сотни 4-11-19
Padeg - 1-нормально 2- одна, две }
var i:Integer;
begin
i:=StrToInt(Cifr);
  if Pr = 1 Then
    case i of
      1: CifrToStr :='сто';
      2: CifrToStr :='двести';
      3: CifrToStr :='триста';
      4: CifrToStr :='четыреста';
      5: CifrToStr :='пятьсот';
      6: CifrToStr :='шестьсот';
      7: CifrToStr :='семьсот';
      8: CifrToStr :='восемьсот';
      9: CifrToStr :='девятьсот';
      0: CifrToStr :='';
    end
  else
    if Pr = 2 Then
      case i of
        1: CifrToStr :='';
        2: CifrToStr :='двадцать';
        3: CifrToStr :='тридцать';
        4: CifrToStr :='сорок';
        5: CifrToStr :='пятьдесят';
        6: CifrToStr :='шестьдесят';
        7: CifrToStr :='семьдесят';
        8: CifrToStr :='восемьдесят';
        9: CifrToStr :='девяносто';
        0: CifrToStr :='';
      end
    else
      if Pr = 3 Then
        case i of
          1: if Padeg =1 Then CifrToStr :='один' else CifrToStr :='одна';
          2: if Padeg =1 Then CifrToStr :='два' else CifrToStr :='две';
          3: CifrToStr :='три';
          4: CifrToStr :='четыре';
          5: CifrToStr :='пять';
          6: CifrToStr :='шесть';
          7: CifrToStr :='семь';
          8: CifrToStr :='восемь';
          9: CifrToStr :='девять';
          0: CifrToStr :='';
        end
      else
        if Pr = 4 Then
          case i of
            1: CifrToStr :='одиннадцать';
            2: CifrToStr :='двенадцать';
            3: CifrToStr :='тринадцать';
            4: CifrToStr :='четырнадцать';
            5: CifrToStr :='пятнадцать';
            6: CifrToStr :='шестнадцать';
            7: CifrToStr :='семнадцать';
            8: CifrToStr :='восемнадцать';
            9: CifrToStr :='девятнадцать';
            0: CifrToStr :='десять';
          end;
end;

function Rasryad(K:Integer;V:String) : string;
{Функция возвращает наименование разряда в зависимости от последних 2 цифр его}
Var j:Integer;
Begin
  j := StrToInt(Copy(v,Length(v),1));
  if (StrToInt(Copy(v,Length(v)-1,2))> 9) And (StrToInt(Copy(v,Length(v)-1,2))< 20) Then
    case K of
      0: Rasryad :='';
      1: Rasryad :='тысяч';
      2: Rasryad :='миллионов';
      3: Rasryad :='миллиардов';
      4: Rasryad :='триллионов';
    end
  else
    case K of
      0: Rasryad :='';
      1: case j of
        1: Rasryad :='тысяча';
        2..4: Rasryad :='тысячи';
      else
        Rasryad :='тысяч';
      end;
      2: case j of
        1: Rasryad :='миллион';
        2..4: Rasryad :='миллионa';
      else
        Rasryad :='миллионов';
      end;
      3: case j of
        1: Rasryad :='миллиард';
        2..4: Rasryad :='миллиарда';
      else
        Rasryad :='миллиардов';
    end;
    4: case j of
        1: Rasryad :='триллион';
        2..4: Rasryad :='триллиона';
      else
        Rasryad :='триллионов';
      end;
  end;
end;

function GroupToStr(Group:String;Padeg:Integer) : string;
{Функция возвращает прописью 3 цифры}
var
  i:Integer;
  S:String;
begin
  S:='';
  if (StrToInt(Copy(Group,Length(Group)-1,2))> 9) And (StrToInt(Copy(Group,Length(Group)-1,2))< 20) Then begin
    if Length(Group) = 3 Then S := S+' '+CifrToStr(Copy(Group,1,1),1,Padeg);
    S := S+' '+CifrToStr(Copy(Group,Length(Group),1),4,Padeg);
  end else
    for i:=1 to Length(Group) do
      S := S+' '+CifrToStr(Copy(Group,i,1),i-Length(Group)+3,Padeg);
  GroupToStr:=S;
end;

function Tmain.RubToStr(Rubs:Currency;Rub,Kop:String) : string;
var
  i,j:Integer;
  R,K,S:String;
begin
  if Rubs=0 then begin
    S:='ноль '+Rub+' 00 '+Kop;
  end else begin
    S := CurrToStr(Rubs);
 // str(Rubs:25:2,S);
    S := FixFloat(Trim(S));
    if POS('.',S)>0 then
      S:=Copy(S,1,POS('.',S)-1)+','+Copy(S,POS('.',S)+1,LenGth(S)-POS('.',S));
//    ShowMessage(S);
    if Pos(',',S) = 0 Then begin
      R:= S;
      K:= '00';
    end else begin
      R:= Copy(S,0,(Pos(',',S)-1));
      K:= Copy(S,(Pos(',',S)+1),Length(S));
      if LenGth(K)=1 then K:=K+'0';
    end;
    S :='';
    i:= 0;
    j := 1;
    While Length(R) >3 Do Begin
      if i = 1 Then j :=2 else j:=1;
      S := GroupToStr(Copy(R,Length(R)-2,3),j) +' '+Rasryad(i,Copy(R,Length(R)-2,3))+ ' ' +S;
      R := Copy(R,1,Length(R)-3);
      i:=i+1;
    end;
    if i = 1 Then j :=2 else j:=1;
    S := Trim( Trim(GroupToStr(R,j)+' '+Rasryad(i,R) + ' ' +Trim(S) )+' '+Rub+' '+K+' '+Kop);
    S := ANSIUpperCase(Copy(S,1,1)) + Copy(S,2,Length(S)-1);
  end;
  RubToStr := S;
end;

Procedure Tmain.RegWorc(UserId: Integer;NameArm,NameUser,Text:string);
begin
            try
              with baza.SP_WORK do begin
                Parameters[1].Value:=NameArm;
                Parameters[2].Value:=NameUser;
                Parameters[3].Value:=UserWorc.ID;
                Parameters[4].Value:=Text;
                ExecProc;
              end;
            except
            end;
end;

Function Tmain.Code(text,password: string;decode: boolean) :string;
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


procedure TMain.FormCreate(Sender: TObject);
Var
  SBD : TstringList;
  I1: Integer;
  S: String;
begin
  SBD:=TstringList.Create;
  NameArm:=GetComputerNetName;
  NameUser:=GetUserFromWindows;


  IniFil:=Tinifile.Create(ChangeFileExt(Paramstr(0),'.ini'));
  LogsFile.LogFileName:=ExtractFilePath(Paramstr(0))+'LOG\'+NameArm+'_'+FormatDateTime('yyymmdd',Now)+'.log';
  Log('***************** Запуск ПО *******************');
  log('АРМ : '+NameArm);
  log('Каталог : '+ExtractFilePath(Paramstr(0)));
  log('Файл : '+ExtractFileName(Paramstr(0)));
  Log('Версия : '+GetFileVersion(Paramstr(0)));
  log('Пользователь : '+NameUser);
  Log('Главная форма прогаммы создана');
  SB.Panels[0].Text:=FormatDateTime('DD.MM.yyyy HH:NN:SS',Now);
  Application.ProcessMessages;

  Database.StringF:=IniFil.ReadString('BD','Server','');
  DataBase.Server:=code(Database.StringF,PassConst,true);
  Database.StringF:=IniFil.ReadString('BD','BD','');
  DataBase.Baza:=code(Database.StringF,PassConst,true);
  Database.StringF:=IniFil.ReadString('BD','LOGIN','');
  DataBase.Login:=code(Database.StringF,PassConst,true);
  Database.StringF:=IniFil.ReadString('BD','PASSWORD','');
  DataBase.Password:=code(Database.StringF,PassConst,true);

 { DataBase.Server:=IniFil.ReadString('BD','Server','127.0.0.1');
  DataBase.Baza:=IniFil.ReadString('BD','BD','MonetaGKH');
  DataBase.Login:=IniFil.ReadString('BD','LOGIN','sa');
  DataBase.Password:=IniFil.ReadString('BD','PASSWORD','a147258369W'); }

  Directory.DirInp:=IniFil.ReadString('DIR','INP',ExtractFilePath(Paramstr(0))+'IN');
  Directory.DirOut:=IniFil.ReadString('DIR','OUT',ExtractFilePath(Paramstr(0))+'OUT');
  Directory.DirSystem:=IniFil.ReadString('DIR','SYS',ExtractFileDir(Paramstr(0)));
  Directory.DirArch:=IniFil.ReadString('DIR','ARCH',ExtractFilePath(Paramstr(0))+'ARC');
  PictTitle:=IniFil.ReadString('SETUP','PICT',ExtractFilePath(Paramstr(0))+'titul.jpg');
  Directory.FileShab:=IniFil.ReadString('DIR','FILEXP',ExtractFilePath(Paramstr(0))+'SHABLON.DBF');
  if Fileexists(PictTitle) then
    try
      MainImage.Picture.LoadFromFile(PictTitle);
      log('Подгружена картинка главного окна прогарммы');
    except
      log('Ошибка подгруки картинки главного окна прогарммы');
    end
  else log('Файл картинки главного окна прогарммы отсуствует');
  Inifil.Free;
  Main.Caption:=Application.Title; 
end;

procedure TMain.GM12Click(Sender: TObject);
begin
  TypeClose:=true;
  Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if TypeClose=true then begin
    log('Запрос на выход из ПО');
    If Mes('Вы действительно хотет завершить программу?',Mb_YesNo+Mb_IconQuestion)=IdNo then begin
      TypeClose:=false;
      Abort;
    end;
  end;
end;


procedure TMain.FormDestroy(Sender: TObject);
begin
  
  Log('************ Завершение работы ПО **************');
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Baza.DB.Tag=1 then baza.DB.Connected:=false;
  if TypeClose=false then Log('Завершние работы ПО без запроса');
end;

procedure TMain.GM11Click(Sender: TObject);
begin
  If Baza.DB.Tag=1 then begin
    log('Отключение от БД');
    Baza.DB.Connected:=false;
    Baza.DB.Tag:=0;
    GM11.Caption:='Авторизация';
    GM2.Visible:=true;
    GM2.Enabled:=false;
    GM3.Visible:=true;
    GM3.Enabled:=false;
    GM4.Visible:=true;
    GM41.Enabled:=true;
    GM42.Enabled:=false;
    GM5.Visible:=false;
    Exit;
  end;
  try
    baza.DB.ConnectionString:='Provider=SQLOLEDB.1;Password='+DataBase.Password+';Persist Security Info=True;User ID='+DataBase.Login+';Initial Catalog='+DataBase.Baza+';Data Source='+DataBase.Server;
    Baza.DB.Connected:=True;
  except
  end;
  If Baza.DB.Tag=0 then begin
    log('Ошибка соединения с БД');
    Mes('Ошибка соединения с БД',Mb_Ok+Mb_IconError);
    Exit;
  end;
  GM11.Caption:='Отключится';
  GM2.Enabled:=true;
  GM3.Enabled:=true;
  GM41.Enabled:=true;  
  Auntification:=TAuntification.Create(Owner);
end;

procedure TMain.GM41Click(Sender: TObject);
begin
  Options:=Toptions.Create(Owner);
end;

procedure TMain.GM42Click(Sender: TObject);
begin
  Sprav:=Tsprav.Create(Owner);
end;

procedure TMain.GM21Click(Sender: TObject);
begin
  FileIn:=TFileIn.Create(Owner);
end;

procedure TMain.GM23Click(Sender: TObject);
begin
  FileOut:=TfileOut.Create(Owner);
end;

procedure TMain.T1Timer(Sender: TObject);
begin
  SB.Panels[0].Text:=FormatDateTime('DD.MM.yyyy HH:NN:SS',Now);
  Application.ProcessMessages;
end;

procedure TMain.GM24Click(Sender: TObject);
begin
  FindPayment:=TFindPayment.Create(Owner);
end;

procedure TMain.T2Timer(Sender: TObject);
begin
  If It=60 then begin
    T2.Enabled:=false;
    if ProcessFind.Showing=true then ProcessFind.Close;
     if ProcessLoad.Showing=true then ProcessLoad.Close;
  end else begin
    Inc(IT,1);
    if ProcessLoad.Showing=true then ProcessLoad.Procces.Progress:=IT;
    if ProcessFind.Showing=true then  ProcessFind.Label1.caption:='Ждтите идет поиск ('+IntToStr(IT)+')';
  end;
end;

procedure TMain.UzipTotalPercentDone(Sender: TObject; Percent: Integer);
begin
  ProcessLoad.Procces.Progress:=Percent;
  Application.ProcessMessages;
end;

procedure TMain.GM224Click(Sender: TObject);
begin
  Nonpayment:=TNonpayment.Create(Owner);
end;

procedure TMain.GM221Click(Sender: TObject);
begin
  RegistryForOps:=TRegistryForOps.Create(Owner);
end;

procedure TMain.GM222Click(Sender: TObject);
begin
  List:=Tlist.Create(Owner);
end;

procedure TMain.CzipTotalPercentDone(Sender: TObject; Percent: Integer);
begin
  ProcessLoad.Procces.Progress:=Percent;
  Application.ProcessMessages;
end;

procedure TMain.GM223Click(Sender: TObject);
begin
  ReestryForOps:=TReestryForOps.Create(Owner);
end;

procedure TMain.GM31Click(Sender: TObject);
begin
  TypeRep:=1;
  ReportParamIp:=TReportParamIp.Create(Owner);

  with ReportParamIp do begin
    Caption:=GM31.Caption;
    BoxPeriod.Checked:=false;
    BoxPeriod.Enabled:=false;
    PanelRepOps.Enabled:=true;
    Panel4.Enabled:=false;
    Panel2.Enabled:=true;
    textOpst.text:='';
  with baza.SQL_REP_PER do begin
    Active:=false;
    SQL.Text:='Select God From TAB_MONETY Group By GOD';
    Active:=true;
    GodBox.Items.Clear;
    if RecordCount>0 then begin
      First;
      while not EOF do begin
        GodBox.Items.Add(baza.SQL_REP_PER['GOD']);
        if baza.SQL_REP_PER['GOD']=StrToInt(FormatDateTime('yyyy',Date)) then GodBox.ItemIndex:=RecNo-1;
        Next;
      end;
    end;
    Active:=false;
  end;
  if GodBox.Items.Count>0 then
    with baza.SQL_REP_PER do begin
      Active:=false;
      SQL.Text:='Select MES From TAB_MONETY where GOD='+GodBox.Items[GodBox.ItemIndex]+' Group By MES';
      Active:=true;
      MesBox.Items.Clear;
      if RecordCount>0 then begin
        First;
        while Not EOF do begin
          MesBox.Items.Add(baza.SQL_REP_PER['MES']);
          MesBox.ItemIndex:=0;
          Next;
        end
      end;
      Active:=false;
    end;
  end;
end;

procedure TMain.GM32Click(Sender: TObject);
begin
  TypeRep:=2;
  ReportParamIp:=TReportParamIp.Create(Owner);
  with ReportParamIp do begin
    PanelRepOps.Enabled:=true;
    BoxPeriod.Enabled:=true;
    BoxPeriod.Checked:=false;
    Caption:=GM32.Caption;
    Panel4.Enabled:=false;
    Panel2.Enabled:=true;
    textOpst.text:='';
  with baza.SQL_REP_PER do begin
    Active:=false;
    SQL.Text:='Select GOD From Tab_List Group By GOD';
    Active:=true;
    GodBox.Items.Clear;
    if RecordCount>0 then begin
      First;
      while not EOF do begin
        GodBox.Items.Add(baza.SQL_REP_PER['GOD']);
        if baza.SQL_REP_PER['GOD']=StrToInt(FormatDateTime('yyyy',Date)) then GodBox.ItemIndex:=RecNo-1;
        Next;
      end;
    end;
    Active:=false;
  end;
  if GodBox.Items.Count>0 then
    with baza.SQL_REP_PER do begin
      Active:=false;
      SQL.Text:='Select DISTINCT MES from Tab_list Where GOD='+GodBox.Items[GodBox.ItemIndex]+' Order By MES';
      Active:=true;
      MesBox.Items.Clear;
      if RecordCount>0 then begin
        First;
        while Not EOF do begin
          MesBox.Items.Add(baza.SQL_REP_PER['MES']);
          MesBox.ItemIndex:=0;
          Next;
        end
      end;
      Active:=false;
    end;
  end;
end;

procedure TMain.GM01Click(Sender: TObject);
Var
  S:TstringList;
begin
  Log('Запрос сведений ИНФО о системе');
  s:=TstringList.Create;
  S.Add('Программа               - '+Application.Title);
  S.Add('Исполняемый файл - '+Application.ExeName);
  S.Add('Версия файла          - '+GetFileVersion(Paramstr(0)));
  S.Add('Рабочий каталог     - '+ExtractFilePath(Paramstr(0)));
  S.add('Рабочая БД              - '+DataBase.Server+':'+DataBase.Baza);
  Mes(S.Text,Mb_Ok+Mb_IconInformation);
  S.Free;
end;

procedure TMain.GM02Click(Sender: TObject);
  Var S: String; i : Integer;
begin
  S:=ExtractFileName(Paramstr(0));
  if FileExists(ExtractFilePath(Paramstr(0))+'UpdatePo.exe') then begin
    if Mes('Для устновки обновления програмы потребуется перзапуск.'+#13+'Выполнить проврку и устновку обновления?',Mb_YesNo+Mb_iconQuestion)=IdNo then Exit;
    I:=ShellExecute(handle,'Open',Pchar(ExtractFilePath(Paramstr(0))+'UpdatePo.exe'),Pchar(S),Pchar(Directory.DirSystem),SW_Show);
    if I<32 then Mes(SysErrorMessage(GetLastError),Mb_Ok+Mb_iconError) else Close;
  end else mes('Нет систменого файла '+#13+ExtractFilePath(Paramstr(0))+'UpdatePo.exe',Mb_Ok+Mb_iconError);
end;

procedure TMain.GM013Click(Sender: TObject);
begin
  LogWorc:=TLogWorc.Create(Owner);
end;

procedure TMain.GM51Click(Sender: TObject);
Var BackupFile: string;
begin

  try
    log('Резервирование БД');
    Main.RegWorc(UserWorc.ID,NameArm,NameUser,'Создание резервной копии '+BackupFile);
    with baza.sql_rezerv do begin
      Active:=false;
      sql.Text:='Select PARAMVALUE from SPR_SYSTEM where IdParam=3 and Status=0';
      Active:=true;
      if (RecordCount>0) then
        if Length(Trim(baza.SQL_Rezerv['ParamValue']))>0 then
          BackupFile:=Trim(baza.SQL_Rezerv['ParamValue'])+DataBase.Baza+'_'+FormatDateTime('yyyy_mm_dd_hh_nn_ss',now)+'.bak'
        else BackupFile:='C:\Temp\'+DataBase.Baza+'_'+FormatDateTime('yyyy_mm_dd_hh_nn_ss',now)+'.bak'
      else
        BackupFile:='C:\Temp\'+DataBase.Baza+'_'+FormatDateTime('yyyy_mm_dd_hh_nn_ss',now)+'.bak';
      log('Файл резервной копии '+BackupFile);
      Active:=false;
      try
        sql.Text:='BACKUP DATABASE ['+DataBase.Baza+'] TO  DISK = N'''+BackupFile+''' WITH NOFORMAT, NOINIT,  NAME = N'''+DataBase.Baza+'-Rezerv_'+FormatdateTime('dd.mm.yyyy hh:nn:ss',now)+''', SKIP, NOREWIND, NOUNLOAD, COMPRESSION, STATS = 10 ';
        ExecSQL;
      except
        main.Mes('Ошибка создания резервной копии '+#13+BackupFile,Mb_Ok+Mb_IconError);
        SB.Panels[4].Text:='Завершено';
      end;
      Active:=false;
      Mes('Резревная копия создана в файл '+BackupFile,Mb_ok+Mb_iconInformation);
    end;
  except
  end;
end;

procedure TMain.N11Click(Sender: TObject);
begin
  baza.SP_ReIndex.ExecProc;
  SB.Panels[4].Text:='Завершено';
end;

end.
