unit ReportingForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, QRCtrls, jpeg, QuickRpt, ExtCtrls, DB, ADODB;

type
  TReporting = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    ReportFileIn: TQuickRep;
    FileInTitle: TQRBand;
    FileInHead: TQRBand;
    FileInDetali: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData4: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    FileInItogo: TQRMemo;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ReportFileOut: TQuickRep;
    ReestrOps: TQuickRep;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRDBText11: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape1: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRBand7: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRSysData5: TQRSysData;
    QRLabel43: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel44: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRBand11: TQRBand;
    QRBand12: TQRBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRSysData6: TQRSysData;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel60: TQRLabel;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    RepList: TQuickRep;
    QRBand13: TQRBand;
    QRBand14: TQRBand;
    QRBand15: TQRBand;
    QRBand16: TQRBand;
    QRLabel62: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel63: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRSysData10: TQRSysData;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRSysData11: TQRSysData;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel68: TQRLabel;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRLabel72: TQRLabel;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRLabel73: TQRLabel;
    QRMemo3: TQRMemo;
    QRMemo4: TQRMemo;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRDBText55: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel71: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel86: TQRLabel;
    QRLabel91: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel92: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape6: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRShape36: TQRShape;
    QRLabel69: TQRLabel;
    TabSheet5: TTabSheet;
    RepOps: TQuickRep;
    QRBand17: TQRBand;
    QRBand18: TQRBand;
    QRBand19: TQRBand;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRSysData12: TQRSysData;
    QRBand20: TQRBand;
    QRDBText70: TQRDBText;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    TabSheet6: TTabSheet;
    RepSvodList: TQuickRep;
    QRBand21: TQRBand;
    QRDBText76: TQRDBText;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRBand22: TQRBand;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRBand23: TQRBand;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRSysData13: TQRSysData;
    QRBand24: TQRBand;
    QRLabel125: TQRLabel;
    QRLabel128: TQRLabel;
    QRDBText96: TQRDBText;
    TabSheet7: TTabSheet;
    RepListSp: TQuickRep;
    QRBand25: TQRBand;
    QRBand26: TQRBand;
    QRBand27: TQRBand;
    QRDBText91: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRSysData14: TQRSysData;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRBand29: TQRBand;
    QRLabel155: TQRLabel;
    QRSysData15: TQRSysData;
    QRSysData16: TQRSysData;
    QRBand30: TQRBand;
    QRSysData18: TQRSysData;
    QRSysData19: TQRSysData;
    QRBand31: TQRBand;
    QRSysData20: TQRSysData;
    QRSysData21: TQRSysData;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    RepLS: TQuickRep;
    RepFindReestr: TQuickRep;
    QRBand32: TQRBand;
    QRBand34: TQRBand;
    QRBand35: TQRBand;
    QRBand36: TQRBand;
    QRBand37: TQRBand;
    QRBand39: TQRBand;
    QRLabel159: TQRLabel;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRSysData22: TQRSysData;
    QRLabel160: TQRLabel;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRLabel161: TQRLabel;
    QRLabel164: TQRLabel;
    QRDBText130: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText131: TQRDBText;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRGroup1: TQRGroup;
    QRDBText145: TQRDBText;
    QRDBText146: TQRDBText;
    QRBand40: TQRBand;
    QRDBText148: TQRDBText;
    QRDBText149: TQRDBText;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRDBText147: TQRDBText;
    QRDBText154: TQRDBText;
    QRExpr1: TQRExpr;
    SQL_FIND_GR: TADOQuery;
    SQL_FIND_GRID: TLargeintField;
    SQL_FIND_GRNLS: TWideStringField;
    SQL_FIND_GRFM: TWideStringField;
    SQL_FIND_GRIM: TWideStringField;
    SQL_FIND_GROT: TWideStringField;
    SQL_FIND_GRDTR: TWideStringField;
    SQL_FIND_GRPSR: TWideStringField;
    SQL_FIND_GRPNM: TWideStringField;
    SQL_FIND_GRNUMLIST: TLargeintField;
    SQL_FIND_GRSMVYP: TBCDField;
    SQL_FIND_GRPAID: TIntegerField;
    SQL_FIND_GROPISANIE: TWideStringField;
    QRDBText153: TQRDBText;
    QRDBText155: TQRDBText;
    SQL_FIND_GRGOD: TWideStringField;
    SQL_FIND_GRMES: TWideStringField;
    QRSysData23: TQRSysData;
    QRLabel175: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel170: TQRLabel;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRDBText141: TQRDBText;
    QRLabel172: TQRLabel;
    QRDBText143: TQRDBText;
    QRLabel173: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText144: TQRDBText;
    QRLabel174: TQRLabel;
    QRDBText138: TQRDBText;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRDBText156: TQRDBText;
    QRLabel165: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    SQL_FIND_GRDATLIST: TWideStringField;
    QRDBText157: TQRDBText;
    QRLabel182: TQRLabel;
    QRDBText158: TQRDBText;
    QRDBText159: TQRDBText;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel185: TQRLabel;
    QRExpr12: TQRExpr;
    QRLabel186: TQRLabel;
    QRSysData24: TQRSysData;
    QRSysData25: TQRSysData;
    QRSysData26: TQRSysData;
    QRSysData27: TQRSysData;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    SQL_LIST_LS_P: TADOQuery;
    SQL_LIST_LS_PID: TLargeintField;
    SQL_LIST_LS_PNLS: TWideStringField;
    SQL_LIST_LS_PFM: TWideStringField;
    SQL_LIST_LS_PIM: TWideStringField;
    SQL_LIST_LS_POT: TWideStringField;
    SQL_LIST_LS_PSTRIT: TWideStringField;
    SQL_LIST_LS_PDOM: TWideStringField;
    SQL_LIST_LS_PKORP: TWideStringField;
    SQL_LIST_LS_PSMVYP: TBCDField;
    SQL_LIST_LS_PSTATUSP: TIntegerField;
    SQL_LIST_LS_PREASON: TIntegerField;
    SQL_LIST_LS_PKVR: TWideStringField;
    SQL_LIST_LS_PPSR: TWideStringField;
    SQL_LIST_LS_PPNM: TWideStringField;
    QRBand38: TQRBand;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    SQL_LIST_P: TADOQuery;
    SQL_LIST_PID: TLargeintField;
    SQL_LIST_PINDOPS: TWideStringField;
    SQL_LIST_PNUMLIST: TLargeintField;
    SQL_LIST_PCOUNTLIST: TLargeintField;
    SQL_LIST_PSUMLIST: TBCDField;
    SQL_LIST_PColPay: TIntegerField;
    SQL_LIST_PSumPay: TBCDField;
    SQL_LIST_PCountNoPay: TIntegerField;
    SQL_LIST_PSumNoPay: TBCDField;
    SQL_LIST_PMES: TIntegerField;
    SQL_LIST_PGOD: TIntegerField;
    SQL_LIST_PSTATUSL: TIntegerField;
    SQL_LIST_PDATLIST: TWideStringField;
    SQL_LIST_PDATACREAT: TDateTimeField;
    SQL_LIST_PFM_CREAT: TWideStringField;
    SQL_LIST_PDATPRINTY: TDateTimeField;
    SQL_LIST_PFM_PRN: TWideStringField;
    SQL_LIST_PDATASTATUS: TDateTimeField;
    SQL_LIST_PIDSTATUS: TIntegerField;
    SQL_LIST_PFM_STATUS: TWideStringField;
    SQL_LIST_PPRINTY: TIntegerField;
    QRBand33: TQRBand;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRSysData28: TQRSysData;
    QRShape37: TQRShape;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRLabel154: TQRLabel;
    QRExpr6: TQRExpr;
    SQL_FILEOUT_P: TADOQuery;
    SQL_FILEOUT_PID: TLargeintField;
    SQL_FILEOUT_PFILENAME: TWideStringField;
    SQL_FILEOUT_PCOLZ: TLargeintField;
    SQL_FILEOUT_PSUMZ: TBCDField;
    SQL_FILEOUT_PIDUSEREXP: TLargeintField;
    SQL_FILEOUT_PDATAEXP: TWideStringField;
    SQL_FILEOUT_PTIMEEXP: TWideStringField;
    SQL_FILEOUT_PSTATUS: TIntegerField;
    SQL_FILEOUT_PDATAOUT: TDateTimeField;
    SQL_FILEOUT_PNumFile: TIntegerField;
    SQL_FILEOUT_PGodFile: TIntegerField;
    SQL_FILEOUT_PMesFile: TIntegerField;
    SQL_FILEOUT_PCOLPAY: TIntegerField;
    SQL_FILEOUT_PSUMPAY: TBCDField;
    SQL_FILEOUT_PCOLNOPAY: TIntegerField;
    SQL_FILEOUT_PSUMNOPAY: TBCDField;
    QRExpr7: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel67: TQRLabel;
    QRSysData17: TQRSysData;
    SQL_REP_LIST: TADOQuery;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr30: TQRExpr;
    SQL_REP_LISTINDOPS: TWideStringField;
    SQL_REP_LISTCOUNT: TIntegerField;
    SQL_REP_LISTColList: TLargeintField;
    SQL_REP_LISTSUMLIST: TBCDField;
    SQL_REP_LISTColPay: TIntegerField;
    SQL_REP_LISTSumPay: TBCDField;
    SQL_REP_LISTCountNoPay: TIntegerField;
    SQL_REP_LISTSumNoPay: TBCDField;
    SQL_REP_LISTMES: TIntegerField;
    SQL_REP_LISTGOD: TIntegerField;
    QRShape38: TQRShape;
    QRLabel126: TQRLabel;
    SP_REP: TADOStoredProc;
    QRLabel4: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRShape39: TQRShape;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    SP_REPIndops: TWideStringField;
    SP_REPGod: TIntegerField;
    SP_REPMes: TIntegerField;
    SP_REPColAll: TIntegerField;
    SP_REPSumAll: TBCDField;
    SP_REPColNoList: TIntegerField;
    SP_REPSumNoList: TBCDField;
    SP_REPColForPay: TIntegerField;
    SP_REPSumForPay: TBCDField;
    SP_REPColPay: TIntegerField;
    SP_REPSumPay: TBCDField;
    SP_REPColNoPay: TIntegerField;
    SP_REPSumNoPay: TBCDField;
    TabSheet10: TTabSheet;
    RepList2: TQuickRep;
    QRBand28: TQRBand;
    QRLabel158: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel198: TQRLabel;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRLabel201: TQRLabel;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText109: TQRDBText;
    QRSysData29: TQRSysData;
    QRDBText114: TQRDBText;
    QRBand41: TQRBand;
    QRLabel203: TQRLabel;
    QRMemo5: TQRMemo;
    QRMemo6: TQRMemo;
    QRLabel204: TQRLabel;
    QRMemo7: TQRMemo;
    QRMemo8: TQRMemo;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    QRBand42: TQRBand;
    QRDBText160: TQRDBText;
    QRDBText161: TQRDBText;
    QRSysData30: TQRSysData;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRDBText164: TQRDBText;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText167: TQRDBText;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel212: TQRLabel;
    QRDBText168: TQRDBText;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRLabel213: TQRLabel;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel216: TQRLabel;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRShape46: TQRShape;
    QRBand43: TQRBand;
    QRLabel219: TQRLabel;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRDBText174: TQRDBText;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel228: TQRLabel;
    QRLabel229: TQRLabel;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRLabel230: TQRLabel;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRLabel231: TQRLabel;
    QRBand44: TQRBand;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRLabel232: TQRLabel;
    QRLabel233: TQRLabel;
    QRGroup3: TQRGroup;
    QRLabel202: TQRLabel;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRBand46: TQRBand;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRLabel234: TQRLabel;
    QRDBText110: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RepListAfterPrint(Sender: TObject);
    procedure SQL_FIND_GRPAIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_LIST_PIDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_FILEOUT_PSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure RepSvodListAfterPreview(Sender: TObject);
    procedure RepOpsAfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Reporting: TReporting;
  FileExp      : record              // ��������� ��� �����
    ExpFile     : TextFile;
    ExpFileName : String;
  end;
  I1,I2 : Integer;
  S1,S2 : String;






