unit Addforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons;

type
  TAdd = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Savbut: TSpeedButton;
    CanBut: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Dt1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    OpsT: TEdit;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Panel3: TPanel;
    Memo2: TMemo;
    Label7: TLabel;
    ClosBox: TCheckBox;
    Label8: TLabel;
    BosBox: TComboBox;
    TipError: TComboBox;
    FioBos: TEdit;
    lastbox: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    ProcT: TEdit;
    ErrorNotBox: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SavbutClick(Sender: TObject);
    procedure Dt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpsTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpsTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CanButClick(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BosBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FioBosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TipErrorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lastboxClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OpsTExit(Sender: TObject);
    procedure FioBosExit(Sender: TObject);
    procedure ProcTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProcTExit(Sender: TObject);
    procedure ErrorNotBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Add: TAdd;

implementation

uses BazaForma, Glavn, LoadForma;

{$R *.dfm}

procedure TAdd.FormCreate(Sender: TObject);
begin
  Dt1.Date:=Date-1;
//lastbox.Caption:='Запомнить для'+#13+'следующей опер.' ;
  lastoper.dt:=dt1.Date;
  lastoper.Indops:='';
  lastoper.Bos:=0;
  lastoper.Fio:='';
  lastoper.Tip:=0;

end;

procedure TAdd.SavbutClick(Sender: TObject);
begin
  if param.Oper<=2 then begin
    if Length(Trim(OpsT.Text))=0 then begin
      JPKF.Mess('Необходимо указать Индекс ОПС',Mb_IconWarning,Mb_Ok);
      Opst.SetFocus;
      exit;
    end;
    if baza.sql_ops.RecordCount=0 then begin
      JPKF.Mess('Необходимо указать ОПС допустивших нарушение',Mb_IconWarning,Mb_Ok);
      Opst.SetFocus;
      exit;
    end;
    if Length(Trim(baza.sql_opsOpsname.value))=0 then begin
      JPKF.Mess('Необходимо ПРАВИЛЬНО указать Индекс ОПС',Mb_IconWarning,Mb_Ok);
      Opst.SetFocus;
      exit;
    end;
    if (JPKF.Kontrolstr(Opst.Text)=false) then begin
      JPKF.Mess('Индекс ОПС состоит только из цифр',Mb_IconInformation,Mb_Ok);
      Opst.SetFocus;
      exit;
    end;
    if length(trim(FioBos.text))=0 then begin
      JPKF.Mess('Необходимо указать ФИО сотрудника допустившего нарушение',Mb_IconWarning,Mb_Ok);
      fiobos.SetFocus;
      exit;
    end;
    if (JPKF.Kontrolstr(FioBos.Text)=true) then begin
      JPKF.Mess('ФИО сотрудника ОПС не может содержать цифр',Mb_IconInformation,Mb_Ok);
      FioBos.SetFocus;
      exit;
    end;
    if TipError.ItemIndex=0 then begin
      JPKF.Mess('Необходимо указать категорию нарушение',Mb_IconWarning,Mb_Ok);
      TipError.SetFocus;
      exit;
    end else begin
      if baza.Sql_error.Locate('NumError',Copy(TipError.Text,1,Pos(' ',TipError.Text)-1),[]) then else ShowMessage('');
    end;
    if Length(Trim(Memo1.Lines.Text))=0 then begin
      JPKF.Mess('Необходимо указать содержание ошибки',Mb_IconWarning,Mb_Ok);
      Memo1.SetFocus;
      exit;
    end;
    if baza.Gurnal.Active=true then baza.Gurnal.Active:=false;
    baza.Gurnal.Active:=true;
    if Param.Oper=1 then begin
      JPKF.Logfil('Добавление записи о нарушении');
      baza.Gurnal.Append;
      baza.GurnalDataReg.Value:=date;
    end;
    if Param.Oper=2 then begin
      JPKF.Logfil('Редактирование записи');
      baza.Gurnal.Locate('ID',baza.Reestr_sqlId.Value,[]);
      baza.Gurnal.Edit;
      if Date()<>baza.GurnalDataReg.Value then
        if JPKF.Mess('Изменить дату регистрации нарушения на текущую?',Mb_iconInformation,Mb_YesNo)=idYes
        then baza.GurnalDataReg.Value:=date() else baza.GurnalDataReg.Value:=td;
    end;
    baza.GurnalDatError.Value:=dt1.Date;
    baza.GurnalOper.Value:=param.FioOper;
    baza.GurnalIndOps.Value:=OpsT.text;
    baza.GurnalSoder.Value:=Trim(memo1.Lines.Text);
    if param.Oper=1 then baza.GurnalOtmetka.Value:=0 else baza.GurnalOtmetka.Value:=baza.Reestr_sqlOtmetka.Value;
    //baza.Gurnaltiperror.Value:=tiperror.ItemIndex;
    baza.Gurnaltiperror.Value:=baza.Sql_errorId.Value;
    baza.GurnalfioError.value:=fioBos.Text;
    baza.GurnalTipFioError.Value:=BosBox.ItemIndex;
    baza.GurnalProc.Value:=StrToInt(ProcT.Text);
    if ErrorNotBox.Checked=true then baza.GurnalOtmetka.Value:=2;
    baza.Gurnal.Post;
    JPKF.Logfil('Запись сохранена');
    baza.Gurnal.Active:=false;
    baza.Reestr_sql.Active:=false;
    baza.Reestr_sql.Active:=true;
    if param.lastoper=true then begin
      lastoper.dt:=dt1.Date;
      lastoper.Indops:=Opst.Text;
      lastoper.Bos:=Bosbox.ItemIndex;
      lastoper.Fio:=FioBos.Text;
      lastoper.Tip:=TipError.ItemIndex;

    end;
    if param.Oper=2 then baza.Reestr_sql.Locate('ID',Id,[]) else baza.Reestr_sql.Last;
    Close;
  end else begin

    baza.Gurnal.Active:=true;
    baza.Gurnal.Locate('ID',baza.Reestr_sqlId.Value,[]);
    baza.Gurnal.Edit;
    baza.GurnalFioOm.Value:=param.FioOper;
    baza.GurnalDataOtmetka.Value:=date();
    baza.GurnalSoderOtmetki.Value:=Trim(memo2.Lines.Text);
    if closbox.Checked=true then begin
      baza.GurnalOtmetka.Value:=2;
      JPKF.Logfil('Добавление выполненого мероприятия');
    end else begin
      baza.GurnalOtmetka.Value:=baza.Reestr_sqlOtmetka.Value;
      JPKF.Logfil('Закрытие нарушения');
    end;
    baza.Gurnal.Post;
    JPKF.Logfil('Запись сохранена');
    baza.Gurnal.Active:=false;
    baza.Reestr_sql.Active:=false;
    baza.Reestr_sql.Active:=true;
    baza.Reestr_sql.Locate('ID',Id,[]);
    Close;
  end;
end;

procedure TAdd.Dt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then Opst.SetFocus;
  if (shift=[ssCtrl]) and (key=vk_return) then SavBut.Click;
  
end;

procedure TAdd.OpsTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  I:integer;
begin
  for I:=1 to Length(Opst.Text) do
    case Opst.Text[I] of
      '0','1','2','3','4','5','6','7','8','9':;
    else
      JPKF.Mess('Индекс ОПС состоит толко из цифр',Mb_iconWarning,Mb_Ok);
      exit;
    end;
   baza.sql_ops.Active:=false;
   baza.sql_ops.Parameters[0].Value:=OpsT.text;
    baza.sql_ops.Parameters[1].Value:=baza.sql_userIndPoctamt.Value;
   baza.sql_ops.active:=true;
   if baza.sql_ops.RecordCount>0 then
     label6.caption:=baza.sql_opsOpsname.Value
   else
     label6.caption:='НЕ ОПРЕДЕЛЕНО';
end;

procedure TAdd.OpsTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    if baza.sql_ops.RecordCount=0 then Opst.SetFocus else  BosBox.SetFocus;
  if key=vk_Escape then Dt1.SetFocus;
  if (shift=[ssCtrl]) and (key=vk_return) then SavBut.Click;
end;

procedure TAdd.CanButClick(Sender: TObject);
begin
  Close;
end;

procedure TAdd.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (shift=[ssCtrl]) and (key=vk_return) then SavBut.Click;
  if (shift=[ssCtrl]) and (key=vk_escape) then CanBut.Click;
  if key=vk_Escape then
    if ProcT.Enabled=true then proct.SetFocus else TipError.SetFocus;
end;

procedure TAdd.FormShow(Sender: TObject);
Var
  I1:Integer;
begin
  baza.Sql_error.First;
  TipError.Items.Clear;
  TipError.Items.add(' ');
  while not baza.Sql_error.Eof do begin
    TipError.Items.add(baza.Sql_errorNumError.AsString+' '+baza.Sql_errorTextError.AsString);
    baza.Sql_error.Next;
  end;
  if param.Oper=2 then begin
    if baza.Sql_error.Locate('Id',baza.Reestr_sqltiperror.Value,[]) then begin
      For I1:=0 to TipError.Items.Count-1 do begin
        if TipError.Items[I1]=baza.Sql_errorNumError.AsString+' '+baza.Sql_errorTextError.AsString then begin
          TipError.ItemIndex:=I1;
          break;
        end;
      end;
    end else Showmessage('!');
  end else TipError.ItemIndex:=0;
  if panel2.Visible=true then begin
    JPKF.logfil('Открытие окна Добавление \ Редактирования');
    lastbox.Checked:=Param.lastoper;
    if param.lastoper=true then begin
      dt1.Date:=lastoper.dt;
      Opst.Text:=lastoper.Indops;
      Bosbox.ItemIndex:=lastoper.Bos;
      FioBos.Text:=lastoper.Fio;
      TipError.ItemIndex:=lastoper.Tip;
    end;
    Dt1.SetFocus;
  end;
  if panel3.Visible=true then begin
     JPKF.logfil('Открытие окна Редактирования выполенной работы \ Закртия нарушения');
    ClosBox.Checked:=false;
    memo2.SetFocus;
  end;
  if param.Oper>=2 then ID:=baza.Reestr_sqlId.Value;
end;

procedure TAdd.Memo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (shift=[ssCtrl]) and (key=vk_return) then SavBut.Click;
    if (shift=[ssCtrl]) and (key=vk_escape) then CanBut.Click;
end;

procedure TAdd.BosBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then fioBos.SetFocus;
  if key=vk_Escape then opst.Text;
end;

procedure TAdd.FioBosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then TipError.SetFocus;
  if key=vk_Escape then BosBox.SetFocus;
end;

procedure TAdd.TipErrorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then
    if Proct.Enabled=false then Memo1.SetFocus else Proct.SetFocus;
  if key=vk_Escape then FioBos.SetFocus;
end;

procedure TAdd.lastboxClick(Sender: TObject);
begin
  Param.lastoper:=lastbox.Checked;
end;

procedure TAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Jpkf.TabError.SetFocus;
  Jpkf.TabError.OnEnter(sender);
end;

procedure TAdd.OpsTExit(Sender: TObject);
begin
  if (JPKF.Kontrolstr(Opst.Text)=false) then begin
    JPKF.Mess('Индекс ОПС состоит только из цифр',Mb_IconInformation,Mb_Ok);
    Opst.SetFocus;
    exit;
  end;
end;

procedure TAdd.FioBosExit(Sender: TObject);
begin
  if (JPKF.Kontrolstr(FioBos.Text)=true) then begin
    JPKF.Mess('ФИО начальника ОПС не может содержать цифр',Mb_IconInformation,Mb_Ok);
    FioBos.SetFocus;
    exit;
  end;
end;

procedure TAdd.ProcTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_return then memo1.SetFocus;
  if key=vk_Escape then TipError.SetFocus;
end;

procedure TAdd.ProcTExit(Sender: TObject);
begin
  if (JPKF.Kontrolstr(Proct.Text)=false) then begin
    JPKF.Mess('Объем проверки указывается только в цифрах',Mb_IconInformation,Mb_Ok);
    Proct.SetFocus;
    exit;
  end;
  if StrToInt(Proct.text)=0 then begin
    JPKF.Mess('Объем проверки не может быть равным 0',Mb_IconInformation,Mb_Ok);
    Proct.SetFocus;
    exit;
  end;
{  if StrToInt(Proct.text)>100 then begin
    JPKF.Mess('Объем проверки не может быть больше 100',Mb_IconInformation,Mb_Ok);
    Proct.SetFocus;
    exit;
  end;  }
end;

procedure TAdd.ErrorNotBoxClick(Sender: TObject);
begin
  if ErrorNotBox.Checked=true then
    with Memo1.Lines do begin
       Clear;
       Add('Замечаний нет');
    end
  else Memo1.Lines.Clear;
end;

end.
