object Baza: TBaza
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 605
  Top = 115
  Height = 866
  Width = 1233
  object DB: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=a147258369W;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=MonetaGKH;Data Source=10.76.12.10' +
      '6'
    CursorLocation = clUseServer
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = DBAfterConnect
    BeforeConnect = DBBeforeConnect
    AfterDisconnect = DBAfterDisconnect
    BeforeDisconnect = DBBeforeDisconnect
    OnInfoMessage = DBInfoMessage
    OnExecuteComplete = DBExecuteComplete
    Left = 40
    Top = 16
  end
  object sql_user: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'Select * from SPR_USER SP Where SP.Status=0')
    Left = 40
    Top = 120
    object sql_userID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_userFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 100
    end
    object sql_userIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 100
    end
    object sql_userOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 100
    end
    object sql_userDOLGN: TWideStringField
      FieldName = 'DOLGN'
      FixedChar = True
      Size = 100
    end
    object sql_userPASSW: TWideStringField
      FieldName = 'PASSW'
      FixedChar = True
      Size = 255
    end
    object sql_userURDOST: TIntegerField
      FieldName = 'URDOST'
    end
    object sql_userDATCREAT: TDateTimeField
      FieldName = 'DATCREAT'
    end
    object sql_userSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sql_userDATCLOS: TDateTimeField
      FieldName = 'DATCLOS'
    end
  end
  object sql_user_avt: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'I'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'P'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      
        'Select ID,FM,IM,OT,URDOST,DOLGN,Status from SPR_USER SP Where SP' +
        '.ID=:I and SP.PASSW=:P')
    Left = 40
    Top = 168
    object sql_user_avtFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 100
    end
    object sql_user_avtIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 100
    end
    object sql_user_avtOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 100
    end
    object sql_user_avtURDOST: TIntegerField
      FieldName = 'URDOST'
    end
    object sql_user_avtID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_user_avtDOLGN: TWideStringField
      FieldName = 'DOLGN'
      FixedChar = True
      Size = 100
    end
    object sql_user_avtStatus: TIntegerField
      FieldName = 'Status'
    end
  end
  object Sql_UserView: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'Select * from SPR_USER SP where Status<2')
    Left = 40
    Top = 216
    object Sql_UserViewID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Sql_UserViewFM: TWideStringField
      FieldName = 'FM'
      OnGetText = Sql_UserViewFMGetText
      FixedChar = True
      Size = 100
    end
    object Sql_UserViewIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 100
    end
    object Sql_UserViewOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 100
    end
    object Sql_UserViewDOLGN: TWideStringField
      FieldName = 'DOLGN'
      FixedChar = True
      Size = 100
    end
    object Sql_UserViewPASSW: TWideStringField
      FieldName = 'PASSW'
      FixedChar = True
      Size = 255
    end
    object Sql_UserViewURDOST: TIntegerField
      FieldName = 'URDOST'
    end
    object Sql_UserViewDATCREAT: TDateTimeField
      FieldName = 'DATCREAT'
    end
    object Sql_UserViewSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object Sql_UserViewDATCLOS: TDateTimeField
      FieldName = 'DATCLOS'
    end
  end
  object Sql_UserViewE: TDataSource
    DataSet = Sql_UserView
    Left = 112
    Top = 216
  end
  object SP_USERS: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_USERS;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@FM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@IM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@OT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@DOLGN'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@PASSW'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@URD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@STATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 176
    Top = 216
  end
  object SQL_SYSTEM: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from SPR_SYSTEM S where S.STATUS=0 and S.IDPARAM=1')
    Left = 40
    Top = 72
    object SQL_SYSTEMID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_SYSTEMIDPARAM: TIntegerField
      FieldName = 'IDPARAM'
    end
    object SQL_SYSTEMIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      OnGetText = SQL_SYSTEMIDTYPEGetText
    end
    object SQL_SYSTEMNAMESPR: TWideStringField
      FieldName = 'NAMESPR'
      FixedChar = True
      Size = 30
    end
    object SQL_SYSTEMDATCR: TDateTimeField
      FieldName = 'DATCR'
    end
    object SQL_SYSTEMSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object SQL_SYSTEMDATCLOS: TDateTimeField
      FieldName = 'DATCLOS'
    end
    object SQL_SYSTEMOPISANIE: TWideStringField
      FieldName = 'OPISANIE'
      FixedChar = True
      Size = 255
    end
    object SQL_SYSTEMPARAMVALUE: TWideStringField
      FieldName = 'PARAMVALUE'
      FixedChar = True
      Size = 255
    end
  end
  object SQL_SYSTEM_E: TDataSource
    DataSet = SQL_SYSTEM
    Left = 112
    Top = 72
  end
  object SP_SYSTEM: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_SYSTEM;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDPARAM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDTYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@NAMESPR'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@SATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPISANIE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@PARAMVALUE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    Left = 176
    Top = 72
  end
  object SQL_OPS: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'IndUfps'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'IndPoct'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from SPR_OPS where IndUfps=:IndUfps and IndPoct=:IndPoc' +
        't')
    Left = 40
    Top = 312
    object SQL_OPSINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_OPSNAMEOPS: TWideStringField
      FieldName = 'NAMEOPS'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object SQL_OPSREGION: TWideStringField
      FieldName = 'REGION'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSAREA: TWideStringField
      FieldName = 'AREA'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_OPSINDPOCT: TWideStringField
      FieldName = 'INDPOCT'
      FixedChar = True
      Size = 6
    end
    object SQL_OPSNAMEPOCT: TWideStringField
      FieldName = 'NAMEPOCT'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSINDUFPS: TWideStringField
      FieldName = 'INDUFPS'
      FixedChar = True
      Size = 6
    end
    object SQL_OPSNAMEUFPS: TWideStringField
      FieldName = 'NAMEUFPS'
      FixedChar = True
      Size = 100
    end
    object SQL_OPSDATADD: TWideStringField
      FieldName = 'DATADD'
      Size = 10
    end
    object SQL_OPSDATASTATUS: TDateTimeField
      FieldName = 'DATASTATUS'
    end
    object SQL_OPSD01: TIntegerField
      FieldName = 'D01'
    end
    object SQL_OPSD02: TIntegerField
      FieldName = 'D02'
    end
    object SQL_OPSD03: TIntegerField
      FieldName = 'D03'
    end
    object SQL_OPSD04: TIntegerField
      FieldName = 'D04'
    end
    object SQL_OPSD05: TIntegerField
      FieldName = 'D05'
    end
    object SQL_OPSD06: TIntegerField
      FieldName = 'D06'
    end
    object SQL_OPSD07: TIntegerField
      FieldName = 'D07'
    end
    object SQL_OPSD08: TIntegerField
      FieldName = 'D08'
    end
    object SQL_OPSD09: TIntegerField
      FieldName = 'D09'
    end
    object SQL_OPSD10: TIntegerField
      FieldName = 'D10'
    end
    object SQL_OPSD11: TIntegerField
      FieldName = 'D11'
    end
    object SQL_OPSD12: TIntegerField
      FieldName = 'D12'
    end
    object SQL_OPSD13: TIntegerField
      FieldName = 'D13'
    end
    object SQL_OPSD14: TIntegerField
      FieldName = 'D14'
    end
    object SQL_OPSD15: TIntegerField
      FieldName = 'D15'
    end
    object SQL_OPSD16: TIntegerField
      FieldName = 'D16'
    end
    object SQL_OPSD17: TIntegerField
      FieldName = 'D17'
    end
    object SQL_OPSD18: TIntegerField
      FieldName = 'D18'
    end
    object SQL_OPSD19: TIntegerField
      FieldName = 'D19'
    end
    object SQL_OPSD20: TIntegerField
      FieldName = 'D20'
    end
    object SQL_OPSD21: TIntegerField
      FieldName = 'D21'
    end
    object SQL_OPSD22: TIntegerField
      FieldName = 'D22'
    end
    object SQL_OPSD23: TIntegerField
      FieldName = 'D23'
    end
    object SQL_OPSD24: TIntegerField
      FieldName = 'D24'
    end
    object SQL_OPSD25: TIntegerField
      FieldName = 'D25'
    end
    object SQL_OPSD26: TIntegerField
      FieldName = 'D26'
    end
    object SQL_OPSD27: TIntegerField
      FieldName = 'D27'
    end
    object SQL_OPSD28: TIntegerField
      FieldName = 'D28'
    end
    object SQL_OPSD29: TIntegerField
      FieldName = 'D29'
    end
    object SQL_OPSD30: TIntegerField
      FieldName = 'D30'
    end
    object SQL_OPSD31: TIntegerField
      FieldName = 'D31'
    end
  end
  object SQL_OPS_E: TDataSource
    DataSet = SQL_OPS
    Left = 176
    Top = 320
  end
  object SP_OPS: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_OPS;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@INDOPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@NAMEOPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@STATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@REGION'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@AREA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@CITY'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@STRIT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@DOM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@INDPOCT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@NAMEPOCT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@INDUFPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@NAMEUFPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 304
    Top = 304
  end
  object SQL_SETUP: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'P'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'Select PARAMVALUE from SPR_SYSTEM S where S.STATUS=0 and NAMESPR' +
        '=:P')
    Left = 40
    Top = 264
    object SQL_SETUPPARAMVALUE: TWideStringField
      FieldName = 'PARAMVALUE'
      FixedChar = True
      Size = 255
    end
  end
  object DBF: TVKDBFNTX
    OEM = True
    SetDeleted = False
    FastPostRecord = False
    LookupOptions = []
    TrimInLocate = False
    TrimCType = False
    StorageType = pstFile
    AccessMode.AccessMode = 2
    AccessMode.OpenRead = False
    AccessMode.OpenWrite = False
    AccessMode.OpenReadWrite = True
    AccessMode.ShareExclusive = False
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
    Left = 1104
    Top = 16
    DBFFieldDefs = <
      item
        FieldFlag.FieldFlag = 0
        FieldFlag.System = False
        FieldFlag.CanStoreNull = False
        FieldFlag.BinaryColumn = False
        FieldFlag.AutoIncrement = False
        Name = 'NLS'
        field_type = 'C'
        extend_type = dbftUndefined
        len = 20
        dec = 0
        NextAutoInc = 0
        NativeNextAutoInc = 1
        NativeStepAutoInc = 1
        Tag = 0
      end>
  end
  object SQL_DeliveryOpsSprav: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      
        'Select Distinct INDOPS from SPR_DELIVERY WHERE INDOPS IS NOT NUL' +
        'L ORDER BY INDOPS')
    Left = 40
    Top = 360
    object SQL_DeliveryOpsSpravINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
  end
  object SQL_DeliveryOpsSprav_e: TDataSource
    DataSet = SQL_DeliveryOpsSprav
    Left = 176
    Top = 360
  end
  object Sql_DeliveryAdresSprav: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Spr_Delivery Where INDOPS=:I')
    Left = 40
    Top = 408
    object Sql_DeliveryAdresSpravID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Sql_DeliveryAdresSpravINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object Sql_DeliveryAdresSpravCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object Sql_DeliveryAdresSpravSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object Sql_DeliveryAdresSpravDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object Sql_DeliveryAdresSpravKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object Sql_DeliveryAdresSpravDatDelyvery: TIntegerField
      FieldName = 'DatDelyvery'
    end
  end
  object Sql_DeliveryAdressE: TDataSource
    DataSet = Sql_DeliveryAdresSprav
    Left = 176
    Top = 416
  end
  object SQl_DeliveryAdresNotOps: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'Select * From Spr_Delivery Where INDOPS is null'
      'Order By CITY, STRIT,DOM,KORP')
    Left = 40
    Top = 456
    object SQl_DeliveryAdresNotOpsID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQl_DeliveryAdresNotOpsINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQl_DeliveryAdresNotOpsCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object SQl_DeliveryAdresNotOpsSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQl_DeliveryAdresNotOpsDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQl_DeliveryAdresNotOpsKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
  end
  object SQl_DeliveryAdresNotOpsE: TDataSource
    DataSet = SQl_DeliveryAdresNotOps
    Left = 176
    Top = 456
  end
  object SP_DELYVERY: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_DELIVERY;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@INDOPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@CITY'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@STRIT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@DOM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@KORP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@DATDELIV'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 40
    Top = 552
  end
  object SP_DELIDERY_CH: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_DELIVERY_CHEK;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CITY'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@STRIT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@DOM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@KORP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end>
    Left = 40
    Top = 600
  end
  object SP_FILIN_REG: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEIN_REG;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FILENAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@COLZ'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@SUMZ'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@IDUSR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 312
    Top = 525
  end
  object SQL_FILEIN: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '
      #9'F.ID,'
      #9'F.FILENAME,'
      ' '#9'F.COLZ,'
      #9'F.SUMZ,'
      #9'ST.IDSTATUS,'
      #9'ST.STATUSDATE,'
      #9'ST.STATUSUSER,'
      #9'F.DATALOAD'
      'from TAB_INPFILE F'
      #9'left join ('
      #9'select MAX(IDZ) IDZ,IDF,IDSTATUS,STATUSDATE,STATUSUSER '
      #9'from TAB_INPFILE_STATUS '
      #9'group by IDF,IDSTATUS,STATUSDATE,STATUSUSER'
      #9') as ST on ST.IDF=F.ID and ST.IDSTATUS=F.STATUS')
    Left = 312
    Top = 432
    object SQL_FILEINID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQL_FILEINFILENAME: TWideStringField
      FieldName = 'FILENAME'
      FixedChar = True
      Size = 50
    end
    object SQL_FILEINCOLZ: TLargeintField
      FieldName = 'COLZ'
    end
    object SQL_FILEINSUMZ: TBCDField
      FieldName = 'SUMZ'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_FILEINIDSTATUS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'IDSTATUS'
      OnGetText = SQL_FILEINIDSTATUSGetText
    end
    object SQL_FILEINSTATUSDATE: TDateTimeField
      FieldName = 'STATUSDATE'
    end
    object SQL_FILEINSTATUSUSER: TIntegerField
      FieldName = 'STATUSUSER'
    end
    object SQL_FILEINDATALOAD: TWideStringField
      FieldName = 'DATALOAD'
      Size = 10
    end
  end
  object SQL_FILEIN_E: TDataSource
    DataSet = SQL_FILEIN
    Left = 392
    Top = 432
  end
  object SP_MONETY_ADD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_MONETY_ADD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NLS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@ORG'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = '@MES'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2
        Value = Null
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@FM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@IM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@OT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@DTR'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@PSR'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@PNM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@SVZ'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@NSP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@ULC'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@DOM'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@KORP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@KVR'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@NPSU'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 11
        Value = Null
      end
      item
        Name = '@VYPL'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@SMVYP'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@IDFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDUSERLOAD'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 312
    Top = 676
  end
  object SP_FILEIN_UPD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEIN_UPD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDSTATUSFILE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 312
    Top = 572
  end
  object SQL_FILE_IT: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT COUNT(*) KOLF,SUM(F.COLZ) COLZ,SUM(F.SUMZ) SUMZ, ST.IDSTA' +
        'TUS FROM TAB_INPFILE F'
      
        'left join (select MAX(IDZ) IDZ,IDF,IDSTATUS from TAB_INPFILE_STA' +
        'TUS group by IDF,IDSTATUS,STATUSDATE,STATUSUSER) as ST on ST.IDF' +
        '=F.ID and ST.IDSTATUS=F.STATUS'
      'GROUP BY ST.IDSTATUS')
    Left = 312
    Top = 479
    object SQL_FILE_ITKOLF: TIntegerField
      FieldName = 'KOLF'
      ReadOnly = True
    end
    object SQL_FILE_ITCOLZ: TLargeintField
      FieldName = 'COLZ'
      ReadOnly = True
    end
    object SQL_FILE_ITSUMZ: TBCDField
      FieldName = 'SUMZ'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_FILE_ITIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
      OnGetText = SQL_FILE_ITIDSTATUSGetText
    end
  end
  object SQL_FILE_IT_E: TDataSource
    DataSet = SQL_FILE_IT
    Left = 392
    Top = 479
  end
  object SP_FILEIN_DEL: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEIN_DEL'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@RESCHEK'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 312
    Top = 620
  end
  object SQL_FIND: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM V_MONETY_ALL ORDER BY ID DESC')
    Left = 1032
    Top = 240
    object SQL_FINDID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_FINDNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_FINDORG: TWideStringField
      FieldName = 'ORG'
      FixedChar = True
      Size = 1
    end
    object SQL_FINDMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 2
    end
    object SQL_FINDGOD: TWideStringField
      FieldName = 'GOD'
      FixedChar = True
      Size = 4
    end
    object SQL_FINDFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_FINDIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_FINDOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_FINDDTR: TWideStringField
      FieldName = 'DTR'
      Size = 10
    end
    object SQL_FINDPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDSVZ: TWideStringField
      FieldName = 'SVZ'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_FINDCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object SQL_FINDSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQL_FINDDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDDatDelyvery: TIntegerField
      FieldName = 'DatDelyvery'
    end
    object SQL_FINDKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDNPSU: TWideStringField
      FieldName = 'NPSU'
      FixedChar = True
      Size = 11
    end
    object SQL_FINDVYPL: TWideStringField
      FieldName = 'VYPL'
      FixedChar = True
      Size = 100
    end
    object SQL_FINDSMVYP: TBCDField
      FieldName = 'SMVYP'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_FINDPAID: TIntegerField
      FieldName = 'PAID'
      OnGetText = SQL_FINDPAIDGetText
    end
    object SQL_FINDOPLAT: TWideStringField
      FieldName = 'OPLAT'
      FixedChar = True
      Size = 10
    end
    object SQL_FINDREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_FINDIDFILEINP: TLargeintField
      FieldName = 'IDFILEINP'
    end
    object SQL_FINDFILENAME: TWideStringField
      FieldName = 'FILENAME'
      FixedChar = True
      Size = 50
    end
    object SQL_FINDCOLZ: TLargeintField
      FieldName = 'COLZ'
    end
    object SQL_FINDSUMZ: TBCDField
      FieldName = 'SUMZ'
      Precision = 18
      Size = 2
    end
    object SQL_FINDIDUSERLOAD: TLargeintField
      FieldName = 'IDUSERLOAD'
    end
    object SQL_FINDSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object SQL_FINDLOADDATA: TDateTimeField
      FieldName = 'LOADDATA'
    end
    object SQL_FINDLOADUSERID: TLargeintField
      FieldName = 'LOADUSERID'
    end
    object SQL_FINDIDFILEOUT: TLargeintField
      FieldName = 'IDFILEOUT'
    end
    object SQL_FINDFILENAMEOUT: TWideStringField
      FieldName = 'FILENAMEOUT'
      FixedChar = True
      Size = 50
    end
    object SQL_FINDCOLEXP: TLargeintField
      FieldName = 'COLEXP'
    end
    object SQL_FINDSUNEXP: TBCDField
      FieldName = 'SUNEXP'
      Precision = 18
      Size = 2
    end
    object SQL_FINDIDUSEREXP: TLargeintField
      FieldName = 'IDUSEREXP'
    end
    object SQL_FINDSTATUSEXPFILE: TIntegerField
      FieldName = 'STATUSEXPFILE'
    end
    object SQL_FINDPAIDUSERID: TLargeintField
      FieldName = 'PAIDUSERID'
    end
    object SQL_FINDPAIDDATA: TDateTimeField
      FieldName = 'PAIDDATA'
    end
    object SQL_FINDIDLIST: TLargeintField
      FieldName = 'IDLIST'
    end
    object SQL_FINDNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
    object SQL_FINDDATLIST: TWideStringField
      FieldName = 'DATLIST'
      Size = 10
    end
    object SQL_FINDINDLIST: TWideStringField
      FieldName = 'INDLIST'
      FixedChar = True
      Size = 6
    end
    object SQL_FINDCOUNTLIST: TLargeintField
      FieldName = 'COUNTLIST'
    end
    object SQL_FINDSUMLIST: TBCDField
      FieldName = 'SUMLIST'
      Precision = 18
      Size = 2
    end
    object SQL_FINDUSERCREATID: TLargeintField
      FieldName = 'USERCREATID'
    end
    object SQL_FINDDATACREAT: TDateTimeField
      FieldName = 'DATACREAT'
    end
    object SQL_FINDPRINTY: TIntegerField
      FieldName = 'PRINTY'
    end
    object SQL_FINDDATPRINTY: TDateTimeField
      FieldName = 'DATPRINTY'
    end
    object SQL_FINDUSERPRINTID: TLargeintField
      FieldName = 'USERPRINTID'
    end
    object SQL_FINDSTATUSP: TIntegerField
      FieldName = 'STATUSP'
      OnGetText = SQL_FINDSTATUSPGetText
    end
    object SQL_FINDEXPDATA: TDateTimeField
      FieldName = 'EXPDATA'
    end
    object SQL_FINDEXPFILEID: TLargeintField
      FieldName = 'EXPFILEID'
    end
    object SQL_FINDOPISANIE: TWideStringField
      FieldName = 'OPISANIE'
      FixedChar = True
      Size = 255
    end
  end
  object SQL_FIND_E: TDataSource
    DataSet = SQL_FIND
    Left = 1072
    Top = 240
  end
  object SQL_PERIOD: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM V_MONETY_PERIOD')
    Left = 312
    Top = 64
    object SQL_PERIODMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 2
    end
    object SQL_PERIODGOD: TWideStringField
      FieldName = 'GOD'
      FixedChar = True
      Size = 4
    end
  end
  object SQL_CountNoList: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '* '
      'FROM '
      'V_NOLIST_COUNT')
    Left = 493
    Top = 268
    object SQL_CountNoListCOUNTNOLIST: TIntegerField
      FieldName = 'COUNTNOLIST'
      ReadOnly = True
    end
  end
  object SQL_NoList: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '* '
      'FROM'
      'V_MONETY_NOLIST')
    Left = 493
    Top = 372
    object SQL_NoListNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_NoListORG: TWideStringField
      FieldName = 'ORG'
      FixedChar = True
      Size = 1
    end
    object SQL_NoListMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 2
    end
    object SQL_NoListGOD: TWideStringField
      FieldName = 'GOD'
      FixedChar = True
      Size = 4
    end
    object SQL_NoListFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_NoListIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_NoListOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_NoListDTR: TWideStringField
      FieldName = 'DTR'
      Size = 10
    end
    object SQL_NoListPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListSVZ: TWideStringField
      FieldName = 'SVZ'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_NoListCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object SQL_NoListSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQL_NoListDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListDatDelyvery: TIntegerField
      FieldName = 'DatDelyvery'
    end
    object SQL_NoListKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListNPSU: TWideStringField
      FieldName = 'NPSU'
      FixedChar = True
      Size = 11
    end
    object SQL_NoListVYPL: TWideStringField
      FieldName = 'VYPL'
      FixedChar = True
      Size = 100
    end
    object SQL_NoListSMVYP: TBCDField
      FieldName = 'SMVYP'
      Precision = 18
      Size = 2
    end
    object SQL_NoListPAID: TIntegerField
      FieldName = 'PAID'
    end
    object SQL_NoListOPLAT: TWideStringField
      FieldName = 'OPLAT'
      FixedChar = True
      Size = 10
    end
    object SQL_NoListREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_NoListLISTID: TLargeintField
      FieldName = 'LISTID'
    end
    object SQL_NoListSTATUSP: TIntegerField
      FieldName = 'STATUSP'
    end
  end
  object SQL_NoList_E: TDataSource
    DataSet = SQL_NoList
    Left = 557
    Top = 372
  end
  object SQL_CountNoList_E: TDataSource
    DataSet = SQL_CountNoList
    Left = 541
    Top = 268
  end
  object SQL_NOLIST_OPS: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM '
      '   V_NOLIST_OPS')
    Left = 493
    Top = 324
    object SQL_NOLIST_OPSINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
  end
  object SP_LIST_ADD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_ADD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 493
    Top = 420
  end
  object SQL_LIST_1: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TAB_LIST TL '
      'LEFT JOIN ( '
      'SELECT MAX(LS.ID) ID,LS.IDLIST,LS.IDSTATUS '
      'FROM TAB_LIST_STATUS LS GROUP BY LS.IDLIST,LS.IDSTATUS '
      ') as TLS on TLS.IDLIST=TL.ID and TLS.IDSTATUS=TL.STATUSL')
    Left = 502
    Top = 559
  end
  object SQL_LIST_E: TDataSource
    DataSet = SQL_LIST
    Left = 562
    Top = 511
  end
  object SQL_LIST_LS: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'I'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'ID,'
      'NLS,'
      'FM,'
      'IM,'
      'OT,'
      'STRIT,'
      'DOM,'
      'KORP,'
      'SMVYP,'
      'STATUSP,'
      'REASON,'
      'KVR,'
      'PSR,'
      'PNM'
      'FROM V_MONETY_LIST T WHERE T.LISTID=:I')
    Left = 499
    Top = 656
    object SQL_LIST_LSNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_LIST_LSFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LSSMVYP: TBCDField
      FieldName = 'SMVYP'
      Precision = 18
      Size = 2
    end
    object SQL_LIST_LSIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LSSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQL_LIST_LSDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LSKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LSOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LSID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_LIST_LSSTATUSP: TIntegerField
      FieldName = 'STATUSP'
    end
    object SQL_LIST_LSREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_LIST_LSKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LSPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LSPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
  end
  object SQL_LIST_LS_E: TDataSource
    DataSet = SQL_LIST_LS
    Left = 565
    Top = 655
  end
  object SP_LIST_UPD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_UPD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDLIST'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDSTATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 498
    Top = 466
  end
  object SQL_SPR_NO_DELIVERY: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from V_SPR_NODELIV')
    Left = 40
    Top = 504
    object SQL_SPR_NO_DELIVERYIDPARAM: TIntegerField
      FieldName = 'IDPARAM'
    end
    object SQL_SPR_NO_DELIVERYNAMESPR: TWideStringField
      FieldName = 'NAMESPR'
      FixedChar = True
      Size = 30
    end
    object SQL_SPR_NO_DELIVERYOPISANIE: TWideStringField
      FieldName = 'OPISANIE'
      FixedChar = True
      Size = 255
    end
    object SQL_SPR_NO_DELIVERYPARAMVALUE: TWideStringField
      FieldName = 'PARAMVALUE'
      FixedChar = True
      Size = 255
    end
    object SQL_SPR_NO_DELIVERYSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object SQL_SPR_NO_DELIVERYDEF: TIntegerField
      FieldName = 'DEF'
    end
  end
  object SP_MONETY_UPD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_MONETY_UPD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDMONETY'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDSTATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDPAY'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDREASON'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@EXPFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 496
    Top = 707
  end
  object SP_FILEOUT_NUM: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_GETNUM'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NumOut'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@MES'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@ORG'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@CHEK'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 872
    Top = 240
  end
  object SP_FILEOUT_ADD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_ADD;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FILENUM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FILENAME'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 15
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFO'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 912
    Top = 240
  end
  object SQL_FILEOUT: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TAB_OUTFILE')
    Left = 872
    Top = 288
    object SQL_FILEOUTID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQL_FILEOUTFILENAME: TWideStringField
      FieldName = 'FILENAME'
      FixedChar = True
      Size = 50
    end
    object SQL_FILEOUTCOLZ: TLargeintField
      FieldName = 'COLZ'
    end
    object SQL_FILEOUTSUMZ: TBCDField
      FieldName = 'SUMZ'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_FILEOUTIDUSEREXP: TLargeintField
      FieldName = 'IDUSEREXP'
    end
    object SQL_FILEOUTDATAEXP: TWideStringField
      FieldName = 'DATAEXP'
      Size = 10
    end
    object SQL_FILEOUTTIMEEXP: TWideStringField
      FieldName = 'TIMEEXP'
      Size = 16
    end
    object SQL_FILEOUTSTATUS: TIntegerField
      FieldName = 'STATUS'
      OnGetText = SQL_FILEOUTSTATUSGetText
    end
    object SQL_FILEOUTDATAOUT: TDateTimeField
      FieldName = 'DATAOUT'
    end
    object SQL_FILEOUTNumFile: TIntegerField
      FieldName = 'NumFile'
    end
    object SQL_FILEOUTGodFile: TIntegerField
      FieldName = 'GodFile'
    end
    object SQL_FILEOUTMesFile: TIntegerField
      FieldName = 'MesFile'
    end
    object SQL_FILEOUTCOLPAY: TIntegerField
      FieldName = 'COLPAY'
    end
    object SQL_FILEOUTSUMPAY: TBCDField
      FieldName = 'SUMPAY'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_FILEOUTCOLNOPAY: TIntegerField
      FieldName = 'COLNOPAY'
    end
    object SQL_FILEOUTSUMNOPAY: TBCDField
      FieldName = 'SUMNOPAY'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object SQL_FILEOUT_E: TDataSource
    DataSet = SQL_FILEOUT
    Left = 912
    Top = 288
  end
  object SQL_FILE_EXP: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'I'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select * From V_MONETY_EXPORT where EXPFILEID = :I'
      '')
    Left = 872
    Top = 336
    object SQL_FILE_EXPNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_FILE_EXPORG: TWideStringField
      FieldName = 'ORG'
      FixedChar = True
      Size = 1
    end
    object SQL_FILE_EXPMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 2
    end
    object SQL_FILE_EXPGOD: TWideStringField
      FieldName = 'GOD'
      FixedChar = True
      Size = 4
    end
    object SQL_FILE_EXPFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_FILE_EXPIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_FILE_EXPOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_FILE_EXPDTR: TWideStringField
      FieldName = 'DTR'
      Size = 10
    end
    object SQL_FILE_EXPPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPSVZ: TWideStringField
      FieldName = 'SVZ'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPNSP: TWideStringField
      FieldName = 'NSP'
      FixedChar = True
      Size = 100
    end
    object SQL_FILE_EXPULC: TWideStringField
      FieldName = 'ULC'
      FixedChar = True
      Size = 100
    end
    object SQL_FILE_EXPDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SQL_FILE_EXPNPSU: TWideStringField
      FieldName = 'NPSU'
      FixedChar = True
      Size = 11
    end
    object SQL_FILE_EXPVYPL: TWideStringField
      FieldName = 'VYPL'
      FixedChar = True
      Size = 100
    end
    object SQL_FILE_EXPSMVYP: TBCDField
      FieldName = 'SMVYP'
      Precision = 18
      Size = 2
    end
    object SQL_FILE_EXPPAID: TIntegerField
      FieldName = 'PAID'
    end
    object SQL_FILE_EXPOPLAT: TWideStringField
      FieldName = 'OPLAT'
      FixedChar = True
      Size = 255
    end
    object SQL_FILE_EXPREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_FILE_EXPEXPFILEID: TLargeintField
      FieldName = 'EXPFILEID'
    end
  end
  object SP_SPR_FIELD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FIELDS;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NAMPAV'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FIELDIMP'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@FIELDEXP'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 920
    Top = 336
  end
  object SP_FILEOUT_UPD: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_UPD'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDSTATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 872
    Top = 384
  end
  object SP_FIND_NOPAY: TADOStoredProc
    Connection = DB
    CursorType = ctStatic
    ProcedureName = 'SP_FIND_NOPAY'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NUMLS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end>
    Left = 504
    Top = 607
    object SP_FIND_NOPAYID: TLargeintField
      FieldName = 'ID'
    end
    object SP_FIND_NOPAYFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SP_FIND_NOPAYIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SP_FIND_NOPAYOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SP_FIND_NOPAYINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SP_FIND_NOPAYCITY: TWideStringField
      FieldName = 'CITY'
      FixedChar = True
      Size = 100
    end
    object SP_FIND_NOPAYSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SP_FIND_NOPAYDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SP_FIND_NOPAYKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SP_FIND_NOPAYKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SP_FIND_NOPAYPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SP_FIND_NOPAYPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
    object SP_FIND_NOPAYNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
    object SP_FIND_NOPAYSMVYP: TBCDField
      FieldName = 'SMVYP'
      currency = True
      Precision = 18
      Size = 2
    end
    object SP_FIND_NOPAYNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
  end
  object SP_FIND_NOPAY_E: TDataSource
    DataSet = SP_FIND_NOPAY
    Left = 563
    Top = 607
  end
  object SP_LIST_ITOGI: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_ITOGI'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDLIST'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@COLZ'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@SUMZ'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@COLPAY'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@SUMPAY'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@COLNOPAY'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@SUMNOPAY'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        NumericScale = 2
        Precision = 18
        Value = Null
      end>
    Left = 688
    Top = 368
  end
  object SQL_REESTR_YAR: TADOQuery
    Connection = DB
    Parameters = <>
    SQL.Strings = (
      'Select GOD From Tab_List Group By GOD')
    Left = 1064
    Top = 376
    object SQL_REESTR_YARGOD: TIntegerField
      FieldName = 'GOD'
    end
  end
  object SQL_REESTR_MES: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'G'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select DISTINCT MES from Tab_list Where GOD=:G Order By MES')
    Left = 1104
    Top = 376
    object SQL_REESTR_MESMES: TIntegerField
      FieldName = 'MES'
    end
  end
  object SQL_REESTR_OPS: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'G'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'M'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'I'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'Select * from TAB_LIST T WHERE T.GOD=:G and Mes=:M and INDOPS=:I' +
        ' and T.PRINTY>0 and STATUSL=2')
    Left = 1144
    Top = 376
    object SQL_REESTR_OPSID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQL_REESTR_OPSNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
      OnGetText = SQL_REESTR_OPSNUMLISTGetText
    end
    object SQL_REESTR_OPSDATLIST: TWideStringField
      FieldName = 'DATLIST'
      Size = 10
    end
    object SQL_REESTR_OPSINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_REESTR_OPSCOUNTLIST: TLargeintField
      FieldName = 'COUNTLIST'
    end
    object SQL_REESTR_OPSSUMLIST: TBCDField
      FieldName = 'SUMLIST'
      Precision = 18
      Size = 2
    end
    object SQL_REESTR_OPSUSERCREATID: TLargeintField
      FieldName = 'USERCREATID'
    end
    object SQL_REESTR_OPSDATACREAT: TDateTimeField
      FieldName = 'DATACREAT'
    end
    object SQL_REESTR_OPSPRINTY: TIntegerField
      FieldName = 'PRINTY'
    end
    object SQL_REESTR_OPSDATPRINTY: TDateTimeField
      FieldName = 'DATPRINTY'
    end
    object SQL_REESTR_OPSUSERPRINTID: TLargeintField
      FieldName = 'USERPRINTID'
    end
    object SQL_REESTR_OPSMES: TIntegerField
      FieldName = 'MES'
      OnGetText = SQL_REESTR_OPSMESGetText
    end
    object SQL_REESTR_OPSGOD: TIntegerField
      FieldName = 'GOD'
    end
    object SQL_REESTR_OPSSTSTUSL: TIntegerField
      FieldName = 'STSTUSL'
    end
    object SQL_REESTR_OPSSTATUSL: TIntegerField
      FieldName = 'STATUSL'
    end
  end
  object SP_STATEMENT: TADOStoredProc
    Connection = DB
    CursorType = ctStatic
    ProcedureName = 'SP_STATEMENT;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MES'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@INDOPS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end>
    Left = 1064
    Top = 424
    object SP_STATEMENTCounts: TIntegerField
      FieldName = 'Counts'
      ReadOnly = True
    end
    object SP_STATEMENTColList: TIntegerField
      FieldName = 'ColList'
      ReadOnly = True
    end
    object SP_STATEMENTSumList: TBCDField
      FieldName = 'SumList'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object SP_STATEMENTDolgn: TWideStringField
      FieldName = 'Dolgn'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_STATEMENTFio: TWideStringField
      FieldName = 'Fio'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object SP_STATEMENTINPOCT: TWideStringField
      FieldName = 'INPOCT'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object SP_STATEMENTPOCT: TWideStringField
      FieldName = 'POCT'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
  end
  object SP_STATEMENT_E: TDataSource
    DataSet = SP_STATEMENT
    Left = 1104
    Top = 424
  end
  object SQL_REESTR_OPS_LIST: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'GOD'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MES'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select INDOPS from TAB_LIST where GOD=:GOD and MES=:MES and PRIN' +
        'TY>=1 and STATUSL=2 GROUP BY INDOPS')
    Left = 1056
    Top = 472
    object SQL_REESTR_OPS_LISTINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
  end
  object SP_LIST_PRNP: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_PRINTPAR'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IDLIST'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end>
    Left = 784
    Top = 296
    object SP_LIST_PRNPOPS: TWideStringField
      FieldName = 'OPS'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object SP_LIST_PRNPGOD: TWideStringField
      FieldName = 'GOD'
      ReadOnly = True
      FixedChar = True
      Size = 4
    end
    object SP_LIST_PRNPMES: TWideStringField
      FieldName = 'MES'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object SP_LIST_PRNPColList: TIntegerField
      FieldName = 'ColList'
      ReadOnly = True
    end
    object SP_LIST_PRNPSumList: TBCDField
      FieldName = 'SumList'
      ReadOnly = True
      DisplayFormat = '00.00'
      Precision = 18
      Size = 2
    end
    object SP_LIST_PRNPDolgn: TWideStringField
      FieldName = 'Dolgn'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPFIO: TWideStringField
      FieldName = 'FIO'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object SP_LIST_PRNPINPOCT: TWideStringField
      FieldName = 'INPOCT'
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
    object SP_LIST_PRNPPOCT: TWideStringField
      FieldName = 'POCT'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPMonetyBos: TWideStringField
      FieldName = 'MonetyBos'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPMonetyBosFio: TWideStringField
      FieldName = 'MonetyBosFio'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPFromPaymentOrg: TWideStringField
      FieldName = 'FromPaymentOrg'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPNamePayment: TWideStringField
      FieldName = 'NamePayment'
      ReadOnly = True
      FixedChar = True
      Size = 50
    end
    object SP_LIST_PRNPDatDelyvery: TWideStringField
      FieldName = 'DatDelyvery'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object SP_LIST_PRNPCITY: TWideStringField
      FieldName = 'CITY'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object SP_LIST_PRNPSTRIT: TWideStringField
      FieldName = 'STRIT'
      ReadOnly = True
      FixedChar = True
      Size = 100
    end
    object SP_LIST_PRNPDOM: TWideStringField
      FieldName = 'DOM'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object SP_LIST_PRNPKORP: TWideStringField
      FieldName = 'KORP'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object SP_LIST_PRNPMES1: TWideStringField
      FieldName = 'MES1'
      ReadOnly = True
      FixedChar = True
      Size = 15
    end
    object SP_LIST_PRNPNumlist: TIntegerField
      FieldName = 'Numlist'
      ReadOnly = True
    end
    object SP_LIST_PRNPDAtList: TWideStringField
      FieldName = 'DAtList'
      ReadOnly = True
      Size = 10
    end
  end
  object SQL_LIST_LS_PRN: TADOQuery
    Connection = DB
    Parameters = <
      item
        Name = 'I'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SET LANGUAGE russian;'
      'SELECT '
      'ID,'
      'RTRIM(LTRIM(NLS)) NLS, '
      'RTRIM(LTRIM(FM)) FM,'
      'RTRIM(LTRIM(IM)) IM,'
      'RTRIM(LTRIM(OT)) OT,'
      'RTRIM(LTRIM(STRIT)) STRIT,'
      'RTRIM(LTRIM(DOM)) DOM,'
      'RTRIM(LTRIM(KORP)) KORP,'
      'SMVYP,'
      'STATUSP,'
      'REASON,'
      'RTRIM(LTRIM(KVR)) KVR,'
      'RTRIM(LTRIM(PSR)) PSR,'
      'RTRIM(LTRIM(PNM)) PNM'
      'FROM V_MONETY_LIST T WHERE T.LISTID=:I'
      'ORDER BY KVR')
    Left = 682
    Top = 319
    object SQL_LIST_LS_PRNID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_LIST_LS_PRNNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_LIST_LS_PRNFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LS_PRNIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LS_PRNOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_LIST_LS_PRNSTRIT: TWideStringField
      FieldName = 'STRIT'
      FixedChar = True
      Size = 100
    end
    object SQL_LIST_LS_PRNDOM: TWideStringField
      FieldName = 'DOM'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LS_PRNKORP: TWideStringField
      FieldName = 'KORP'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LS_PRNSMVYP: TBCDField
      FieldName = 'SMVYP'
      Precision = 18
      Size = 2
    end
    object SQL_LIST_LS_PRNSTATUSP: TIntegerField
      FieldName = 'STATUSP'
    end
    object SQL_LIST_LS_PRNREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_LIST_LS_PRNKVR: TWideStringField
      FieldName = 'KVR'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LS_PRNPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_LIST_LS_PRNPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
  end
  object SQL_LIST_PRNM: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '  TL.ID,'
      '  TL.INDOPS,'
      '  TL.NUMLIST '
      'FROM TAB_LIST TL '
      'LEFT JOIN ('
      
        'SELECT MAX(LS.ID) ID,LS.IDLIST, LS.IDSTATUS FROM TAB_LIST_STATUS' +
        ' LS GROUP BY LS.IDLIST,LS.IDSTATUS '
      ') as TLS on TLS.IDLIST=TL.ID and TLS.IDSTATUS=TL.STATUSL'
      'WHERE IDSTATUS IN (1)'
      'ORDER BY TL.INDOPS,TL.NUMLIST ')
    Left = 680
    Top = 264
    object SQL_LIST_PRNMID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQL_LIST_PRNMINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_LIST_PRNMNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
  end
  object SP_CHEK: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_CHEK'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PARAM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@CHEK'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = 0
      end>
    Left = 312
    Top = 120
  end
  object SP_REP: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_REP'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPSI'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@TYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 688
    Top = 480
    object SP_REPINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SP_REPKolListAll: TIntegerField
      FieldName = 'KolListAll'
    end
    object SP_REPKolAll: TIntegerField
      FieldName = 'KolAll'
    end
    object SP_REPSumAll: TBCDField
      FieldName = 'SumAll'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SP_REPKolListPay: TIntegerField
      FieldName = 'KolListPay'
    end
    object SP_REPKolPay: TIntegerField
      FieldName = 'KolPay'
    end
    object SP_REPSumPay: TBCDField
      FieldName = 'SumPay'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SP_REPKolListNoPay: TIntegerField
      FieldName = 'KolListNoPay'
    end
    object SP_REPKolNoPay: TLargeintField
      FieldName = 'KolNoPay'
    end
    object SP_REPSumNoPay: TBCDField
      FieldName = 'SumNoPay'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SP_REPGod: TIntegerField
      FieldName = 'God'
    end
    object SP_REPMes: TIntegerField
      FieldName = 'Mes'
    end
  end
  object SQL_REP_PER: TADOQuery
    Connection = DB
    Parameters = <>
    Left = 688
    Top = 424
  end
  object SP_REP_ITOGI: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_REP_ITOGI'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPSI'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@TYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 688
    Top = 528
    object SP_REP_ITOGIColListAll: TIntegerField
      FieldName = 'ColListAll'
      ReadOnly = True
    end
    object SP_REP_ITOGIColAll: TIntegerField
      FieldName = 'ColAll'
      ReadOnly = True
    end
    object SP_REP_ITOGISumAll: TBCDField
      FieldName = 'SumAll'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SP_REP_ITOGICountPayList: TIntegerField
      FieldName = 'CountPayList'
      ReadOnly = True
    end
    object SP_REP_ITOGIColPay: TIntegerField
      FieldName = 'ColPay'
      ReadOnly = True
    end
    object SP_REP_ITOGISumPay: TBCDField
      FieldName = 'SumPay'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SP_REP_ITOGICountNoPayList: TIntegerField
      FieldName = 'CountNoPayList'
      ReadOnly = True
    end
    object SP_REP_ITOGIColNoPay: TIntegerField
      FieldName = 'ColNoPay'
      ReadOnly = True
    end
    object SP_REP_ITOGISumNoPay: TBCDField
      FieldName = 'SumNoPay'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
  end
  object SQL_LIST: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from V_LIST_ALL')
    Left = 498
    Top = 511
    object SQL_LISTID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_LISTINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_LISTNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
    object SQL_LISTCOUNTLIST: TLargeintField
      FieldName = 'COUNTLIST'
    end
    object SQL_LISTSUMLIST: TBCDField
      FieldName = 'SUMLIST'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_LISTColPay: TIntegerField
      FieldName = 'ColPay'
      ReadOnly = True
    end
    object SQL_LISTSumPay: TBCDField
      FieldName = 'SumPay'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object SQL_LISTCountNoPay: TIntegerField
      FieldName = 'CountNoPay'
      ReadOnly = True
    end
    object SQL_LISTSumNoPay: TBCDField
      FieldName = 'SumNoPay'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 2
    end
    object SQL_LISTMES: TIntegerField
      FieldName = 'MES'
    end
    object SQL_LISTGOD: TIntegerField
      FieldName = 'GOD'
    end
    object SQL_LISTSTATUSL: TIntegerField
      FieldName = 'STATUSL'
    end
    object SQL_LISTDATLIST: TWideStringField
      FieldName = 'DATLIST'
      Size = 10
    end
    object SQL_LISTDATACREAT: TDateTimeField
      FieldName = 'DATACREAT'
    end
    object SQL_LISTFM_CREAT: TWideStringField
      FieldName = 'FM_CREAT'
      FixedChar = True
      Size = 100
    end
    object SQL_LISTDATPRINTY: TDateTimeField
      FieldName = 'DATPRINTY'
    end
    object SQL_LISTFM_PRN: TWideStringField
      FieldName = 'FM_PRN'
      FixedChar = True
      Size = 100
    end
    object SQL_LISTDATASTATUS: TDateTimeField
      FieldName = 'DATASTATUS'
      ReadOnly = True
    end
    object SQL_LISTIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
      ReadOnly = True
      OnGetText = SQL_LISTIDSTATUSGetText
    end
    object SQL_LISTFM_STATUS: TWideStringField
      FieldName = 'FM_STATUS'
      FixedChar = True
      Size = 100
    end
    object SQL_LISTPRINTY: TIntegerField
      FieldName = 'PRINTY'
    end
  end
  object SP_SPRAV_LS: TADOStoredProc
    Connection = DB
    CursorType = ctStatic
    ProcedureName = 'SP_SPRAV_LS'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@NumLS'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 1040
    Top = 288
    object SP_SPRAV_LSNumSprav: TLargeintField
      FieldName = 'NumSprav'
      ReadOnly = True
    end
    object SP_SPRAV_LSDolgn: TWideStringField
      FieldName = 'Dolgn'
      ReadOnly = True
      Size = 50
    end
    object SP_SPRAV_LSFIO: TWideStringField
      FieldName = 'FIO'
      ReadOnly = True
      Size = 30
    end
    object SP_SPRAV_LSINPOCT: TWideStringField
      FieldName = 'INPOCT'
      ReadOnly = True
      Size = 6
    end
    object SP_SPRAV_LSPOCT: TWideStringField
      FieldName = 'POCT'
      ReadOnly = True
      Size = 50
    end
    object SP_SPRAV_LSMonetyBos: TWideStringField
      FieldName = 'MonetyBos'
      ReadOnly = True
      Size = 50
    end
    object SP_SPRAV_LSMonetyBosFio: TWideStringField
      FieldName = 'MonetyBosFio'
      ReadOnly = True
      Size = 50
    end
    object SP_SPRAV_LSOper: TWideStringField
      FieldName = 'Oper'
      ReadOnly = True
      Size = 50
    end
    object SP_SPRAV_LSOperFio: TWideStringField
      FieldName = 'OperFio'
      ReadOnly = True
      Size = 50
    end
  end
  object SP_WORK: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_WORK'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@NameArm'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = Null
      end
      item
        Name = '@NameUser'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 60
        Value = Null
      end
      item
        Name = '@IdUser'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@Regimstr'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end>
    Left = 384
    Top = 120
  end
  object sql_work_log: TADOQuery
    Connection = DB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TAB_WORK TU'
      'Left Join SPR_USER SU on SU.ID=TU.IDUSER')
    Left = 384
    Top = 64
    object sql_work_logID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sql_work_logIDUSER: TIntegerField
      FieldName = 'IDUSER'
    end
    object sql_work_logREGIM: TIntegerField
      FieldName = 'REGIM'
    end
    object sql_work_logDATAREGIM: TDateTimeField
      FieldName = 'DATAREGIM'
    end
    object sql_work_logSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object sql_work_logDATAREGIMSTOP: TDateTimeField
      FieldName = 'DATAREGIMSTOP'
    end
    object sql_work_logNAMEARM: TWideStringField
      FieldName = 'NAMEARM'
      FixedChar = True
      Size = 30
    end
    object sql_work_logNAMEUSERS: TWideStringField
      FieldName = 'NAMEUSERS'
      FixedChar = True
      Size = 60
    end
    object sql_work_logREGIMSTR: TWideStringField
      FieldName = 'REGIMSTR'
      FixedChar = True
      Size = 1000
    end
    object sql_work_logID_1: TLargeintField
      FieldName = 'ID_1'
      ReadOnly = True
    end
    object sql_work_logFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 100
    end
    object sql_work_logIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 100
    end
    object sql_work_logOT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 100
    end
    object sql_work_logDOLGN: TWideStringField
      FieldName = 'DOLGN'
      FixedChar = True
      Size = 100
    end
    object sql_work_logPASSW: TWideStringField
      FieldName = 'PASSW'
      FixedChar = True
      Size = 255
    end
    object sql_work_logURDOST: TIntegerField
      FieldName = 'URDOST'
    end
    object sql_work_logDATCREAT: TDateTimeField
      FieldName = 'DATCREAT'
    end
    object sql_work_logSTATUS_1: TIntegerField
      FieldName = 'STATUS_1'
    end
    object sql_work_logDATCLOS: TDateTimeField
      FieldName = 'DATCLOS'
    end
  end
  object sql_work_log_e: TDataSource
    DataSet = sql_work_log
    Left = 456
    Top = 64
  end
  object SQL_Rezerv: TADOQuery
    Connection = DB
    CursorLocation = clUseServer
    Parameters = <>
    Left = 528
    Top = 64
  end
  object SP_FILEOUT_CHEK: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_CHEK'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@TYPEEXPORT'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 872
    Top = 440
  end
  object SP_FILEOUT_ADD_2: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_ADD_2'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFO'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 872
    Top = 488
  end
  object SP_FILEOUT_UPD_2: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_FILEOUT_UPD_2'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDFILE'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDSTATUS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CONTROL'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 864
    Top = 544
  end
  object SP_ReIndex: TADOStoredProc
    Connection = DB
    OnFetchComplete = SP_ReIndexFetchComplete
    OnFetchProgress = SP_ReIndexFetchProgress
    ProcedureName = 'SP_ReIndex'
    Parameters = <>
    Left = 528
    Top = 128
  end
  object SP_LIST_TYP: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_TYP'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@TypOut'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 688
    Top = 624
  end
  object SP_LIST_RET: TADOStoredProc
    Connection = DB
    ProcedureName = 'SP_LIST_RET'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IDLIST'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@IDUSER'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 584
    Top = 432
  end
end
