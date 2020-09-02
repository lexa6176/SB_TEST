unit ProcessLoadForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Gauges, StdCtrls;

type
  TProcessLoad = class(TForm)
    Procces: TGauge;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ProcessLoad: TProcessLoad;

implementation

uses MainForma, BazaForma;

{$R *.dfm}



procedure TProcessLoad.FormCreate(Sender: TObject);
begin
  main.Log('Процесс обработки файла начат');
end;

procedure TProcessLoad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  main.Log('Процесс обработки файла завершен');
end;



end.
