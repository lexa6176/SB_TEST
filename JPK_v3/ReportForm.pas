unit ReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, ComCtrls, QRCtrls, jpeg, StdCtrls;

type
  TReport = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Reesrtr: TQuickRep;
    Akt: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRMemo2: TQRMemo;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRBand7: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText9: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData4: TQRSysData;
    TabSheet3: TTabSheet;
    Doklad: TQuickRep;
    QRBand8: TQRBand;
    QRBand10: TQRBand;
    QRBand11: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    QRMemo1: TQRMemo;
    QRSysData7: TQRSysData;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRMemo3: TQRMemo;
    QRImage1: TQRImage;
    QRMemo4: TQRMemo;
    QRSysData5: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel31: TQRLabel;
    QRMemo5: TQRMemo;
    TabSheet4: TTabSheet;
    RepDuble: TQuickRep;
    QRBand9: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel29: TQRLabel;
    QRBand12: TQRBand;
    QRDBText19: TQRDBText;
    QRSysData6: TQRSysData;
    QRDBText20: TQRDBText;
    QRBand13: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRMemo6: TQRMemo;
    QRSysData8: TQRSysData;
    QRLabel35: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText27: TQRDBText;
    TabSheet5: TTabSheet;
    Friirep: TQuickRep;
    QRBand14: TQRBand;
    FreeSoob: TQRMemo;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    TabSheet6: TTabSheet;
    SpravReport: TQuickRep;
    QRBand15: TQRBand;
    QRLabel52: TQRLabel;
    QRRichText2: TQRRichText;
    QRMemo9: TQRMemo;
    QRImage2: TQRImage;
    QRMemo10: TQRMemo;
    QRSysData9: TQRSysData;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRBand16: TQRBand;
    QRMemo12: TQRMemo;
    QRBand17: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRMemo11: TQRMemo;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel55: TQRLabel;
    QRRichText1: TQRRichText;
    procedure AktAfterPrint(Sender: TObject);
    procedure RepDubleAfterPrint(Sender: TObject);
    procedure SpravReportAfterPrint(Sender: TObject);
    procedure SpravReportAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report: TReport;

implementation

uses Addforma, BazaForma, Glavn, DokladForma;

{$R *.dfm}

procedure TReport.AktAfterPrint(Sender: TObject);
Label ex,ie;
Var
  I:Int64;
begin
  if (param.PrnVip=true) then exit;
  baza.VipiskaPrn.Active:=true;
  baza.Vipiska.Active:=true;
  baza.VipSoder.Active:=true;
  baza.Gurnal.Active:=true;
  if param.MassVip=1 then begin
    if (Application.MessageBox('Печать завершена успешно?',pchar(caption),Mb_YesNo)=IdNo) then goto ex;
    baza.Vipiska.append;
    baza.VipiskaIndOps.Value:=baza.Reestr_sqlIndOps.Value;
    baza.VipiskaDTC.Value:=now;
    baza.VipiskaUserCr.Value:=param.FioOper;
    baza.Vipiska.post;
    I:=baza.VipiskaID.Value;
    baza.sql_akte.First;
    while not baza.sql_akte.Eof do begin
      baza.VipSoder.Append;
      baza.VipSoderID_VIP.Value:=I;
      baza.VipSoderID_ZAP.Value:=baza.sql_akteId.Value;
      baza.VipSoder.Post;
      baza.Gurnal.Locate('ID',baza.sql_akteId.value,[]);
      baza.Gurnal.Edit;
      baza.GurnalOtmetka.Value:=1;
      baza.GurnalDatPrnVip.Value:=now;
      baza.Gurnal.post;
      baza.sql_akte.Next;
    end;
    baza.VipiskaPrn.Append;
    baza.VipiskaPrnID_VIP.Value:=I;
    baza.VipiskaPrnDAT_PRINT.Value:=now;
    baza.VipiskaPrn.Post;
    param.PrnVip:=true;
    baza.sql_vip.Active:=false;
    baza.sql_vip.Active:=true;
    baza.sql_vip.Locate('ID',I,[]);
    baza.Reestr_sql.Active:=false;
    baza.Reestr_sql.Active:=true;
  end;
  if param.MassVip=2 then begin
    baza.Vipiska.append;
    baza.VipiskaIndOps.Value:=baza.Sql_Ops_SpravPOSTINDEX.Value;
    baza.VipiskaDTC.Value:=now;
    baza.VipiskaUserCr.Value:=param.FioOper;
    baza.Vipiska.post;
    I:=baza.VipiskaID.Value;
    baza.sql_akte.First;
    while not baza.sql_akte.Eof do begin
      baza.VipSoder.Append;
      baza.VipSoderID_VIP.Value:=I;
      baza.VipSoderID_ZAP.Value:=baza.sql_akteId.Value;
      baza.VipSoder.Post;
      baza.Gurnal.Locate('ID',baza.sql_akteId.value,[]);
      baza.Gurnal.Edit;
      baza.GurnalOtmetka.Value:=1;
      baza.GurnalDatPrnVip.Value:=now;
      baza.Gurnal.post;
      baza.sql_akte.Next;
    end;   
    baza.VipiskaPrn.Append;
    baza.VipiskaPrnID_VIP.Value:=I;
    baza.VipiskaPrnDAT_PRINT.Value:=now;
    baza.VipiskaPrn.Post;
    param.PrnVip:=true;
    baza.sql_vip.Active:=false;
    baza.sql_vip.Active:=true;
    baza.sql_vip.Locate('ID',I,[]); 
  end;
  ex:
  baza.VipiskaPrn.Active:=false;
  baza.Vipiska.Active:=false;
  baza.VipSoder.Active:=false;
  baza.Gurnal.Active:=false;
end;

procedure TReport.RepDubleAfterPrint(Sender: TObject);
begin
  baza.VipiskaPrn.Active:=true;
  baza.VipiskaPrn.Append;
  baza.VipiskaPrnID_VIP.Value:=baza.sql_vipID.value;
  baza.VipiskaPrnDAT_PRINT.Value:=now;
  baza.VipiskaPrn.Post;
  baza.sql_Vip_prn.Active:=false;
  baza.sql_Vip_prn.Active:=true;
end;

procedure TReport.SpravReportAfterPrint(Sender: TObject);
begin
  Jpkf.Logfil('Печать справки выполнена');
end;

procedure TReport.SpravReportAfterPreview(Sender: TObject);
begin
  Jpkf.Logfil('Открытие формы со справкой');
end;

end.
