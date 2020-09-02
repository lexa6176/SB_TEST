program JPK;

uses
  Forms,
  Windows,
  Glavn in 'Glavn.pas' {JPKF},
  BazaForma in 'BazaForma.pas' {baza: TDataModule},
  Addforma in 'Addforma.pas' {Add},
  ReportForm in 'ReportForm.pas' {Report},
  SetupForma in 'SetupForma.pas' {Setup},
  DokladForma in 'DokladForma.pas' {Doklad},
  PathBdForma in 'PathBdForma.pas' {PathBd},
  UserForma in 'UserForma.pas' {UserW},
  PassForma in 'PassForma.pas' {Pass},
  OpsForma in 'OpsForma.pas' {Ops},
  MailForma in 'MailForma.pas' {MailF},
  LoadForma in 'LoadForma.pas' {Loading},
  ServiceForma in 'ServiceForma.pas' {Service};

{$R *.res}
var
 t: integer;

begin
  t:=250;
  Application.Initialize;
  Application.Title := 'Журнал производственного контроля';
  Application.CreateForm(TJPKF, JPKF);
  Application.CreateForm(TLoading, Loading);
  loading.Label3.Caption:=Glavn.JPKF.StatusBar1.Panels[2].Text;
  Loading.Show;
  Application.CreateForm(TPathBd, PathBd);
  Loading.Panel1.Caption:='Открытие рабочих форм '+Pathbd.Name;
  Application.ProcessMessages;
  sleep(t);
  Application.CreateForm(TSetup, Setup);
  Loading.Panel1.Caption:='Открытие рабочих форм '+setup.Name;
  Application.ProcessMessages;
  sleep(t);
  Application.CreateForm(TService, Service);
  Loading.Panel1.Caption:='Открытие рабочих форм '+Service.Name;
  Application.ProcessMessages;
  sleep(t);
  Application.CreateForm(TOps, Ops);
  Loading.Panel1.Caption:='Открытие рабочих форм '+ops.Name;
  Application.ProcessMessages;
  sleep(t);
  Application.CreateForm(TUserW, UserW);
  Loading.Panel1.Caption:='Открытие рабочих форм '+userw.Name;
  Application.ProcessMessages;
  sleep(t);
  Application.CreateForm(TPass, Pass);
  Loading.Panel1.Caption:='Открытие рабочих форм '+pass.Name;
  Application.ProcessMessages;
  sleep(t);

  Application.CreateForm(TAdd, Add);
  Loading.Panel1.Caption:='Открытие рабочих форм '+add.Name;
  Application.ProcessMessages;
  sleep(t);

  Application.CreateForm(TDoklad, Doklad);
  Loading.Panel1.Caption:='Открытие рабочих форм '+doklad.Name;
  Application.ProcessMessages;
  sleep(t);

  Application.CreateForm(TReport, Report);
  Loading.Panel1.Caption:='Открытие рабочих форм '+report.Name;
  Application.ProcessMessages;
  sleep(t);

  Application.CreateForm(TMailF, MailF);
  Loading.Panel1.Caption:='Открытие рабочих форм '+mailf.Name;
  Application.ProcessMessages;
  sleep(t);

  Application.CreateForm(Tbaza, baza);
  Loading.Panel1.Caption:='Откртие подключения к БД';
  Application.ProcessMessages;
  sleep(t);
  Loading.Panel1.Caption:='';
 // loading.Panel1.Alignment:=taLeftJustify;
  Loading.ClosBut.Visible:=true;
  loading.Close;
  Application.Run;
end.
