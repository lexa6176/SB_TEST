unit AuntificationForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls;

type
  TAuntification = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    textNewPassw: TEdit;
    Label3: TLabel;
    TextPassw: TEdit;
    Label2: TLabel;
    ListUser: TComboBox;
    Label1: TLabel;
    ButOk: TSpeedButton;
    ButCancel: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButCancelClick(Sender: TObject);
    procedure ButOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TextPasswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListUserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure textNewPasswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Auntification: TAuntification;
  ST: string;
implementation

uses MainForma, BazaForma;

{$R *.dfm}

procedure TAuntification.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  main.Log('Форма авторизации закрыта ');
  Auntification.Free;
end;

procedure TAuntification.ButCancelClick(Sender: TObject);
begin
  Main.Log('Отмена авторизации');
  Main.GM11.Click;
  Close;
end;

procedure TAuntification.ButOkClick(Sender: TObject);
begin
  if ListUser.ItemIndex=0 then begin
    with main do begin
      Log('Не выбран пользователь');
      Mes('Не выбран пользователь',Mb_Ok+Mb_IconError);
    end;
    ListUser.SetFocus;
    Exit;
  end;
  if LenGth(trim(TextPassw.Text))=0 then begin
    with main do begin
      Log('Не введен пароль');
      Mes('Не введен пароль',Mb_Ok+Mb_IconError);
    end;
    textpassw.setfocus;
    Exit;
  end;
  with baza.sql_user_avt do begin
    Active:=false;
    with Parameters do begin
      Items[0].value:=StrToInt(Trim(Copy(ListUser.Text,1,Pos(' -',ListUser.Text))));
      Items[1].Value:=TextPassw.Text
    end;
    Active:=true;
    if RecordCount=0 then begin
      with main do begin
        Log('Ошибка вода пароля!!!');
        Mes('Ошибка ввода пароля!!!',Mb_Ok+Mb_iconError);
        Exit;
      end;
    end else begin
      UserWorc.ID:=baza.sql_user_avtID.Value;
      UserWorc.FM:=Trim(baza.sql_user_avtFM.AsString);
      UserWorc.IM:=trim(baza.sql_user_avtIM.AsString);
      UserWorc.OT:=trim(Baza.sql_user_avtOT.AsString);
      UserWorc.Dolgn:=Trim(Baza.sql_user_avtDOLGN.AsString);
      UserWorc.ABV:=Copy(UserWorc.IM,1,1)+'.'+Copy(UserWorc.OT,1,1)+'.'+ UserWorc.FM;
      userWorc.Status:=baza.sql_user_avtStatus.Value;
      UserWorc.URD:=baza.sql_user_avtURDOST.Value;
      case UserWorc.URD of
        0: begin
          with main do begin
            GM2.Visible:=true;
            GM21.Visible:=true;
            GM22.Visible:=true;
            GM221.Visible:=true;
            GM222.Visible:=true;
            GM223.Visible:=true;
            GM224.Visible:=true;
            GM23.Visible:=true;
            GM24.Visible:=true;
          //  GM25.Enabled:=true;
            GM3.Visible:=true;
            GM4.Visible:=true;
            GM41.Enabled:=false;
            GM42.Enabled:=true;
            GM5.Visible:=true;
          end;
          ST:='Администратор';
        end;
        1: begin
          with main do begin
            GM2.Visible:=true;
            GM21.Visible:=true;
            GM22.Visible:=true;
            GM221.Visible:=true;
            GM222.Visible:=true;
            GM223.Visible:=true;
            GM224.Visible:=false;
            GM23.Visible:=true;
            GM24.Visible:=true;
          //  GM25.Enabled:=true;
            GM3.Visible:=true;
            GM4.Visible:=true;
            GM41.Enabled:=false;
            GM42.Enabled:=true;
            GM5.Visible:=true;
          end;
          ST:='Контролер';
        end;
        2: begin
          with main do begin
            GM2.Visible:=true;
            GM21.Visible:=false;
            GM22.Visible:=true;
            GM221.Visible:=false;
            GM222.Visible:=false;
            GM223.Visible:=false;
            GM224.Visible:=true;
            GM23.Visible:=false;
            GM24.Visible:=true;
            GM3.Visible:=false;
            GM4.Visible:=false;
            GM5.Visible:=false;
          end;
          ST:='Оператор';
        end;
        3: begin
          with main do begin
            GM2.Visible:=true;
            GM21.Visible:=false;
            GM22.Visible:=false;
            GM23.Visible:=false;
            GM24.Visible:=true;
            GM3.Visible:=false;
            GM4.Visible:=false;
            GM5.Visible:=false;
          end;
          ST:='Оператор КСУ';
        end;
      end;
      if LenGth(trim(TextNewPassw.Text))>0 then begin
        try
          with baza.SP_USERS do begin
            Parameters[1].Value:=UserWorc.ID;
            Parameters[2].Value:=UserWorc.FM;
            Parameters[3].Value:=UserWorc.IM;
            Parameters[4].Value:=UserWorc.OT;
            Parameters[5].Value:=UserWorc.Dolgn;
            Parameters[6].Value:=trim(TextNewPassw.Text);
            Parameters[7].Value:=UserWorc.URD;
            Parameters[8].Value:=userWorc.Status;
            ExecProc;
            if Parameters[0].Value=0 then
              Main.Mes('Пароль успешно заменен',Mb_Ok+Mb_iconInformation)
            else
              Main.Mes('Ошибка смены пароля',Mb_Ok+Mb_iconInformation)end;
        except
        end;
      end;
    end;
  end;  
  with main do begin
    SB.Panels[1].Text:=UserWorc.ABV;
    SB.Panels[2].Text:=ST;
    GM41.Enabled:=false;
    Log('Авторизация пройдена');
    RegWorc(UserWorc.ID,NameArm,NameUser,'Авторизация');
  end;
  Close;
end;

procedure TAuntification.FormCreate(Sender: TObject);
begin
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  main.Log('Форма авторизации открыта');
  ListUser.Items.Clear;
  ListUser.Items.Add('0 - Выберите себя из списка');
  ListUser.ItemIndex:=0;
  with baza.sql_user do begin
    Active:=true;
    if RecordCount>0 then begin
      First;
      while not EOF do begin
        ListUser.Items.Add(baza.sql_userID.AsString+' - '+Trim(baza.sql_userFM.AsString)+'.'+Copy(trim(baza.sql_userIM.AsString),1,1)+'.'+Copy(trim(Baza.sql_userOT.AsString),1,1));
        Next;
      end;
    end;
    Active:=false;
  end;
  TextPassw.Text:='';
  TextNewPassw.Text:='';
end;

procedure TAuntification.FormShow(Sender: TObject);
begin
  ListUser.SetFocus;
end;

procedure TAuntification.TextPasswKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextNewPassw.SetFocus;
  if key=vk_escape then ListUser.SetFocus;
end;

procedure TAuntification.ListUserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextPassw.SetFocus;
  if key=vk_escape then Close;
end;

procedure TAuntification.textNewPasswKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//  if Key=vk_return then ButOk.Click;;
//  if key=vk_escape then TextNewPassw.SetFocus;
end;

end.