implementation

uses BazaForma, MainForma, ReestryForOpsForma, ListForma;

{$R *.dfm}


procedure ExportRep(Text: string);
begin
  If Not ForceDirectories(ExtractFilePath(FileExp.ExpFileName)) then Exit;
  Assignfile(FileExp.ExpFile,FileExp.ExpFileName);
  if Fileexists(FileExp.ExpFileName) then Append(FileExp.ExpFile) else rewrite(FileExp.ExpFile);
  WriteLn(FileExp.ExpFile,text);
  Closefile(FileExp.ExpFile);
  Application.ProcessMessages;
end;


procedure TReporting.FormCreate(Sender: TObject);
begin
  main.Log('������ ������ ������');
end;

procedure TReporting.FormDestroy(Sender: TObject);
begin
  main.Log('������ ������� ��������');
end;

procedure TReporting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  baza.SQL_REESTR_OPS.Active:=false;
  baza.SP_STATEMENT.Active:=false;
  main.Log('������� ����� �������');
end;

procedure TReporting.RepListAfterPrint(Sender: TObject);
begin
    with baza.SP_LIST_UPD do begin
      if TypePrn=false then begin
        Parameters[1].Value:=Baza.SQL_LISTID.Value
      end else begin
        Parameters[1].Value:=Baza.SQL_LIST_PRNMID.Value;
      end;
      Parameters[2].Value:=2;
      Parameters[3].Value:=UserWorc.ID;
      ExecProc;
      If Parameters[0].Value=0 then begin
        main.Log('��������� �����������');
        //Reporting.RepList2.QRPrinter.Save('');
        if TypePrn=false then begin
          List.ButFltr.Click;
          List.TableList.SetFocus;
          Baza.SQL_LIST.Locate('ID',ID,[]);
        end;
        //Reporting.RepList.QRPrinter.Save('');
      end else begin
        main.Mes('������ ������ ���������',Mb_ok+Mb_iconInformation);
      end;
    end;
