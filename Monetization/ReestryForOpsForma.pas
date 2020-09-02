unit ReestryForOpsForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  TReestryForOps = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    TextOpsT: TEdit;
    Label3: TLabel;
    GodBox: TComboBox;
    MesBox: TComboBox;
    CheckBoxOps: TCheckBox;
    CheckBoxPrn: TCheckBox;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GodBoxChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBoxOpsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReestryForOps: TReestryForOps;

implementation

uses BazaForma, ListForma, MainForma, ReportingForma;

{$R *.dfm}

procedure TReestryForOps.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  baza.SQL_REESTR_OPS.Active:=false;
  baza.SQL_REESTR_YAR.Active:=false;
  baza.SQL_REESTR_MES.Active:=false;
  baza.sql_reestr_ops_List.active:=false;
  main.Log('Закртыие формы печати реестров');
  ReestryForOps.Free;
end;

procedure TReestryForOps.FormCreate(Sender: TObject);

begin
  main.Log('Открытие формы печати реестров');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;

  with baza.SQL_REESTR_YAR do begin
    Active:=false;
    Active:=true;
    GodBox.Items.Clear;
    if RecordCount>0 then begin
      First;
      while not EOF do begin
        GodBox.Items.Add(baza.SQL_REESTR_YARGOD.AsString);
        //ShowMessage(IntToStr(RecNo)+' - '+IntToStr(GodBox.Items.Count) );
        if baza.sql_reestr_YarGod.Value=StrToInt(FormatDateTime('yyyy',Date)) then GodBox.ItemIndex:=RecNo-1;
        Next;
      end;
    end;
    Active:=false;
  end;
  if GodBox.Items.Count>0 then
    with baza.SQL_REESTR_MES do begin
      Active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Items[GodBox.ItemIndex]);
      Active:=true;
      MesBox.Items.Clear;
      if RecordCount>0 then begin
        First;
        while Not EOF do begin
          MesBox.Items.Add(baza.SQL_REESTR_MESMES.AsString);
          if baza.sql_reestr_mesMes.AsInteger=StrToint(FormatDateTime('mm',Date)) then MesBox.ItemIndex:=RecNo-1;
          Next;
        end
      end;
      Active:=false;
    end;
end;

procedure TReestryForOps.GodBoxChange(Sender: TObject);
begin
  if GodBox.Items.Count>0 then
    with baza.SQL_REESTR_MES do begin
      Active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Text);
      Active:=true;
      MesBox.Items.Clear;
      if RecordCount>0 then begin
        First;

        while Not EOF do begin
          MesBox.Items.Add(baza.SQL_REESTR_MESMES.AsString);
          if baza.sql_reestr_mesMes.AsInteger=StrToint(FormatDateTime('mm',Date)) then MesBox.ItemIndex:=RecNo-1;
          Next;
        end
      end;
      Active:=false;
    end;
end;

procedure TReestryForOps.SpeedButton1Click(Sender: TObject);
const
  mh: array[1..12] of string = ('Январь', 'Февраль',
            'Март', 'Апрель', 'Май', 'Июнь', 'Июль',
            'Август', 'Сентябрь', 'Октябрь', 'Ноябрь',
            'Декабрь');
