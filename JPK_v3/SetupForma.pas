unit SetupForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TSetup = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    OpsP: TEdit;
    BosD: TEdit;
    BosFio: TEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DolgnIp: TEdit;
    FioIp: TEdit;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    ZamDolg: TEdit;
    ZamFio: TEdit;
    Label4: TLabel;
    BosKomu: TEdit;
    Label5: TLabel;
    ZamKomu: TEdit;
    Label10: TLabel;
    KomuIp: TEdit;
    SavBut: TSpeedButton;
    CanBut: TSpeedButton;
    Label11: TLabel;
    OpsBut: TSpeedButton;
    UserBut: TSpeedButton;
    Label12: TLabel;
    Rb1: TRadioButton;
    Rb3: TRadioButton;
    NamePodr: TEdit;
    Label13: TLabel;
    ClearBut: TSpeedButton;
    IndopsT: TEdit;
    Label14: TLabel;
    Rb2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SavButClick(Sender: TObject);
    procedure CanButClick(Sender: TObject);
    procedure UserButClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OpsButClick(Sender: TObject);
    procedure OpsPKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClearButClick(Sender: TObject);
    procedure OpsPExit(Sender: TObject);
    procedure Rb3Click(Sender: TObject);
    procedure Rb2Click(Sender: TObject);
    procedure Rb1Click(Sender: TObject);
    procedure NamePodrKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IndopsTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Setup: TSetup;

implementation

uses BazaForma, Glavn, UserForma, PassForma, OpsForma, ServiceForma;

{$R *.dfm}

procedure TSetup.FormShow(Sender: TObject);
begin
  JPKF.Logfil('Открытие окна общих параметров');
  baza.TabSetup.Active:=true;
  OpsP.Text:=baza.TabSetupIndPoctamt.Value;
  Bosd.Text:=baza.TabSetupBosDolgn.Value;
  BosFio.Text:=baza.TabSetupBos.Value;
  BosKomu.Text:=baza.TabSetupBoskomu.Value;
  zamDolg.Text:=baza.TabSetupUser1Dolgn.Value;
  ZamFio.Text:=baza.TabSetupUser1.Value;
  ZamKomu.Text:=baza.TabSetupUser1komu.Value;
  DolgnIp.Text:=baza.TabSetupUser2Dolgn.Value;
  FioIp.Text:=baza.TabSetupUser2.Value;
  KomuIp.Text:=baza.TabSetupUser2Komu.Value;
  if Length(Trim(Opsp.Text))=0 then begin
    Opsbut.Enabled:=false;
    label11.Caption:='';
  end else begin
    baza.sql_Upd.Active:=false;
    baza.sql_Upd.SQL.Text:='Select OPSNAME from OPS where POSTINDEX='''+opsp.text+''' and OPSTYPE=''П''';
    baza.sql_Upd.Active:=true;
    if baza.sql_Upd.RecordCount>0 then
      label11.Caption:=baza.sql_Upd['OPSNAME']
    else label11.Caption:='';
  end;
  namepodr.Text:=baza.TabSetupNamePodr.value;
  case baza.TabSetupTipPodr.Value of
    0: rb1.Checked:=true;
    1: rb2.Checked:=true;
    2: rb3.Checked:=true;
  end;
  indOpst.Text:=baza.TabSetupIndPodr.Value;

//  GroupBox4.Caption:='Руководитель подразделения: "'+namepodr.Text+'"';
end;

procedure TSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  baza.TabSetup.Active:=false;
end;

procedure TSetup.SavButClick(Sender: TObject);
begin
  if (JPKF.Kontrolstr(Opsp.Text)=false) then begin
    JPKF.Mess('Индекс почтамта может содержать только цифры',Mb_IconInformation,Mb_Ok);
    Opsp.SetFocus;
    exit;
  end;
  baza.TabSetup.Edit;
  baza.TabSetupIndPoctamt.Value:=OpsP.Text;
  baza.TabSetupBosDolgn.Value:=Bosd.Text;
  baza.TabSetupBos.Value:=BosFio.Text;
  baza.TabSetupBoskomu.Value:=BosKomu.Text;
  baza.TabSetupUser1Dolgn.Value:=zamDolg.Text;
  baza.TabSetupUser1.Value:=ZamFio.Text;
  baza.TabSetupUser1komu.Value:=ZamKomu.Text;
  baza.TabSetupUser2Dolgn.Value:=DolgnIp.Text;
  baza.TabSetupUser2.Value:=FioIp.Text;
  baza.TabSetupUser2Komu.Value:=KomuIp.Text;
  if Rb1.Checked=true then begin
    baza.TabSetupTipPodr.Value:=0;
    JPKF.AktBut.Visible:=true;
    JPKF.label5.Visible:=true;
  end;
  if Rb2.Checked=true then begin
    baza.TabSetupTipPodr.Value:=1;
    JPKF.AktBut.Visible:=true;
    JPKF.label5.Visible:=false;
  end;
  if Rb3.Checked=true then begin
    baza.TabSetupTipPodr.Value:=2;
    baza.TabSetupIndPodr.Value:=indopst.Text;
    JPKF.AktBut.Visible:=false;
    JPKF.label5.Visible:=false;
  end;
  baza.TabSetupNamePodr.Value:=namepodr.Text;
  baza.TabSetup.Post;
  baza.sql_user.Active:=false;
  baza.sql_user.Active:=true;
  JPKF.Logfil('Сохранение внесенных изменний');
  with JPKF do begin
    if AktBut.Visible=true then
      UserBut.Width:=(Panel2.Width-8) div 6
    else UserBut.Width:=(Panel2.Width-8) div 5;
    AddBut.Left:=UserBut.Width+UserBut.Left+1;
    if AktBut.Visible=true then
      AddBut.Width:= (Panel2.Width-8) div 6
    else AddBut.Width:= (Panel2.Width-8) div 5;
    EditBut.Left:=AddBut.Left+addbut.Width+1;
    if AktBut.Visible=true then
      EditBut.Width:= (Panel2.Width-8) div 6
    else EditBut.Width:= (Panel2.Width-8) div 5;
    ClosBut.Left:=Editbut.Left+editbut.Width+1;
    if AktBut.Visible=true then
      ClosBut.Width:= (Panel2.Width-8) div 6
    else ClosBut.Width:= (Panel2.Width-8) div 5;
    DelBut.Left:=ClosBut.Left+ClosBut.Width+1;
    if AktBut.Visible=true then
      DelBut.Width:= (Panel2.Width-8) div 6
    else DelBut.Width:= (Panel2.Width-8) div 5;
    AktBut.Left:=DelBut.Left+DelBut.Width+1;
    if AktBut.Visible=true then
      AktBut.Width:= (Panel2.Width-8) div 6
    else AktBut.Width:= (Panel2.Width-8) div 5;
    if baza.sql_userTipPodr.Value =2 then
      Pck.Pages[2].TabVisible:=false
    else Pck.Pages[2].TabVisible:=true;
      if baza.sql_userTipPodr.Value=2 then begin
        errorstatbox.Enabled:=false;
        OpsTatBox.Enabled:=false;
        usStatBox.Checked:=true;
      end else begin
        errorstatbox.Enabled:=true;
        OpsTatBox.Enabled:=true;
        errorstatbox.Checked:=true;
      end;
  end;
