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
  main.Log('�������� ����� ������ ��������');
  ReestryForOps.Free;
end;

procedure TReestryForOps.FormCreate(Sender: TObject);

begin
  main.Log('�������� ����� ������ ��������');
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
  mh: array[1..12] of string = ('������', '�������',
            '����', '������', '���', '����', '����',
            '������', '��������', '�������', '������',
            '�������');
begin
  main.Log('������������ �������');
  if CheckBoxOps.Checked=true then begin
    main.Log('�������� ������������ ��������');
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'�������� ������������ ��������');
    with baza.sql_reestr_ops_List do begin
      active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Text);
      Parameters[1].Value:=StrToInt(MesBox.Text);
      active:=true;
      if RecordCount>0 then begin
        main.log('��� � ��������!!!');
        while not EOF do begin
          with baza.SQL_REESTR_OPS do begin
            Active:=false;
            main.Log('����� ���������� ��� ��������� � ������� �� ��� '+baza.SQL_REESTR_OPS_LISTINDOPS.Value+' ��� '+GodBox.Text+' ����� '+MesBox.Text);
            Parameters[0].Value:=StrToInt(GodBox.Text);
            Parameters[1].Value:=StrToInt(MesBox.Text);
            Parameters[2].Value:=baza.SQL_REESTR_OPS_LISTINDOPS.Value;
            Active:=true;
            main.RegWorc(UserWorc.ID,NameArm,NameUser,'������������ �������� ��� ��� '+Trim(baza.SQL_REESTR_OPS_LISTINDOPS.Value));
            if RecordCount>0 then begin
              main.Log('������������ ������� ������');
              with baza.SP_STATEMENT do begin
                Active:=false;
                Parameters[1].Value:=StrToInt(GodBox.Text);
                Parameters[2].Value:=StrToInt(MesBox.Text);
                Parameters[3].Value:=Trim(baza.SQL_REESTR_OPS_LISTINDOPS.Value);
                Active:=true;
               end;
              Reporting.QRLabel14.Caption:=mh[baza.SQL_REESTR_OPSMES.Value+1]+' ����� '+IntToStr(baza.SQL_REESTR_OPSGOD.Value)+' ����';
              if CheckBoxPrn.Checked=false then Reporting.ReestrOps.PreviewModal else Reporting.ReestrOps.Print;
              main.Log('����������� ������� ���������');
            end else main.Log('��� ���������� ��� ��������� � ������');
          end;
          Next;
        end;
      end else main.Mes('��� �������� ��� ����������� ��������',Mb_ok+Mb_iconInformation);
    end;
  end else begin
    if Length(Trim(textOpst.Text))=0 then begin
      Main.Mes('���������� ������ ������ ���',Mb_ok+Mb_iconInformation);
      TextOpst.SetFocus;
      Exit;
    end;
    main.Log('������������ ������� ��� ���');
    main.RegWorc(UserWorc.ID,NameArm,NameUser,'������������ �������� ��� ��� '+Trim(TextOpst.Text));
    with baza.SP_CHEK do begin
      main.Log('�������� ������� �� ����������� �������������� ��������');
      Parameters[1].Value:=1;
      Parameters[2].Value:=TextOpsT.Text;
      ExecProc;
      if Parameters[0].Value=0 then
        If Parameters[3].Value=0 then begin
          main.Mes('��� ������ ��� � �� ���� ������ �� ������ ��������',Mb_ok+Mb_iconInformation);
          Exit;
        end;
    end;
    if length(trim(textOpst.Text))<>6 then begin
      main.Mes('�� ������ ������ ���',Mb_iconError+Mb_Ok);
      Exit;
    end;
    with baza.SQL_REESTR_OPS do begin
      main.Log('����� ���������� ��� ��������� � ������� �� ��� '+textOpsT.Text+' ��� '+GodBox.Text+' ����� '+MesBox.Text);
      Active:=false;
      Parameters[0].Value:=StrToInt(GodBox.Text);
      Parameters[1].Value:=StrToInt(MesBox.Text);
      Parameters[2].Value:=textOpsT.Text;
      Active:=true;
      if RecordCount>0 then begin
        main.Log('������������ ������� ������');
        with baza.SP_STATEMENT do begin
          Active:=false;
          Parameters[1].Value:=StrToInt(GodBox.Text);
          Parameters[2].Value:=StrToInt(MesBox.Text);
          Parameters[3].Value:=Trim(textOpsT.Text);
          Active:=true;
        end;
        main.Log('����������� ������� ���������');
        Reporting.QRLabel14.Caption:=mh[baza.SQL_REESTR_OPSMES.Value+1]+' ����� '+IntToStr(baza.SQL_REESTR_OPSGOD.Value)+' ����';
        if CheckBoxPrn.Checked=false then Reporting.ReestrOps.Preview else Reporting.ReestrOps.Print
      end else Main.Mes('��� �������� ��� ������������ ��������',Mb_ok+Mb_iconError);
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
