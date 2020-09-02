unit OpsForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TOps = class(TForm)
    PCSpr: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    AddBut: TSpeedButton;
    EdBut: TSpeedButton;
    SavBut: TSpeedButton;
    CanBut: TSpeedButton;
    DelBut: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    IndT: TEdit;
    NameT: TEdit;
    MailT: TEdit;
    Opstab: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    KodT: TEdit;
    NamErT: TEdit;
    Panel6: TPanel;
    AddErBut: TSpeedButton;
    EditErBut: TSpeedButton;
    SavErBut: TSpeedButton;
    CanErBut: TSpeedButton;
    DelErBut: TSpeedButton;
    SpravErTab: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpstabCellClick(Column: TColumn);
    procedure OpstabEnter(Sender: TObject);
    procedure AddButClick(Sender: TObject);
    procedure EdButClick(Sender: TObject);
    procedure SavButClick(Sender: TObject);
    procedure CanButClick(Sender: TObject);
    procedure AddErButClick(Sender: TObject);
    procedure EditErButClick(Sender: TObject);
    procedure SavErButClick(Sender: TObject);
    procedure CanErButClick(Sender: TObject);
    procedure SpravErTabCellClick(Column: TColumn);
    procedure SpravErTabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpravErTabDblClick(Sender: TObject);
    procedure SpravErTabEnter(Sender: TObject);
    procedure OpstabKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure IndTExit(Sender: TObject);
    procedure PCSprChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ops     : TOps;
  RegSpr  : integer;
  Iz: integer;
implementation

uses BazaForma, SetupForma, Glavn;

{$R *.dfm}

procedure TOps.FormShow(Sender: TObject);
begin
  JPKF.Logfil('Открытие окна редактирования справочников');
  baza.Sql_Ops_Sprav.Active:=false;
  baza.Sql_Ops_Sprav.Parameters[0].Value:=setup.Opsp.text;
  baza.sql_ops_sprav.Active:=true;
  PcSpr.OnChange(sender);
end;

procedure TOps.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  baza.Sql_Ops_Sprav.Active:=false;
end;

procedure TOps.OpstabCellClick(Column: TColumn);
begin
  if baza.Sql_Ops_Sprav.RecordCount=0 then exit;
  indt.Text:=baza.Sql_Ops_SpravPOSTINDEX.Value;
  Namet.Text:=baza.Sql_Ops_SpravOPSNAME.Value;
  Mailt.Text:=baza.Sql_Ops_SpravMAIL.Value;
end;

procedure TOps.OpstabEnter(Sender: TObject);
begin
  if baza.Sql_Ops_Sprav.RecordCount=0 then exit;
  indt.Text:=baza.Sql_Ops_SpravPOSTINDEX.Value;
  Namet.Text:=baza.Sql_Ops_SpravOPSNAME.Value;
  Mailt.Text:=baza.Sql_Ops_SpravMAIL.Value;
end;

procedure TOps.AddButClick(Sender: TObject);
begin
  JPKF.Logfil('Добавление Нового ОПС');
  regspr:=1;
  panel3.Enabled:=true;
  indt.Text:='';
  namet.Text:='';
  mailt.Text:='';
  addbut.Enabled:=false;
  delbut.Enabled:=false;
  edbut.Enabled:=false;
  savbut.Enabled:=true;
  canbut.Enabled:=true;
end;

procedure TOps.EdButClick(Sender: TObject);
begin
  JPKF.Logfil('Редактирование ОПС');
  regspr:=2;
  panel3.Enabled:=true;
  addbut.Enabled:=false;
  delbut.Enabled:=false;
  edbut.Enabled:=false;
  savbut.Enabled:=true;
  canbut.Enabled:=true;
end;

procedure TOps.SavButClick(Sender: TObject);
var
  s:string;
