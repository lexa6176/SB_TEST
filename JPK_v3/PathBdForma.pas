unit PathBdForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TPathBd = class(TForm)
    StatusBar1: TStatusBar;
    PatT: TEdit;
    Label1: TLabel;
    PathBut: TSpeedButton;
    UserAutoBox: TCheckBox;
    ConBox: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PathButClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PathBd: TPathBd;

implementation

uses Glavn;

{$R *.dfm}

procedure TPathBd.FormShow(Sender: TObject);
begin
  Patt.Text:=param.BdPath;
  UserAutoBox.Checked:=param.AutoUs;
  ConBox.Checked:=param.AutoCon;
end;

procedure TPathBd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  param.BdPath:=patt.Text;
  param.AutoUs:=UserAutoBox.Checked;
  param.AutoCon:=ConBox.Checked;
end;

procedure TPathBd.PathButClick(Sender: TObject);
Var
sf:string;
begin
  if PromptForFileName(sf,'*.JPC|*.JPC|*.mdb|*.mdb|Все|*.*','','Укажите путь к БД журнала ПК',ExtractFilePath(Paramstr(0)),false) then begin
    Patt.Text:=sf;
  end;
end;

end.
