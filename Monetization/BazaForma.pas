unit BazaForma;

interface

uses
  SysUtils, Classes, DB, ADODB, VKDBFDataSet;

type
  TBaza = class(TDataModule)
    DB: TADOConnection;
    sql_user: TADOQuery;
    sql_userID: TLargeintField;
    sql_userFM: TWideStringField;
    sql_userIM: TWideStringField;
    sql_userOT: TWideStringField;
    sql_userDOLGN: TWideStringField;
    sql_userPASSW: TWideStringField;
    sql_userURDOST: TIntegerField;
    sql_userDATCREAT: TDateTimeField;
    sql_userSTATUS: TIntegerField;
    sql_userDATCLOS: TDateTimeField;
    sql_user_avt: TADOQuery;
    sql_user_avtFM: TWideStringField;
    sql_user_avtIM: TWideStringField;
    sql_user_avtOT: TWideStringField;
    sql_user_avtURDOST: TIntegerField;
    sql_user_avtID: TLargeintField;
    sql_user_avtDOLGN: TWideStringField;
    Sql_UserView: TADOQuery;
    Sql_UserViewID: TLargeintField;
    Sql_UserViewFM: TWideStringField;
    Sql_UserViewIM: TWideStringField;
    Sql_UserViewOT: TWideStringField;
    Sql_UserViewDOLGN: TWideStringField;
    Sql_UserViewPASSW: TWideStringField;
    Sql_UserViewURDOST: TIntegerField;
    Sql_UserViewDATCREAT: TDateTimeField;
    Sql_UserViewSTATUS: TIntegerField;
    Sql_UserViewDATCLOS: TDateTimeField;
    Sql_UserViewE: TDataSource;
    SP_USERS: TADOStoredProc;
    sql_user_avtStatus: TIntegerField;
    SQL_SYSTEM: TADOQuery;
    SQL_SYSTEM_E: TDataSource;
    SP_SYSTEM: TADOStoredProc;
    SQL_SYSTEMID: TLargeintField;
    SQL_SYSTEMIDPARAM: TIntegerField;
    SQL_SYSTEMIDTYPE: TIntegerField;
    SQL_SYSTEMNAMESPR: TWideStringField;
    SQL_SYSTEMDATCR: TDateTimeField;
    SQL_SYSTEMSTATUS: TIntegerField;
    SQL_SYSTEMDATCLOS: TDateTimeField;
    SQL_SYSTEMOPISANIE: TWideStringField;
    SQL_SYSTEMPARAMVALUE: TWideStringField;
    SQL_OPS: TADOQuery;
    SQL_OPS_E: TDataSource;
    SP_OPS: TADOStoredProc;
    SQL_OPSINDOPS: TWideStringField;
    SQL_OPSNAMEOPS: TWideStringField;
    SQL_OPSSTATUS: TIntegerField;
    SQL_OPSREGION: TWideStringField;
    SQL_OPSAREA: TWideStringField;
    SQL_OPSCITY: TWideStringField;
    SQL_OPSSTRIT: TWideStringField;
    SQL_OPSDOM: TWideStringField;
    SQL_OPSINDPOCT: TWideStringField;
    SQL_OPSNAMEPOCT: TWideStringField;
    SQL_OPSINDUFPS: TWideStringField;
    SQL_OPSNAMEUFPS: TWideStringField;
    SQL_OPSDATADD: TWideStringField;
    SQL_OPSDATASTATUS: TDateTimeField;
    SQL_OPSD01: TIntegerField;
    SQL_OPSD02: TIntegerField;
    SQL_OPSD03: TIntegerField;
    SQL_OPSD04: TIntegerField;
    SQL_OPSD05: TIntegerField;
    SQL_OPSD06: TIntegerField;
    SQL_OPSD07: TIntegerField;
    SQL_OPSD08: TIntegerField;
    SQL_OPSD09: TIntegerField;
    SQL_OPSD10: TIntegerField;
    SQL_OPSD11: TIntegerField;
    SQL_OPSD12: TIntegerField;
    SQL_OPSD13: TIntegerField;
    SQL_OPSD14: TIntegerField;
    SQL_OPSD15: TIntegerField;
    SQL_OPSD16: TIntegerField;
    SQL_OPSD17: TIntegerField;
    SQL_OPSD18: TIntegerField;
    SQL_OPSD19: TIntegerField;
    SQL_OPSD20: TIntegerField;
    SQL_OPSD21: TIntegerField;
    SQL_OPSD22: TIntegerField;
    SQL_OPSD23: TIntegerField;
    SQL_OPSD24: TIntegerField;
    SQL_OPSD25: TIntegerField;
    SQL_OPSD26: TIntegerField;
    SQL_OPSD27: TIntegerField;
    SQL_OPSD28: TIntegerField;
    SQL_OPSD29: TIntegerField;
    SQL_OPSD30: TIntegerField;
    SQL_OPSD31: TIntegerField;
    SQL_SETUP: TADOQuery;
    SQL_SETUPPARAMVALUE: TWideStringField;
    DBF: TVKDBFNTX;
    SQL_DeliveryOpsSprav: TADOQuery;
    SQL_DeliveryOpsSprav_e: TDataSource;
    Sql_DeliveryAdresSprav: TADOQuery;
    Sql_DeliveryAdressE: TDataSource;
    SQl_DeliveryAdresNotOps: TADOQuery;
    SQl_DeliveryAdresNotOpsE: TDataSource;
    SP_DELYVERY: TADOStoredProc;
    SQL_DeliveryOpsSpravINDOPS: TWideStringField;
    Sql_DeliveryAdresSpravID: TLargeintField;
    Sql_DeliveryAdresSpravINDOPS: TWideStringField;
    Sql_DeliveryAdresSpravCITY: TWideStringField;
    Sql_DeliveryAdresSpravSTRIT: TWideStringField;
    Sql_DeliveryAdresSpravDOM: TWideStringField;
    Sql_DeliveryAdresSpravKORP: TWideStringField;
    SQl_DeliveryAdresNotOpsID: TLargeintField;
    SQl_DeliveryAdresNotOpsINDOPS: TWideStringField;
    SQl_DeliveryAdresNotOpsCITY: TWideStringField;
    SQl_DeliveryAdresNotOpsSTRIT: TWideStringField;
    SQl_DeliveryAdresNotOpsDOM: TWideStringField;
    SQl_DeliveryAdresNotOpsKORP: TWideStringField;
    Sql_DeliveryAdresSpravDatDelyvery: TIntegerField;
    SP_DELIDERY_CH: TADOStoredProc;
    SP_FILIN_REG: TADOStoredProc;
    SQL_FILEIN: TADOQuery;
    SQL_FILEIN_E: TDataSource;
    SQL_FILEINID: TLargeintField;
    SQL_FILEINFILENAME: TWideStringField;
    SQL_FILEINCOLZ: TLargeintField;
    SQL_FILEINSUMZ: TBCDField;
    SQL_FILEINIDSTATUS: TIntegerField;
    SQL_FILEINSTATUSDATE: TDateTimeField;
    SQL_FILEINSTATUSUSER: TIntegerField;
    SQL_FILEINDATALOAD: TWideStringField;
    SP_MONETY_ADD: TADOStoredProc;
    SP_FILEIN_UPD: TADOStoredProc;
    SQL_FILE_IT: TADOQuery;
    SQL_FILE_IT_E: TDataSource;
    SQL_FILE_ITKOLF: TIntegerField;
    SQL_FILE_ITCOLZ: TLargeintField;
    SQL_FILE_ITIDSTATUS: TIntegerField;
    SQL_FILE_ITSUMZ: TBCDField;
    SP_FILEIN_DEL: TADOStoredProc;
    SQL_FIND: TADOQuery;
    SQL_FIND_E: TDataSource;
    SQL_PERIOD: TADOQuery;
    SQL_PERIODMES: TWideStringField;
    SQL_PERIODGOD: TWideStringField;
    SQL_CountNoList: TADOQuery;
    SQL_NoList: TADOQuery;
    SQL_NoList_E: TDataSource;
    SQL_NoListNLS: TWideStringField;
    SQL_NoListORG: TWideStringField;
    SQL_NoListMES: TWideStringField;
    SQL_NoListGOD: TWideStringField;
    SQL_NoListFM: TWideStringField;
    SQL_NoListIM: TWideStringField;
    SQL_NoListOT: TWideStringField;
    SQL_NoListDTR: TWideStringField;
    SQL_NoListPSR: TWideStringField;
    SQL_NoListPNM: TWideStringField;
    SQL_NoListSVZ: TWideStringField;
    SQL_NoListINDOPS: TWideStringField;
    SQL_NoListCITY: TWideStringField;
    SQL_NoListSTRIT: TWideStringField;
    SQL_NoListDOM: TWideStringField;
    SQL_NoListKORP: TWideStringField;
    SQL_NoListDatDelyvery: TIntegerField;
    SQL_NoListKVR: TWideStringField;
    SQL_NoListNPSU: TWideStringField;
    SQL_NoListVYPL: TWideStringField;
    SQL_NoListSMVYP: TBCDField;
    SQL_NoListPAID: TIntegerField;
    SQL_NoListOPLAT: TWideStringField;
    SQL_NoListREASON: TIntegerField;
    SQL_NoListLISTID: TLargeintField;
    SQL_NoListSTATUSP: TIntegerField;
    SQL_CountNoListCOUNTNOLIST: TIntegerField;
    SQL_CountNoList_E: TDataSource;
    SQL_NOLIST_OPS: TADOQuery;
    SQL_NOLIST_OPSINDOPS: TWideStringField;
    SP_LIST_ADD: TADOStoredProc;
    SQL_LIST_1: TADOQuery;
    SQL_LIST_E: TDataSource;
    SQL_LIST_LS: TADOQuery;
    SQL_LIST_LS_E: TDataSource;
    SQL_LIST_LSNLS: TWideStringField;
    SQL_LIST_LSFM: TWideStringField;
    SQL_LIST_LSSMVYP: TBCDField;
    SQL_LIST_LSIM: TWideStringField;
    SQL_LIST_LSSTRIT: TWideStringField;
    SQL_LIST_LSDOM: TWideStringField;
    SQL_LIST_LSKORP: TWideStringField;
    SQL_LIST_LSOT: TWideStringField;
    SP_LIST_UPD: TADOStoredProc;
    SQL_SPR_NO_DELIVERY: TADOQuery;
    SP_MONETY_UPD: TADOStoredProc;
    SQL_LIST_LSID: TLargeintField;
    SQL_LIST_LSSTATUSP: TIntegerField;
    SP_FILEOUT_NUM: TADOStoredProc;
    SP_FILEOUT_ADD: TADOStoredProc;
    SQL_FILEOUT: TADOQuery;
    SQL_FILEOUT_E: TDataSource;
    SQL_LIST_LSREASON: TIntegerField;
    SQL_FILE_EXP: TADOQuery;
    SQL_SPR_NO_DELIVERYIDPARAM: TIntegerField;
    SQL_SPR_NO_DELIVERYNAMESPR: TWideStringField;
    SQL_SPR_NO_DELIVERYOPISANIE: TWideStringField;
    SQL_SPR_NO_DELIVERYPARAMVALUE: TWideStringField;
    SQL_SPR_NO_DELIVERYSTATUS: TIntegerField;
    SP_SPR_FIELD: TADOStoredProc;
    SQL_SPR_NO_DELIVERYDEF: TIntegerField;
    SQL_FILE_EXPNLS: TWideStringField;
    SQL_FILE_EXPORG: TWideStringField;
    SQL_FILE_EXPMES: TWideStringField;
    SQL_FILE_EXPGOD: TWideStringField;
    SQL_FILE_EXPFM: TWideStringField;
    SQL_FILE_EXPIM: TWideStringField;
    SQL_FILE_EXPOT: TWideStringField;
    SQL_FILE_EXPDTR: TWideStringField;
    SQL_FILE_EXPPSR: TWideStringField;
    SQL_FILE_EXPPNM: TWideStringField;
    SQL_FILE_EXPSVZ: TWideStringField;
    SQL_FILE_EXPNSP: TWideStringField;
    SQL_FILE_EXPULC: TWideStringField;
    SQL_FILE_EXPDOM: TWideStringField;
    SQL_FILE_EXPKORP: TWideStringField;
    SQL_FILE_EXPKVR: TWideStringField;
    SQL_FILE_EXPNPSU: TWideStringField;
    SQL_FILE_EXPVYPL: TWideStringField;
    SQL_FILE_EXPSMVYP: TBCDField;
    SQL_FILE_EXPPAID: TIntegerField;
    SQL_FILE_EXPOPLAT: TWideStringField;
    SQL_FILE_EXPREASON: TIntegerField;
    SQL_FILE_EXPEXPFILEID: TLargeintField;
    SQL_FILEOUTID: TLargeintField;
    SQL_FILEOUTFILENAME: TWideStringField;
    SQL_FILEOUTCOLZ: TLargeintField;
    SQL_FILEOUTSUMZ: TBCDField;
    SQL_FILEOUTIDUSEREXP: TLargeintField;
    SQL_FILEOUTDATAEXP: TWideStringField;
    SQL_FILEOUTTIMEEXP: TWideStringField;
    SQL_FILEOUTSTATUS: TIntegerField;
    SQL_FILEOUTDATAOUT: TDateTimeField;
    SQL_FILEOUTNumFile: TIntegerField;
    SQL_FILEOUTGodFile: TIntegerField;
    SQL_FILEOUTMesFile: TIntegerField;
    SP_FILEOUT_UPD: TADOStoredProc;
    SQL_FILEOUTCOLPAY: TIntegerField;
    SQL_FILEOUTSUMPAY: TBCDField;
    SQL_FILEOUTCOLNOPAY: TIntegerField;
    SQL_FILEOUTSUMNOPAY: TBCDField;
    SP_FIND_NOPAY: TADOStoredProc;
    SP_FIND_NOPAY_E: TDataSource;
    SP_FIND_NOPAYID: TLargeintField;
    SP_FIND_NOPAYFM: TWideStringField;
    SP_FIND_NOPAYIM: TWideStringField;
    SP_FIND_NOPAYOT: TWideStringField;
    SP_FIND_NOPAYINDOPS: TWideStringField;
    SP_FIND_NOPAYCITY: TWideStringField;
    SP_FIND_NOPAYSTRIT: TWideStringField;
    SP_FIND_NOPAYDOM: TWideStringField;
    SP_FIND_NOPAYKORP: TWideStringField;
    SP_FIND_NOPAYKVR: TWideStringField;
    SP_FIND_NOPAYPSR: TWideStringField;
    SP_FIND_NOPAYPNM: TWideStringField;
    SP_FIND_NOPAYNUMLIST: TLargeintField;
    SP_FIND_NOPAYSMVYP: TBCDField;
    SP_FIND_NOPAYNLS: TWideStringField;
    SP_LIST_ITOGI: TADOStoredProc;
    SQL_REESTR_YAR: TADOQuery;
    SQL_REESTR_YARGOD: TIntegerField;
    SQL_REESTR_MES: TADOQuery;
    SQL_REESTR_MESMES: TIntegerField;
    SQL_REESTR_OPS: TADOQuery;
    SQL_REESTR_OPSID: TLargeintField;
    SQL_REESTR_OPSNUMLIST: TLargeintField;
    SQL_REESTR_OPSDATLIST: TWideStringField;
    SQL_REESTR_OPSINDOPS: TWideStringField;
    SQL_REESTR_OPSCOUNTLIST: TLargeintField;
    SQL_REESTR_OPSSUMLIST: TBCDField;
    SQL_REESTR_OPSUSERCREATID: TLargeintField;
    SQL_REESTR_OPSDATACREAT: TDateTimeField;
    SQL_REESTR_OPSPRINTY: TIntegerField;
    SQL_REESTR_OPSDATPRINTY: TDateTimeField;
    SQL_REESTR_OPSUSERPRINTID: TLargeintField;
    SQL_REESTR_OPSMES: TIntegerField;
    SQL_REESTR_OPSGOD: TIntegerField;
    SQL_REESTR_OPSSTSTUSL: TIntegerField;
    SQL_REESTR_OPSSTATUSL: TIntegerField;
    SP_STATEMENT: TADOStoredProc;
    SP_STATEMENT_E: TDataSource;
    SP_STATEMENTCounts: TIntegerField;
    SP_STATEMENTColList: TIntegerField;
    SP_STATEMENTSumList: TBCDField;
    SP_STATEMENTDolgn: TWideStringField;
    SP_STATEMENTFio: TWideStringField;
    SP_STATEMENTINPOCT: TWideStringField;
    SP_STATEMENTPOCT: TWideStringField;
    SQL_REESTR_OPS_LIST: TADOQuery;
    SQL_REESTR_OPS_LISTINDOPS: TWideStringField;
    SP_LIST_PRNP: TADOStoredProc;
    SP_LIST_PRNPOPS: TWideStringField;
    SP_LIST_PRNPGOD: TWideStringField;
    SP_LIST_PRNPMES: TWideStringField;
    SP_LIST_PRNPColList: TIntegerField;
    SP_LIST_PRNPSumList: TBCDField;
    SP_LIST_PRNPDolgn: TWideStringField;
    SP_LIST_PRNPFIO: TWideStringField;
    SP_LIST_PRNPINPOCT: TWideStringField;
    SP_LIST_PRNPPOCT: TWideStringField;
    SP_LIST_PRNPMonetyBos: TWideStringField;
    SP_LIST_PRNPMonetyBosFio: TWideStringField;
    SP_LIST_PRNPFromPaymentOrg: TWideStringField;
    SP_LIST_PRNPNamePayment: TWideStringField;
    SP_LIST_PRNPDatDelyvery: TWideStringField;
    SP_LIST_PRNPCITY: TWideStringField;
    SP_LIST_PRNPSTRIT: TWideStringField;
    SP_LIST_PRNPDOM: TWideStringField;
    SP_LIST_PRNPKORP: TWideStringField;
    SQL_LIST_LSKVR: TWideStringField;
    SQL_LIST_LSPSR: TWideStringField;
    SQL_LIST_LSPNM: TWideStringField;
    SQL_LIST_LS_PRN: TADOQuery;
    SQL_LIST_LS_PRNID: TLargeintField;
    SQL_LIST_LS_PRNNLS: TWideStringField;
    SQL_LIST_LS_PRNFM: TWideStringField;
    SQL_LIST_LS_PRNIM: TWideStringField;
    SQL_LIST_LS_PRNOT: TWideStringField;
    SQL_LIST_LS_PRNSTRIT: TWideStringField;
    SQL_LIST_LS_PRNDOM: TWideStringField;
    SQL_LIST_LS_PRNKORP: TWideStringField;
    SQL_LIST_LS_PRNSMVYP: TBCDField;
    SQL_LIST_LS_PRNSTATUSP: TIntegerField;
    SQL_LIST_LS_PRNREASON: TIntegerField;
    SQL_LIST_LS_PRNKVR: TWideStringField;
    SQL_LIST_LS_PRNPSR: TWideStringField;
    SQL_LIST_LS_PRNPNM: TWideStringField;
    SQL_LIST_PRNM: TADOQuery;
    SQL_LIST_PRNMID: TLargeintField;
    SQL_LIST_PRNMINDOPS: TWideStringField;
    SQL_LIST_PRNMNUMLIST: TLargeintField;
    SP_CHEK: TADOStoredProc;
    SP_REP: TADOStoredProc;
    SQL_REP_PER: TADOQuery;
    SP_REP_ITOGI: TADOStoredProc;
    SP_REP_ITOGIColListAll: TIntegerField;
    SP_REP_ITOGIColAll: TIntegerField;
    SP_REP_ITOGISumAll: TBCDField;
    SP_REP_ITOGICountPayList: TIntegerField;
    SP_REP_ITOGIColPay: TIntegerField;
    SP_REP_ITOGISumPay: TBCDField;
    SP_REP_ITOGICountNoPayList: TIntegerField;
    SP_REP_ITOGIColNoPay: TIntegerField;
    SP_REP_ITOGISumNoPay: TBCDField;
    SP_REPINDOPS: TWideStringField;
    SP_REPKolListAll: TIntegerField;
    SP_REPKolAll: TIntegerField;
    SP_REPSumAll: TBCDField;
    SP_REPKolListPay: TIntegerField;
    SP_REPKolPay: TIntegerField;
    SP_REPSumPay: TBCDField;
    SP_REPKolListNoPay: TIntegerField;
    SP_REPKolNoPay: TLargeintField;
    SP_REPSumNoPay: TBCDField;
    SP_REPGod: TIntegerField;
    SP_REPMes: TIntegerField;
    SQL_LIST: TADOQuery;
    SQL_LISTID: TLargeintField;
    SQL_LISTINDOPS: TWideStringField;
    SQL_LISTNUMLIST: TLargeintField;
    SQL_LISTCOUNTLIST: TLargeintField;
    SQL_LISTSUMLIST: TBCDField;
    SQL_LISTColPay: TIntegerField;
    SQL_LISTSumPay: TBCDField;
    SQL_LISTCountNoPay: TIntegerField;
    SQL_LISTSumNoPay: TBCDField;
    SQL_LISTMES: TIntegerField;
    SQL_LISTGOD: TIntegerField;
    SQL_LISTSTATUSL: TIntegerField;
    SQL_LISTDATLIST: TWideStringField;
    SQL_LISTDATACREAT: TDateTimeField;
    SQL_LISTFM_CREAT: TWideStringField;
    SQL_LISTDATPRINTY: TDateTimeField;
    SQL_LISTFM_PRN: TWideStringField;
    SQL_LISTDATASTATUS: TDateTimeField;
    SQL_LISTIDSTATUS: TIntegerField;
    SQL_LISTFM_STATUS: TWideStringField;
    SQL_LISTPRINTY: TIntegerField;
    SQL_FINDID: TLargeintField;
    SQL_FINDNLS: TWideStringField;
    SQL_FINDORG: TWideStringField;
    SQL_FINDMES: TWideStringField;
    SQL_FINDGOD: TWideStringField;
    SQL_FINDFM: TWideStringField;
    SQL_FINDIM: TWideStringField;
    SQL_FINDOT: TWideStringField;
    SQL_FINDDTR: TWideStringField;
    SQL_FINDPSR: TWideStringField;
    SQL_FINDPNM: TWideStringField;
    SQL_FINDSVZ: TWideStringField;
    SQL_FINDINDOPS: TWideStringField;
    SQL_FINDCITY: TWideStringField;
    SQL_FINDSTRIT: TWideStringField;
    SQL_FINDDOM: TWideStringField;
    SQL_FINDKORP: TWideStringField;
    SQL_FINDDatDelyvery: TIntegerField;
    SQL_FINDKVR: TWideStringField;
    SQL_FINDNPSU: TWideStringField;
    SQL_FINDVYPL: TWideStringField;
    SQL_FINDSMVYP: TBCDField;
    SQL_FINDPAID: TIntegerField;
    SQL_FINDOPLAT: TWideStringField;
    SQL_FINDREASON: TIntegerField;
    SQL_FINDIDFILEINP: TLargeintField;
    SQL_FINDFILENAME: TWideStringField;
    SQL_FINDCOLZ: TLargeintField;
    SQL_FINDSUMZ: TBCDField;
    SQL_FINDIDUSERLOAD: TLargeintField;
    SQL_FINDSTATUS: TIntegerField;
    SQL_FINDLOADDATA: TDateTimeField;
    SQL_FINDLOADUSERID: TLargeintField;
    SQL_FINDIDFILEOUT: TLargeintField;
    SQL_FINDFILENAMEOUT: TWideStringField;
    SQL_FINDCOLEXP: TLargeintField;
    SQL_FINDSUNEXP: TBCDField;
    SQL_FINDIDUSEREXP: TLargeintField;
    SQL_FINDSTATUSEXPFILE: TIntegerField;
    SQL_FINDPAIDUSERID: TLargeintField;
    SQL_FINDPAIDDATA: TDateTimeField;
    SQL_FINDIDLIST: TLargeintField;
    SQL_FINDNUMLIST: TLargeintField;
    SQL_FINDDATLIST: TWideStringField;
    SQL_FINDINDLIST: TWideStringField;
    SQL_FINDCOUNTLIST: TLargeintField;
    SQL_FINDSUMLIST: TBCDField;
    SQL_FINDUSERCREATID: TLargeintField;
    SQL_FINDDATACREAT: TDateTimeField;
    SQL_FINDPRINTY: TIntegerField;
    SQL_FINDDATPRINTY: TDateTimeField;
    SQL_FINDUSERPRINTID: TLargeintField;
    SQL_FINDSTATUSP: TIntegerField;
    SQL_FINDEXPDATA: TDateTimeField;
    SQL_FINDEXPFILEID: TLargeintField;
    SQL_FINDOPISANIE: TWideStringField;
    SP_SPRAV_LS: TADOStoredProc;
    SP_SPRAV_LSNumSprav: TLargeintField;
    SP_SPRAV_LSDolgn: TWideStringField;
    SP_SPRAV_LSFIO: TWideStringField;
    SP_SPRAV_LSINPOCT: TWideStringField;
    SP_SPRAV_LSPOCT: TWideStringField;
    SP_SPRAV_LSMonetyBos: TWideStringField;
    SP_SPRAV_LSMonetyBosFio: TWideStringField;
    SP_SPRAV_LSOper: TWideStringField;
    SP_SPRAV_LSOperFio: TWideStringField;
    SP_WORK: TADOStoredProc;
    sql_work_log: TADOQuery;
    sql_work_log_e: TDataSource;
    sql_work_logID: TLargeintField;
    sql_work_logIDUSER: TIntegerField;
    sql_work_logREGIM: TIntegerField;
    sql_work_logDATAREGIM: TDateTimeField;
    sql_work_logSTATUS: TIntegerField;
    sql_work_logDATAREGIMSTOP: TDateTimeField;
    sql_work_logNAMEARM: TWideStringField;
    sql_work_logNAMEUSERS: TWideStringField;
    sql_work_logREGIMSTR: TWideStringField;
    sql_work_logID_1: TLargeintField;
    sql_work_logFM: TWideStringField;
    sql_work_logIM: TWideStringField;
    sql_work_logOT: TWideStringField;
    sql_work_logDOLGN: TWideStringField;
    sql_work_logPASSW: TWideStringField;
    sql_work_logURDOST: TIntegerField;
    sql_work_logDATCREAT: TDateTimeField;
    sql_work_logSTATUS_1: TIntegerField;
    sql_work_logDATCLOS: TDateTimeField;
    SQL_Rezerv: TADOQuery;
    SP_FILEOUT_CHEK: TADOStoredProc;
    SP_FILEOUT_ADD_2: TADOStoredProc;
    SP_FILEOUT_UPD_2: TADOStoredProc;
    SP_LIST_PRNPMES1: TWideStringField;
    SP_LIST_PRNPNumlist: TIntegerField;
    SP_LIST_PRNPDAtList: TWideStringField;
    SP_ReIndex: TADOStoredProc;
    SP_LIST_TYP: TADOStoredProc;
    SP_LIST_RET: TADOStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DBAfterConnect(Sender: TObject);
    procedure DBAfterDisconnect(Sender: TObject);
    procedure DBInfoMessage(Connection: TADOConnection; const Error: Error;
      var EventStatus: TEventStatus);
    procedure DBBeforeConnect(Sender: TObject);
    procedure Sql_UserViewFMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_SYSTEMIDTYPEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_FILEINIDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_FILE_ITIDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_LISTIDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_FILEOUTSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_REESTR_OPSMESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_REESTR_OPSNUMLISTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SQL_FINDPAIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_FINDSTATUSPGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBBeforeDisconnect(Sender: TObject);
    procedure DBExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure SP_ReIndexFetchComplete(DataSet: TCustomADODataSet;
      const Error: Error; var EventStatus: TEventStatus);
    procedure SP_ReIndexFetchProgress(DataSet: TCustomADODataSet; Progress,
      MaxProgress: Integer; var EventStatus: TEventStatus);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Baza: TBaza;