begin
  if length(trim(IndT.Text))=0 then begin
    Jpkf.Mess('Необходимо указать Индекс ОПС',Mb_iconInformation,Mb_ok);
    IndT.SetFocus;
    exit;
  end;
  if length(trim(namet.Text))=0 then begin
    Jpkf.Mess('Необходимо указать наименование ОПС',Mb_iconInformation,Mb_ok);
    namet.SetFocus;
    exit;
  end;

  if (JPKF.Kontrolstr(Indt.Text)=false) then begin
      JPKF.Mess('Индекс ОПС может содержать только цифры',Mb_IconInformation,Mb_Ok);
      Indt.SetFocus;
      exit;
    end;
  Id:=baza.Sql_Ops_Sprav.RecNo;
  baza.sql_Upd.Active:=false;
  baza.sql_Upd.SQL.Clear;
  case regspr of
    1: begin
      s:='select POSTINDEX from ops where POSTINDEX='''+indt.Text+'''';
      baza.sql_Upd.SQL.Add(s);
      baza.sql_Upd.Active:=true;
      if baza.sql_Upd.RecordCount>0 then begin
        JPKF.Mess('ОПС с индексом '+indt.text+' уже существует',Mb_iconwarning,Mb_Ok);
        baza.sql_Upd.active:=false;
        baza.sql_Upd.SQL.Clear;
        exit;
      end;
      baza.sql_Upd.SQL.Clear;
      s:='insert into OPS (POSTINDEX,OPSNAME,OPSTYPE,OPSSUBM) values ('''+
                              INDT.text+''','+
                              ''''+Namet.Text+''','+
                              ''''+'О'+''','+
                              ''''+baza.sql_userIndPoctamt.AsString+''');';
      baza.sql_Upd.SQL.Add(s);
      baza.sql_Upd.ExecSQL;
      baza.sql_Upd.Active:=false;
      baza.sql_Upd.SQL.Clear;
      s:='select MAIL from MAILTAB where POSTIND='''+INDT.Text+'''';
      baza.sql_Upd.SQL.Text:=s;
      baza.sql_Upd.Active:=true;
      if baza.sql_Upd.RecordCount>0 then
        s:='Update MAILTAB set MAIL='''+mailt.Text+''' where POSTIND='''+INDT.text+''';'
      else
        s:='insert into MAILTAB (POSTIND,MAIL) values ('''+INDT.text+''','''+mailt.Text+''');';
      baza.sql_Upd.SQL.Clear;
      baza.sql_Upd.SQL.Add(s);
      baza.sql_Upd.ExecSQL;
    end;
    2: begin
      baza.sql_Upd.Active:=false;
      baza.sql_Upd.SQL.Clear;
      s:='UPDATE OPS SET POSTINDEX='''+INDT.text+''', OPSNAME='''
                                      +Namet.Text+''' where POSTINDEX='''
                                      +INDT.text+'''';
      baza.sql_Upd.SQL.Add(s);
      baza.sql_Upd.ExecSQL;
      baza.sql_Upd.Active:=false;
      baza.sql_Upd.SQL.Clear;
      s:='select MAIL from MAILTAB where POSTIND='''+INDT.Text+'''';
      baza.sql_Upd.SQL.Text:=s;
      baza.sql_Upd.Active:=true;
      if baza.sql_Upd.RecordCount>0 then
        s:='Update MAILTAB set MAIL='''+mailt.Text+''' where POSTIND='''+INDT.text+''';'
      else
        s:='insert into MAILTAB (POSTIND,MAIL) values ('''+INDT.text+''','''+mailt.Text+''');';
      baza.sql_Upd.SQL.Clear;
      baza.sql_Upd.SQL.Add(s);
      baza.sql_Upd.ExecSQL;
    end;
  end;
  JPKF.Logfil('Запсиь сохранена');
  baza.Sql_Ops_Sprav.active:=false;
  baza.Sql_Ops_Sprav.active:=true;
  if regspr=2 then baza.Sql_Ops_Sprav.RecNo:=ID else  baza.Sql_Ops_Sprav.Last;
  panel3.Enabled:=false;
  addbut.Enabled:=true;
  delbut.Enabled:=true;
  edbut.Enabled:=true;
  savbut.Enabled:=false;
  canbut.Enabled:=false;
end;

procedure TOps.CanButClick(Sender: TObject);
begin
  JPKF.Logfil('Отмена добавления\редактирования справочника ОПС');
  panel3.Enabled:=false;
  addbut.Enabled:=true;
  delbut.Enabled:=true;
  edbut.Enabled:=true;
  savbut.Enabled:=false;
  canbut.Enabled:=false;
  OpsTab.SetFocus;
  Opstab.OnEnter(sender);
end;

procedure TOps.AddErButClick(Sender: TObject);
begin
  JPKF.Logfil('Добавление новой ошибке');
  regspr:=3;
  panel5.Enabled:=true;
  kodt.Text:='';
  namert.Text:='';
  adderbut.Enabled:=false;
  delerbut.Enabled:=false;
  editerbut.Enabled:=false;
  saverbut.Enabled:=true;
  canerbut.Enabled:=true;
  kodt.SetFocus;
end;

procedure TOps.EditErButClick(Sender: TObject);
begin
  JPKF.Logfil('Редактирование ошибки');
  regspr:=4;
  panel5.Enabled:=true;
  adderbut.Enabled:=false;
  delerbut.Enabled:=false;
  editerbut.Enabled:=false;
  saverbut.Enabled:=true;
  canerbut.Enabled:=true;
  kodt.SetFocus;
end;

procedure TOps.SavErButClick(Sender: TObject);
var
  I: integer;
begin
  if Length(trim(Kodt.Text))=0 then begin
    Jpkf.Mess('Необходимо указать код ошибки',Mb_IconInformation,Mb_Ok);
    Kodt.SetFocus;
    exit;
  end;
  if Length(trim(NamErt.Text))=0 then begin
    Jpkf.Mess('Необходимо указать наименование ошибки',Mb_IconInformation,Mb_Ok);
    NamErt.SetFocus;
    exit;
  end;
  iz:=baza.Sql_error.RecNo;
  I:=baza.Sql_errorId.value;
  baza.ErorSprav.Active:=true;
  if Regspr=3 then baza.ErorSprav.append;
  if Regspr=4 then begin
    baza.ErorSprav.Locate('ID',I,[]);
    baza.ErorSprav.Edit;
  end;
  baza.ErorSpravNumError.Value:=(Kodt.Text);
  baza.ErorSpravTextError.Value:=NamErT.Text;
  baza.ErorSprav.post;
  JPKF.Logfil('Запсиь сохранена');
  baza.ErorSprav.Active:=false;
  panel5.Enabled:=false;
  adderbut.Enabled:=true;
  delerbut.Enabled:=true;
  editerbut.Enabled:=true;
  saverbut.Enabled:=false;
  canerbut.Enabled:=false;
  baza.Sql_error.Active:=false;
  baza.Sql_error.Active:=true;
  if regspr=3 then baza.Sql_error.Last else baza.Sql_error.RecNo:=Iz;
  if baza.Sql_error.Active=true then begin
    baza.Sql_error.First;
    JPKF.ErrorBox.Items.Clear;
    JPKF.ErrorBox.Items.add(' ');
    while not baza.Sql_error.Eof do begin
      JPKF.ErrorBox.Items.add(baza.Sql_errorNumError.AsString+' '+baza.Sql_errorTextError.AsString);
      baza.Sql_error.Next;
    end;
  end;
  Spravertab.SetFocus;
end;

procedure TOps.CanErButClick(Sender: TObject);
begin
  JPKF.Logfil('Отмена изменений справочника ошибок');
  panel5.Enabled:=false;
  adderbut.Enabled:=true;
  delerbut.Enabled:=true;
  editerbut.Enabled:=true;
  saverbut.Enabled:=false;
  canerbut.Enabled:=false;
  Spravertab.SetFocus;
end;

procedure TOps.SpravErTabCellClick(Column: TColumn);
begin
  kodt.Text:=baza.sql_errorNumError.AsString;
  namert.Text:=baza.Sql_errorTextError.Value;
end;

procedure TOps.SpravErTabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  kodt.Text:=baza.sql_errorNumError.AsString;
  namert.Text:=baza.Sql_errorTextError.Value;
end;

procedure TOps.SpravErTabDblClick(Sender: TObject);
begin
  kodt.Text:=baza.sql_errorNumError.AsString;
  namert.Text:=baza.Sql_errorTextError.Value;
end;

procedure TOps.SpravErTabEnter(Sender: TObject);
begin
  kodt.Text:=baza.sql_errorNumError.AsString;
  namert.Text:=baza.Sql_errorTextError.Value;
end;

procedure TOps.OpstabKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if baza.Sql_Ops_Sprav.RecordCount=0 then exit;
  indt.Text:=baza.Sql_Ops_SpravPOSTINDEX.Value;
  Namet.Text:=baza.Sql_Ops_SpravOPSNAME.Value;
  Mailt.Text:=baza.Sql_Ops_SpravMAIL.Value;
end;

procedure TOps.TabSheet2Show(Sender: TObject);
begin
  SpraverTab.SetFocus;
end;

procedure TOps.TabSheet1Show(Sender: TObject);
begin
  if baza.sql_ops.Active=true then OpsTab.SetFocus;
end;

procedure TOps.IndTExit(Sender: TObject);
begin
    if (JPKF.Kontrolstr(IndT.Text)=false) then begin
      JPKF.Mess('Индекс ОПС может содержать только цифры',Mb_IconInformation,Mb_Ok);
      Indt.SetFocus;
      exit;
    end;
end;

procedure TOps.PCSprChange(Sender: TObject);
begin
  if PcSpr.ActivePageIndex=0 then Opstab.SetFocus;
  if PcSpr.ActivePageIndex=1 then SpraverTab.SetFocus;
end;

end.