end;

procedure TReporting.SQL_FIND_GRPAIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (baza.SQL_FIND.RecordCount>0) and (baza.SQL_FIND.Active=true) then
    Case baza.SQL_FINDPAID.Value of
      0: Text:='�� ��������';
      1: text:='��������';
      else text:='';
     end;
end;

procedure TReporting.SQL_LIST_PIDSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If (Reporting.SQL_LIST_P.Active=true) and
     (Reporting.SQL_LIST_P.RecordCount>0) then
     Case Reporting.SQL_LIST_PIDSTATUS.Value of
       0: text:='�������������';
       1: Text:='�����������';
       2: Text:='����������';
       3: Text:='������';
     else text:='';
     end;
end;

procedure TReporting.SQL_FILEOUT_PSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Reporting.SQL_FILEOUT_P.Active=true) and (Reporting.SQL_FILEOUT_P.RecordCount>0) then
    Case Reporting.SQL_FILEOUT_PSTATUS.Value of
      0: Text:='�����������';
      1: Text:='������';
      else text:='';
    end;
end;

procedure TReporting.RepSvodListAfterPreview(Sender: TObject);
begin
  if main.Mes('��������� ��������� ����� � CSV ���� ?',Mb_YesNo+Mb_IconQuestion)=IdNo then Exit;
  FileExp.ExpFileName:=ExtractFilePath(Paramstr(0))+'REPORTS\ListPayItog_'+FormatdateTime('yyyymmdd_hhnnss',now())+'.csv';
  If Not ForceDirectories(ExtractFilePath(FileExp.ExpFileName)) then begin
    main.Mes('������ �������� ��������� �������� '+#13+ExtractFilePath(FileExp.ExpFileName),Mb_Ok+Mb_iconError);
    Exit;
  end;
  with SQL_REP_LIST do begin
    First;
    S1:='';
    For I1:=0 to FieldCount-1 do begin
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='INDOPS' then S1:=S1+'������ ���;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='COUNT' then S1:=S1+'����������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='COLLIST' then S1:=S1+'���-�� ��������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='SUMLIST' then S1:=S1+'����� ��������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='COLPAY' then S1:=S1+'���-�� �����������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='SUMPAY' then S1:=S1+'����� �����������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='COUNTNOPAY' then S1:=S1+'���-�� �� �����������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='SUMNOPAY' then S1:=S1+'����� �� �����������;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='MES' then S1:=S1+'�����;';
      If AnsiUpperCase(Trim(SQL_REP_LIST.Fields[I1].FullName))='GOD' then S1:=S1+'���;';
    end;
    ExportRep(S1);
    while not EOF do begin
      S1:='';
      For I1:=0 to FieldCount-1 do S1:=S1+Trim(SQL_REP_LIST.Fields[I1].AsString)+';';
      ExportRep(S1);
      Next;
    end;
    main.Mes('������ ��������� � ���� : '+#13+(FileExp.ExpFileName),Mb_Ok+Mb_iconInformation);
  end;
end;

procedure TReporting.RepOpsAfterPreview(Sender: TObject);
begin
  if main.Mes('��������� ��������� ����� � CSV ���� ?',Mb_YesNo+Mb_IconQuestion)=IdNo then Exit;
  FileExp.ExpFileName:=ExtractFilePath(Paramstr(0))+'REPORTS\PayItog_'+FormatdateTime('yyyymmdd_hhnnss',now())+'.csv';
  If Not ForceDirectories(ExtractFilePath(FileExp.ExpFileName)) then begin
    main.Mes('������ �������� ��������� �������� '+#13+ExtractFilePath(FileExp.ExpFileName),Mb_Ok+Mb_iconError);
    Exit;
  end;
  with SP_REP do begin
    First;
    S1:='';
    For I1:=0 to FieldCount-1 do begin
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='INDOPS' then S1:=S1+'������ ���;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='MES' then S1:=S1+'�����;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='GOD' then S1:=S1+'���;';

      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='COLALL' then S1:=S1+'���-�� �����;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='SUMALL' then S1:=S1+'����� �����;';

      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='COLNOLIST' then S1:=S1+'���-�� �� � ��������;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='SUMNOLIST' then S1:=S1+'����� �� � ��������;';

      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='COLFORPAY' then S1:=S1+'���-�� � �������;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='SUMFORPAY' then S1:=S1+'����� � �������;';

      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='COLPAY' then S1:=S1+'���-�� �����������;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='SUMPAY' then S1:=S1+'����� �����������;';

      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='COLTNOPAY' then S1:=S1+'���-�� �� �����������;';
      If AnsiUpperCase(Trim(SP_REP.Fields[I1].FullName))='SUMNOPAY' then S1:=S1+'����� �� �����������;';

    end;
    ExportRep(S1);
    while not EOF do begin
      S1:='';
      For I1:=0 to FieldCount-1 do S1:=S1+Trim(SP_REP.Fields[I1].AsString)+';';
      ExportRep(S1);
      Next;
    end;
    ExportRep('');
    ExportRep('�� �������� � ������ �������� ;'+Trim(baza.SP_REP_ITOGIColAll.AsString)+';�� �����;'+Trim(baza.SP_REP_ITOGISumAll.AsString));
    main.Mes('������ ��������� � ���� : '+#13+(FileExp.ExpFileName),Mb_Ok+Mb_iconInformation);
  end;
end;

end.
