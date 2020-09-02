unit UserForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TUserW = class(TForm)
    StatusBar1: TStatusBar;
    TabUser: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBox: TCheckBox;
    TipBox: TComboBox;
    Label3: TLabel;
    FioT: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    TabNumT: TEdit;
    mailt: TEdit;
    logt: TEdit;
    passt: TEdit;
    smtpst: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel3: TPanel;
    AddBut: TSpeedButton;
    EdBut: TSpeedButton;
    SavBut: TSpeedButton;
    CanBut: TSpeedButton;
    Label8: TLabel;
    portt: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TabUserCellClick(Column: TColumn);
    procedure TabUserDblClick(Sender: TObject);
    procedure TabUserEnter(Sender: TObject);
    procedure AddButClick(Sender: TObject);
    procedure EdButClick(Sender: TObject);
    procedure SavButClick(Sender: TObject);
    procedure CanButClick(Sender: TObject);
    procedure TabUserKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabNumTExit(Sender: TObject);
    procedure porttChange(Sender: TObject);
    procedure TabNumTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserW : TUserW;
  Reg   : Integer;
implementation

uses BazaForma, SetupForma, Glavn;

{$R *.dfm}

procedure TUserW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Setup.ShowModal;
end;

procedure TUserW.FormShow(Sender: TObject);
begin
  JPKF.Logfil('Открытие списка пользователей');
  TabNumT.Text:='';
  FioT.Text:='';
  TipBox.ItemIndex:=0;
  StatusBox.Checked:=false;
  if Baza.sql_user_W.RecordCount=0 then edbut.Enabled:=false else edbut.Enabled:=true;
  TabUser.SetFocus;
end;

procedure TUserW.TabUserCellClick(Column: TColumn);
begin
  if baza.sql_user_W.RecordCount=0 then exit;
  TabNumT.Text:=baza.sql_user_WID.AsString;
  FioT.Text:=baza.sql_user_WNAMEUSER.Value;
  TipBox.ItemIndex:=baza.sql_user_WTIPUSER.Value;
  if baza.sql_user_WSTATUS.Value=1 then
    StatusBox.Checked:=true
  else
    StatusBox.Checked:=false;
  Mailt.Text:=baza.sql_user_WMAIL.Value;
  logt.Text:=baza.sql_user_WLOG.Value;
  passt.Text:=baza.sql_user_WPAS.Value;
  smtpst.Text:=baza.sql_user_WSERV.Value;
  portt.Text:=baza.sql_user_wport.AsString;
end;

procedure TUserW.TabUserDblClick(Sender: TObject);
begin
  if baza.sql_user_W.RecordCount=0 then exit;
  TabNumT.Text:=baza.sql_user_WID.AsString;
  FioT.Text:=baza.sql_user_WNAMEUSER.Value;
  TipBox.ItemIndex:=baza.sql_user_WTIPUSER.Value;
  if baza.sql_user_WSTATUS.Value=1 then
    StatusBox.Checked:=true
  else
    StatusBox.Checked:=false;
  Mailt.Text:=baza.sql_user_WMAIL.Value;
  logt.Text:=baza.sql_user_WLOG.Value;
  passt.Text:=baza.sql_user_WPAS.Value;
  smtpst.Text:=baza.sql_user_WSERV.Value;
  portt.Text:=baza.sql_user_wport.AsString;
end;

procedure TUserW.TabUserEnter(Sender: TObject);
begin
  if baza.sql_user_W.RecordCount=0 then exit;
  TabNumT.Text:=baza.sql_user_WID.AsString;
  FioT.Text:=baza.sql_user_WNAMEUSER.Value;
  TipBox.ItemIndex:=baza.sql_user_WTIPUSER.Value;
  if baza.sql_user_WSTATUS.Value=1 then
    StatusBox.Checked:=true
  else
    StatusBox.Checked:=false;
  Mailt.Text:=baza.sql_user_WMAIL.Value;
  logt.Text:=baza.sql_user_WLOG.Value;
  passt.Text:=baza.sql_user_WPAS.Value;
  smtpst.Text:=baza.sql_user_WSERV.Value;
  portt.Text:=baza.sql_user_wport.AsString;
