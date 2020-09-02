unit ServiceForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, DB;

type
  TService = class(TForm)
    StatusBar1: TStatusBar;
    Opsbox: TGroupBox;
    LoadSprav: TSpeedButton;
    RezBox: TGroupBox;
    SpeedButton3: TSpeedButton;
    ClBox: TGroupBox;
    ClearBut: TSpeedButton;
    VidBox: TGroupBox;
    Panel1: TPanel;
    procedure LoadSpravClick(Sender: TObject);
    procedure ClearButClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Service: TService;

implementation

uses SetupForma, BazaForma, Glavn;

{$R *.dfm}

procedure TService.LoadSpravClick(Sender: TObject);
Var
sf:string;
I1,I2,I3,I4: integer;
begin
  sf:='';
  if PromptForFileName(sf,'*.dbf|*.dbf|Все|*.*','','Укажите путь к файлу справочника индексов',ExtractFilePath(Paramstr(0)),false) then begin
    VidBox.caption:='Импорт справочника';
    baza.ImpSprav.DBFFileName:=sf;
    try
      baza.ImpSprav.Active:=true;
    except
    end;
    if baza.ImpSprav.Active=false then exit;
    baza.Sql_Ops_Sprav.Active:=false;
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Text:='delete from OPS;';
    baza.sql_Upd.ExecSQL;//:=true;
    baza.sql_Upd.Active:=false;
    baza.Ops_sprav.Active:=true;
    baza.ImpSprav.First;
    while not baza.ImpSprav.Eof do begin
      baza.Ops_sprav.Append;
      For I1:=0 to baza.ImpSprav.FieldCount-1 do begin
        if AnsiUpperCase(baza.ImpSprav.Fields[I1].FullName) = 'INDEX' then begin
          For I2:=0 to baza.Ops_sprav.FieldCount-1 do if AnsiUpperCase(baza.Ops_sprav.Fields[I2].FullName)='POSTINDEX' then baza.Ops_sprav.Fields[I2].Value:=baza.ImpSprav.Fields[I1].Value;
        end else
          For I2:=0 to baza.Ops_sprav.FieldCount-1 do if AnsiUpperCase(baza.Ops_sprav.Fields[I2].FullName)= AnsiUpperCase(baza.ImpSprav.Fields[I1].FullName) then baza.Ops_sprav.Fields[I2].Value:=baza.ImpSprav.Fields[I1].Value;
      end;
      baza.Ops_sprav.Post;
      panel1.Caption:=IntToStr(baza.ImpSprav.RecNo);
      Application.ProcessMessages;
      baza.ImpSprav.Next;
    end;
    baza.ImpSprav.Active:=false;
    baza.Ops_sprav.Active:=false;
    baza.Sql_Ops_Sprav.Active:=true;
    panel1.Caption:='';
    vidbox.caption:='';
    JPKF.Mess('Выполенно импортирвоание справочника'+#13+sf,Mb_IconInformation,Mb_Ok);
  end;
end;

procedure TService.ClearButClick(Sender: TObject);
begin
  JPKF.Logfil('Запрос на очистку таблиц');
  if JPKF.Mess('Вы действительно хотите очистить рабочие таблицы ?',Mb_iconQuestion,Mb_YesNo)=idNo then exit;
  JPKF.Logfil('Запуск процедуры очистки');
  baza.sql_Upd.Active:=false;
  vidBox.Caption:='Очистка таблиц';
  try
    panel1.Caption:='Gurnall';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from Gurnall';
    baza.sql_Upd.ExecSQL;
    baza.sql_Upd.active:=false;
    panel1.Caption:='GurnalDel';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from GurnalDel';
    baza.sql_Upd.ExecSQL;
    panel1.Caption:='Vipiska';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from Vipiska';
    baza.sql_Upd.ExecSQL;
    panel1.Caption:='VipMail';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from VipMail';
    baza.sql_Upd.ExecSQL;
    panel1.Caption:='VipPrint';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from VipPrint';
    baza.sql_Upd.ExecSQL;
    panel1.Caption:='VipSoder';
    application.ProcessMessages;
    baza.sql_Upd.SQL.Text:='Delete from VipSoder';
    baza.sql_Upd.ExecSQL;
    panel1.Caption:='';
    application.ProcessMessages;
    JPKF.Mess('Рабочие таблицы очищенны',Mb_iconInformation,Mb_YesNo);
    JPKF.Logfil('Очистка таблиц выполнена');
    VidBox.Caption:='';
  except
    JPKF.Mess('Ошибка очистки рабочих таблиц',Mb_iconInformation,Mb_YesNo);
    JPKF.Logfil('Ошибка очистки рабочих таблиц');
  end;
end;

procedure TService.SpeedButton3Click(Sender: TObject);
var
  Stab,sqls:TstringList;
  I1,I2,I3: Integer;
  S1,S2,S3,sf: string;
begin
  if PromptForFileName(sf,'*.baсkup|*.bakcup','.baсkup','Файл резервного копирования',ExtractFilePath(Paramstr(0)),true) then begin
    if fileexists(sf) then deletefile(sf);
    VidBox.Caption:='Резервное копирование';
    stab:=TstringList.Create;
    sqls:=tstringList.Create;
    baza.BD.GetTableNames(stab,false);
    For I1:=0 to Stab.Count-1 do begin
      if (AnsiUpperCase(stab.Strings[I1])<>'DOKLAD') and (AnsiUpperCase(stab.Strings[I1])<>'REESTR') and
         (AnsiUpperCase(stab.Strings[I1])<>'REESTRDEL') and (AnsiUpperCase(stab.Strings[I1])<>'VIPISKAR') then
      sqls.add('Delete From '+stab.Strings[I1]+';');
    end;
    For I1:=0 to Stab.Count-1 do begin
      if (AnsiUpperCase(stab.Strings[I1])<>'DOKLAD') and (AnsiUpperCase(stab.Strings[I1])<>'REESTR') and
         (AnsiUpperCase(stab.Strings[I1])<>'REESTRDEL') and (AnsiUpperCase(stab.Strings[I1])<>'VIPISKAR') then begin
        panel1.Caption:=IntToStr(sqls.Count);
        Application.ProcessMessages;
        baza.sql_Upd.Active:=false;
        baza.sql_Upd.SQL.Text:='select * from '+Stab.Strings[I1];
        baza.sql_Upd.Active:=true;
        S1:='';
        For I2:=0 to baza.sql_Upd.FieldCount-1 do S1:=s1+Trim(baza.sql_upd.Fields[i2].FullName)+',';
        delete(s1,length(s1),1);
        baza.sql_Upd.First;
        while not baza.sql_upd.Eof do begin
          panel1.Caption:=IntToStr(sqls.Count);//[I1]+' - '+IntToStr(baza.sql_Upd.RecNo);
          Application.ProcessMessages;
          S2:='';
          For I2:=0 to baza.sql_Upd.FieldCount-1 do begin
            case baza.sql_Upd.Fields[i2].DataType of
              ftString,
              ftFixedChar,
              ftWideString,
              ftMemo,
              ftFmtMemo:   if (LenGth(VarToStr(baza.sql_upd.Fields[i2].AsString)))>0 then s2:=s2+ '''' + Trim(baza.sql_upd.Fields[i2].AsString)+''',' else s2:=s2+''''+''',';
              ftSmallint,
              ftInteger,
              ftWord,
              ftLargeint,
              ftAutoInc:  if (LenGth(VarToStr(baza.sql_upd.Fields[i2].AsString)))>0 then s2:=s2+baza.sql_upd.Fields[i2].AsString+',' else s2:=s2+'0,';
              ftDate,
              ftTime,
              ftDateTime: if (LenGth(VarToStr(baza.sql_upd.Fields[i2].AsString)))>0 then s2:=s2+''''+baza.sql_upd.Fields[i2].AsString+''',' else s2:=s2+''''+DateToStr(Date)+''',';
            end;
          end;
          delete(s2,length(s2),1);
          sqls.Add('insert into '+stab.Strings[I1]+' ('+s1+') values ('+s2+');');
          baza.sql_Upd.Next;
        end;
      end;
    end;
    sqls.SaveToFile(sf);
    sqls.Free;
    stab.Free;
    panel1.Caption:='';
    VidBox.Caption:='';
    JPKF.Mess('Выполенна резерваня копия в файл '+#13+sf,Mb_IconInformation,Mb_Ok);
  end;
end;

procedure TService.SpeedButton2Click(Sender: TObject);
var
  sf: string;
  Stab:TstringList;
begin
  if PromptForFileName(sf,'*.baсkup|*.bakcup','.baсkup','Файл резервного копирования',ExtractFilePath(Paramstr(0)),false) then begin
    baza.BD.Connected:=false;
    try
      JPKF.logfil('Оперделние параметров подключения к БД');
      baza.BD.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;'+
                      'User ID=Admin;Data Source='+Param.BdPath+
                      ';Mode=Share Deny None;Extended Properties="";'+
                      'Jet OLEDB:System database="";'+
                      'Jet OLEDB:Registry Path="";'+
                      'Jet OLEDB:Database Password="";'+
                      'Jet OLEDB:Engine Type=5;'+
                      'Jet OLEDB:Database Locking Mode=1;'+
                      'Jet OLEDB:Global Partial Bulk Ops=2;'+
                      'Jet OLEDB:Global Bulk Transactions=1;'+
                      'Jet OLEDB:New Database Password="";'+
                      'Jet OLEDB:Create System Database=False;'+
                      'Jet OLEDB:Encrypt Database=False;'+
                      'Jet OLEDB:Don'+''''+'t Copy Locale on Compact=False;' +
                      'Jet OLEDB:Compact Without Replica Repair=False;'+
                      'Jet OLEDB:SFP=False';
      baza.BD.Connected:=true;
    except
    end;
    if baza.BD.Connected=true then begin
      baza.sql_Upd.Active:=false;
      baza.sql_Upd.SQL.LoadFromFile(sf);
      baza.sql_Upd.ExecSQL;
      Application.Terminate;
    end;
  end;
end;

end.
