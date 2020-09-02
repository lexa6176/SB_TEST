unit ReportyForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShlObj,
  Dialogs, ComCtrls, Buttons,WinPostModUtils,WinPostMod, DBTables, DB,IniFiles;

  const
  WM_WINPOST_PRINTREPORT='WM_WINPOST_PRINTREPORT';
  WM_WINPOST_GETPROP='WM_WINPOST_GETPROP';
  
type

TWPModMessageProc = procedure(var Message: TMessage; Param: Pointer) of object;

WPModMessageRec=^TWPModMessageRec;

TWPModMessageRec = record
  WPMessage: string;
  WPMessageCode: Integer;
  MessageProc: TWPModMessageProc;
end;

type
  TReporti = class(TForm)
    StatusBar1: TStatusBar;
    km3But: TSpeedButton;
    Anf0809But: TSpeedButton;
    SetupBut: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure km3ButClick(Sender: TObject);
    procedure Anf0809ButClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SetupButClick(Sender: TObject);
  private
    { Private declarations }

  public
    function RubToStr(Rubs:Currency;Rub,Kop:String) : string;
    Procedure LogFil(st:String);

    { Public declarations }
  end;

var
  Reporti         : TReporti;
  RegPrint        : Integer;
  Podpis,NumOkno  : String;
  MessageCode     : integer;
  RepList,SESL    : TstringList;
  sdt,Operator,OpsInd,
  OpsName,RegNum  : string;
  comport         : integer;
  i1,i2,i3,i4,i5  : Integer;
  BdPost: string;
  inf             : TiniFile;
  Param : record
    fioboss  : string;
    Orgnizm  : string;
    TipKKT   : Integer;
    RegNomer : string;
    Inn      : string;
    Anf0809  : boolean;
    Ras0809  : boolean;
    ExpPat   : String;
    RasKol   : Integer;
  end;
  //const {$I WINPOSTMODMSG.INC}
  //WM_WINPOST_GETPROP = 'WM_WINPOST_GETPROP';
  Formop:boolean;
   FWPHandle: HWND;

  Procedure WPM_Report(WPWnd: HWND);
  Procedure ShowFind (handle : Thandle); export; stdcall; far;


  Function OpenDLL(OpName,Psw,DevName:PChar; FlagOem:Integer): Integer; stdcall; far; external 'azimuth.dll' name 'OpenDLL';
  Function OpenFDoc: Integer; stdcall; far; external 'azimuth.dll' name 'OpenFDoc';
  Function PrintFDoc(Information:PChar;Len: DWord): Integer; stdcall; far; external 'azimuth.dll' name 'PrintFDoc';
  Function SlipSelectFDoc: Integer;stdcall; far; external 'azimuth.dll' name 'SlipSelectFDoc';
  Function SlipEjectFDoc: Integer;stdcall; far; external 'azimuth.dll' name 'SlipEjectFDoc';
  Function CloseFDoc: Integer;stdcall; far; external 'azimuth.dll' name 'CloseFDoc';
  Function CloseDLL: Integer; stdcall; far; external 'azimuth.dll' name 'CloseDLL';
  Function XReport: Integer; stdcall; far; external 'azimuth.dll' name 'XReport';
  Function FreeDoc(Infomation:PChar;Len:DWord): Integer; stdcall; far; external 'azimuth.dll' name 'FreeDoc';
  Function FreeDocCut: Integer; stdcall; far; external 'azimuth.dll' name 'FreeDocCut';
  Function StartReceiptNF :Integer; export; stdcall;far; external 'azimuth.dll' name 'StartReceiptNF';
  Function CloseReceiptNF :Integer; export; stdcall;far; external 'azimuth.dll' name 'CloseReceiptNF';
  Function LineReceiptNF(Line: PChar) :Integer; export; stdcall;far; external 'azimuth.dll' name 'LineReceiptNF';
  Function PrintOEMCRLFDoc(Information:PChar;Len: DWord): Integer; stdcall; far; external 'azimuth.dll' name 'PrintOEMCRLFDoc';
  Function GetLastDllError: DWord;stdcall; far; external 'azimuth.dll' name 'GetLastDllError';
  Function GetSerialNum: Integer; stdcall; far; external 'azimuth.dll' name 'GetSerialNum';
  Function GetStatus : Integer;stdcall; far; external 'azimuth.dll' name 'GetStatus';
  Function GetStatusNo(No:Byte) : Integer;stdcall; far; external 'azimuth.dll' name 'GetStatusNo';
  Function FontSelectFDoc(B:Byte): Integer; export; stdcall; far; external 'azimuth.dll' name 'FontSelectFDoc';


