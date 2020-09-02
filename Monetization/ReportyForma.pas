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
{������� ���������� �������� 1 ����� ������� 3-������� 2-������� 1-����� 4-11-19
Padeg - 1-��������� 2- ����, ��� }
var i:Integer;
begin
i:=StrToInt(Cifr);
  if Pr = 1 Then
    case i of
      1: CifrToStr :='���';
      2: CifrToStr :='������';
      3: CifrToStr :='������';
      4: CifrToStr :='���������';
      5: CifrToStr :='�������';
      6: CifrToStr :='��������';
      7: CifrToStr :='�������';
      8: CifrToStr :='���������';
      9: CifrToStr :='���������';
      0: CifrToStr :='';
    end
  else
    if Pr = 2 Then
      case i of
        1: CifrToStr :='';
        2: CifrToStr :='��������';
        3: CifrToStr :='��������';
        4: CifrToStr :='�����';
        5: CifrToStr :='���������';
        6: CifrToStr :='����������';
        7: CifrToStr :='���������';
        8: CifrToStr :='�����������';
        9: CifrToStr :='���������';
        0: CifrToStr :='';
      end
    else
      if Pr = 3 Then
        case i of
          1: if Padeg =1 Then CifrToStr :='����' else CifrToStr :='����';
          2: if Padeg =1 Then CifrToStr :='���' else CifrToStr :='���';
          3: CifrToStr :='���';
          4: CifrToStr :='������';
          5: CifrToStr :='����';
          6: CifrToStr :='�����';
          7: CifrToStr :='����';
          8: CifrToStr :='������';
          9: CifrToStr :='������';
          0: CifrToStr :='';
        end
      else
        if Pr = 4 Then
          case i of
            1: CifrToStr :='�����������';
            2: CifrToStr :='����������';
            3: CifrToStr :='����������';
            4: CifrToStr :='������������';
            5: CifrToStr :='����������';
            6: CifrToStr :='�����������';
            7: CifrToStr :='����������';
            8: CifrToStr :='������������';
            9: CifrToStr :='������������';
            0: CifrToStr :='������';
          end;
end;

function Rasryad(K:Integer;V:String) : string;
{������� ���������� ������������ ������� � ����������� �� ��������� 2 ���� ���}
Var j:Integer;
Begin
  j := StrToInt(Copy(v,Length(v),1));
  if (StrToInt(Copy(v,Length(v)-1,2))> 9) And (StrToInt(Copy(v,Length(v)-1,2))< 20) Then
    case K of
      0: Rasryad :='';
      1: Rasryad :='�����';
      2: Rasryad :='���������';
      3: Rasryad :='����������';
      4: Rasryad :='����������';
    end
  else
    case K of
      0: Rasryad :='';
      1: case j of
        1: Rasryad :='������';
        2..4: Rasryad :='������';
      else
        Rasryad :='�����';
      end;
      2: case j of
        1: Rasryad :='�������';
        2..4: Rasryad :='�������a';
      else
        Rasryad :='���������';
      end;
      3: case j of
        1: Rasryad :='��������';
        2..4: Rasryad :='���������';
      else
        Rasryad :='����������';
    end;
    4: case j of
        1: Rasryad :='��������';
        2..4: Rasryad :='���������';
      else
        Rasryad :='����������';
      end;
  end;
end;



function GroupToStr(Group:String;Padeg:Integer) : string;
{������� ���������� �������� 3 �����}
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
    S:='���� '+Rub+' 00 '+Kop;
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
  param.Orgnizm:=inf.ReadString('KKMSERVICE','NAMEORG','���� ����� ������');
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
  if Pos('�',NumOkno)>0 then begin
    delete(NumOkno,1,Pos('�',NumOkno)+1);
    RegPrint:=2;
  end else begin
    NumOkno:='00';
    RegPrint:=1;
  end;
  LogFil('����������� ���������� ');
  messagecode:=RegisterWindowMessage(PChar(WM_WINPOST_GETPROP));
  Operator:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('Operator')),0)));
//  OpsInd:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('PostOffice')),0)));
  OpsName:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('PostOfficeName')),0)));
  RegNum:=(Pchar(SendMessage(FWPHandle,messagecode,Integer(Pchar('RegSerialNo')),0)));
  formop:=true;
  LogFil('�������� ����������, ����������� ����������� � �� ��� Winpost');
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
            LogFil('����������� �� ��� WinPos - ���������');
          except
            Application.MessageBox('������ �������� ������� ����� ����������',Pchar(caption),Mb_Ok+Mb_IconWarning);
            baza.POSTDB.Connected:=false;
            LogFil('������ �������� ������� ����� ���������');
          end;
        except
          Application.MessageBox('������ �������� ����������� ����������',Pchar(caption),Mb_Ok+Mb_IconWarning);
          baza.POSTDB.Connected:=false;
          LogFil('������ �������� ����������� ����������');
        end;
      except
        Application.MessageBox('������ �������� ����������� ������� ����',Pchar(caption),Mb_Ok+Mb_IconWarning);
        baza.POSTDB.Connected:=false;
        LogFil('������ �������� ����������� ������� ����');
      end;
    except
      Application.MessageBox('������ �������� ����������� ���',Pchar(caption),Mb_Ok+Mb_IconWarning);
      baza.POSTDB.Connected:=false;
      LogFil('������ �������� ����������� ���');
    end;
  except
    Application.MessageBox('������ ���������� � ��',Pchar(caption),Mb_Ok+Mb_IconWarning);
    LogFil('������ ���������� � �� ��� WinPost');
  end;
end;

procedure TReporti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LogFil('������� ���� ������');
  TabChek.Free;
  AddKm3.Free;
  Km3.Free;
  ANF0809.Free;
  baza.Free;

end;

procedure TReporti.km3ButClick(Sender: TObject);
begin
  LogFil('�������� ���� ������������ ���� ��-3');
  KM3.ShowModal;
  //km3.Show;
  KM3.Pc.Pages[0].Show;
//  reporti.Enabled:=false;
end;

procedure TReporti.Anf0809ButClick(Sender: TObject);
begin
  LogFil('������� ���� ������ � ����� ���-08\09');
  ANF0809.ShowModal;
 // reporti.Enabled:=false;
end;

procedure TReporti.FormDestroy(Sender: TObject);
begin
  LogFil('���������� ��������� � INI �����');
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
  LogFil('���������� ������ ');
  LogFil('***********************************************************************');
end;

procedure TReporti.SetupButClick(Sender: TObject);
begin
  LogFil('�������� ���� �������� ������');
  Setup.ShowModal;
end;

end.