begin
  main.Log('Формирование реестра');
  if CheckBoxOps.Checked=true then begin
    main.Log('Массовое формирвоание реестров');
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовое формирование реестров');
    with baza.sql_reestr_ops_List do begin
      active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Text);
      Parameters[1].Value:=StrToInt(MesBox.Text);
      active:=true;
      if RecordCount>0 then begin
        main.log('ОПС к обработе!!!');
        while not EOF do begin
          with baza.SQL_REESTR_OPS do begin
            Active:=false;
            main.Log('Выбор ведомостей для включения в реестра по ОПС '+baza.SQL_REESTR_OPS_LISTINDOPS.Value+' Год '+GodBox.Text+' Месяц '+MesBox.Text);
            Parameters[0].Value:=StrToInt(GodBox.Text);
            Parameters[1].Value:=StrToInt(MesBox.Text);
            Parameters[2].Value:=baza.SQL_REESTR_OPS_LISTINDOPS.Value;
            Active:=true;
            main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирвоание реестров для ОПС '+Trim(baza.SQL_REESTR_OPS_LISTINDOPS.Value));
            if RecordCount>0 then begin
              main.Log('Формирвоание реестра начато');
              with baza.SP_STATEMENT do begin
                Active:=false;
                Parameters[1].Value:=StrToInt(GodBox.Text);
                Parameters[2].Value:=StrToInt(MesBox.Text);
                Parameters[3].Value:=Trim(baza.SQL_REESTR_OPS_LISTINDOPS.Value);
                Active:=true;
               end;
              Reporting.QRLabel14.Caption:=mh[baza.SQL_REESTR_OPSMES.Value+1]+' месяц '+IntToStr(baza.SQL_REESTR_OPSGOD.Value)+' года';
              if CheckBoxPrn.Checked=false then Reporting.ReestrOps.PreviewModal else Reporting.ReestrOps.Print;
              main.Log('Форирование реестра завершено');
            end else main.Log('Нет ведомостей для включения в реестр');
          end;
          Next;
        end;
      end else main.Mes('Нет сведений для формрования реестров',Mb_ok+Mb_iconInformation);
    end;
  end else begin
    if Length(Trim(textOpst.Text))=0 then begin
      Main.Mes('Необходимо укзать индекс ОПС',Mb_ok+Mb_iconInformation);
      TextOpst.SetFocus;
      Exit;
    end;
    main.Log('Формирование реестра для ОПС');
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирование реестров для ОПС '+Trim(TextOpst.Text));
    with baza.SP_CHEK do begin
      main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
      Parameters[1].Value:=1;
      Parameters[2].Value:=TextOpsT.Text;
      ExecProc;
      if Parameters[0].Value=0 then
        If Parameters[3].Value=0 then begin
          main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation);
          Exit;
        end;
    end;
    if length(trim(textOpst.Text))<>6 then begin
      main.Mes('Не указан Индекс ОПС',Mb_iconError+Mb_Ok);
      Exit;
    end;
    with baza.SQL_REESTR_OPS do begin
      main.Log('Выбор ведомсотей для включения в реестра по ОПС '+textOpsT.Text+' Год '+GodBox.Text+' Месяц '+MesBox.Text);
      Active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Text);
      Parameters[1].Value:=StrToInt(MesBox.Text);
      Parameters[2].Value:=textOpsT.Text;
      Active:=true;
      if RecordCount>0 then begin
        main.Log('Формирование реестра начато');
        with baza.SP_STATEMENT do begin
          Active:=false;
          Parameters[1].Value:=StrToInt(GodBox.Text);
          Parameters[2].Value:=StrToInt(MesBox.Text);
          Parameters[3].Value:=Trim(textOpsT.Text);
          Active:=true;
        end;
        main.Log('Фомирование реестра завершено');
        Reporting.QRLabel14.Caption:=mh[baza.SQL_REESTR_OPSMES.Value+1]+' месяц '+IntToStr(baza.SQL_REESTR_OPSGOD.Value)+' года';
        if CheckBoxPrn.Checked=false then Reporting.ReestrOps.Preview else Reporting.ReestrOps.Print
      end else Main.Mes('Нет сведений для формирования реестров',Mb_ok+Mb_iconError);
    end;
  end;
end;

procedure TReestryForOps.CheckBoxOpsClick(Sender: TObject);
begin
  if CheckBoxOps.Checked=true then begin
     textopst.Enabled:=false;
     textOpst.Text:='';
  end else begin
     textopst.Enabled:=true;
     TextOpst.SetFocus;
  end;
end;

end.
