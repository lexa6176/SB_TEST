unit ReportParamIpForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls;

type
  TReportParamIp = class(TForm)
    PanelRepOps: TPanel;
    StatusBar1: TStatusBar;
    ButRepOps: TSpeedButton;
    Panel3: TPanel;
    BoxPeriod: TCheckBox;
    TextOpsT: TEdit;
    Label1: TLabel;
    CheckBoxOps: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    MesBox: TComboBox;
    GodBox: TComboBox;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Dt1: TDateTimePicker;
    Dt2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButRepOpsClick(Sender: TObject);
    procedure CheckBoxOpsClick(Sender: TObject);
    procedure BoxPeriodClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  mh: array[1..12] of string = ('Январь', 'Февраль',
            'Март', 'Апрель', 'Май', 'Июнь', 'Июль',
            'Август', 'Сентябрь', 'Октябрь', 'Ноябрь',
            'Декабрь');

var
  ReportParamIp: TReportParamIp;

implementation

uses BazaForma, MainForma, ReportingForma;

{$R *.dfm}

procedure TReportParamIp.FormCreate(Sender: TObject);
begin
  with Constraints do begin
   MaxHeight:=265;
    MaxWidth:=282;
    MinHeight:=265;
    MinWidth:=282;
  end;
  Dt1.Date:=now();
  Dt2.Date:=now();
end;

procedure TReportParamIp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ReportParamIp.Free;
end;

procedure TReportParamIp.ButRepOpsClick(Sender: TObject);
Var
    I :integer;
    S: String;
begin
  if (CheckBoxOps.Checked=false) and (LenGth(Trim(TextOpsT.Text))=0) then begin
    Main.Mes('Необходимо укзать индекс ОПС',Mb_ok+Mb_iconInformation);
    TextOpsT.SetFocus;
    Exit;
  end;
  Main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирвоание отчета');
  if TypeRep=1 then
    with Reporting.SP_REP do begin
      Active:=false;
      Parameters[1].Value:=StrToInt(GodBox.Text);
      Parameters[2].Value:=StrToInt(MesBox.Text);
      if CheckBoxOps.Checked=true then Parameters[3].Value:='*' else Parameters[3].Value:=TextOpsT.Text;
      Parameters[4].Value:=TypeRep;
      Active:=true;
      if RecordCount>0 then begin
        with baza.sp_REP_ITOGI do begin
          Active:=false;
          Parameters[1].Value:=StrToInt(GodBox.Text);
          Parameters[2].Value:=StrToInt(MesBox.Text);
          if CheckBoxOps.Checked=true then Parameters[3].Value:='*' else Parameters[3].Value:=TextOpsT.Text;
          Parameters[4].Value:=TypeRep;
          Active:=true;
        end;
        case TypeRep Of
          1: begin
            I:=Reporting.SP_REP['mes'];
            Reporting.QRLabel110.Caption:=mh[I];
            Reporting.RepOps.PreviewModal;
          end;
          2: begin
            I:=baza.SP_REP['mes'];
            Reporting.QRLabel113.Caption:=mh[I];
            Reporting.RepSvodList.PreviewModal;
          end;
        end;
      end;
    end
  else begin
    if BoxPeriod.Checked=true then
      S:='(DATLIST>='''+FormatDateTime('dd.mm.yyyy',Dt1.Date)+''') and (DATLIST<='''+FormatDateTime('dd.mm.yyyy',Dt2.Date)+''')'

    else S:='(MES='+MesBox.Text+') and (GOD='+GodBox.Text+')';


    if CheckBoxOps.Checked=false then S:=S+' and INDOPS='''+TextOpsT.Text+'''';
    with Reporting do begin
      with SQL_REP_LIST do begin
        Active:=false;
        with SQL do begin
          Clear;
          Add('SET LANGUAGE Italian;');
          Add('Select INDOPS,GOD,MES,');
          Add('COUNT(*) COUNT,');
          add('Sum(COUNTLIST) ColLIST,');
          add('Sum(SUMLIST) SUMLIST,');
          add('Sum(ColPay) ColPay,');
          add('Sum(SumPay) SumPay,');
          add('Sum(CountNoPay) CountNoPay,');
          add('Sum(SumNoPay) SumNoPay');
          Add('From V_LIST_ALL');
          Add('Where '+S);
          Add('Group By INDOPS,GOD,MES');
        end;
        Active:=true;
        S:=Trim(UserWorc.Dolgn)+' _________________________ '+Trim(UserWorc.ABV);
        QrLabel126.Caption:=S;
        if RecordCount>0 then RepSvodList.PreviewModal;
      end;
    end;
  end;



end;

procedure TReportParamIp.CheckBoxOpsClick(Sender: TObject);
begin
  if CheckBoxOps.Checked= true then begin
    textOpst.Enabled:=false;
    textOpst.Text:='';
  end else textOpst.Enabled:=true;
end;

procedure TReportParamIp.BoxPeriodClick(Sender: TObject);
begin
  if BoxPeriod.Checked=true then begin
    Panel4.Enabled:=true;
    Panel2.Enabled:=false;
  end else begin
    Panel4.Enabled:=false;
    Panel2.Enabled:=true;
  end;
end;

end.