implementation

uses Anf0809Forma, Km3Forma, BazaForma, SetupForma, AddKm3Forma,
  TabChekForma;



{$R *.dfm}

Procedure TReporti.LogFil(st:String);
var
  lf:TextFile;
  NameLog:string;
begin
  NameLog:=ExtractFilePath(Paramstr(0))+'Log\';
  if not ForceDirectories(namelog) then exit;
  Namelog:=nameLog+'KM3_A0908_'+FormatDateTime('yyyymmdd',date)+'.log';
  AssignFile(lf,NameLog);
  if FileExists(NameLog) then Append(lf) else rewrite(lf);
  WriteLn(lf,FormatDateTime('hh:nn:ss',Time),' - '+Operator+' - '+st);
  CloseFile(lf);
end;

function FixFloat(source:string):string;
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


function TReporti.RubToStr(Rubs:Currency;Rub,Kop:String) : string;
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


Procedure ShowFind (handle : Thandle);
begin
  Application.Handle:=Handle;
  reporti:=TReporti.Create(Application);
  Reporti.ShowModal;
  RegPrint:=2;
end;

procedure WPM_report(WPWnd: HWND);
begin
  with TReporti.Create(Application) do
    try
      FWPHandle:=WPWnd;
      ShowModal;
    finally
      Free;
    end;
  RegPrint:=2;
end;


procedure TReporti.FormCreate(Sender: TObject);
begin
  Formop:=false;
  with constraints do begin
    MaxWidth  :=  Width;
    MaxHeight :=  Height;
    MinWidth  :=  Width;
    MinHeight :=  Height;
  end;
  //messagecode:=RegisterWindowMessage(Pchar(WM_WINPOST_PRINTREPORT));



  inf:=Tinifile.Create(ChangeFileExt(paramstr(0),'.ini'));
  param.fioboss:=inf.ReadString('KKMSERVICE','FIOBOS','');
  param.Inn:=inf.ReadString('KKMSERVICE','INNPOST','');
  param.TipKKT:=inf.ReadInteger('KKMSERVICE','TIPKKM',0);
  param.Orgnizm:=inf.ReadString('KKMSERVICE','NAMEORG','ФГУП ПОЧТА РОССИИ');
  param.RegNomer:=inf.ReadString('KKMSERVICE','REGNUM','');
  param.Anf0809:=inf.ReadBool('KKMSERVICE','ANF0809',False);
  param.Ras0809:=inf.ReadBool('KKMSERVICE','RAS0809',false);
  param.ExpPat:=inf.ReadString('KKMSERVICE','EXPORTKM3','');
  param.RasKol:=inf.ReadInteger('KKMSERVICE','RASKOL',2);
end;

procedure TReporti.FormShow(Sender: TObject);
var
  Nm:Array[0..255] of Char;
begin

  if formop=true then exit;
  Baza:=Tbaza.Create(Application);
  Setup:=Tsetup.Create(Application);
  ANF0809:=TANF0809.Create(Application);
  KM3:=TKM3.Create(Application);
  TabChek:=TTabChek.Create(Application);
  AddKm3:=TAddKm3.Create(Application);
  GetWindowText(FWPHandle,Nm,255);
  NumOkno:=nm;
  if Pos('№',NumOkno)>0 then begin
    delete(NumOkno,1,Pos('№',NumOkno)+1);
    RegPrint:=2;
  end else begin
    NumOkno:='00';
    RegPrint:=1;
  end;
  LogFil('Определение параметров ');
  messagecode:=RegisterWindowMessage(PChar(WM_WINPOST_GETPROP));
  Operator:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('Operator')),0)));