implementation

uses AuntificationForma, MainForma, OptionsForma, ProcessFindForma,
  ProcessLoadForma, SpravForma, NonpaymentForma, RegistryForOpsForma,
  FindPaymentForma, ReportingForma, ListForma, NoPayPricinaForma,
  FileInForma, FileOutForma, ReestryForOpsForma, LogForma;

{$R *.dfm}

procedure TBaza.DataModuleCreate(Sender: TObject);
begin
  main.Log('Модуль БД создан');
end;

procedure TBaza.DataModuleDestroy(Sender: TObject);
begin
  main.Log('Модуль БД выключен');
end;

procedure TBaza.DBAfterConnect(Sender: TObject);
begin
  DB.Tag:=1;
  with main do begin
    Log('Соединение с БД устновлено');
    SB.Panels[3].Text:=DataBase.Server+':'+DataBase.Baza+' - Соединеие устновлено';
    RegWorc(UserWorc.ID,NameArm,NameUser,'Подключение к БД');
  end;
  ProcessFind.Animate1.Active:=false;
  ProcessFind.Close;
end;

procedure TBaza.DBAfterDisconnect(Sender: TObject);
begin
  DB.Tag:=0;
  with main do begin
    Log('Соединение с БД разорвано');
    SB.Panels[3].Text:='БД не подключена';
  end;
