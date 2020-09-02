unit BazaForma;

interface

uses
  SysUtils, Classes, DB, ADODB, DBXpress, SqlExpr, FMTBcd;

type
  TBaza = class(TDataModule)
    BD: TADOConnection;
    SQL_REGION: TADOQuery;
    SQL_CYTI: TADOQuery;
    SQL_CITY_T: TADOQuery;
    SQL_CITY_T_E: TDataSource;
    SQL_CITY_TNAME: TStringField;
    SQL_CITY_TPTYPE: TStringField;
    SQL_CITY_TNAME2: TStringField;
    SQL_CITY_TPTYPE2: TStringField;
    SQL_CITY_TDistrict: TStringField;
    SQL_CITY_TDTYPE: TStringField;
    SQL_CITY_TID: TLargeintField;
    SQL_STREET: TADOQuery;
    SQL_STREET_T: TADOQuery;
    SQL_STREET_T_E: TDataSource;
    SQL_STREET_TNAME: TStringField;
    SQL_STREET_TSTYPE: TStringField;
    SQL_STREET_TID: TLargeintField;
    SQL_BILD: TADOQuery;
    SQL_FIND_IND: TADOQuery;
    SQL_PO: TADOQuery;
    SQL_POID: TIntegerField;
    SQL_POPID: TIntegerField;
    SQL_POSHORTNAME: TStringField;
    SQL_POPOSTINDEX: TIntegerField;
    BDEXP: TSQLConnection;
    SQLEXP: TSQLDataSet;
    procedure BDAfterConnect(Sender: TObject);
    procedure BDDisconnect(Connection: TADOConnection;
      var EventStatus: TEventStatus);
    procedure BDInfoMessage(Connection: TADOConnection; const Error: Error;
      var EventStatus: TEventStatus);
    procedure SQL_CITY_TNAMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SQL_STREET_TNAMEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Baza: TBaza;

implementation

uses GlavnForma, ExportForma;

{$R *.dfm}

procedure TBaza.BDAfterConnect(Sender: TObject);
begin
  tag:=1;
  Glavn.ConnectBut.Caption:='Отключиться';
  glavn.WriteLog('Подключение к БД выполнено');
  Glavn.ConnectBut.Hint:='Нажать для отключения от БД';
end;

procedure TBaza.BDDisconnect(Connection: TADOConnection;
  var EventStatus: TEventStatus);
begin
  tag:=0;
  Glavn.ConnectBut.Caption:='Подключиться';
  glavn.WriteLog('Подключение к БД прервано');
  Glavn.ConnectBut.Hint:='Нажать для соединения с БД';
end;

procedure TBaza.BDInfoMessage(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  Glavn.WriteLog(error.Description);
  Glavn.WriteLog(error.Source);
  Glavn.WriteLog(error.SQLState);
end;

procedure TBaza.SQL_CITY_TNAMEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if SQL_CITY_T.RecordCount>0 then begin
    Text:=Trim(Sql_CITY_Tname.Value)+' '+Trim(Sql_CITY_TPtype.Value) ;
    if Length(Trim(Sql_City_TName2.Value))>0 then
      Text:=Text+', '+Trim(Sql_CITY_Tname2.Value)+' '+Trim(Sql_CITY_TPtype2.Value);
    if Length(Trim(Sql_City_TDistrict.Value))>0 then
      Text:=Text+', '+Trim(Sql_CITY_TDistrict.Value)+' '+Trim(Sql_CITY_TDtype.Value);
  end else Text:='';
end;

procedure TBaza.SQL_STREET_TNAMEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if sql_Street_T.RecordCount>0 then
    text:=sql_Street_Tname.Value+' '+sql_Street_tStype.Value
  else text:='';
end;

end.
