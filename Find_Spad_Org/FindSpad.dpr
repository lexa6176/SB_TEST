program FindSpad;

uses
  Forms,
  GlavnForma in 'GlavnForma.pas' {Glavn},
  BazaForma in 'BazaForma.pas' {Baza: TDataModule},
  ExportForma in 'ExportForma.pas' {ExportFiltr};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Работа с БД системой почтовых адресных данных';
  Application.CreateForm(TGlavn, Glavn);
  Application.CreateForm(TBaza, Baza);
  Application.CreateForm(TExportFiltr, ExportFiltr);
  Application.Run;
end.
