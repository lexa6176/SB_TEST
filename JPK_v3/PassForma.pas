unit PassForma;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TPass = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure OKBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pass: TPass;

implementation

uses BazaForma, Glavn, SetupForma;

{$R *.dfm}

procedure TPass.OKBtnClick(Sender: TObject);
begin
  if param.Reg=1 then begin
    if LenGth(trim(Password.text))=0 then begin
      JPKF.Mess('Пароль (табельный номер) вводить обязательно',Mb_IconInformation,Mb_Ok);
      exit;
    end;
    if (JPKF.Kontrolstr(Password.Text)=false) then begin
      JPKF.Mess('Пароль (табельный номер) может содержать только цифры',Mb_IconInformation,Mb_Ok);
      exit;
    end;
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Text:='select ID,NAMEUSER,TIPUSER, MAIL, LOG, PAS, SERV, PORT from USERWT where ID='+Password.Text+' and STATUS=1;';
    baza.sql_Upd.Active:=true;
    if baza.sql_Upd.RecordCount=0 then begin
      JPKF.Mess('Не корректный воод номера',Mb_IconWarning,Mb_Ok);
      JPKF.Logfil('Не корректный ввод номера');
      exit;
    end;
    param.TOP:=baza.sql_Upd['TIPUSER'];
    baza.Reestr_sql.Active:=false;
    baza.Reestr_del_sql.Active:=false;
    Skript:=baza.Reestr_sql.SQL.Text;
    baza.Reestr_sql.Active:=true;
    baza.Reestr_del_sql.Active:=true;
    baza.sql_vip.Active:=true;
    try
      user.host:=baza.sql_Upd['SERV'];
      user.port:=baza.sql_Upd['PORT'];
      user.log:=baza.sql_Upd['LOG'];
      user.pass:=baza.sql_Upd['PAS'];
      user.mail:=baza.sql_Upd['MAIL'];
    except
    end;
    try
      baza.Sql_error.active:=true;
    except
    end;

    if baza.Sql_error.Active=true then begin
      baza.Sql_error.First;
      JPKF.ErrorBox.Items.Clear;
      JPKF.ErrorBox.Items.add(' ');
      while not baza.Sql_error.Eof do begin
        JPKF.ErrorBox.Items.add(baza.Sql_errorNumError.AsString+' '+baza.Sql_errorTextError.AsString);
        baza.Sql_error.Next;
      end;
    end;
    try
      baza.sql_doklad_i.Active:=true;
      baza.sql_doklad_I.Last;
    except
    end;
    with JPKF do begin
      logfil('Авторизация выполнена');
      UserBut.Tag:=1;
      param.FioOper:=AnsiUpperCase(baza.sql_Upd['NAMEUSER']);
      param.IdOper:=baza.sql_Upd['ID'] ;
      Addbut.Enabled:=false;
      EditBut.Enabled:=false;
      DelBut.Enabled:=false;
      SetBut.Enabled:=false;
      AktBut.Enabled:=false;
      operbox.Enabled:=true;
      ErBox.Enabled:=true;
      UserBut.Caption:='Сменить'+#13+'польз.';
      FltBut.Enabled:=true;
      dr1.Enabled:=true;
      Dr2.Enabled:=true;
      Opst.Enabled:=true;
      AllBox.Enabled:=true;
      AddBox.Enabled:=true;
      VipBox.Enabled:=true;
      ClosBox.Enabled:=true;
      errorbox.Enabled:=true;
      FioNart.Enabled:=true;
      PCF.Enabled:=true;
      PcS.Enabled:=true;
      if baza.sql_doklad_i.RecordCount>0 then
        Statusbar1.Panels[1].Text:='Последние докладные с '+FormatDateTime('dd.mm.yyyy',baza.sql_doklad_iDat1.Value)+' по '+'с '+FormatDateTime('dd.mm.yyyy',baza.sql_doklad_iDat2.Value);
      StaTusBar1.Panels[0].Text:='Руководитель - '+param.FioOper;

      if baza.sql_userTipPodr.Value=2 then begin
        errorstatbox.Enabled:=false;
        OpsTatBox.Enabled:=false;
        usStatBox.Checked:=true;
      end else begin
        errorstatbox.Enabled:=true;
        OpsTatBox.Enabled:=true;
        errorstatbox.Checked:=true;
      end;

      if param.TOP<=1 then begin
        JPKF.Logfil('Режим оператор');
        Addbut.Enabled:=true;
        EditBut.Enabled:=true;
        ClosBut.Enabled:=true;
        Aktbut.Enabled:=true;
        StaTusBar1.Panels[0].Text:='Оператор - '+param.FioOper;
        PCK.Pages[1].TabVisible:=false;
        PCK.Pages[3].TabVisible:=true;
      end;
      if param.TOP=0 then begin
        JPKF.Logfil('Режим администратора');
        DelBut.Enabled:=true;
        ReturnBut.Enabled:=true;
        SetBut.Enabled:=true;
        StaTusBar1.Panels[0].Text:='Администратор - '+param.FioOper;
        PCK.Pages[1].TabVisible:=true;
        if baza.sql_userTipPodr.Value=2 then begin
          Pck.Pages[2].TabVisible:=false;
        end else begin
          Pck.Pages[2].TabVisible:=true;
          Pck.Pages[3].TabVisible:=true;
        end;
        baza.sql_stat.Active:=true;
      end;
      OperBox.Items.Clear;
      baza.sql_Upd.Active:=false;
      baza.sql_Upd.SQL.Text:='select NAMEUSER from USERWT where STATUS=1';
      baza.sql_Upd.Active:=true;

      if baza.sql_Upd.RecordCount>0 then begin
        baza.sql_Upd.First;
        OperBox.Items.Add(' ');
        while not baza.sql_Upd.Eof do begin
          OperBox.Items.Add(baza.sql_Upd['NAMEUSER']);
          baza.sql_upd.next;
        end;
      end;
      baza.sql_Upd.Active:=false;
      OperBox.ItemIndex:=0;
      fltbut.Click;
    end;
  end;
  if param.reg=2 then begin
    JPKF.Logfil('Подтверждение прав на окончательное удаление');
    if Password.Text<>'GjxnfPfljk,fkf' then begin
      JPKF.Mess('Права не подтверждены',Mb_IconWarning,Mb_ok);
      JPKF.Logfil('Права не подтверждены');
      exit;
    end;
    try
      JPKF.Logfil('Окончательное удаление записи '+baza.Reestr_sqlId.AsString);
      baza.DelGrn.Active:=false;
      baza.DelGrn.Active:=true;
      baza.DelGrn.Append;
      baza.DelGrnIdZ.Value:=baza.Reestr_sqlId.Value;
      baza.DelGrnDataReg.Value:=baza.Reestr_sqlDataReg.Value;
      baza.DelGrnOper.Value:=baza.Reestr_sqlOper.Value;
      baza.DelGrnDatError.Value:=baza.Reestr_sqlDatError.Value;
      baza.DelGrnIndOps.Value:=baza.Reestr_sqlIndOps.Value;
      baza.DelGrnSoder.Value:=baza.Reestr_sqlSoder.Value;
      baza.DelGrnDataOtmetka.Value:=date;
      baza.DelGrnFioOm.Value:=param.FioOper;
      baza.DelGrntiperror.Value:=baza.Reestr_sqltiperror.Value;
      baza.DelGrnTipFioError.Value:=baza.Reestr_sqlTipFioError.Value;
      baza.DelGrnfioError.Value:=baza.Reestr_sqlfioError.Value;
      baza.DelGrn.Post;
      baza.DelGrn.Active:=false;
      Baza.sql_Upd.Active:=false;
      Baza.sql_Upd.SQL.Text:='Delete from GURNALL where ID='+IntToStr(baza.Reestr_sqlId.Value);
      baza.sql_Upd.ExecSQL;
      baza.Reestr_sql.Active:=false;
      baza.Reestr_del_sql.Active:=false;

      baza.Reestr_sql.Active:=true;
      baza.Reestr_del_sql.Active:=true;
      JPKF.FltBut.Click;
    except
      JPKF.Mess('Ошибка удаления записей из БД',Mb_IconWarning,MB_Ok);
      JPKF.Logfil('Ошибка удаления записей из БД');
    end;
  end;
end;

procedure TPass.FormShow(Sender: TObject);
begin
  if param.Reg=2 then JPKF.Logfil('Подтверждение прав на удаление') else JPKF.Logfil('Авторизация пользователя ');
  Password.Text:='';
  password.SetFocus;
end;

procedure TPass.CancelBtnClick(Sender: TObject);
begin
  if param.Reg=2 then JPKF.Logfil('Отмена подтверждения') else JPKF.Logfil('Отмена авторизации');
end;

end.

