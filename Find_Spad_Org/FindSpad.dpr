program FindSpad;

uses
  Forms,
  GlavnForma in 'GlavnForma.pas' {Glavn},
  BazaForma in 'BazaForma.pas' {Baza: TDataModule},
  ExportForma in 'ExportForma.pas' {ExportFiltr};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '������ � �� �������� �������� �������� ������';
  Application.CreateForm(TGlavn, Glavn);
  Application.CreateForm(TBaza, Baza);
  Application.CreateForm(TExportFiltr, ExportFiltr);
  Application.Run;
end.
