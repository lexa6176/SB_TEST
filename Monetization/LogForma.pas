unit LogForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons;

type
  TLogWorc = class(TForm)
    PC: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    LogList: TComboBox;
    TableWorc: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListUser: TComboBox;
    DT1: TDateTimePicker;
    Dt2: TDateTimePicker;
    Panel4: TPanel;
    ButFindLog: TSpeedButton;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LogListChange(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure ListUserChange(Sender: TObject);
    procedure ButFindLogClick(Sender: TObject);
    procedure DT1Change(Sender: TObject);
    procedure Dt2Change(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet2Resize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function findder(dir,mask:string):Integer; // Поиск файла в указазном каталоге
  end;

var
  LogWorc: TLogWorc;
  Fil     : TstringList;
implementation

uses BazaForma, MainForma;

{$R *.dfm}

function TLogWorc.findder(dir,mask:string):Integer; // Поиск файла в указазном каталоге
var
  SF        : TstringList;
  Sr        : TSearchRec;
begin
  main.Log('Формирование списка лог файлов');
  Result:=0;
  if FindFirst(dir+mask,(faAnyFile) and (not faDirectory),Sr)=0 then  repeat
    if (sr.Name<>'.') or (sr.Name<>'..') then begin
      fil.Add(sr.Name);
      result:=result+1;
    end;
  //  main.Log(sr.Name);
  until FindNext(sr)<>0;
  FindClose(Sr);
  main.Log('Формирвоание списка лог файлов завершено');
end;

procedure TLogWorc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LogWorc.Free;
  Fil.Free;
end;

procedure TLogWorc.FormCreate(Sender: TObject);
Var I : integer;
begin
  Fil:=TstringList.Create;
  Fil.Clear;
  findder(ExtractFilePath(LogsFile.LogFileName),'*.log');
  with LogList do begin
    with Items do begin
      Clear;
      Add('Выберите лог-файл');
      Fil.Sorted:=true;
      For I:=0 to Fil.Count-1 do Add(Fil.Strings[I]);
    end;
    Itemindex:=0;
  end;
  memo1.Lines.Clear;
  LogList.ItemIndex:=0;;
 // memo1.Lines.LoadFromFile(ExtractFilePath(LogsFile.LogFileName)+LogList.Text);
  If Baza.DB.Tag=0 then begin
    Pc.Pages[1].TabVisible:=false;
    Exit;
  end else Pc.Pages[1].TabVisible:=true;
  with baza.sql_user do begin
    Active:=true;
    if RecordCount>0 then begin
      First;
      ListUser.Items.Add('0 - Все пользователи');
      while not EOF do begin
        ListUser.Items.Add(baza.sql_userID.AsString+' - '+Trim(baza.sql_userFM.AsString)+'.'+Copy(trim(baza.sql_userIM.AsString),1,1)+'.'+Copy(trim(Baza.sql_userOT.AsString),1,1));
        Next;
      end;
    end;
    Active:=false;
  end;
  If UserWorc.URD>=2 then begin
    ListUser.Enabled:=false;
    For I:=1 to ListUser.Items.Count-1 do begin
      If StrToInt(Trim(Copy(ListUser.Text,1,Pos(' -',ListUser.Text))))=UserWorc.ID then ListUser.ItemIndex:=I;
    end;
  end else begin
    ListUser.ItemIndex:=0;
    ListUser.Enabled:=true;
  end;
end;

procedure TLogWorc.LogListChange(Sender: TObject);
begin
  if Loglist.ItemIndex>0 then
    try memo1.Lines.LoadFromFile(ExtractFilePath(LogsFile.LogFileName)+LogList.Text); except end
  else  memo1.Lines.Clear;
end;

procedure TLogWorc.Panel2Resize(Sender: TObject);
begin
  LogList.Width:=Panel2.Width-Panel5.Width-Loglist.Left-3;
end;

procedure TLogWorc.ListUserChange(Sender: TObject);
begin
  ButFindLog.Click;
end;

procedure TLogWorc.ButFindLogClick(Sender: TObject);
Var
  S: string;
begin
  S:='';
  S:=' (DATAREGIM>='''+FormatdateTime('dd.mm.yyyy hh:nn:ss',DT1.DateTime)+''' and DATAREGIM<='''+FormatdateTime('dd.mm.yyyy hh:nn:ss',DT2.DateTime)+''')';
  if Listuser.ItemIndex>0 then S:=S+' and (IDUSER='+Trim(Copy(ListUser.Text,1,Pos(' -',ListUser.Text)))+')';
  with baza.sql_work_log do begin
    Active:=false;
    Sql.Clear;
    SQL.Add('SET LANGUAGE Italian;');
    Sql.Add('Select * from TAB_WORK TW Left Join SPR_USER SU on SU.ID=TW.IDUSER  where '+S+' Order By DATAREGIM Desc');
    Active:=true;
  end;
end;

procedure TLogWorc.DT1Change(Sender: TObject);
begin
  ButFindLog.Click;
end;

procedure TLogWorc.Dt2Change(Sender: TObject);
begin
  ButFindLog.Click;
end;

procedure TLogWorc.Panel3Resize(Sender: TObject);
Var I1,I2 : integer;
begin
  ListUser.Width:=Panel3.Width-Panel4.Width-ListUser.Left-10;
  I2:=0;
  For I1:=0 to TableWorc.Columns.Count-2 do I2:=I2+TableWorc.Columns[I1].Width;
  Tableworc.Columns[7].Width:=TableWorc.Width-I2-50;
end;

procedure TLogWorc.FormShow(Sender: TObject);
Var I1,I2 : Integer;
begin
  ListUser.Width:=Panel3.Width-Panel4.Width-ListUser.Left-10;
  I2:=0;
  For I1:=0 to TableWorc.Columns.Count-2 do I2:=I2+TableWorc.Columns[I1].Width;
  Tableworc.Columns[7].Width:=TableWorc.Width-I2-50;
end;

procedure TLogWorc.TabSheet2Show(Sender: TObject);
Var I1,I2 : Integer;
begin
  ListUser.Width:=Panel3.Width-Panel4.Width-ListUser.Left-10;
  I2:=0;
  For I1:=0 to TableWorc.Columns.Count-2 do I2:=I2+TableWorc.Columns[I1].Width;
  Tableworc.Columns[7].Width:=TableWorc.Width-I2-50;
end;

procedure TLogWorc.TabSheet2Resize(Sender: TObject);
Var I1,I2 : Integer;
begin
  ListUser.Width:=Panel3.Width-Panel4.Width-ListUser.Left-10;
  I2:=0;
  For I1:=0 to TableWorc.Columns.Count-2 do I2:=I2+TableWorc.Columns[I1].Width;
  Tableworc.Columns[7].Width:=TableWorc.Width-I2-50;

end;

procedure TLogWorc.SpeedButton1Click(Sender: TObject);
begin
  try
    memo1.Lines.LoadFromFile(ExtractFilePath(LogsFile.LogFileName)+LogList.Text);
  except

  end;
end;

end.
