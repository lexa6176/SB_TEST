unit ProcessFindForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TProcessFind = class(TForm)
    Animate1: TAnimate;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcessFind: TProcessFind;

implementation

uses MainForma, BazaForma, FindPaymentForma;

{$R *.dfm}

procedure TProcessFind.FormShow(Sender: TObject);
begin
  Animate1.Active:=true;
  Application.ProcessMessages;

end;

procedure TProcessFind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Animate1.Active:=false;
end;

end.
