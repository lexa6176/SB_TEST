unit ExportForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, ExtCtrls, ComCtrls, StdCtrls, Buttons,FileCtrl;

type
  TExportFiltr = class(TForm)
    ParamGroup: TGroupBox;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Gauge1: TGauge;
    StartBut: TSpeedButton;
    StopBut: TSpeedButton;
    Label1: TLabel;
    DirExportT: TEdit;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    RB1: TRadioButton;
    RB2: TRadioButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure StartButClick(Sender: TObject);
    procedure DirExportTExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StopButClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportFiltr :   TExportFiltr;
  StopProc    : boolean;
implementation

uses BazaForma, GlavnForma;

{$R *.dfm}

procedure ExportFile(FilExp,text: string);
var
  ExpFile:  textFile;
begin
  Assignfile(ExpFile,FilExp);
  if Fileexists(FilExp) then Append(ExpFile) else rewrite(ExpFile);
  WriteLn(ExpFile,text);
  Closefile(ExpFile);
end;



procedure TExportFiltr.FormCreate(Sender: TObject);
begin
  label2.Visible:=false;
end;

procedure TExportFiltr.StartButClick(Sender: TObject);
label de0,de1,de2;
Var I1        : Integer;
    S         : string;
    DirE      : string;
    FilExp    : string;
    ExpFile   : textFile;
    Rescreate : boolean;
    TypExport : integer;
begin
  if RB1.Checked=true then TypExport:=1;
  if RB2.Checked=true then TypExport:=2;
  ParamGroup.Enabled:=false;
  StartBut.Enabled:=false;
  StopBut.Enabled:=true;
  Glavn.ConnectBut.Enabled:=false;
  Glavn.WriteLog('Экспорт БД начат');
  StopProc:=false;
  Dire:=DirExportt.Text;

  if not ForceDirectories(DirE) then begin
    Application.MessageBox('Ошибка открытия каталога',Pchar(caption),Mb_Ok+Mb_iconError);
    Glavn.WriteLog('Ошибка откртия каталога экспорта');
    GoTo De0;
  end;

  if TypExport=1 then FilExp:=DirE+Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.xml';
  if TypExport=2 then FilExp:=DirE+Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.csv';

  if FileExists(FilExp) then
    if not DeleteFile(Filexp)then begin
      Application.MessageBox('Ошибка удаления файла БД',Pchar(caption),Mb_Ok+Mb_iconError);
      Glavn.WriteLog('Ошибка удаления файла БД из каталога');
      GoTo De0;
    end;

  if TypExport=1 then begin
    try
      Glavn.WriteLog('Формирование заготовки файла БД для экспорта');
      Rescreate:=true;
      Assignfile(ExpFile,FilExp);
      rewrite(ExpFile);
      WriteLn(ExpFile,'<XML>');
      Closefile(ExpFile);
    except
      Rescreate:=false;
    end;
    if Rescreate=false then begin
      Glavn.WriteLog('Ошибка формирования заготовки файла БД для экспорта');
      GoTo De0;
    end;
  end;

  label2.Visible:=true;
  label2.Caption:='Подключение...';
  Application.ProcessMessages;
  BAZA.BDEXP.Connected:=false;
  BAZA.BDEXP.Params.Values['HostName']:=Glavn.ServerT.Text;
  BAZA.BDEXP.Params.Values['DataBase']:=Glavn.BdT.Text;
  BAZA.BDEXP.Params.Values['User_Name']:=Glavn.loginT.Text;
  BAZA.BDEXP.Params.Values['Password']:=Glavn.PasswT.Text;

  try
    BAZA.BDEXP.Connected:=true;
    label2.Caption:='Успешно...';
    Application.ProcessMessages;
  except
  end;

  if BAZA.BDEXP.Connected=false then begin
    Application.MessageBox('Ошибка соедиения с БД экспорта',Pchar(Caption),MB_OK);
    Glavn.WriteLog('Ошибка соединения с БД для экспорта');
    GoTo De1;
  end;
  Glavn.WriteLog('БД для выгрузки открыта');
  label2.Caption:='Идет отобр ЖДИТЕ...';
  Application.ProcessMessages;

  try
    Baza.SQLEXP.Active:=true;
  except
  end;
  if Baza.SQLEXP.Active=false then begin
    Application.MessageBox('Ошибка отбора данных из БД для экспорта',Pchar(Caption),MB_OK);
    Glavn.WriteLog('Ошибка отбора данных из БД для экспорта');
    goto de2;
  end;
  label2.Caption:=IntToStr(BAZA.SQLEXP.RecordCount);
  Gauge1.MaxValue:=BAZA.SQLEXP.RecordCount;
  Glavn.WriteLog('К отбору '+IntToStr(Gauge1.MaxValue)+' записей');
  Gauge1.MinValue:=0;
  Gauge1.Progress:=0;
  Application.ProcessMessages;
  Glavn.WriteLog('Начало выгрузки записей в БД');

  if TypExport=1 then ExportFile(FilExp,'<'+Glavn.BdT.text+'>');
  if TypExport=2 then begin
    S:='';
    For I1:=0 to baza.SQLEXP.FieldCount-1 do S:=S+Trim(VarToStr(baza.SQLEXP.Fields[I1].FullName))+';';
    ExportFile(FilExp,S);
  end;
  while not Baza.SQLEXP.Eof do begin
    label2.Caption:=IntTostr(Gauge1.Progress)+' из '+IntToStr(BAZA.SQLEXP.RecordCount);;
    Application.ProcessMessages;
    if TypExport=1 then ExportFile(FilExp,'<ListItem>');
    S:='';
    For I1:=0 to baza.SQLEXP.FieldCount-1 do begin
      if TypExport=1 then begin
        S:='<'+Trim(VarToStr(baza.SQLEXP.Fields[I1].FullName))+'>';
        S:=S+Trim(VarToStr(baza.SQLEXP.Fields[I1].value));
        S:=S+'</'+Trim(VarToStr(baza.SQLEXP.Fields[I1].FullName))+'>';
        ExportFile(FilExp,S);
      end;
      if TypExport=2 then S:=S+Trim(VarToStr(baza.SQLEXP.Fields[I1].value))+';';
    end;

    if TypExport=1 then ExportFile(FilExp,'</ListItem>');
    if TypExport=2 then ExportFile(FilExp,S);

    Baza.SQLEXP.Next;
    Gauge1.Progress:=Gauge1.Progress+1;
    Application.ProcessMessages;
    if StopProc=true then Goto De2;
  end;

  de2:
  Glavn.WriteLog('Выгружено '+IntToStr(Gauge1.Progress)+' записей');

  if TypExport=1 then ExportFile(FilExp,'</'+Glavn.BdT.text+'>');
  Glavn.WriteLog('БД для выгрузки закрыта');

  de1:
  if TypExport=1 then ExportFile(FilExp,'</XML>');
  Glavn.WriteLog('Закртие файла БД выгрузки');

  de0:
  Gauge1.Progress:=0;
  BAZA.SQLEXP.Active:=false;
  label2.Visible:=false;
  Application.ProcessMessages;
  Glavn.WriteLog('Экспорт данных завершен');
  Application.MessageBox('Экспорт данных завершен',Pchar(Caption),Mb_Ok);
  StartBut.Enabled:=true;
  StopBut.Enabled:=false;
  Glavn.ConnectBut.Enabled:=true;
  ParamGroup.Enabled:=true;
