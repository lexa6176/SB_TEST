object baza: Tbaza
  OldCreateOrder = False
  Left = 791
  Top = 75
  Height = 735
  Width = 476
  object BD: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=JPk.m' +
      'db;Mode=Share Deny None;Extended Properties="";Persist Security ' +
      'Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path=' +
      '"";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OL' +
      'EDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;' +
      'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pass' +
      'word="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt' +
      ' Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet' +
      ' OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object Reestr_sql: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from reestr Order By Id')
    Left = 32
    Top = 64
    object Reestr_sqlId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Reestr_sqlDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object Reestr_sqlOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object Reestr_sqlDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object Reestr_sqlIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object Reestr_sqlSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object Reestr_sqlOtmetka: TIntegerField
      FieldName = 'Otmetka'
      OnGetText = Reestr_sqlOtmetkaGetText
    end
    object Reestr_sqlDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object Reestr_sqlSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object Reestr_sqlDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object Reestr_sqlFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object Reestr_sqlPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object Reestr_sqlOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object Reestr_sqlOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object Reestr_sqlOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object Reestr_sqlREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object Reestr_sqlAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object Reestr_sqlAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object Reestr_sqlCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object Reestr_sqlCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object Reestr_sqlACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object Reestr_sqlINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
    object Reestr_sqltiperror: TIntegerField
      FieldName = 'tiperror'
      OnGetText = Reestr_sqltiperrorGetText
    end
    object Reestr_sqlfioError: TWideStringField
      FieldName = 'fioError'
      Size = 50
    end
    object Reestr_sqlTipFioError: TIntegerField
      FieldName = 'TipFioError'
    end
    object Reestr_sqlProc: TIntegerField
      FieldName = 'Proc'
    end
    object Reestr_sqlErrorNot: TIntegerField
      FieldName = 'ErrorNot'
    end
    object Reestr_sqlDatMailVip: TDateTimeField
      FieldName = 'DatMailVip'
    end
    object Reestr_sqlDatPrnVip: TDateTimeField
      FieldName = 'DatPrnVip'
    end
  end
  object Reestr_sql_e: TDataSource
    DataSet = Reestr_sql
    Left = 72
    Top = 64
  end
  object Gurnal: TADOTable
    Connection = BD
    CursorType = ctStatic
    TableName = 'Gurnall'
    Left = 144
    Top = 160
    object GurnalId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object GurnalDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object GurnalOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object GurnalDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object GurnalIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object GurnalSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object GurnalOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object GurnalDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object GurnalSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object GurnalDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object GurnalFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object Gurnaltiperror: TIntegerField
      FieldName = 'tiperror'
    end
    object GurnalfioError: TWideStringField
      FieldName = 'fioError'
      Size = 50
    end
    object GurnalTipFioError: TIntegerField
      FieldName = 'TipFioError'
    end
    object GurnalProc: TIntegerField
      FieldName = 'Proc'
    end
    object GurnalErrorNot: TIntegerField
      FieldName = 'ErrorNot'
    end
    object GurnalDatMailVip: TDateTimeField
      FieldName = 'DatMailVip'
    end
    object GurnalDatPrnVip: TDateTimeField
      FieldName = 'DatPrnVip'
    end
  end
  object sql_ops: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Poct'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select Opsname from Ops where PostIndex=:I and OpsSubm=:Poct ')
    Left = 32
    Top = 280
    object sql_opsOpsname: TWideStringField
      FieldName = 'Opsname'
      Size = 60
    end
  end
  object sql_Upd: TADOQuery
    Connection = BD
    Parameters = <>
    Left = 144
    Top = 232
  end
  object sql_akt: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'D'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'S'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from REESTR where (DATAREG=:D) and (INDOPS=:S)')
    Left = 32
    Top = 232
    object sql_aktId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object sql_aktDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object sql_aktOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object sql_aktDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object sql_aktIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object sql_aktSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object sql_aktOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object sql_aktDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object sql_aktSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object sql_aktDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object sql_aktFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object sql_aktPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object sql_aktOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object sql_aktOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object sql_aktOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object sql_aktREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object sql_aktAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object sql_aktAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object sql_aktCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object sql_aktCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object sql_aktACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object sql_aktINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
  end
  object sql_user: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from SETT')
    Left = 32
    Top = 328
    object sql_userID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_userBos: TWideStringField
      FieldName = 'Bos'
      Size = 50
    end
    object sql_userBosDolgn: TWideStringField
      FieldName = 'BosDolgn'
      Size = 50
    end
    object sql_userUser1: TWideStringField
      FieldName = 'User1'
      Size = 50
    end
    object sql_userUser1Dolgn: TWideStringField
      FieldName = 'User1Dolgn'
      Size = 50
    end
    object sql_userUser2: TWideStringField
      FieldName = 'User2'
      Size = 50
    end
    object sql_userUser2Dolgn: TWideStringField
      FieldName = 'User2Dolgn'
      Size = 50
    end
    object sql_userUser3: TWideStringField
      FieldName = 'User3'
      Size = 50
    end
    object sql_userUser3Dolgn: TWideStringField
      FieldName = 'User3Dolgn'
      Size = 50
    end
    object sql_userBoskomu: TWideStringField
      FieldName = 'Boskomu'
      Size = 50
    end
    object sql_userUser1komu: TWideStringField
      FieldName = 'User1komu'
      Size = 50
    end
    object sql_userUser2Komu: TWideStringField
      FieldName = 'User2Komu'
      Size = 50
    end
    object sql_userUser3Komu: TWideStringField
      FieldName = 'User3Komu'
      Size = 50
    end
    object sql_userIndPoctamt: TWideStringField
      FieldName = 'IndPoctamt'
      Size = 6
    end
    object sql_userNamePodr: TWideStringField
      FieldName = 'NamePodr'
      Size = 50
    end
    object sql_userIndPodr: TWideStringField
      FieldName = 'IndPodr'
      Size = 6
    end
    object sql_userTipPodr: TIntegerField
      FieldName = 'TipPodr'
    end
  end
  object TabSetup: TADOTable
    Connection = BD
    CursorType = ctStatic
    TableName = 'SETT'
    Left = 144
    Top = 112
    object TabSetupID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object TabSetupBos: TWideStringField
      FieldName = 'Bos'
      Size = 50
    end
    object TabSetupBosDolgn: TWideStringField
      FieldName = 'BosDolgn'
      Size = 50
    end
    object TabSetupUser1: TWideStringField
      FieldName = 'User1'
      Size = 50
    end
    object TabSetupUser1Dolgn: TWideStringField
      FieldName = 'User1Dolgn'
      Size = 50
    end
    object TabSetupUser2: TWideStringField
      FieldName = 'User2'
      Size = 50
    end
    object TabSetupUser2Dolgn: TWideStringField
      FieldName = 'User2Dolgn'
      Size = 50
    end
    object TabSetupUser3: TWideStringField
      FieldName = 'User3'
      Size = 50
    end
    object TabSetupUser3Dolgn: TWideStringField
      FieldName = 'User3Dolgn'
      Size = 50
    end
    object TabSetupBoskomu: TWideStringField
      FieldName = 'Boskomu'
      Size = 50
    end
    object TabSetupUser1komu: TWideStringField
      FieldName = 'User1komu'
      Size = 50
    end
    object TabSetupUser2Komu: TWideStringField
      FieldName = 'User2Komu'
      Size = 50
    end
    object TabSetupUser3Komu: TWideStringField
      FieldName = 'User3Komu'
      Size = 50
    end
    object TabSetupIndPoctamt: TWideStringField
      FieldName = 'IndPoctamt'
      Size = 6
    end
    object TabSetupNamePodr: TWideStringField
      FieldName = 'NamePodr'
      Size = 50
    end
    object TabSetupIndPodr: TWideStringField
      FieldName = 'IndPodr'
      Size = 6
    end
    object TabSetupTipPodr: TIntegerField
      FieldName = 'TipPodr'
    end
  end
  object DelGrn: TADOTable
    Connection = BD
    CursorType = ctStatic
    TableName = 'GurnalDel'
    Left = 144
    Top = 64
    object DelGrnId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DelGrnIdZ: TIntegerField
      FieldName = 'IdZ'
    end
    object DelGrnDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object DelGrnOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object DelGrnDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object DelGrnIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object DelGrnSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object DelGrnOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object DelGrnDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object DelGrnSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object DelGrnDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object DelGrnFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object DelGrntiperror: TIntegerField
      FieldName = 'tiperror'
    end
    object DelGrnfioError: TWideStringField
      FieldName = 'fioError'
      Size = 50
    end
    object DelGrnTipFioError: TIntegerField
      FieldName = 'TipFioError'
    end
  end
  object Reestr_del_sql: TADOQuery
    Connection = BD
    Parameters = <>
    SQL.Strings = (
      'select * from ReestrDel order By ID')
    Left = 32
    Top = 112
    object Reestr_del_sqlID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Reestr_del_sqlIdZ: TIntegerField
      FieldName = 'IdZ'
    end
    object Reestr_del_sqlDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object Reestr_del_sqlOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object Reestr_del_sqlDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object Reestr_del_sqlIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object Reestr_del_sqlSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object Reestr_del_sqlOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object Reestr_del_sqlDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object Reestr_del_sqlSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object Reestr_del_sqlDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object Reestr_del_sqlFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object Reestr_del_sqlPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object Reestr_del_sqlOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object Reestr_del_sqlOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object Reestr_del_sqlOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object Reestr_del_sqlREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object Reestr_del_sqlAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object Reestr_del_sqlAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object Reestr_del_sqlCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object Reestr_del_sqlCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object Reestr_del_sqlACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object Reestr_del_sqlINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
    object Reestr_del_sqltiperror: TIntegerField
      FieldName = 'tiperror'
    end
    object Reestr_del_sqlfioError: TWideStringField
      FieldName = 'fioError'
      Size = 50
    end
    object Reestr_del_sqlTipFioError: TIntegerField
      FieldName = 'TipFioError'
    end
    object Reestr_del_sqlProc: TIntegerField
      FieldName = 'Proc'
    end
    object Reestr_del_sqlERRORNOT: TIntegerField
      FieldName = 'ERRORNOT'
    end
    object Reestr_del_sqlDATMAILVIP: TDateTimeField
      FieldName = 'DATMAILVIP'
    end
    object Reestr_del_sqlDATPRNVIP: TDateTimeField
      FieldName = 'DATPRNVIP'
    end
  end
  object Reestr_del_sel_e: TDataSource
    DataSet = Reestr_del_sql
    Left = 72
    Top = 112
  end
  object sql_user_W: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from USERWT')
    Left = 32
    Top = 376
    object sql_user_WID: TIntegerField
      FieldName = 'ID'
    end
    object sql_user_WNAMEUSER: TWideStringField
      FieldName = 'NAMEUSER'
      Size = 30
    end
    object sql_user_WDATCREAT: TDateTimeField
      FieldName = 'DATCREAT'
    end
    object sql_user_WDATIN: TDateTimeField
      FieldName = 'DATIN'
    end
    object sql_user_WDATCLOS: TDateTimeField
      FieldName = 'DATCLOS'
    end
    object sql_user_WTIPUSER: TIntegerField
      FieldName = 'TIPUSER'
    end
    object sql_user_WSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sql_user_WMAIL: TWideStringField
      FieldName = 'MAIL'
      Size = 255
    end
    object sql_user_WLOG: TWideStringField
      FieldName = 'LOG'
      Size = 50
    end
    object sql_user_WPAS: TWideStringField
      FieldName = 'PAS'
      Size = 50
    end
    object sql_user_WSERV: TWideStringField
      FieldName = 'SERV'
      Size = 50
    end
    object sql_user_Wport: TIntegerField
      FieldName = 'port'
    end
  end
  object sql_user_w_e: TDataSource
    DataSet = sql_user_W
    Left = 80
    Top = 376
  end
  object sql_doklad: TADOQuery
    Connection = BD
    Parameters = <
      item
        Name = 'IO'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from REESTR where IndOps=:IO Order By ID')
    Left = 80
    Top = 232
    object sql_dokladId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object sql_dokladDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object sql_dokladOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object sql_dokladDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object sql_dokladIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object sql_dokladSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object sql_dokladOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object sql_dokladDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object sql_dokladSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object sql_dokladDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object sql_dokladFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object sql_dokladPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object sql_dokladOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object sql_dokladOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object sql_dokladOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object sql_dokladREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object sql_dokladAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object sql_dokladAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object sql_dokladCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object sql_dokladCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object sql_dokladACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object sql_dokladINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
  end
  object Sql_Ops_Sprav: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'IOS'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select A.*,B.* From OPS A'
      ' LEFT JOIN MAILTAB B ON B.POSTIND=A.POSTINDEX'
      '  where A.OPSSUBM=:IOS '
      'Order By A.POSTINDEX')
    Left = 32
    Top = 424
    object Sql_Ops_SpravPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object Sql_Ops_SpravOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object Sql_Ops_SpravOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object Sql_Ops_SpravOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object Sql_Ops_SpravREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object Sql_Ops_SpravAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object Sql_Ops_SpravAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object Sql_Ops_SpravCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object Sql_Ops_SpravCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object Sql_Ops_SpravACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object Sql_Ops_SpravINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
    object Sql_Ops_SpravMAIL: TWideStringField
      FieldName = 'MAIL'
      Size = 255
    end
    object Sql_Ops_SpravID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Sql_Ops_SpravPOSTIND: TWideStringField
      FieldName = 'POSTIND'
      Size = 6
    end
  end
  object Sql_Ops_Sprav_e: TDataSource
    DataSet = Sql_Ops_Sprav
    Left = 80
    Top = 424
  end
  object sql_vip: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Filter = 'DTC<='#39'21.02.2014 00:00:00'#39
    Parameters = <>
    SQL.Strings = (
      'Select * from VipiskaR Order By Id')
    Left = 32
    Top = 472
    object sql_vipID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_vipIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object sql_vipDTC: TDateTimeField
      FieldName = 'DTC'
    end
    object sql_vipUserCr: TWideStringField
      FieldName = 'UserCr'
      Size = 50
    end
    object sql_vipPOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object sql_vipOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object sql_vipOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object sql_vipOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object sql_vipREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object sql_vipAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object sql_vipAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object sql_vipCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object sql_vipCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object sql_vipACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object sql_vipINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
  end
  object sql_vip_e: TDataSource
    DataSet = sql_vip
    Left = 80
    Top = 472
  end
  object Vipiska: TADOTable
    Connection = BD
    TableName = 'Vipiska'
    Left = 144
    Top = 432
    object VipiskaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object VipiskaIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object VipiskaDTC: TDateTimeField
      FieldName = 'DTC'
    end
    object VipiskaUserCr: TWideStringField
      FieldName = 'UserCr'
      Size = 50
    end
  end
  object VipSoder: TADOTable
    Connection = BD
    TableName = 'VipSoder'
    Left = 144
    Top = 480
    object VipSoderID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object VipSoderID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object VipSoderID_ZAP: TIntegerField
      FieldName = 'ID_ZAP'
    end
  end
  object sql_vip_sod: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from VipSoder A '
      '  Left Join Gurnall B on B.ID=A.ID_ZAP'
      'where ID_VIP=:I order by ID_zap ')
    Left = 32
    Top = 520
    object sql_vip_sodAId: TAutoIncField
      FieldName = 'A.Id'
      ReadOnly = True
    end
    object sql_vip_sodID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object sql_vip_sodID_ZAP: TIntegerField
      FieldName = 'ID_ZAP'
    end
    object sql_vip_sodBId: TAutoIncField
      FieldName = 'B.Id'
      ReadOnly = True
    end
    object sql_vip_sodDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object sql_vip_sodOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object sql_vip_sodDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object sql_vip_sodIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object sql_vip_sodSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object sql_vip_sodOtmetka: TIntegerField
      FieldName = 'Otmetka'
      OnGetText = sql_vip_sodOtmetkaGetText
    end
    object sql_vip_sodDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object sql_vip_sodSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object sql_vip_sodDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object sql_vip_sodFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
  end
  object VipiskaPrn: TADOTable
    Connection = BD
    TableName = 'VipPrint'
    Left = 144
    Top = 568
    object VipiskaPrnID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object VipiskaPrnID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object VipiskaPrnDAT_PRINT: TDateTimeField
      FieldName = 'DAT_PRINT'
    end
  end
  object VipiskaMail: TADOTable
    Connection = BD
    TableName = 'VipMail'
    Left = 144
    Top = 616
    object VipiskaMailID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object VipiskaMailID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object VipiskaMailDAT_MAIL: TDateTimeField
      FieldName = 'DAT_MAIL'
    end
  end
  object sql_vip_sod_e: TDataSource
    DataSet = sql_vip_sod
    Left = 80
    Top = 520
  end
  object sql_Vip_prn: TADOQuery
    Connection = BD
    Parameters = <
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from VipPrint where ID_VIP=:I')
    Left = 32
    Top = 568
    object sql_Vip_prnID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_Vip_prnID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object sql_Vip_prnDAT_PRINT: TDateTimeField
      FieldName = 'DAT_PRINT'
    end
  end
  object Sql_Vpi_Prn_e: TDataSource
    DataSet = sql_Vip_prn
    Left = 80
    Top = 568
  end
  object Sql_Vip_MAIL: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Vipmail where ID_VIP=:I')
    Left = 32
    Top = 616
    object Sql_Vip_MAILID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Sql_Vip_MAILID_VIP: TIntegerField
      FieldName = 'ID_VIP'
    end
    object Sql_Vip_MAILDAT_MAIL: TDateTimeField
      FieldName = 'DAT_MAIL'
    end
  end
  object SQL_VIP_MAIL_E: TDataSource
    DataSet = Sql_Vip_MAIL
    Left = 80
    Top = 616
  end
  object Sql_error: TADOQuery
    Connection = BD
    Parameters = <>
    SQL.Strings = (
      'select * from SprError Order By NumError')
    Left = 144
    Top = 280
    object Sql_errorId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Sql_errorNumError: TWideStringField
      FieldName = 'NumError'
      Size = 4
    end
    object Sql_errorTextError: TWideStringField
      FieldName = 'TextError'
      Size = 50
    end
  end
  object ErorSprav: TADOTable
    Connection = BD
    TableName = 'SprError'
    Left = 144
    Top = 384
    object ErorSpravId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ErorSpravNumError: TWideStringField
      FieldName = 'NumError'
      Size = 4
    end
    object ErorSpravTextError: TWideStringField
      FieldName = 'TextError'
      Size = 50
    end
  end
  object sql_error_e: TDataSource
    DataSet = Sql_error
    Left = 200
    Top = 280
  end
  object sql_akte: TADOTable
    Connection = BD
    TableName = 'Reestr'
    Left = 80
    Top = 280
    object sql_akteId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object sql_akteDataReg: TDateTimeField
      FieldName = 'DataReg'
    end
    object sql_akteOper: TWideStringField
      FieldName = 'Oper'
      Size = 50
    end
    object sql_akteDatError: TDateTimeField
      FieldName = 'DatError'
    end
    object sql_akteIndOps: TWideStringField
      FieldName = 'IndOps'
      Size = 6
    end
    object sql_akteSoder: TMemoField
      FieldName = 'Soder'
      BlobType = ftMemo
    end
    object sql_akteOtmetka: TIntegerField
      FieldName = 'Otmetka'
    end
    object sql_akteDataOtmetka: TDateTimeField
      FieldName = 'DataOtmetka'
    end
    object sql_akteSoderOtmetki: TMemoField
      FieldName = 'SoderOtmetki'
      BlobType = ftMemo
    end
    object sql_akteDokOtm: TWideStringField
      FieldName = 'DokOtm'
      Size = 50
    end
    object sql_akteFioOm: TWideStringField
      FieldName = 'FioOm'
      Size = 50
    end
    object sql_aktetiperror: TIntegerField
      FieldName = 'tiperror'
    end
    object sql_aktefioError: TWideStringField
      FieldName = 'fioError'
      Size = 50
    end
    object sql_akteTipFioError: TIntegerField
      FieldName = 'TipFioError'
    end
    object sql_aktePOSTINDEX: TWideStringField
      FieldName = 'POSTINDEX'
      Size = 6
    end
    object sql_akteOPSNAME: TWideStringField
      FieldName = 'OPSNAME'
      Size = 60
    end
    object sql_akteOPSTYPE: TWideStringField
      FieldName = 'OPSTYPE'
      Size = 50
    end
    object sql_akteOPSSUBM: TWideStringField
      FieldName = 'OPSSUBM'
      Size = 6
    end
    object sql_akteREGION: TWideStringField
      FieldName = 'REGION'
      Size = 60
    end
    object sql_akteAUTONOM: TWideStringField
      FieldName = 'AUTONOM'
      Size = 60
    end
    object sql_akteAREA: TWideStringField
      FieldName = 'AREA'
      Size = 60
    end
    object sql_akteCITY: TWideStringField
      FieldName = 'CITY'
      Size = 60
    end
    object sql_akteCITY_1: TWideStringField
      FieldName = 'CITY_1'
      Size = 60
    end
    object sql_akteACTDATE: TDateTimeField
      FieldName = 'ACTDATE'
    end
    object sql_akteINDEXOLD: TWideStringField
      FieldName = 'INDEXOLD'
      Size = 6
    end
  end
  object ImpSprav: TVKDBFNTX
    OEM = True
    SetDeleted = False
    FastPostRecord = False
    LookupOptions = []
    TrimInLocate = False
    TrimCType = False
    StorageType = pstFile
    AccessMode.AccessMode = 16
    AccessMode.OpenRead = True
    AccessMode.OpenWrite = False
    AccessMode.OpenReadWrite = False
    AccessMode.ShareExclusive = True
    AccessMode.ShareDenyWrite = False
    AccessMode.ShareDenyNone = False
    Crypt.Active = False
    Crypt.CryptMethod = cmNone
    BufferSize = 4096
    WaitBusyRes = 3000
    CreateNow = False
    DbfVersion = xBaseIII
    LobBlockSize = 512
    LockProtocol = lpClipperLock
    LobLockProtocol = lpClipperLock
    FoxTableFlag.TableFlag = 0
    FoxTableFlag.HasGotIndex = False
    FoxTableFlag.HasGotMemo = False
    FoxTableFlag.ItIsDatabase = False
    Left = 272
    Top = 56
  end
  object Ops_sprav: TADOTable
    Connection = BD
    TableName = 'Ops'
    Left = 272
    Top = 104
  end
  object sql_doklad_i: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, Dat1, Dat2, datcr from DokladRes')
    Left = 216
    Top = 576
    object sql_doklad_iid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object sql_doklad_iDat1: TDateTimeField
      FieldName = 'Dat1'
    end
    object sql_doklad_iDat2: TDateTimeField
      FieldName = 'Dat2'
    end
    object sql_doklad_idatcr: TDateTimeField
      FieldName = 'datcr'
    end
  end
  object Doklad: TADOTable
    Connection = BD
    TableName = 'DokladRes'
    Left = 280
    Top = 280
    object DokladId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object DokladDat1: TDateTimeField
      FieldName = 'Dat1'
    end
    object DokladDat2: TDateTimeField
      FieldName = 'Dat2'
    end
    object DokladDatCr: TDateTimeField
      FieldName = 'DatCr'
    end
    object DokladUserD: TWideStringField
      FieldName = 'UserD'
      Size = 50
    end
  end
  object sql_stat: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SprError.Id, SprError.NumError, SprError.TextError, Count' +
        '(*) AS Kol'
      
        'FROM (Gurnall Left Join SprError ON SprError.Id = Gurnall.tiperr' +
        'or)'
      'GROUP BY SprError.id, SprError.NumError, SprError.TextError'
      'ORDER BY SprError.NumError;')
    Left = 272
    Top = 576
  end
  object sql_stat_e: TDataSource
    DataSet = sql_stat
    Left = 312
    Top = 576
  end
  object sql_stat_ops: TADOQuery
    Connection = BD
    Parameters = <>
    Left = 272
    Top = 528
  end
  object sql_stat_ops_e: TDataSource
    DataSet = sql_stat_ops
    Left = 312
    Top = 528
  end
  object sql_stat_oper: TADOQuery
    Connection = BD
    Parameters = <>
    Left = 272
    Top = 616
  end
  object sql_stat_oper_e: TDataSource
    DataSet = sql_stat_oper
    Left = 312
    Top = 616
  end
  object sql_sprav: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    Left = 288
    Top = 368
  end
  object sql_exp: TADOQuery
    Connection = BD
    Parameters = <
      item
        Name = '[:d1]'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end
      item
        Name = '[:d2]'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end>
    SQL.Strings = (
      'select * from Reestr_Upd')
    Left = 288
    Top = 440
  end
end