end;

procedure TUserW.AddButClick(Sender: TObject);
begin
  JPKF.Logfil('Добавление нового пользователя');
  AddBut.Enabled:=false;
  EdBut.Enabled:=false;
  SavBut.Enabled:=true;
  CanBut.Enabled:=true;
  Reg:=1;
  TabNumT.Text:='';
  TabNumt.PasswordChar:=#0;
  FioT.Text:='';
  mailt.Text:='';
  logt.Text:='';
  passt.Text:='';
  smtpst.Text:='';
  portt.Text:='';
  TipBox.ItemIndex:=0;
  StatusBox.Checked:=true;
  Panel2.Enabled:=true;
  Tabuser.Enabled:=false;
  TabNumT.SetFocus;
end;

procedure TUserW.EdButClick(Sender: TObject);
begin
  if baza.sql_user_W.RecordCount=0 then exit;
  JPKF.Logfil('Редактирование пользователя');
  AddBut.Enabled:=false;
  EdBut.Enabled:=false;
  SavBut.Enabled:=true;
  CanBut.Enabled:=true;
  Reg:=2;
  Panel2.Enabled:=true;
  Tabuser.Enabled:=false;
  TabNumT.SetFocus;
end;

procedure TUserW.SavButClick(Sender: TObject);
begin

  if length(trim(TabNumT.Text))=0 then begin
    Jpkf.Mess('Необходимо указать ФИО оператора',Mb_iconInformation,Mb_ok);
    TabNumT.SetFocus;
    exit;
  end;
  if length(trim(Fiot.Text))=0 then begin
    Jpkf.Mess('Необходимо указать ФИО оператора',Mb_iconInformation,Mb_ok);
    fiot.SetFocus;
    exit;
  end;
  if (JPKF.Kontrolstr(TabNumt.Text)=false) then begin
    JPKF.Mess('Пароль (табельный номер) может содержать только цифры',Mb_IconInformation,Mb_Ok);
    TabNumt.SetFocus;
    exit;
  end;
  if (JPKF.Kontrolstr(Portt.Text)=false) then begin
    JPKF.Mess('Порт SMTP может содержать только цифры',Mb_IconInformation,Mb_Ok);
    Portt.SetFocus;
    exit;
  end;

  TabNumt.PasswordChar:='#';
  if reg=1 then begin
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Text:='select ID from USERWT where ID='+TabNumT.Text+';';
    baza.sql_Upd.Active:=true;
    if baza.sql_Upd.RecordCount>0 then begin
      JPKF.Mess('Пользователь с таким ТН уже записан в БД',Mb_IconWarning,Mb_Ok);
      exit;
    end;
    baza.sql_Upd.Active:=false;
  end;
  Case Reg of
    1: begin
      baza.sql_Upd.SQL.Text:='Insert Into USERWT (ID,NAMEUSER,DATCREAT,TIPUSER,STATUS,MAIL,LOG,PAS,SERV,PORT) values ('+TabNumT.Text+','''+FioT.Text+''','''+DateToStr(date)+''','+IntToStr(TipBox.ItemIndex)+',1,'''+mailt.Text+''','''+logt.Text+''','''+passt.Text+''','''+smtpst.Text+''',';
      if Length(trim(portt.text)) >0 then baza.sql_Upd.SQL.Text:=baza.sql_Upd.SQL.Text +portt.Text+');' else baza.sql_Upd.SQL.Text:=baza.sql_Upd.SQL.Text +'25);';
    end;
    2: begin
      baza.sql_Upd.SQL.Text:='UPDATE USERWT SET NAMEUSER='''+FioT.Text+
                              ''',TIPUSER='+ IntToStr(TipBox.ItemIndex)+',MAIL='''+mailt.Text+''',LOG='''+logt.Text+''',PAS='''+passt.Text+''',SERV='''+smtpst.Text+''',PORT='+portt.Text;
      if StatusBox.Checked=true then
        baza.sql_Upd.SQL.Text:= baza.sql_Upd.SQL.Text+',STATUS=1'
      else
        baza.sql_Upd.SQL.Text:= baza.sql_Upd.SQL.Text+',STATUS=0';
      baza.sql_Upd.SQL.Text:= baza.sql_Upd.SQL.Text+' where ID='+TabNumT.Text+';';
    end;
  end;
  baza.sql_Upd.ExecSQL;
  if param.IdOper=StrToInt(TabNumT.Text) then begin
    user.host:=smtpst.Text;
    user.port:=StrToInt(portt.Text);
    user.log:=logt.Text;
    user.pass:=passt.Text;
    user.mail:=mailt.Text;
  end;
  JPKF.Logfil('Сохрание записи');
  baza.sql_user_W.Active:=false;
  baza.sql_user_W.Active:=true;
  AddBut.Enabled:=true;
  EdBut.Enabled:=true;
  SavBut.Enabled:=false;
  CanBut.Enabled:=false;
  Tabuser.Enabled:=true;
  Tabuser.OnEnter(sender);
end;

procedure TUserW.CanButClick(Sender: TObject);
begin
  TabNumt.PasswordChar:='#';
  TabNumT.Text:='';
  FioT.Text:='';
  TipBox.ItemIndex:=0;
  StatusBox.Checked:=false;
  if baza.sql_user_W.RecordCount=0 then exit;
  TabNumT.Text:=baza.sql_user_WID.AsString;
  FioT.Text:=baza.sql_user_WNAMEUSER.Value;
  TipBox.ItemIndex:=baza.sql_user_WTIPUSER.Value;
  if baza.sql_user_WSTATUS.Value=1 then
    StatusBox.Checked:=true
  else
    StatusBox.Checked:=false;
  Mailt.Text:=baza.sql_user_WMAIL.Value;
  logt.Text:=baza.sql_user_WLOG.Value;
  passt.Text:=baza.sql_user_WPAS.Value;
  smtpst.Text:=baza.sql_user_WSERV.Value;
  portt.Text:=baza.sql_user_wport.AsString;
  JPKF.Logfil('Отмена внесенных изменний');    
  AddBut.Enabled:=true;
  EdBut.Enabled:=true;
  SavBut.Enabled:=false;
  CanBut.Enabled:=false;
  Panel2.Enabled:=false;
  Tabuser.Enabled:=true;
  Tabuser.OnEnter(sender);
end;

procedure TUserW.TabUserKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if baza.sql_user_W.RecordCount=0 then exit;
  TabNumT.Text:=baza.sql_user_WID.AsString;
  FioT.Text:=baza.sql_user_WNAMEUSER.Value;
  TipBox.ItemIndex:=baza.sql_user_WTIPUSER.Value;
  if baza.sql_user_WSTATUS.Value=1 then
    StatusBox.Checked:=true
  else
    StatusBox.Checked:=false;
  Mailt.Text:=baza.sql_user_WMAIL.Value;
  logt.Text:=baza.sql_user_WLOG.Value;
  passt.Text:=baza.sql_user_WPAS.Value;
  smtpst.Text:=baza.sql_user_WSERV.Value;
  portt.Text:=baza.sql_user_wport.AsString;
end;

procedure TUserW.TabNumTExit(Sender: TObject);
begin
    if (JPKF.Kontrolstr(TabNumt.Text)=false) then begin
      JPKF.Mess('Пароль (табельный номер) может содержать только цифры',Mb_IconInformation,Mb_Ok);
      TabNumt.SetFocus;
      exit;
    end;
    TabNumt.PasswordChar:='#';
end;

procedure TUserW.porttChange(Sender: TObject);
begin
    if (JPKF.Kontrolstr(Portt.Text)=false) then begin
      JPKF.Mess('Порт SMTP может содержать только цифры',Mb_IconInformation,Mb_Ok);
      Portt.SetFocus;
      exit;
    end;
end;

procedure TUserW.TabNumTClick(Sender: TObject);
begin
TabNumt.PasswordChar:=#0;
end;

end.
