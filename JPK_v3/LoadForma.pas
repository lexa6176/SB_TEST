unit LoadForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons;

type
  TLoading = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ClosBut: TSpeedButton;
    procedure ClosButClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loading: TLoading;

implementation

uses Glavn;

{$R *.dfm}

procedure TLoading.ClosButClick(Sender: TObject);
begin
  Close;
end;

end.
