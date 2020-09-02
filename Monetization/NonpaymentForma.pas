unit NonpaymentForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls;

type
  TNonpayment = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    TextLsT: TEdit;
    LsTable: TDBGrid;
    ButNopay: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButNopayClick(Sender: TObject);
    procedure TextLsTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LsTableCellClick(Column: TColumn);
    procedure LsTableEnter(Sender: TObject);
    procedure LsTableDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Nonpayment: TNonpayment;

implementation

uses BazaForma, MainForma, NoPayPricinaForma;

{$R *.dfm}

procedure TNonpayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main.Log('Форма обработки не оплат закрыто');
  Nonpayment.Free;
end;

procedure TNonpayment.FormCreate(Sender: TObject);
begin
  main.Log('Форма обработки не оплат открытор');
end;

procedure TNonpayment.ButNopayClick(Sender: TObject);
begin
  List1:=1;
  AllNoPay:=false;
  TypNoDel:=true;
  NoPayPricina.ShowModal;
end;

procedure TNonpayment.TextLsTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return Then
    with Baza.SP_FIND_NOPAY do begin
      Active:=false;
      Parameters[1].Value:=textLsT.Text;
      Active:=true;
      Lstable.SetFocus;
      if RecordCount>0 then  ButNopay.Enabled:=true else ButNopay.Enabled:=false;
    end;
end;

procedure TNonpayment.LsTableCellClick(Column: TColumn);
begin
  if Baza.SP_FIND_NOPAY.RecordCount>0 then  ButNopay.Enabled:=true else ButNopay.Enabled:=false;
end;

procedure TNonpayment.LsTableEnter(Sender: TObject);
begin
   if Baza.SP_FIND_NOPAY.RecordCount>0 then  ButNopay.Enabled:=true else ButNopay.Enabled:=false;
end;

procedure TNonpayment.LsTableDblClick(Sender: TObject);
begin
 if Baza.SP_FIND_NOPAY.RecordCount>0 then  ButNopay.Enabled:=true else ButNopay.Enabled:=false;
end;

end.
