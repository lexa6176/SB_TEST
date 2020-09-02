object Baza: TBaza
  OldCreateOrder = False
  Left = 1047
  Top = 112
  Height = 611
  Width = 215
  object BD: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=a147258369W;Persist Security Info=T' +
      'rue;User ID=sa;Initial Catalog=ADDRPOST_R96;Data Source=10.76.8.' +
      '106'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = BDAfterConnect
    OnDisconnect = BDDisconnect
    OnInfoMessage = BDInfoMessage
    Left = 24
    Top = 16
  end
  object SQL_REGION: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '  R.NAME,  '
      '  A.NAME as RTYPE'
      'from Region R'
      'Left Join AddrType A on A.ID=R.AddrTypeID')
    Left = 24
    Top = 64
  end
  object SQL_CYTI: TADOQuery
    Connection = BD
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 24
    Top = 120
  end
  object SQL_CITY_T: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '
      ' P.ID,'
      ' P.NAME,'
      ' A1.NAME As PTYPE ,'
      ' P1.NAME As NAME2,'
      ' A2.NAME As PTYPE2 ,'
      ' D.NAME  As District,'
      ' A3.NAME As DTYPE'
      'from PLACE P'
      '  Left Join AddrType A1 on A1.ID=P.AddrTypeID'
      '  Left Join PLACE  P1 on P1.ID=P.PID'
      '  Left Join AddrType A2 on A2.ID=P1.AddrTypeID'
      '  Left Join District D on D.ID=P.DistrictID'
      '  Left Join AddrType A3 on A3.ID=D.AddrTypeID')
    Left = 72
    Top = 120
    object SQL_CITY_TID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_CITY_TNAME: TStringField
      FieldName = 'NAME'
      OnGetText = SQL_CITY_TNAMEGetText
      Size = 200
    end
    object SQL_CITY_TPTYPE: TStringField
      FieldName = 'PTYPE'
      Size = 200
    end
    object SQL_CITY_TNAME2: TStringField
      FieldName = 'NAME2'
      Size = 200
    end
    object SQL_CITY_TPTYPE2: TStringField
      FieldName = 'PTYPE2'
      Size = 200
    end
    object SQL_CITY_TDistrict: TStringField
      FieldName = 'District'
      Size = 200
    end
    object SQL_CITY_TDTYPE: TStringField
      FieldName = 'DTYPE'
      Size = 200
    end
  end
  object SQL_CITY_T_E: TDataSource
    DataSet = SQL_CITY_T
    Left = 120
    Top = 120
  end
  object SQL_STREET: TADOQuery
    Connection = BD
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 24
    Top = 176
  end
  object SQL_STREET_T: TADOQuery
    Connection = BD
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '
      'S.ID,'
      'S.NAME, '
      'A1.NAME as STYPE '
      'from Street S'
      'left join AddrType A1 on A1.ID=S.AddrTypeID')
    Left = 72
    Top = 176
    object SQL_STREET_TID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_STREET_TNAME: TStringField
      FieldName = 'NAME'
      OnGetText = SQL_STREET_TNAMEGetText
      Size = 200
    end
    object SQL_STREET_TSTYPE: TStringField
      FieldName = 'STYPE'
      Size = 200
    end
  end
  object SQL_STREET_T_E: TDataSource
    DataSet = SQL_STREET_T
    Left = 120
    Top = 176
  end
  object SQL_BILD: TADOQuery
    Connection = BD
    Parameters = <>
    Left = 24
    Top = 232
  end
  object SQL_FIND_IND: TADOQuery
    Connection = BD
    Parameters = <>
    Left = 24
    Top = 288
  end
  object SQL_PO: TADOQuery
    Connection = BD
    Parameters = <
      item
        Name = 'P'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from PostOffice where POSTINDEX=:P')
    Left = 24
    Top = 344
    object SQL_POID: TIntegerField
      FieldName = 'ID'
    end
    object SQL_POPID: TIntegerField
      FieldName = 'PID'
    end
    object SQL_POSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object SQL_POPOSTINDEX: TIntegerField
      FieldName = 'POSTINDEX'
    end
  end
  object BDEXP: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=10.76.8.106'
      'DataBase=ADDRPOST_R96'
      'User_Name=sa'
      'Password=a147258369W'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=False')
    VendorLib = 'oledb'
    Left = 24
    Top = 400
  end
  object SQLEXP: TSQLDataSet
    ObjectView = True
    CommandText = 
      'select '#13#10' ROW_NUMBER() OVER(ORDER BY IndexOps) AS Row'#13#10',* '#13#10'From' +
      ' VPOSTADRESS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BDEXP
    Left = 24
    Top = 456
  end
end
