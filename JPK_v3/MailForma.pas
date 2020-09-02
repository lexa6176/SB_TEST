unit MailForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Psock, NMsmtp;

type
  TMailF = class(TForm)
    StatusBar1: TStatusBar;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    smtps: TNMSMTP;
    procedure FormCreate(Sender: TObject);
    procedure smtpsConnect(Sender: TObject);
    procedure smtpsConnectionFailed(Sender: TObject);
    procedure smtpsConnectionRequired(var Handled: Boolean);
    procedure smtpsDisconnect(Sender: TObject);
    procedure smtpsAuthenticationFailed(var Handled: Boolean);
    procedure smtpsSendStart(Sender: TObject);
    procedure smtpsInvalidHost(var Handled: Boolean);
    procedure smtpsHostResolved(Sender: TComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MailF: TMailF;

implementation

uses BazaForma, Glavn;

{$R *.dfm}

procedure TMailF.FormCreate(Sender: TObject);
begin
  with Constraints do begin
    MaxWidth:=Width;
    MinWidth:=Width;
    MaxHeight:=Height;
    MinHeight:=Height;
  end;
  label1.Caption:='';
end;

procedure TMailF.smtpsConnect(Sender: TObject);
begin
  Statusbar1.Panels[0].Text:='Установеливаю соединение с сервером '+smtps.Host;
  Application.ProcessMessages;
  JPKF.Logfil('Установеливаю соединение с сервером '+smtps.Host);
end;

procedure TMailF.smtpsConnectionFailed(Sender: TObject);
begin
  Statusbar1.Panels[0].Text:='Cоединение с сервером не установлено';
  Application.ProcessMessages;
  JPKF.Logfil('Cоединение с сервером не установлено');
end;

procedure TMailF.smtpsConnectionRequired(var Handled: Boolean);
begin
  Statusbar1.Panels[0].Text:='Установелно соединениес сервером '+smtps.Host+' успешно ';
  Application.ProcessMessages;
  JPKF.Logfil('Установелно соединениес сервером '+smtps.Host+' успешно');
end;

procedure TMailF.smtpsDisconnect(Sender: TObject);
begin
  Statusbar1.Panels[0].Text:='Соединениес сервером '+smtps.Host+' разорвано';
  Application.ProcessMessages;
  JPKF.Logfil('Соединениес сервером '+smtps.Host+' разорвано');
end;

procedure TMailF.smtpsAuthenticationFailed(var Handled: Boolean);
begin
  Statusbar1.Panels[0].Text:='Ошибка автоизации на сервере '+smtps.Host;
  Application.ProcessMessages;
  JPKF.Logfil('Ошибка автоизации на сервере '+smtps.Host);
end;

procedure TMailF.smtpsSendStart(Sender: TObject);
begin
  Statusbar1.Panels[0].Text:='Отправка письма на сервер '+smtps.Host;
  Application.ProcessMessages;
  JPKF.Logfil('Отправка письма на сервер '+smtps.Host);
end;

procedure TMailF.smtpsInvalidHost(var Handled: Boolean);
begin
  Statusbar1.Panels[0].Text:='Cервер '+smtps.Host+' не доступен';
  Application.ProcessMessages;
  JPKF.Logfil('Cервер '+smtps.Host+' не доступен');
end;

procedure TMailF.smtpsHostResolved(Sender: TComponent);
begin
  Statusbar1.Panels[0].Text:='Получен ответ сервера '+smtps.Host;
  Application.ProcessMessages;
  JPKF.Logfil('Получен ответ сервера '+smtps.Host);
end;

end.
