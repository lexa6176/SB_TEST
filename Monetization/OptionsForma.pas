unit OptionsForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons,IniFiles,FileCtrl, ExtCtrls;

type
  TOptions = class(TForm)
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TextDirOut: TEdit;
    TextDirIn: TEdit;
    TextDirArch: TEdit;
    TextDirSystem: TEdit;
    ButDirSys: TSpeedButton;
    ButDirArc: TSpeedButton;
    ButDirIn: TSpeedButton;
    ButDirOut: TSpeedButton;
    PanelBut: TPanel;
    ButSave: TSpeedButton;
    ButCansel: TSpeedButton;
    PanelParamBd: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    TextLogin: TEdit;
    TextServer: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    TextPassw: TEdit;
    TextBaza: TEdit;
    PanelExpDBF: TPanel;
    Label9: TLabel;
    TextFileOut: TEdit;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButCanselClick(Sender: TObject);
    procedure ButSaveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ButDirInClick(Sender: TObject);
    procedure ButDirOutClick(Sender: TObject);
    procedure ButDirSysClick(Sender: TObject);
    procedure ButDirArcClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Options: TOptions;

implementation

uses MainForma, BazaForma;

{$R *.dfm}

procedure TOptions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main.Log('����� �������� �������');
  Options.Free;
end;

procedure TOptions.FormCreate(Sender: TObject);
begin
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  TextServer.Text:=DataBase.Server;
  TextBaza.Text:=DataBase.Baza;
  TextLogin.Text:=DataBase.Login;
  TextPassw.Text:=DataBase.Password;
  TextDirIn.Text:=Directory.DirInp;
  TextDirOut.Text:=Directory.DirOut;
  TextDirSystem.Text:=Directory.DirSystem;
  TextDirArch.Text:=Directory.DirArch;
  TextFileOut.Text:=Directory.FileShab;
  main.Log('������� ����� �������� ');
end;

procedure TOptions.ButCanselClick(Sender: TObject);
begin
  main.Log('������ �������� ���������');
  TextServer.Text:=DataBase.Server;
  TextBaza.Text:=DataBase.Baza;
  TextLogin.Text:=DataBase.Login;
  TextPassw.Text:=DataBase.Password;
  TextDirIn.Text:=Directory.DirInp;
  TextDirOut.Text:=Directory.DirOut;
end;

procedure TOptions.ButSaveClick(Sender: TObject);
begin
  main.Log('���������� ������������ �������');
  with Main do begin
    if (TextServer.Text<>DataBase.Server) then Log('������� ������� � '+DataBase.Server+' �� '+TextServer.Text);
    if (TextBaza.Text<>DataBase.Baza) then Log('�������� ��� �� � '+DataBase.Baza+' �� '+TextBaza.Text);
    if (TextLogin.Text<>DataBase.Login) then Log('������� ����� '+DataBase.Login+' �� '+TextLogin.Text);
    if (TextPassw.Text<>DataBase.Password) then Log('������� ������ � ************************ �� ***************************');
    if (TextDirSystem.Text<>Directory.DirSystem) then Log('������� �������� ������� � '+Directory.DirSystem+' �� '+TextDirSystem.Text);
    if (TextDirArch.Text<>Directory.DirArch) then Log('������� �������� ������� � '+Directory.DirOut+' �� '+TextDirArch.Text);
    if (TextDirIn.Text<>Directory.DirInp) then Log('������� ������� ������� � '+Directory.DirInp+' �� '+TextDirIn.Text);
    if (TextDirOut.Text<>Directory.DirOut) then Log('������� �������� ������� � '+Directory.DirOut+' �� '+TextDirOut.Text);
    if (TextFileOut.Text<>Directory.FileShab) then Log('������� ������ ��������� ����� � '+Directory.FileShab+' �� '+TextFileOut.Text);
  end;
  If not ForceDirectories(TextDirIn.Text) then begin
    main.Mes('������ ��������� � �������� �������� '+TextDirIn.Text,Mb_Ok+Mb_IconError);
    TextDirIn.SetFocus;
    Exit;
  end;
  If not ForceDirectories(TextDirOut.Text) then begin
     main.Mes('������ ��������� � ��������� �������� '+TextDirOut.Text,Mb_Ok+Mb_IconError);
     TextDirOut.SetFocus;
     Exit;
  end;
  If not ForceDirectories(TextDirArch.Text) then begin
     main.Mes('������ ��������� � ��������� �������� '+TextDirArch.Text,Mb_Ok+Mb_IconError);
     TextDirArch.SetFocus;
     Exit;
  end;
  DataBase.Server:=TextServer.Text;
  DataBase.Baza:=TextBaza.Text;
  DataBase.Login:=TextLogin.Text;
  DataBase.Password:=TextPassw.Text;
  Directory.DirInp:=TextDirIn.Text;
  Directory.DirOut:=TextDirOut.Text;
  Directory.DirSystem:=TextDirSystem.Text;
  Directory.DirArch:=TextDirArch.Text;
  Directory.FileShab:=TextFileOut.Text;
  IniFil:=Tinifile.Create(ChangeFileExt(Paramstr(0),'.ini'));
  //Database.StringR:='Provider=SQLOLEDB.1;Password='+DataBase.Password+';Persist Security Info=True;User ID='+DataBase.Login+';Initial Catalog='+DataBase.Baza+';Data Source='+DataBase.Server;
  //Database.StringF:=Main.code(Database.StringR,PassConst,true);
  //IniFil.WriteString('BD','Connection',Database.StringF);
  Database.StringF:=main.code(DataBase.Server,PassConst,false);
  IniFil.WriteString('BD','Server',DataBase.StringF);
  Database.StringF:=main.code(DataBase.Baza,PassConst,false);
  IniFil.WriteString('BD','BD',DataBase.StringF);
  Database.StringF:=main.code(DataBase.Login,PassConst,false);
  IniFil.WriteString('BD','LOGIN',DataBase.StringF);
  Database.StringF:=main.code(DataBase.Password,PassConst,false);
  IniFil.WriteString('BD','PASSWORD',DataBase.StringF);






  {IniFil.WriteString('BD','Server',DataBase.Server);
  IniFil.WriteString('BD','BD',DataBase.Baza);
  IniFil.WriteString('BD','LOGIN',DataBase.Login);
  IniFil.WriteString('BD','PASSWORD',DataBase.Password);  }
  IniFil.WriteString('DIR','INP',Directory.DirInp);
  IniFil.WriteString('DIR','OUT',Directory.DirOut);
  IniFil.WriteString('DIR','SYS',Directory.DirSystem);
  IniFil.WriteString('DIR','ARCH',Directory.DirArch);
  IniFil.WriteString('DIR','FILEXP',Directory.FileShab);
  IniFil.UpdateFile;
  main.Log('��������� ���������');
