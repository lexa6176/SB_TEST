unit DokladForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls;

type
  TDoklad = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    FromBox: TComboBox;
    ToBox: TComboBox;
    DokladBut: TSpeedButton;
    procedure DokladButClick(Sender: TObject);
    procedure ToBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FromBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doklad: TDoklad;

implementation

uses BazaForma, Glavn, ReportForm, LoadForma;

{$R *.dfm}

procedure TDoklad.DokladButClick(Sender: TObject);
var
  s: string;
begin
  case FromBox.ItemIndex of
    0: begin
      with report do begin
        QRLabel21.Caption:='���������� ��������';
        QRLabel22.Caption:=baza.sql_userBoskomu.Value;
      end;
    end;
    1: begin
      with report do begin
        QRLabel21.Caption:='���. ���������� ��������';
        QRLabel22.Caption:=baza.sql_userUser1komu.Value;
      end;
    end;
    2: begin
      with report do begin
        QRLabel21.Caption:='���������� ������������';
        QRLabel22.Caption:=baza.sql_userUser2komu.Value;
      end;
    end;
  end;
  baza.sql_Upd.Active:=false;
  baza.sql_Upd.SQL.Text:='Select OPSNAME from OPS where POSTINDEX='''+baza.sql_userIndPoctamt.Value+''' and OPSTYPE=''�''';
  baza.sql_Upd.Active:=true;
  with report.QRMemo3.Lines do begin
    Clear;
    Add('���� ������������ ������� - ������ ���� ������ �����Ȼ');
    add('');
    if baza.sql_Upd.RecordCount>0 then Add(baza.sql_Upd['OPSNAME']) else Add('');
  end;
  {  case ToBox.ItemIndex of
    0: report.QRLabel30.Caption:='��������� ������������                         '+baza.sql_userUser2.Value;
    1: report.QRLabel30.Caption:='�������� ������������                         '+param.FioOper;
  else
    report.QRLabel30.caption:='';
  end; }
  if param.MassDok=1 then begin
    Report.QRMemo5.Lines.Clear;
    Report.QRMemo1.Lines.Clear;
    if param.TipDokl=2 then
      s:='                ������ �� ������ ��������, ��� '+FormatDateTime('dd.mm.yyyy',baza.Reestr_sqlDataReg.Value)+', ���������� ������������ ��� ����������';
    if param.TipDokl=1 then
      s:='                ������ �� ������ ��������, ��� � ������ � '+FormatDateTime('dd.mm.yyyy',JPKF.DR1.DateTime)+' �� '+FormatDateTime('dd.mm.yyyy',JPKF.DR2.DateTime)+', ����������� ������������ ��� ����������';
    s:=s+' �������� ��������� ���������� ����������� �� ��� '+baza.Reestr_sqlIndOps.Value+' '+baza.Reestr_sqlOPSNAME.Value+' ���� �������� ��������� ���������';
    Report.QRMemo5.Lines.Add(s);
  //  s:='                ����� ������� ���� ��������������� ��������� � ���������� �������� ����� ������������ ������ ���������.';
  //  Report.QRMemo1.Lines.Add(s);
    case ToBox.ItemIndex of
      0: s:='��������� ������������                                               '+baza.sql_userUser2.Value;
      1: s:='�������� ������������                                               '+param.FioOper;
    else
      s:='';
    end;
    Report.QRMemo1.Lines.Add('');
    Report.QRMemo1.Lines.Add('');
    Report.QRMemo1.Lines.Add('');
    Report.QRMemo1.Lines.Add('                '+s);
  //report.QRLabel23.Left:=report.QRDBText15.Left+15+report.QRDBText15.Width;
    report.Doklad.Preview;
  end else begin

  end;
  Close;
end;

procedure TDoklad.ToBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  
  if key=vk_return then DokladBut.Click;
end;

procedure TDoklad.FromBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then ToBox.SetFocus;
end;

end.