//  OpsInd:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('PostOffice')),0)));
  OpsName:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('PostOfficeName')),0)));
  RegNum:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('RegSerialNo')),0)));
  formop:=true;
  LogFil('Парметры определены, выполняется подключение к БД ППП Winpost');
  try
    baza.POSTDB.Connected:=true;
    try
      baza.sql_registry.Active:=true;
      try
        baza.sql_window.Active:=true;
        try
          baza.sql_oper.Active:=true;
          try
            baza.setupe.Active:=true;
            LogFil('Соединениес БД ППП WinPos - выполнено');
          except
            Application.MessageBox('Ошибка открытия таблицы общих параметров',Pchar(caption),Mb_Ok+Mb_IconWarning);
            baza.POSTDB.Connected:=false;
            LogFil('Ошибка открытия таблицы общих парметров');
          end;
        except
          Application.MessageBox('Ошибка открытия справочника операторов',Pchar(caption),Mb_Ok+Mb_IconWarning);
          baza.POSTDB.Connected:=false;
          LogFil('Ошибка открытия справочника операторов');
        end;
      except
        Application.MessageBox('Ошибка открытия справочника рабочих окон',Pchar(caption),Mb_Ok+Mb_IconWarning);
        baza.POSTDB.Connected:=false;
        LogFil('Ошибка открытия справочника рабочих окон');
      end;
    except
      Application.MessageBox('Ошибка открытия справочника ККМ',Pchar(caption),Mb_Ok+Mb_IconWarning);
      baza.POSTDB.Connected:=false;
      LogFil('Ошибка открытия справочника ККМ');
    end;
  except
    Application.MessageBox('Ошибка соединения с БД',Pchar(caption),Mb_Ok+Mb_IconWarning);
    LogFil('Ошибка соединения с БД ППП WinPost');
  end;
end;

procedure TReporti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LogFil('Закрыте окна модуля');
  TabChek.Free;
  AddKm3.Free;
  Km3.Free;
  ANF0809.Free;
  baza.Free;

end;

procedure TReporti.km3ButClick(Sender: TObject);
begin
  LogFil('Открытие окна формирвоания акта КМ-3');
  KM3.ShowModal;
  //km3.Show;
  KM3.Pc.Pages[0].Show;
//  reporti.Enabled:=false;
end;

procedure TReporti.Anf0809ButClick(Sender: TObject);
begin
  LogFil('Откртие окна работы с актом АНФ-08\09');
  ANF0809.ShowModal;
 // reporti.Enabled:=false;
end;

procedure TReporti.FormDestroy(Sender: TObject);
begin
  LogFil('Сохрарение пармтеров в INI файле');
  inf.WriteString('KKMSERVICE','FIOBOS',param.fioboss);
  inf.WriteString('KKMSERVICE','INNPOST',param.Inn);
  inf.WriteInteger('KKMSERVICE','TIPKKM',param.TipKKT);
  inf.WriteString('KKMSERVICE','NAMEORG',param.Orgnizm);
  inf.WriteString('KKMSERVICE','REGNUM',param.RegNomer);
  inf.WriteBool('KKMSERVICE','ANF0809',param.Anf0809);
  inf.WriteBool('KKMSERVICE','RAS0809',param.Ras0809);
  inf.WriteString('KKMSERVICE','EXPORTKM3',param.ExpPat);
  inf.WriteInteger('KKMSERVICE','RASKOL',param.RasKol);
  inf.Free;
  LogFil('Завершение работы ');
  LogFil('***********************************************************************');
end;

procedure TReporti.SetupButClick(Sender: TObject);
begin
  LogFil('Открытие окна настроек модуля');
  Setup.ShowModal;
end;

end.
