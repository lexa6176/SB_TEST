unit RegistryForOpsForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, ComCtrls;

type
  TRegistryForOps = class(TForm)
    CheckBoxOps: TCheckBox;
    Label1: TLabel;
    TextOpsT: TEdit;
    ButPrintList: TSpeedButton;
    Label2: TLabel;
    CountText: TDBText;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CheckBoxOpsClick(Sender: TObject);
    procedure ButPrintListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegistryForOps  : TRegistryForOps;
  IC              : Int64;
implementation

uses MainForma, BazaForma;

{$R *.dfm}

procedure TRegistryForOps.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Baza.SQL_CountNoList.Active:=false;
  main.Log('Форма фомирования реестра для ОПС закрыта');
 // RegistryForOps.Free;
end;

procedure TRegistryForOps.FormCreate(Sender: TObject);
begin
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  Label4.Caption:='';
  Label5.Caption:='';
  Application.ProcessMessages;
  with Baza.SQL_CountNoList do begin
    Active:=true;
    IC:=Baza.SQL_CountNoListCOUNTNOLIST.Value;
    if IC=0 then
      CountText.Font.Color:=clLime
    else
    CountText.Font.Color:=clRed;
  end;
  Application.ProcessMessages;
  main.Log('Открыта форма формирования реестра для ОПС ');
  main.Log('К формированию реестрорв '+IntToStr(IC)+' записей');
end;

procedure TRegistryForOps.CheckBoxOpsClick(Sender: TObject);
begin
  If CheckBoxOps.Checked=true then begin
    TextOpsT.Text:='';
    TextOpsT.Enabled:=false;
  end else begin
    textOpsT.Enabled:=true;
    TextOpst.SetFocus;
  end;
end;

procedure TRegistryForOps.ButPrintListClick(Sender: TObject);

begin

  main.Log('Запуск процедуры формирования ведомсоти');
  if CheckBoxOps.Checked=false then begin

    If Length(Trim(TextOpsT.Text))=0 then begin
      main.Log('Не указан индекс для формирвоания реестра');
      main.Mes('Необходимо указать индекс ОПС',Mb_Ok+Mb_IconInformation);
      exit;
    end;
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирование реестра для ОПС '+Trim(TextOpsT.Text));
    with baza.SP_CHEK do begin
      main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
      Parameters[1].Value:=1;
      Parameters[2].Value:=TextOpst.Text;
      ExecProc;
      if Parameters[0].Value=0 then
        If Parameters[3].Value=0 then begin
          main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation);
          Exit;
        end;
    end;
    main.Log('Ручное формирование реестра для ОПС '+TextOpst.Text);
    label4.Caption:=TextOpst.Text;
    label5.Caption:='Формирование';

    with Baza.SP_LIST_ADD do begin
      Parameters[1].Value:=Trim(TextOpst.Text);
      Parameters[2].Value:=UserWorc.ID;
      ExecProc;
      If Parameters[0].Value=0 then begin
        baza.SQL_CountNoList.Active:=false;
        baza.SQL_CountNoList.Active:=true;
        main.Log('В реестр включено '+IntToStr(IC-Baza.SQL_CountNoListCOUNTNOLIST.Value)+' записей');
        IC:=Baza.SQL_CountNoListCOUNTNOLIST.Value;
        label4.Caption:=TextOpst.Text;
        label5.Caption:='Завершено ';
      end else begin
        with main do begin
          Log('Ошибка формирования ведомости для ОПС '+TextOpst.Text);
          Mes('Ошибка формирования ведомости для ОПС '+TextOpst.Text,Mb_ok+Mb_IconInformation);
        end;
      end;
    end;
  end else begin
    main.Log('Формирование для всех ОПС из списка');
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовое формирование реестров для всех ОПС из списка ');
    with baza.SQL_NOLIST_OPS do begin
      Active:=false;
      Active:=true;
      First;
      while not EOF do begin
        main.Log('Формирование для ОПС '+Trim(baza.SQL_NOLIST_OPSINDOPS.Value));
        main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирование реестра для ОПС '+Trim(baza.SQL_NOLIST_OPSINDOPS.Value));
        with Baza.SP_LIST_ADD do begin
          label4.Caption:=Trim(baza.SQL_NOLIST_OPSINDOPS.Value);
          label5.Caption:='Формирование';
          Parameters[1].Value:=Trim(baza.SQL_NOLIST_OPSINDOPS.Value);
          Parameters[2].Value:=UserWorc.ID;
          ExecProc;
          If Parameters[0].Value=0 then begin
            baza.SQL_CountNoList.Active:=false;
            baza.SQL_CountNoList.Active:=true;
            main.Log('В ведомость включено '+IntToStr(IC-Baza.SQL_CountNoListCOUNTNOLIST.Value)+' записей');
            IC:=Baza.SQL_CountNoListCOUNTNOLIST.Value;
            Application.ProcessMessages;
          end else main.Log('Ошибка формирования ведомости для ОПС '+Trim(baza.SQL_NOLIST_OPSINDOPS.Value));
        end;
        Next;
      end;
      Active:=false;
    end;
    label4.Caption:='';
    label5.Caption:='Завершено формирование ведомстей';
    Close;
  end;
end;

end.