end;

procedure TOptions.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (TextServer.Text<>DataBase.Server) or
     (TextBaza.Text<>DataBase.Baza) or
     (TextLogin.Text<>DataBase.Login) or
     (TextPassw.Text<>DataBase.Password) or
     (TextDirIn.Text<>Directory.DirInp) or
     (TextDirOut.Text<>Directory.DirOut) or
     (TextDirSystem.Text<>Directory.DirSystem) or
     (TextDirArch.Text<>Directory.DirArch) or
     (TextFileOut.Text<>Directory.FileShab) then
  begin
    main.log('���������� ��������� ��c�����, ������ �� ���������� ������');
    case main.Mes('������� �������� � ��������.'+#13+'�� ������ ��������� ���������?',Mb_YesNoCancel+Mb_iconQuestion) of
      IdYes : ButSave.Click;
      IdNo :  ButCansel.Click;
      IdCancel : Abort;
    end;
  end;
end;

procedure TOptions.ButDirInClick(Sender: TObject);
Var S:String;
begin
  main.Log('������� ���� ������ ������� ������� ������');
  S:='';
  if SelectDirectory('����� ��������','',S) then TextDirIn.text:=S;
  TextDirIn.setFocus;
end;

procedure TOptions.ButDirOutClick(Sender: TObject);
Var S:String;
begin
  main.Log('������� ���� ������ ������� �������� ������');
  S:='';
  if SelectDirectory('����� ��������','',S) then TextDirOut.text:=S;
  TextDirOut.SetFocus;
end;

procedure TOptions.ButDirSysClick(Sender: TObject);
Var S:String;
begin
  main.Log('������� ���� ������ ���������� �������� ');
  S:='';
  if SelectDirectory('����� ��������','',S) then TextDirSystem.text:=S;
  TextDirSystem.SetFocus;
end;

procedure TOptions.ButDirArcClick(Sender: TObject);
Var S:String;
begin
  main.Log('������� ���� ������ ��������� ��������');
  S:='';
  if SelectDirectory('����� ��������','',S) then TextDirArch.text:=S;
  TextDirArch.SetFocus;
end;

procedure TOptions.SpeedButton1Click(Sender: TObject);
Var S: String;
begin
  main.Log('������� ���� ������ ����� �������');
  if PromptForFileName(S,'*.dbf|*.dbf','','�������� ���� �������','',false) then  textFileOut.Text:=S;
end;

end.