end;

procedure TBaza.DBInfoMessage(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  main.SB.Panels[4].Text:=Error.Source+' - '+Error.Description+' - '+Error.SQLState;
  main.Log(Error.Source+' - '+Error.Description+' - '+Error.SQLState);
end;

procedure TBaza.DBBeforeConnect(Sender: TObject);
begin
  ProcessFind.Label1.Caption:='Подключение к БД';
  ProcessFind.Show;
end;

procedure TBaza.Sql_UserViewFMGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if baza.Sql_UserView.RecordCount>0 then
    text:=Copy(trim(baza.Sql_UserViewIM.AsString),1,1)+'.'+Copy(trim(baza.Sql_UserViewOT.AsString),1,1)+'.'+trim(baza.Sql_UserViewFM.AsString);
end;

procedure TBaza.SQL_SYSTEMIDTYPEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if baza.SQL_SYSTEM.RecordCount>0 then
    case baza.SQL_SYSTEMIDTYPE.Value of
      0: Text:='Строка';
      1: Text:='Целое число';
      2: Text:='Денежное число';
      3: Text:='Дата\Время';
    else Text:='';
    end
  else text:='';
end;

procedure TBaza.SQL_FILEINIDSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Baza.SQL_FILEIN.Active=true then
    if baza.SQL_FILEIN.RecordCount>0 then
      Case baza.SQL_FILEINIDSTATUS.Value of
        1: Text:='Принят к загрузке';
        2: Text:='Загружен в БД';
        0: Text:='Удален';
      else
        Text:='НЕ ОПРЕДЕЛЕН';
      end;
end;

procedure TBaza.SQL_FILE_ITIDSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
if (baza.SQL_FILE_IT.Active=true) and (baza.SQL_FILE_IT.RecordCount>0) then
    Case baza.SQL_FILE_ITIDSTATUS.Value of
     -1: Text:='Файлов ВСЕГО : ';
      0: Text:='Файлов удаленных : ';
      1: Text:='Файлов к загрузке БД : ';
      2: Text:='Файлов загруженных в БД : ';
    Else
      Text:='';
    end
  else Text:='';
end;
{   }

{  if (baza.SQL_FILE_IT.Active=true) and (baza.SQL_FILE_IT.RecordCount>0) then
    Text:=' записей : '+(Baza.SQL_FILE_ITCOLZ.AsString)+','
  else Text:='';  }

 { if (baza.SQL_FILE_IT.Active=true) and (baza.SQL_FILE_IT.RecordCount>0) then
    Text:=(Baza.SQL_FILE_ITSUMZ.AsString)+' руб.'
  else Text:='';    }

{  if (baza.SQL_FILE_IT.Active=true) and (baza.SQL_FILE_IT.RecordCount>0) then
    Text:=' файлов : '+(Baza.SQL_FILE_ITKOLF.AsString)+','
  else Text:='';   }
procedure TBaza.SQL_LISTIDSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  If (Baza.SQL_LIST.Active=true) and
     (baza.SQL_LIST.RecordCount>0) then
     Case baza.SQL_LISTIDSTATUS.Value of
       0: begin
          text:='РАСФОРМИРОВАН';
          with List do begin
            Label11.Caption:='Удален:';
            Label11.Visible:=true;
            DBText9.Visible:=true;
            label16.Visible:=true;
            DBText16.Visible:=true;
          end;
       end;
       1: begin
          Text:='СФОРМИРОВАН';
          with List do begin
            Label11.Visible:=false;
            DBText9.Visible:=false;
            label16.Visible:=false;
            DBText16.Visible:=false;
          end;
       end;
       2: begin
          Text:='РАСПЕЧАТАН';
          with List do begin
            Label11.Visible:=false;
            DBText9.Visible:=false;
            label16.Visible:=false;
            DBText16.Visible:=false;
          end;
       end;
       3: begin
          Text:='ЗАКРЫТ';
          with List do begin
            Label11.Caption:='Закрыт:';
            Label11.Visible:=true;
            DBText9.Visible:=true;
            label16.Visible:=true;
            DBText16.Visible:=true;
          end;
       end;
     else text:='';
     end;
end;

procedure TBaza.SQL_FILEOUTSTATUSGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if (Baza.SQL_FILEOUT.Active=true) and (baza.SQL_FILEOUT.RecordCount>0) then
    Case Baza.SQL_FILEOUTSTATUS.Value of
      0: begin
        IF (Baza.SQL_FILEOUTCOLPAY.Value+Baza.SQL_FILEOUTCOLNOPAY.Value)=baza.SQL_FILEOUTCOLZ.Value then
        Text:='СФОРМИРОВАН' else Text:='СФОРМИРОВАН НЕ ОПЛАЧЕН';
      end;
      1: Text:='ЗАКРЫТ';
      else text:='';
    end;            
end;

procedure TBaza.SQL_REESTR_OPSMESGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if baza.SQL_REESTR_OPS.RecordCount>0 then
    If baza.SQL_REESTR_OPSMES.Value<=9 then Text:='0'+Trim(baza.SQL_REESTR_OPSMES.asstring)
    else Text:=Trim(baza.SQL_REESTR_OPSMES.asstring);
end;

procedure TBaza.SQL_REESTR_OPSNUMLISTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
Var S:String; I:Integer;
begin
  if baza.SQL_REESTR_OPS.RecordCount>0 then begin
    S:='';
    Case Length(Trim(baza.SQL_REESTR_OPSNUMLIST.AsString)) of
      1: S:='00000'+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
      2: S:='0000'+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
      3: S:='000'+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
      4: S:='00'+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
      5: S:='0'+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
    else S:=Trim(baza.SQL_REESTR_OPSNUMLIST.AsString);
    end;
   { For I:=6 downto 6-Length(Trim(baza.SQL_REESTR_OPSNUMLIST.AsString)) do S:='0'+S;
    S:=S+Trim(baza.SQL_REESTR_OPSNUMLIST.AsString); }
    If baza.SQL_REESTR_OPSMES.Value<=9 then S:='0'+Trim(baza.SQL_REESTR_OPSMES.asstring)+' '+S
    else S:=Trim(baza.SQL_REESTR_OPSMES.asstring)+' '+S;
    S:=Trim(baza.SQL_REESTR_OPSINDOPS.AsString)+' '+Trim(baza.SQL_REESTR_OPSGOD.asstring)+' '+S;
    Text:=S;
  end else text:='';
end;

procedure TBaza.SQL_FINDPAIDGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if (baza.SQL_FIND.RecordCount>0) and (baza.SQL_FIND.Active=true) then
    Case baza.SQL_FINDPAID.Value of
      0: Text:='Не выплачен';
      1: text:='Выплачен';
      else text:='';
     end;
end;

procedure TBaza.SQL_FINDSTATUSPGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if (baza.SQL_FIND.RecordCount>0) and (baza.SQL_FIND.Active=true) then
    Case baza.SQL_FINDSTATUSP.Value of
      1: Text:='Загружен';
      2: text:='В доставке';
      3: text:='Обработан';
      4: text:='Выгружен';
      else text:='';
     end;
end;

procedure TBaza.DBBeforeDisconnect(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Отключение от БД');
end;

procedure TBaza.DBExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  main.SB.Panels[4].Text:=Command.Name+';'+Error.Source ;
  main.Log( Command.Name+';'+Error.Source );
end;

procedure TBaza.SP_ReIndexFetchComplete(DataSet: TCustomADODataSet;
  const Error: Error; var EventStatus: TEventStatus);
begin
  main.Mes('Переиндексация БД заврешена '+Error.SQLState, 3)
end;

procedure TBaza.SP_ReIndexFetchProgress(DataSet: TCustomADODataSet;
  Progress, MaxProgress: Integer; var EventStatus: TEventStatus);
begin
  main.SB.Panels[4].Text:=IntToStr(Progress)+'/'+ IntToStr(MaxProgress);
end;

end.