end;

procedure TExportFiltr.DirExportTExit(Sender: TObject);
begin
  DE:=DirExportT.Text;
  INF.WriteString('SETUP','EXPORTPATH',DE);
  INF.UpdateFile;
end;

procedure TExportFiltr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DE:=DirExportT.Text;
  INF.WriteString('SETUP','EXPORTPATH',DE);
  INF.UpdateFile;
  Glavn.WriteLog('Закртие формы экспорта БД');
  OpenExp:=false;
end;

procedure TExportFiltr.StopButClick(Sender: TObject);
begin
  StopProc:=true;
  Glavn.WriteLog('Нажатие кнопки остановка процесса экспорта');
end;

procedure TExportFiltr.FormShow(Sender: TObject);
begin
  if RB1.Checked=true then Label3.Caption:=Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.xml';
  if RB2.Checked=true then Label3.Caption:=Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.csv';
  Glavn.WriteLog('Открытие формы экспорта БД');
  OpenExp:=true;
end;

procedure TExportFiltr.RB1Click(Sender: TObject);
begin
  Label3.Caption:=Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.xml'
end;

procedure TExportFiltr.RB2Click(Sender: TObject);
begin
Label3.Caption:=Glavn.BdT.Text+'_'+FormatdateTime('YYYYMMDD',now)+'.csv'
end;

procedure TExportFiltr.SpeedButton3Click(Sender: TObject);
Var
  S: string;
begin
  if SelectDirectory('Выберите каталог', '', S)
  then begin
    if Copy(S,Length(S),1)<>'\' then S:=S+'\';
    De:=S;
    DE:=DirExportT.Text;
    INF.WriteString('SETUP','EXPORTPATH',DE);
    INF.UpdateFile;
  end else DirExportT.Text:=DE;
end;

end.