end;

procedure TSetup.CanButClick(Sender: TObject);
begin
  OpsP.Text:=baza.TabSetupIndPoctamt.Value;
  Bosd.Text:=baza.TabSetupBosDolgn.Value;
  BosFio.Text:=baza.TabSetupBos.Value;
  BosKomu.Text:=baza.TabSetupBoskomu.Value;
  zamDolg.Text:=baza.TabSetupUser1Dolgn.Value;
  ZamFio.Text:=baza.TabSetupUser1.Value;
  ZamKomu.Text:=baza.TabSetupUser1komu.Value;
  DolgnIp.Text:=baza.TabSetupUser2Dolgn.Value;
  FioIp.Text:=baza.TabSetupUser2.Value;
  KomuIp.Text:=baza.TabSetupUser2Komu.Value;
  JPKF.Logfil('Отмена внесенных изменний');
end;

procedure TSetup.UserButClick(Sender: TObject);
begin
  UserW.ShowModal;
end;

procedure TSetup.FormCreate(Sender: TObject);
begin
  OpsBut.Caption:='Справочник'+#13+'системы';
//  ClearBut.Caption:='Очистка'+#13+'БД';
  namepodr.Text:='';
  Rb1.Checked:=true;
end;

procedure TSetup.OpsButClick(Sender: TObject);
begin
  baza.sql_ops_sprav.Active:=true;
  Ops.ShowModal;
end;

procedure TSetup.OpsPKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  baza.sql_Upd.Active:=false;
  baza.sql_Upd.SQL.Text:='Select OPSNAME from OPS where POSTINDEX='''+opsp.text+''' and OPSTYPE=''П''';
  baza.sql_Upd.Active:=true;
  if baza.sql_Upd.RecordCount>0 then begin
    Opsbut.Enabled:=true;
    label11.Caption:=baza.sql_Upd['OPSNAME'];
    JPKF.Logfil('Установлен почтамт '+label11.Caption);
  end else begin
    OpsBut.Enabled:=false;
    label11.Caption:='';
  end;
end;

procedure TSetup.ClearButClick(Sender: TObject);
begin
  service.ShowModal;
end;

procedure TSetup.OpsPExit(Sender: TObject);
begin
    if (JPKF.Kontrolstr(Opsp.Text)=false) then begin
      JPKF.Mess('Индекс почтамта может содержать только цифры',Mb_IconInformation,Mb_Ok);
      opsp.SetFocus;
      exit;
    end;
end;

procedure TSetup.Rb3Click(Sender: TObject);
begin
  if rb3.Checked=true then begin
    Indopst.Enabled:=true;
    GroupBox4.Caption:='Руковдитель ОПС : "'+NamePodr.Text+'"';
  end else begin
    Indopst.Enabled:=false;
  end;
end;

procedure TSetup.Rb2Click(Sender: TObject);
begin
  if rb2.Checked=true then begin
    Indopst.Enabled:=false;
    IndOpst.Text:='';
    GroupBox4.Caption:='Руковдитель подразделения : "'+NamePodr.Text+'"';
  end;
end;

procedure TSetup.Rb1Click(Sender: TObject);
begin
  if rb1.Checked=true then begin
    Indopst.Enabled:=false;
    IndOpst.Text:='';
    GroupBox4.Caption:='Руковдитель подразделения : "'+NamePodr.Text+'"';
  end;
end;

procedure TSetup.NamePodrKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  GroupBox4.Caption:='Руководитель подразделения: "'+namepodr.Text+'"';
end;

procedure TSetup.IndopsTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  baza.sql_Upd.Active:=false;
  baza.sql_Upd.SQL.Text:='Select OPSNAME from OPS where POSTINDEX='''+IndOpst.text+''' and OPSSUBM='''+opsp.text+'''';
  baza.sql_Upd.Active:=true;
  if baza.sql_Upd.RecordCount>0 then begin
    Opsbut.Enabled:=true;
    namePodr.Text:=baza.sql_Upd['OPSNAME'];
    JPKF.Logfil('Установлено ОПС '+IndOpst.Text+' - '+namePodr.Text);
  end else begin
    OpsBut.Enabled:=false;
    namePodr.Text:='';
  end;
end;

end.

