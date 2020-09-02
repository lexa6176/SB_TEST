unit SpravForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TSprav = class(TForm)
    StatusBar1: TStatusBar;
    PageSprav: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TableUser: TDBGrid;
    PanelUser: TPanel;
    PanelUserBut: TPanel;
    PanelUserDate: TPanel;
    Label1: TLabel;
    TextFm: TEdit;
    Label2: TLabel;
    TextIm: TEdit;
    Label3: TLabel;
    TextOt: TEdit;
    Label4: TLabel;
    TextDolgn: TEdit;
    Label5: TLabel;
    ListBoxUrd: TComboBox;
    Label6: TLabel;
    TextPassw: TEdit;
    ChekBoxUserStatus: TCheckBox;
    ButUserAdd: TSpeedButton;
    ButUserDel: TSpeedButton;
    ButUserEdit: TSpeedButton;
    ButUserSave: TSpeedButton;
    ButUserCansel: TSpeedButton;
    TabSheet4: TTabSheet;
    TableParam: TDBGrid;
    PanelParametry: TPanel;
    PanelParametryBut: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ListBoxType: TComboBox;
    TextName: TEdit;
    TextOpisanie: TEdit;
    TextValue: TEdit;
    ButParamAdd: TSpeedButton;
    ButParamDel: TSpeedButton;
    ButParamEdit: TSpeedButton;
    ButParamSave: TSpeedButton;
    ButParamCancel: TSpeedButton;
    TableOps: TDBGrid;
    PanelOps: TPanel;
    PanelOpsBut: TPanel;
    PanelOpsDate: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    TextIndex: TEdit;
    TextNameOps: TEdit;
    TextRegion: TEdit;
    TextArea: TEdit;
    TextCity: TEdit;
    TextStrit: TEdit;
    TextDom: TEdit;
    ButOpsAdd: TSpeedButton;
    ButOpsDel: TSpeedButton;
    ButOpsEdit: TSpeedButton;
    ButOpsSave: TSpeedButton;
    ButOpsCancel: TSpeedButton;
    ButOpsDbf: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TableDeliveryOps: TDBGrid;
    PanelDeliveryBut: TPanel;
    TableDeliveryWork: TDBGrid;
    TableDeliveryNotAdres: TDBGrid;
    ButDeliveryAdd: TSpeedButton;
    ButDeliveryDel: TSpeedButton;
    ButDeliveryEdit: TSpeedButton;
    ButDeliverySave: TSpeedButton;
    ButDeliveryCansel: TSpeedButton;
    PanelDeliveryAdress: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    TextDelivCity: TEdit;
    TextDelivStrit: TEdit;
    TextDelivDom: TEdit;
    TextDelivKorp: TEdit;
    TextDelivOps: TEdit;
    Label23: TLabel;
    TextDelivData: TEdit;
    PanelDeliveryNotAdress: TPanel;
    Label24: TLabel;
    TextDelivNotOps: TEdit;
    Label25: TLabel;
    TextDelivNotDate: TEdit;
    ButSAvNotDelive: TSpeedButton;
    ButCanNotDelive: TSpeedButton;
    GroupBox1: TGroupBox;
    TableOpsUser: TDBGrid;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label30: TLabel;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TableUserCellClick(Column: TColumn);
    procedure TableUserDblClick(Sender: TObject);
    procedure TableUserEnter(Sender: TObject);
    procedure ButUserAddClick(Sender: TObject);
    procedure ButUserEditClick(Sender: TObject);
    procedure ButUserSaveClick(Sender: TObject);
    procedure ButUserCanselClick(Sender: TObject);
    procedure ButUserDelClick(Sender: TObject);
    procedure TextFmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextImKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextOtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDolgnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBoxUrdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextPasswKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChekBoxUserStatusKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButParamAddClick(Sender: TObject);
    procedure ButParamEditClick(Sender: TObject);
    procedure ButParamSaveClick(Sender: TObject);
    procedure ButParamCancelClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure ButParamDelClick(Sender: TObject);
    procedure TableParamCellClick(Column: TColumn);
    procedure TableParamDblClick(Sender: TObject);
    procedure TableParamEnter(Sender: TObject);
    procedure TableOpsCellClick(Column: TColumn);
    procedure TableOpsDblClick(Sender: TObject);
    procedure ButOpsAddClick(Sender: TObject);
    procedure ButOpsEditClick(Sender: TObject);
    procedure ButOpsSaveClick(Sender: TObject);
    procedure ButOpsCancelClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TableOpsEnter(Sender: TObject);
    procedure ButOpsDbfClick(Sender: TObject);
    procedure TableUserKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableOpsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet3Show(Sender: TObject);
    procedure TableDeliveryOpsCellClick(Column: TColumn);
    procedure TableDeliveryOpsDblClick(Sender: TObject);
    procedure TableDeliveryOpsEnter(Sender: TObject);
    procedure TableDeliveryOpsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButDeliveryAddClick(Sender: TObject);
    procedure ButDeliveryEditClick(Sender: TObject);
    procedure ButDeliverySaveClick(Sender: TObject);
    procedure ButDeliveryCanselClick(Sender: TObject);
    procedure ButSAvNotDeliveClick(Sender: TObject);
    procedure ButCanNotDeliveClick(Sender: TObject);
    procedure TableDeliveryNotAdresDblClick(Sender: TObject);
    procedure TextDelivNotOpsKeyPress(Sender: TObject; var Key: Char);
    procedure TextDelivNotDateKeyPress(Sender: TObject; var Key: Char);
    procedure TextDelivOpsKeyPress(Sender: TObject; var Key: Char);
    procedure TextDelivDataKeyPress(Sender: TObject; var Key: Char);
    procedure TextIndexKeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet6Exit(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet5Exit(Sender: TObject);
    procedure TextDelivNotOpsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivNotDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableDeliveryNotAdresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TableDeliveryWorkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivStritKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivDomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivKorpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivOpsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextDelivDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButOpsDelClick(Sender: TObject);
    procedure ButDeliveryDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sprav     : TSprav;
  IDZ       : Int64;
  RegimUser : boolean = false;
  RegimSys  : boolean = false;
  RegimOps  : boolean = false;
  RegimDeliv: boolean = false;

  IndOpst   : String;
  NameInDbf : String;



implementation

uses MainForma, BazaForma, ProcessLoadForma;

{$R *.dfm}
// Вкладка параметры

Procedure OpenParam;
begin
  with Sprav do begin
    TableParam.Enabled:=false;
    ButParamAdd.Enabled:=false;
    ButParamDel.Enabled:=false;
    ButParamEdit.Enabled:=false;
    ButParamSave.Enabled:=true;
    ButParamCancel.Enabled:=true;
    PageSprav.Pages[1].TabVisible:=false;
    PageSprav.Pages[2].TabVisible:=false;
    PageSprav.Pages[3].TabVisible:=false;
    PanelParametry.Visible:=true;
  end;
end;

Procedure CloseParam;
begin
  with Sprav do begin
    ButParamAdd.Enabled:=false;
    ButParamDel.Enabled:=false;
    ButParamEdit.Enabled:=false;
    if baza.SQL_SYSTEM.RecordCount>0 then begin
      if Userworc.URD=0 then begin
        ButParamAdd.Enabled:=true;
        ButParamDel.Enabled:=true;
      end;
      ButParamEdit.Enabled:=true;
    end else begin
      if Userworc.URD=0 then ButParamAdd.Enabled:=true;
      ButParamDel.Enabled:=false;
      ButParamEdit.Enabled:=false;
    end;
    TableParam.Enabled:=true;
    ButParamSave.Enabled:=false;
    ButParamCancel.Enabled:=false;
    PanelParametry.Visible:=false;
    PageSprav.Pages[1].TabVisible:=true;
    PageSprav.Pages[2].TabVisible:=true;
    PageSprav.Pages[3].TabVisible:=true;
  end;
  with baza.SQL_SYSTEM do begin
    Active:=false;
    Active:=true;
    Locate('ID',IDZ,[]);
  end;
end;

Procedure TableParamClic;
begin
  with Sprav do begin
    ListBoxType.ItemIndex:=Baza.SQL_SYSTEMIDTYPE.Value;
    TextName.Text:=baza.SQL_SYSTEMNAMESPR.AsString;
    textOpisanie.Text:=baza.SQL_SYSTEMOPISANIE.AsString;
    TextValue.Text:=Baza.SQL_SYSTEMPARAMVALUE.AsString;
  end;
end;

Function ParamControl():boolean;
begin
  with Sprav do begin
    Result:=True;
    if LenGth(Trim(TextName.Text))=0 then begin
       main.Mes('Не заполнено поле "Наименование"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextOpisanie.Text))=0 then begin
       main.Mes('Не заполнено поле "Описание"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextValue.Text))=0 then begin
       main.Mes('Не заполнено поле "Значение"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
  end;
end;


// Вкладка Пользователи

procedure OpenUser;
begin
  with Sprav do begin
    IDZ:=baza.Sql_UserViewID.Value;
    TableUser.Enabled:=false;
    ButUseradd.Enabled:=false;
    ButUserDel.Enabled:=false;
    ButUserEdit.Enabled:=false;
    ButUserSave.Enabled:=true;
    ButUserCansel.Enabled:=true;
    PanelUserdate.Enabled:=true;
    PageSprav.Pages[0].TabVisible:=false;
    PageSprav.Pages[2].TabVisible:=false;
    PageSprav.Pages[3].TabVisible:=false;
  end;
end;

procedure CloseUser;
begin
  with Sprav do begin
    TableUser.Enabled:=true;
    ButUseradd.Enabled:=true;
    if baza.Sql_UserView.RecordCount>0 then begin
      ButUserDel.Enabled:=true;
      ButUserEdit.Enabled:=true;
    end;
    ButUserSave.Enabled:=false;
    ButUserCansel.Enabled:=false;
    PanelUserdate.Enabled:=false;
    PageSprav.Pages[0].TabVisible:=true;
    PageSprav.Pages[2].TabVisible:=true;
    PageSprav.Pages[3].TabVisible:=true;
  end;
  with baza.Sql_UserView do begin
    Active:=false;
    Active:=true;
    Locate('ID',IDZ,[]);
  end;

end;

Procedure TableUserClik;
begin
  with Sprav do begin
    if baza.SQL_UserView.RecordCount=0 then exit;
    textFM.Text:=Trim(baza.Sql_UserViewFM.Value);
    textIM.Text:=Trim(baza.Sql_UserViewIM.Value);
    textOT.Text:=Trim(baza.Sql_UserViewOT.Value);
    textDolgn.Text:=Trim(baza.Sql_UserViewDOLGN.Value);
    ListBoxUrd.ItemIndex:=baza.Sql_UserViewURDOST.Value;
    textPassw.Text:=Trim(baza.Sql_UserViewPassw.Value);
    if baza.Sql_UserViewSTATUS.Value=0 then
      ChekBoxUserStatus.Checked:=false else ChekBoxUserStatus.Checked:=true;
  end;
end;

Function UserControl():boolean;
begin
  with Sprav do begin
    Result:=True;
    if LenGth(Trim(TextFM.Text))=0 then begin
       main.Mes('Не заполнено поле "Фамилия"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextIM.Text))=0 then begin
       main.Mes('Не заполнено поле "Имя"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextOT.Text))=0 then begin
       main.Mes('Не заполнено поле "Отчество"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextDolgn.Text))=0 then begin
       main.Mes('Не заполнено поле "Должность"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextPassw.Text))=0 then begin
       main.Mes('Не заполнено поле "Пароль"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
  end;
end;


// Вкладка ОПС

Procedure OpenOps;
begin
  with Sprav do begin
    TableOps.Enabled:=false;
    ButOpsAdd.Enabled:=false;
    ButOpsDel.Enabled:=false;
    ButOpsEdit.Enabled:=false;
    ButOpsSave.Enabled:=true;
    ButOpsCancel.Enabled:=true;
    ButOpsDbf.Enabled:=false;
    PageSprav.Pages[0].TabVisible:=false;
    PageSprav.Pages[1].TabVisible:=false;
    PageSprav.Pages[3].TabVisible:=false;
  end;
end;

Procedure CloseOps;
begin
  with Sprav do begin
    TableOps.Enabled:=true;
    ButOpsAdd.Enabled:=true;
    if baza.SQL_OPS.RecordCount>0 then begin
      ButOpsDel.Enabled:=true;
      ButOpsEdit.Enabled:=true;
    end;
    ButOpsSave.Enabled:=false;
    ButOpsCancel.Enabled:=false;
    ButOpsDbf.Enabled:=true;
    if RegimOps=true then
    PageSprav.Pages[0].TabVisible:=true;
    PageSprav.Pages[1].TabVisible:=true;
    PageSprav.Pages[3].TabVisible:=true;
    TableOps.SetFocus;
  end;
end;

Procedure TableOpsClic;
begin
  with Sprav do begin
    if baza.sql_ops.RecordCount>0 then begin
       TextIndex.Text:=trim(baza.SQL_OPSINDOPS.AsString);
       TextNameOps.Text:=trim(baza.SQL_OPSNAMEOPS.AsString);
       TextRegion.Text:=trim(baza.SQL_OPSREGION.AsString);
       TextArea.Text:=trim(baza.SQL_OPSAREA.AsString);
       TextCity.Text:=trim(baza.SQL_OPSCITY.AsString);
       TextStrit.Text:=trim(baza.SQL_OPSSTRIT.AsString);
       TextDom.Text:=trim(baza.SQL_OPSDOM.AsString);
   end else begin
       TextIndex.Text:='';
       TextNameOps.Text:='';
       TextRegion.Text:='';
       TextArea.Text:='';
       TextCity.Text:='';
       TextStrit.Text:='';
       TextDom.Text:='';
    end;
  end;
end;

Function OpsControl():boolean;
begin
  with Sprav do begin
    Result:=True;
    if LenGth(Trim(Textnameops.Text))=0 then begin
       main.Mes('Не заполнено поле "Наименование ОПС"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextIndex.Text))=0 then begin
       main.Mes('Не заполнено поле "Индекс ОПС"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(Textregion.Text))=0 then begin
       main.Mes('Не заполнено поле "Регион"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(Textcity.Text))=0 then begin
       main.Mes('Не заполнено поле "Населенный пункт"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(Textstrit.Text))=0 then begin
       main.Mes('Не заполнено поле "Улица"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(Textdom.Text))=0 then begin
       main.Mes('Не заполнено поле "Строение"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
  end;
end;

// Вкладка Адреса доставки

Procedure OpenDelivery;
begin
  with Sprav do begin
    ButDeliveryAdd.Enabled:=false;
    ButDeliveryDel.Enabled:=false;
    ButDeliveryEdit.Enabled:=false;
    ButDeliverySave.Enabled:=true;
    ButDeliveryCansel.Enabled:=true;
    TableDeliveryOps.Enabled:=false;
    TableDeliveryWork.Enabled:=false;
    PanelDeliveryAdress.Visible:=true;
    TextDelivCity.SetFocus;
  end;
end;

Procedure CloseDelivery;
begin
  with Sprav do begin
    ButDeliveryAdd.Enabled:=true;
    ButDeliveryDel.Enabled:=true;
    ButDeliveryEdit.Enabled:=true;
    ButDeliverySave.Enabled:=false;
    ButDeliveryCansel.Enabled:=false;
    TableDeliveryOps.Enabled:=true;
    TableDeliveryWork.Enabled:=true;
    PanelDeliveryAdress.Visible:=false;
  end;
 //   baza.Sql_DeliveryAdresSprav.Active:=true;

    if Baza.Sql_DeliveryAdresSprav.RecordCount=0 then begin
      if IDZ>0 then
        baza.Sql_DeliveryAdresSprav.Locate('ID',IDZ,[]);
      with Sprav do begin
        ButDeliveryEdit.Enabled:=false;
        ButDeliveryDel.Enabled:=false;
      end;
    end else begin
      with Sprav do begin
        ButDeliveryEdit.Enabled:=true;
        ButDeliveryDel.Enabled:=true;
      end;
    end; 

end;

Procedure TableDelyveryOpsClic;
begin
  with baza.Sql_DeliveryAdresSprav do begin
    Active:=false;
    Parameters[0].Value:=baza.SQL_DeliveryOpsSpravIndops.AsString;
    Active:=true;
    if RecordCount=0 then begin
      with Sprav do begin
        ButDeliveryEdit.Enabled:=false;
        ButDeliveryDel.Enabled:=false;
      end;
    end else begin
      with Sprav do begin
        ButDeliveryEdit.Enabled:=true;
        ButDeliveryDel.Enabled:=true;
      end;
    end;
  end;
end;

Procedure TableDeliveryAdresClic;
begin

end;

Function DelyveryControl():boolean;
begin
  with Sprav do begin
    Result:=True;
    if LenGth(Trim(TextDelivCity.Text))=0 then begin
       main.Mes('Не заполнено поле "Населенный пункт"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextDelivstrit.Text))=0 then begin
       main.Mes('Не заполнено поле "Улица"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextDelivdom.Text))=0 then begin
       main.Mes('Не заполнено поле "Строение"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextDelivops.Text))=0 then begin
       main.Mes('Не заполнено поле "Индекс ОПС"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;
    if LenGth(Trim(TextDelivData.Text))=0 then begin
       main.Mes('Не заполнено поле "Не указана дата доставки"',Mb_Ok+Mb_IconError);
       Result:=false;
       Exit;
    end;    
  end;
end;

//  Открытие формы

procedure TSprav.FormCreate(Sender: TObject);
begin
  main.Log('Открыта форма работы со справочниками');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  Baza.SQL_SYSTEM.Active:=true;
  baza.Sql_UserView.Active:=true;
  PageSprav.ActivePageIndex:=0;

  if Userworc.URD<>0 then PageSprav.Pages[1].TabVisible:=false else PageSprav.Pages[1].TabVisible:=true;
end;

// Работа на вкладке Параметры

procedure TSprav.TableParamCellClick(Column: TColumn);
begin
  TableParamClic;
end;

procedure TSprav.TableParamDblClick(Sender: TObject);
begin
  TableParamClic;
end;

procedure TSprav.TableParamEnter(Sender: TObject);
begin
  TableParamClic;
end;

procedure TSprav.ButParamAddClick(Sender: TObject);
begin
  main.Log('Выбрано добавление параметра');
  RegimSys:=false;
  ListBoxType.ItemIndex:=0;
  TextName.Text:='';
  TextOpisanie.Text:='';
  TextValue.Text:='';
  OpenParam;
end;

procedure TSprav.ButParamEditClick(Sender: TObject);
begin
  main.Log('Изменение параметра');
  RegimSys:=true;
  OpenParam;
end;

procedure TSprav.ButParamSaveClick(Sender: TObject);
begin
  main.Log('Сохрарение параметра ');
  If ParamControl=false then Exit;
  try
    with baza.SP_SYSTEM do begin
      if regimSys=true then begin
        Parameters[1].Value:=baza.SQL_SYSTEMID.Value;
        IDZ:=baza.SQL_SYSTEMID.Value;
      end else begin
        IDZ:=0;
        Parameters[1].Value:=0;
      end;
      Parameters[2].Value:=1;
      Parameters[3].Value:=ListBoxType.ItemIndex;
      Parameters[4].Value:=TextName.Text;
      Parameters[5].Value:=0;
      Parameters[6].Value:=TextOpisanie.Text;
      Parameters[7].Value:=textValue.Text;
      ExecProc;
    end;
    Closeparam;
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'Сохранение парамтеров системы');
  except
  end;
end;

procedure TSprav.ButParamCancelClick(Sender: TObject);
begin
  main.Log('Отмена добавления\изменения параметра');
  CloseParam;
end;

procedure TSprav.TabSheet4Show(Sender: TObject);
begin
    ButParamAdd.Enabled:=false;
    ButParamDel.Enabled:=false;
    ButParamEdit.Enabled:=false;
    if baza.SQL_SYSTEM.RecordCount>0 then begin
      if Userworc.URD=0 then begin
        ButParamAdd.Enabled:=true;
        ButParamDel.Enabled:=true;
      end;
      ButParamEdit.Enabled:=true;
    end else begin
      if Userworc.URD=0 then ButParamAdd.Enabled:=true;
      ButParamDel.Enabled:=false;
      ButParamEdit.Enabled:=false;
    end;
end;

procedure TSprav.ButParamDelClick(Sender: TObject);
begin
  main.Log('Выбрано удаление параметра');
  try
    with baza.SP_SYSTEM do begin
      Parameters[1].Value:=baza.SQL_SYSTEMID.Value;
      Parameters[2].Value:=baza.SQL_SYSTEMIDPARAM.Value;
      Parameters[3].Value:=ListBoxType.ItemIndex;
      Parameters[4].Value:=TextName.Text;
      Parameters[5].Value:=1;
      Parameters[6].Value:=TextOpisanie.Text;
      Parameters[7].Value:=textValue.Text;
      ExecProc;
    end;
    Closeparam;
  except
  end;
end;


// Работа на вкладке Пользователи

procedure TSprav.TabSheet1Show(Sender: TObject);
begin
  if baza.Sql_UserView.RecordCount>0 then begin
    ButUserDel.Enabled:=true;
    ButUserEdit.Enabled:=true;
  end else begin
    ButUserDel.Enabled:=false;
    ButUserEdit.Enabled:=false;
  end;
  TableUser.SetFocus;
end;

procedure TSprav.TableUserCellClick(Column: TColumn);
begin
  TableUserClik;
end;

procedure TSprav.TableUserDblClick(Sender: TObject);
begin
  TableUserClik;
end;

procedure TSprav.TableUserEnter(Sender: TObject);
begin
  TableUserClik;
end;

procedure TSprav.TableUserKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TableUserClik;
end;

procedure TSprav.ButUserAddClick(Sender: TObject);
begin
  main.Log('Добавление пользователя ');
  textFM.Text:='';
  textIM.Text:='';
  textOT.Text:='';
  textDolgn.Text:='';
  ListBoxUrd.ItemIndex:=3;
  textPassw.Text:='';
  ChekBoxUserStatus.Checked:=false;
  RegimUser:=false;
  OpenUser;
  TextFm.SetFocus;
end;

procedure TSprav.ButUserEditClick(Sender: TObject);
begin
  main.Log('Изменение параметров пользователя');
  RegimUser:=true;
  OpenUser;
  TextFm.SetFocus;
end;

procedure TSprav.ButUserSaveClick(Sender: TObject);
Var ST: string;
begin
  main.Log('Сохранение внесенных изменений');
  if UserControl=false then Exit;
  try
    with baza.SP_USERS do begin
      if RegimUser=false then begin
        Parameters[1].Value:=0;
        IDZ:=0;
      end else begin
        Parameters[1].Value:=IDZ;
      end;
      Parameters[2].Value:=trim(TextFm.Text);
      Parameters[3].Value:=trim(TextIM.Text);
      Parameters[4].Value:=trim(TextOT.Text);
      Parameters[5].Value:=trim(TextDolgn.Text);
      Parameters[6].Value:=trim(TextPassw.Text);
      Parameters[7].Value:=ListBoxUrd.ItemIndex;
      if ChekBoxUserStatus.Checked=false then  Parameters[8].Value:=0
       else Parameters[8].Value:=1;
      ExecProc;
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Сохранение данных пользователя ');
      if Parameters[0].Value=0 then begin
        Main.Mes('Данные успешно сохранены',Mb_Ok+Mb_iconInformation);
        CloseUser;
        if IDZ=UserWorc.ID then begin
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
                GM2.Enabled:=true;
                GM21.Enabled:=true;
                GM22.Enabled:=true;
                GM23.Enabled:=true;
                GM24.Enabled:=true;
               // GM25.Enabled:=true;
                GM3.Enabled:=true;
                GM42.Enabled:=true;
              end;
              ST:='Администратор';
            end;
            1: begin
              with main do begin
                GM2.Enabled:=true;
                GM21.Enabled:=true;
                GM22.Enabled:=true;
                GM23.Enabled:=true;
                GM24.Enabled:=true;
                //GM25.Enabled:=true;
                GM3.Enabled:=true;
                GM42.Enabled:=true;
              end;
              ST:='Контролер';
            end;
            2: begin
              with main do begin
                GM2.Enabled:=true;
                GM21.Enabled:=true;
                GM22.Enabled:=true;
                GM23.Enabled:=true;
                GM24.Enabled:=true;
               // GM25.Enabled:=true;
                GM3.Enabled:=true;
                GM42.Enabled:=false;
              end;
              ST:='Оператор';
            end;
            3: begin
              with main do begin
                GM2.Enabled:=true;
                GM21.Enabled:=false;
                GM22.Enabled:=false;
                GM23.Enabled:=false;
                GM24.Enabled:=false;
               // GM25.Enabled:=true;
                GM3.Enabled:=true;
                GM42.Enabled:=false;
              end;
              ST:='Оператор КСУ';
            end;
          end;
          with main do begin
            SB.Panels[1].Text:=UserWorc.ABV;
            SB.Panels[2].Text:=ST;
            Sprav.Close;
          end;
        end;
      end else
        Main.Mes('Ошибка сохранения данных',Mb_Ok+Mb_iconInformation)
    end;
  except
  end;
end;

procedure TSprav.ButUserCanselClick(Sender: TObject);
begin
  main.Log('Отмена внесенных изменений пользователя');
  CloseUser;
  TableUserClik;
end;

procedure TSprav.ButUserDelClick(Sender: TObject);
begin
  main.Log('Удаление пользователя');
  try
    with baza.SP_USERS do begin
      Parameters[1].Value:=IDZ*-1;
      Parameters[2].Value:=trim(TextFm.Text);
      Parameters[3].Value:=trim(TextIM.Text);
      Parameters[4].Value:=trim(TextOT.Text);
      Parameters[5].Value:=trim(TextDolgn.Text);
      Parameters[6].Value:=trim(TextPassw.Text);
      Parameters[7].Value:=ListBoxUrd.ItemIndex;
      if ChekBoxUserStatus.Checked=false then  baza.Sql_UserViewSTATUS.Value:=0
       else baza.Sql_UserViewSTATUS.Value:=2;
      ExecProc;
      if Parameters[0].Value=0 then begin
        Main.Mes('Данные успешно удалены',Mb_Ok+Mb_iconInformation);
        CloseUser;
      end else
        Main.Mes('Ошибка удаления данных',Mb_Ok+Mb_iconInformation)
    end;
  except
  end;
end;

procedure TSprav.TextFmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextIm.SetFocus;
end;

procedure TSprav.TextImKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextOt.SetFocus;
end;

procedure TSprav.TextOtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextDolgn.SetFocus;
end;

procedure TSprav.TextDolgnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then ListBoxUrd.SetFocus;
end;

procedure TSprav.ListBoxUrdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then TextPassw.SetFocus;
end;

procedure TSprav.TextPasswKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then ChekBoxUserStatus.SetFocus;
end;

procedure TSprav.ChekBoxUserStatusKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=vk_return then ButUserSave.Click;
end;

// Работа на вкладке ОПС

procedure TSprav.TableOpsCellClick(Column: TColumn);
begin
  TableOpsClic;
end;

procedure TSprav.TableOpsDblClick(Sender: TObject);
begin
  TableOpsClic;
end;

procedure TSprav.TableOpsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TableOpsClic;
end;

procedure TSprav.ButOpsAddClick(Sender: TObject);
begin
  main.Log('Добавление ОПС');
  RegimOps:=false;
  TextIndex.Text:='';
  TextNameOps.Text:='';
  TextRegion.Text:='';
  TextArea.Text:='';
  TextCity.Text:='';
  TextStrit.Text:='';
  TextDom.Text:='';
  OpenOps;
end;

procedure TSprav.ButOpsEditClick(Sender: TObject);
begin
  main.Log('Изменние парамтеров ОПС');
  IDZ:=baza.SQL_OPS.RecNo;
  RegimOps:=true;
  OpenOps
end;

procedure TSprav.ButOpsSaveClick(Sender: TObject);
begin

  if OpsControl=false then Exit;
  main.Log('Сохранение внесенных изменений');
  with baza.SP_CHEK do begin
    main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
    Parameters[1].Value:=1;
    Parameters[2].Value:=TextIndex.Text;
    ExecProc;
    if Parameters[0].Value=0 then
      If Parameters[3].Value=0 then begin
        main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation);
        Exit;
      end;
  end;
  try
    with baza.SP_OPS do begin
      IndOpst:=trim(TextIndex.Text);
      Parameters[1].Value:=trim(TextIndex.Text);
      Parameters[2].Value:=trim(TextNameOps.Text);
      if RegimOps=false then Parameters[3].Value:=0 else Parameters[3].Value:=1;
      Parameters[4].Value:=trim(TextRegion.Text);
      Parameters[5].Value:=trim(TextArea.Text);
      Parameters[6].Value:=trim(TextCity.Text);
      Parameters[7].Value:=trim(TextStrit.Text);
      Parameters[8].Value:=trim(TextDom.Text);
      baza.SQL_SETUP.Active:=false;
      baza.SQL_SETUP.Parameters[0].Value:='IndexPoct';
      baza.SQL_SETUP.Active:=true;
      Parameters[9].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
      baza.SQL_SETUP.Active:=false;
      baza.SQL_SETUP.Parameters[0].Value:='NamePoct';
      baza.SQL_SETUP.Active:=true;
      Parameters[10].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
      baza.SQL_SETUP.Active:=false;
      baza.SQL_SETUP.Parameters[0].Value:='IndexUfps';
      baza.SQL_SETUP.Active:=true;
      Parameters[11].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
      baza.SQL_SETUP.Active:=false;
      baza.SQL_SETUP.Parameters[0].Value:='NameUfps';
      baza.SQL_SETUP.Active:=true;
      Parameters[12].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
      baza.SQL_SETUP.Active:=false;
      ExecProc;
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Сохранение данных ОПС');
      if Parameters[0].Value=0 then begin
        Main.Mes('Данные об ОПС успешно сохранены',MB_OK+MB_IconInformation);
        baza.SQL_OPS.Active:=false;
        baza.SQL_OPS.Active:=true;
        baza.SQL_OPS.Locate('INDOPS',Indopst,[]);
        CloseOps;

      end else Main.Mes('Ошибка сохранения данные об ОПС',MB_OK+MB_IconError);
    end;
  except

  end;
end;

procedure TSprav.ButOpsCancelClick(Sender: TObject);
begin
  main.Log('Отмена Добавления\Изменния данных ОПС');
  CloseOps;
end;

procedure TSprav.TabSheet2Show(Sender: TObject);
begin
  with baza.SQL_OPS do begin
    Active:=false;
    baza.SQL_SETUP.Active:=false;
    baza.SQL_SETUP.Parameters[0].Value:='IndexUfps';   
    baza.SQL_SETUP.Active:=true;
    Parameters[0].Value:=baza.SQL_SETUPPARAMVALUE.AsString;
    baza.SQL_SETUP.Active:=false;
    baza.SQL_SETUP.Parameters[0].Value:='IndexPoct';
    baza.SQL_SETUP.Active:=true;
    Parameters[1].Value:=baza.SQL_SETUPPARAMVALUE.AsString;
    baza.SQL_SETUP.Active:=false;
   Active:=true;
  end;
  if baza.SQL_OPS.RecordCount>0 then begin
    ButOpsDel.Enabled:=true;
    ButOpsEdit.Enabled:=true;
  end else begin
    ButOpsDel.Enabled:=false;
    ButOpsEdit.Enabled:=false;
  end;
  TableOps.SetFocus;
end;

procedure TSprav.TableOpsEnter(Sender: TObject);
begin
  TableOpsClic
end;

procedure TSprav.ButOpsDbfClick(Sender: TObject);

begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Импорт DBF');
  baza.DBF.Active:=false;
  NameInDbf:='';
  if not PromptForFileName(NameInDbf,'','','','',false) then exit;
  with baza.DBF do begin
    DbfFilename:=NameInDbf;
    try
      OEM:=true;      
      Active:=true;
    except
    end;
    if Active=false then begin
      main.Mes('Ошибка открытия файла для импорта',Mb_Ok+Mb_iconError);
      exit;
    end;
    baza.SQL_SETUP.Active:=false;
    baza.SQL_SETUP.Parameters[0].Value:='IndexPoct';
    baza.SQL_SETUP.Active:=true;
    Filter:='OPSSUBM='''+Trim(baza.SQL_SETUPPARAMVALUE.AsString)+'''';
    Baza.SQL_SETUP.Active:=false;
    FilterEd:=true;
    First;
    ProcessLoad.Procces.MinValue:=0;
    ProcessLoad.Procces.MaxValue:=RecordCount;
    ProcessLoad.Show;
    While not EOF do begin
      try
        with baza.SP_OPS do begin
          Parameters[1].Value:=trim(baza.DBF['INDEX']);
          Parameters[2].Value:=trim(baza.DBF['OPSNAME']);
          Parameters[3].Value:=0;
          Parameters[4].Value:=trim(baza.DBF['REGION']);
          Parameters[5].Value:=trim(baza.DBF['AREA']);
          Parameters[6].Value:=trim(baza.DBF['CITY']);
          Parameters[7].Value:='';
          Parameters[8].Value:='';
          baza.SQL_SETUP.Active:=false;
          baza.SQL_SETUP.Parameters[0].Value:='IndexPoct';
          baza.SQL_SETUP.Active:=true;
          Parameters[9].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
          baza.SQL_SETUP.Active:=false;
          baza.SQL_SETUP.Parameters[0].Value:='NamePoct';
          baza.SQL_SETUP.Active:=true;
          Parameters[10].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
          baza.SQL_SETUP.Active:=false;
          baza.SQL_SETUP.Parameters[0].Value:='IndexUfps';
          baza.SQL_SETUP.Active:=true;
          Parameters[11].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
          baza.SQL_SETUP.Active:=false;
          baza.SQL_SETUP.Parameters[0].Value:='NameUfps';
          baza.SQL_SETUP.Active:=true;
          Parameters[12].Value:=trim(baza.SQL_SETUPPARAMVALUE.AsString);
          baza.SQL_SETUP.Active:=false;
          ExecProc;
        end;
      except

      end;
      ProcessLoad.Procces.Progress:=RecNo;
      Application.ProcessMessages;
      Next;
    End;
    ProcessLoad.Close;
    Active:=false;
    Main.Mes('Справочник обработан, проверьте результаты',MB_OK+MB_IconInformation);
    baza.SQL_OPS.Active:=false;
    baza.SQL_OPS.Active:=true;
    CloseOps;
  end;
end;

procedure TSprav.TextIndexKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in  ['0'..'9']) then Key := #0;
end;



// Работа на вкладке Адреса доставки

procedure TSprav.TabSheet3Show(Sender: TObject);
begin
  with baza.SQL_DeliveryOpsSprav do begin
    Active:=false;
    Active:=true;
  end;
  TableDeliveryOps.SetFocus;
end;

procedure TSprav.TableDeliveryOpsCellClick(Column: TColumn);
begin
  TableDelyveryOpsClic;
end;

procedure TSprav.TableDeliveryOpsDblClick(Sender: TObject);
begin
  TableDelyveryOpsClic;
end;

procedure TSprav.TableDeliveryOpsEnter(Sender: TObject);
begin
  TableDelyveryOpsClic;
end;

procedure TSprav.TableDeliveryOpsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TableDelyveryOpsClic;
end;

procedure TSprav.ButDeliveryAddClick(Sender: TObject);
begin
  main.Log('Добавление адреса доставки');
  IDZ:=0;
  TextDelivCity.Text:='';
  TextDelivStrit.Text:='';
  TextDelivDom.Text:='';
  TextDelivKorp.Text:='';
  TextDelivOps.Text:='';
  TextDelivData.Text:='';
  OpenDelivery;
end;

procedure TSprav.ButDeliveryEditClick(Sender: TObject);
begin
  main.Log('Изменнеие параметров адреса доставки');
  RegimDeliv:=true;
  RegimDeliv:=false;
  IDZ:=baza.Sql_DeliveryAdresSpravID.Value;
  TextDelivCity.Text:=Trim(baza.Sql_DeliveryAdresSpravCITY.AsString);
  TextDelivStrit.Text:=Trim(baza.SQl_DeliveryAdresSpravSTRIT.AsString);
  TextDelivDom.Text:=Trim(baza.Sql_DeliveryAdresSpravDOM.AsString);
  TextDelivKorp.Text:=Trim(baza.Sql_DeliveryAdresSpravKORP.AsString);
  TextDelivOps.Text:=Trim(baza.Sql_DeliveryAdresSpravINDOPS.AsString);
  TextDelivData.Text:=Trim(baza.Sql_DeliveryAdresSpravDatDelyvery.AsString);
  OpenDelivery;
end;

procedure TSprav.ButDeliverySaveClick(Sender: TObject);
Var IO :String;
begin

  main.Log('Сохранение параметров адреса доставки');
  If Length(Trim(TextDelivCity.Text))=0 then begin
    Main.Mes('Необходимо укзать населнный пункт',Mb_Ok+Mb_IconError);
    TextDelivCity.SetFocus;
    Exit;
  end;
  If Length(Trim(TextDelivStrit.Text))=0 then begin
    Main.Mes('Необходимо укзать улицу',Mb_Ok+Mb_IconError);
    TextDelivStrit.SetFocus;
    Exit;
  end;

  If Length(Trim(TextDelivDom.Text))=0 then begin
    Main.Mes('Необходимо укзать номер дома',Mb_Ok+Mb_IconError);
    TextDelivDom.SetFocus;
    Exit;
  end;

  If Length(TextDelivOps.Text)<>6 then begin
    Main.Mes('Индекс ОПС состит из 6 цифр',Mb_Ok+Mb_IconError);
    TextDelivOps.SetFocus;
    Exit;
  end;

  If Length(TextDelivData.Text)=0 then begin
    Main.Mes('Необходимо обязательно укзать дату доставки',Mb_Ok+Mb_IconError);
    TextDelivData.SetFocus;
    Exit;
  end;

  If (StrToInt(TextDelivData.Text)<1) or (StrToInt(TextDelivData.Text)>31) then begin
    Main.Mes('Дата доставки лежит в диапазоне от 1 до 31 числа',Mb_Ok+Mb_IconError);
    TextDelivData.SetFocus;
    Exit;
  end;

  IO:=TextDelivOps.Text;
  IF DelyveryControl=false then exit;
  with baza.SP_CHEK do begin
    main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
    Parameters[1].Value:=1;
    Parameters[2].Value:=IO;
    ExecProc;
    if Parameters[0].Value=0 then
      If Parameters[3].Value=0 then begin
        main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation);
        Exit;
      end;
  end;

  IF IDZ=0 then begin
    with baza.SP_DELIDERY_CH do begin
      Parameters[1].Value:=textdelivcity.Text;
      Parameters[2].Value:=textdelivstrit.Text;
      Parameters[3].Value:=textdelivdom.Text;
      Parameters[4].Value:=textdelivkorp.Text;
      Execproc;
      If LenGth(Trim(Parameters[0].Value))=6 then begin
        Main.Mes('Такой адрес уже обслуживается ОПС '+Parameters[0].Value,Mb_Ok+MB_iconError);
        Exit;
      end;
    end;
  end;
  with baza.SP_DELYVERY do begin
    Parameters[1].Value:=IDZ;
    Parameters[2].Value:=textDelivops.Text;
    Parameters[3].Value:=textdelivcity.Text;
    Parameters[4].Value:=textdelivstrit.Text;
    Parameters[5].Value:=textdelivdom.Text;
    Parameters[6].Value:=textdelivkorp.Text;
    Parameters[7].Value:=StrToInt(TEXTDELIVDATA.Text);
    ExecProc;
    If Parameters[0].Value=0 then begin
      TableDeliveryOps.Enabled:=true;
      //Main.Mes('Адрес добавлен\исправлен',Mb_Ok+MB_iconinformation);
      baza.SQL_DeliveryOpsSprav.Active:=false;
      baza.SQL_DeliveryOpsSprav.Active:=true;
      if IDZ>0 then baza.SQL_DeliveryOpsSprav.Locate('INDOPS',IO,[]);
      CloseDelivery;
      TableDelyveryOpsClic;
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Добавление адреса доставки ');
    end else Main.Mes('Ошибка добавления\изменения адреса',Mb_Ok+MB_iconError);
  end;
end;

procedure TSprav.ButDeliveryCanselClick(Sender: TObject);
begin
  main.Log('Отмена добавления\изменения парамтеров адресов доставки');
  CloseDelivery;
end;

procedure TSprav.ButSAvNotDeliveClick(Sender: TObject);
begin
  main.Log('Сохранение внесенных изменений не привязанного адреса доставки');
  If Length(textDelivNotops.Text)<>6 then begin
    Main.Mes('Индекс ОПС состит из 6 цифр',Mb_Ok+Mb_IconError);
    TextDelivNotops.SetFocus;
    Exit;
  end;
  If Length(TextDelivNotdate.Text)=0 then begin
    Main.Mes('Необходимо обязательно укзать дату доставки',Mb_Ok+Mb_IconError);
    TextDelivNotdate.SetFocus;
    Exit;
  end;
  If (StrToInt(TextDelivNotdate.Text)<1) or (StrToInt(TextDelivNotdate.Text)>31) then begin
    Main.Mes('Дата доставки лежит в диапазоне от 1 до 31 числа',Mb_Ok+Mb_IconError);
    TextDelivNotdate.SetFocus;
    Exit;
  end;
  with baza.SP_CHEK do begin
    main.Log('Проверка индекса на соотвесвтие принадлежности почтамту');
    Parameters[1].Value:=1;
    Parameters[2].Value:=TextDelivNotOps.Text;
    ExecProc;
    if Parameters[0].Value=0 then
      If Parameters[3].Value=0 then begin
        main.Mes('Нет такого ОПС в БД либо индекс не вашего почтамта',Mb_ok+Mb_iconInformation);
        Exit;
      end;
  end;

  IDZ:=baza.SQl_DeliveryAdresNotOps.RecNo;
  with baza.SP_DELYVERY do begin
    Parameters[1].Value:=baza.SQl_DeliveryAdresNotOpsID.Value;
    Parameters[2].Value:=textDelivNotops.Text;
    Parameters[3].Value:=Trim(baza.SQl_DeliveryAdresNotOpsCITY.AsString);
    Parameters[4].Value:=Trim(baza.SQl_DeliveryAdresNotOpsSTRIT.AsString);
    Parameters[5].Value:=Trim(baza.SQl_DeliveryAdresNotOpsDOM.AsString);
    Parameters[6].Value:=Trim(baza.SQl_DeliveryAdresNotOpsKORP.AsString);
    Parameters[7].Value:=StrToInt(TextDelivNotdate.Text);
    ExecProc;
    If Parameters[0].Value=0 then begin
     // Main.Mes('Адрес добавлен\исправлен',Mb_Ok+MB_iconinformation);
      PanelDeliveryNotAdress.Visible:=false;
      baza.SQl_DeliveryAdresNotOps.Active:=false;
      baza.SQl_DeliveryAdresNotOps.Active:=true;
      TableDeliveryNotAdres.Enabled:=true;
      baza.SQl_DeliveryAdresNotOps.RecNo:=IDZ;
      TableDeliveryNotAdres.SetFocus;
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Добавлен индекс к адресу доставки');
    end else Main.Mes('Ошибка добавления\изменения адреса',Mb_Ok+MB_iconError);
  end;
end;

procedure TSprav.ButCanNotDeliveClick(Sender: TObject);
begin
  main.Log('Отмена внесения изменений в прамтерах не рпривязанного адреса лоставки');
  PanelDeliveryNotAdress.Visible:=false;
  TableDeliveryNotAdres.Enabled:=true;
  TableDeliveryNotAdres.SetFocus;
end;

procedure TSprav.TableDeliveryNotAdresDblClick(Sender: TObject);
begin
  if baza.SQl_DeliveryAdresNotOps.RecordCount=0 then exit;
  main.Log('Изменние пармтеров не привязанного адреса доставки');
  IDZ:=baza.Sql_DeliveryAdresSpravID.Value;
  textDelivNotops.Text:='';
  TextDelivNotdate.Text:='';
  PanelDeliveryNotAdress.Visible:=true;
  TextDelivNotOps.SetFocus;
end;

procedure TSprav.TextDelivNotOpsKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in  ['0'..'9',#8]) then Key := #0;
end;

procedure TSprav.TextDelivNotDateKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in  ['0'..'9',#8]) then Key := #0;
end;

procedure TSprav.TextDelivOpsKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in  ['0'..'9',#8]) then Key := #0;
end;

procedure TSprav.TextDelivDataKeyPress(Sender: TObject; var Key: Char);
begin
    if not (Key in  ['0'..'9',#8]) then Key := #0;
end;

// закрытие формы
procedure TSprav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  main.Log('Форма работы со справочниками открыта');
  Sprav.Free;
end;

procedure TSprav.TabSheet6Show(Sender: TObject);
begin
  baza.SQl_DeliveryAdresNotOps.Active:=true;
end;

procedure TSprav.TabSheet6Exit(Sender: TObject);
begin
baza.SQl_DeliveryAdresNotOps.Active:=false;
end;

procedure TSprav.TabSheet5Show(Sender: TObject);
begin
  baza.SQL_DeliveryOpsSprav.Active:=false;
  baza.SQL_DeliveryOpsSprav.Active:=true;
end;

procedure TSprav.TabSheet5Exit(Sender: TObject);
begin
  //baza.SQL_DeliveryOpsSprav.Active:=false;
  //baza.Sql_DeliveryAdresSprav.active:=false;
end;

procedure TSprav.TextDelivNotOpsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_return then  TextDelivNotDate.SetFocus;
end;

procedure TSprav.TextDelivNotDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=Vk_return then ButSAvNotDelive.Click;
end;

procedure TSprav.TableDeliveryNotAdresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=vk_return then begin
    if baza.SQl_DeliveryAdresNotOps.RecordCount=0 then exit;
    main.Log('Изменние парамтеров не прнивязанного адреса доставки');
    IDZ:=baza.Sql_DeliveryAdresSpravID.Value;
    textDelivNotops.Text:='';
    TextDelivNotdate.Text:='';
    PanelDeliveryNotAdress.Visible:=true;
    TextDelivNotOps.SetFocus;
  end;
end;


procedure TSprav.TableDeliveryWorkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_return then ButDeliveryEdit.Click;
  if Key=Vk_Insert then ButDeliveryAdd.Click;
end;

procedure TSprav.TextDelivCityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then  TextDelivStrit.SetFocus;
end;

procedure TSprav.TextDelivStritKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then TextDelivDom.SetFocus;
end;

procedure TSprav.TextDelivDomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then TextDelivKorp.SetFocus;
end;

procedure TSprav.TextDelivKorpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then TextDelivOps.setfocus;
end;

procedure TSprav.TextDelivOpsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then TextDelivData.SetFocus;
end;

procedure TSprav.TextDelivDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=Vk_Return then ButDeliverySave.Click;
end;

procedure TSprav.ButOpsDelClick(Sender: TObject);
begin
  main.Log('Удаление ОПС');
end;

procedure TSprav.ButDeliveryDelClick(Sender: TObject);
begin
  main.Log('Удаление адреса доставки');
end;

end.
