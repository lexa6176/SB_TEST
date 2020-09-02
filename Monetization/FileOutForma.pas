unit FileOutForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, ExtCtrls, Gauges,StrUtils;

type
  TFileOut = class(TForm)
    PanelFiltr: TPanel;
    PanelBut: TPanel;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    TableFileOut: TDBGrid;
    ButCreate: TSpeedButton;
    ButAddOut: TSpeedButton;
    ButPrn: TSpeedButton;
    ButClose: TSpeedButton;
    Label1: TLabel;
    D1: TDateTimePicker;
    Label2: TLabel;
    D2: TDateTimePicker;
    Label3: TLabel;
    TextFileNameT: TEdit;
    Label4: TLabel;
    ButFltr: TSpeedButton;
    Process: TGauge;
    CheckBoxCreat: TCheckBox;
    CheckBoxClose: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButFltrClick(Sender: TObject);
    procedure ButAddOutClick(Sender: TObject);
    procedure ButCloseClick(Sender: TObject);
    procedure TableFileOutCellClick(Column: TColumn);
    procedure TableFileOutEnter(Sender: TObject);
    procedure TableFileOutDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButPrnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileOut: TFileOut;
  VF      : boolean = false;
  
implementation

uses BazaForma, MainForma, ReportingForma;

{$R *.dfm}


//Определяет какая цифра соответствует числу.
function IntToDigit(aNum : Byte) : String;
const
  SelfName : String = 'IntToDigit.';
begin
  case aNum of
    0..9 : Result := IntToStr(aNum);
    10   : Result := 'A';
    11   : Result := 'B';
    12   : Result := 'C';
    13   : Result := 'D';
    14   : Result := 'E';
    15   : Result := 'F';
    16   : Result := 'G';
    17   : Result := 'H';
    18   : Result := 'I';
    19   : Result := 'J';
    20   : Result := 'K';
    21   : Result := 'L';
    22   : Result := 'M';
    23   : Result := 'N';
    24   : Result := 'O';
    25   : Result := 'P';
    26   : Result := 'Q';
    27   : Result := 'R';
    28   : Result := 'S';
    29   : Result := 'T';
    30   : Result := 'U';
    31   : Result := 'V';
    32   : Result := 'W';
    33   : Result := 'X';
    34   : Result := 'Y';
    35   : Result := 'Z';
  else
    Raise Exception.Create(SelfName + ' Числу не сопоставлена цифра!');
  end;
end;
 
//Определяет какое число соответствует цифре.
function DigitToInt(aDigit : AnsiChar; aBase : Byte) : Byte;
const
  SelfName : String = 'DigitToInt.';
begin
  if aBase < 2 then
    Raise Exception.Create(SelfName + ' Основание системы счисления должно быть >= 2!')
  ;
  case aDigit of
    '0'..'9' : Result := StrToInt(aDigit);
    'A', 'a' : Result := 10;
    'B', 'b' : Result := 11;
    'C', 'c' : Result := 12;
    'D', 'd' : Result := 13;
    'E', 'e' : Result := 14;
    'F', 'f' : Result := 15;
    'G', 'g' : Result := 16;
    'H', 'h' : Result := 17;
    'I', 'i' : Result := 18;
    'J', 'j' : Result := 19;
    'K', 'k' : Result := 20;
    'L', 'l' : Result := 21;
    'M', 'm' : Result := 22;
    'N', 'n' : Result := 23;
    'O', 'o' : Result := 24;
    'P', 'p' : Result := 25;
    'Q', 'q' : Result := 26;
    'R', 'r' : Result := 27;
    'S', 's' : Result := 28;
    'T', 't' : Result := 29;
    'U', 'u' : Result := 30;
    'V', 'v' : Result := 31;
    'W', 'w' : Result := 32;
    'X', 'x' : Result := 33;
    'Y', 'y' : Result := 34;
    'Z', 'z' : Result := 35;
  else
    Raise Exception.Create(SelfName + ' Неизвестный символ в представлении числа!');
  end;
  if Result > aBase - 1 then
    Raise Exception.Create(SelfName + ' В данной системе счисления нет такой цифры!')
  ;
end;
 
//По записи числа в системе счисления с онованием aBase, определяет само это число.
function XcimalStrToNumber(aStrXcimal : String; aBase : Byte) : Extended;
const
  SelfName : String = 'XcimalStrToNumber.';
var
  i, j      : Integer;
  StrInt    : String;
  StrFrac   : String;
  Pos1      : Integer;
 
  IntPart    : Extended;
  FracPart   : Extended;
begin
  if Length(aStrXcimal) = 0 then
    Raise Exception.Create(SelfName + ' Не задано число!')
  ;
 
  //Ищем десятичную точку. Она у нас обозначается знаком запятая: ','.
  Pos1 := Pos(',', aStrXcimal);
 
  //Определяем подстроку с записью целой части числа
  //и подстроку с записью дробной части.
  if Pos1 = 0 then begin
    //Значит число состоит только из целой части.
    StrInt := aStrXcimal;
    StrFrac := '';
  end else begin
    //Число имеет целую и дробную части.
    StrInt := LeftStr(aStrXcimal, Pos1 - 1);
    StrFrac := Copy(aStrXcimal, Pos1 + 1, Length(aStrXcimal) - Pos1);
  end;

  //Определяем значение целой части числа.
  IntPart := 0;
  for i := 1 to Length(StrInt) do begin
    //Порядок разряда = позиции разряда при отсчёте от нуля в направлении справа налево.
    j := Length(StrInt) - i;
    IntPart := IntPart + DigitToInt(StrInt[i], aBase) * Power(aBase, j);
  end;
 
  //Определяем значение дробной части числа.
  //В начале вычисляем значение аналогично тому, как это сделано для целой части:
  FracPart := 0;
  for i := 1 to Length(StrFrac) do begin
    j := Length(StrFrac) - i;
    FracPart := FracPart + DigitToInt(StrFrac[i], aBase) * Power(aBase, j);
  end;
  //Теперь учитываем экспоненциальную часть:
  FracPart := FracPart / Power(aBase, Length(StrFrac));
 
  //Получаем число, которое соответствует записи aStrXcimal
  //в системе счисления с основанием aBase.
  Result := IntPart + FracPart;
 
end;
 
//Преобразует запись числа в системе счисления с основанием aSrcBase в запись
//этого же числа в системе счисления с онованием aTrgBase.
//Преобразование производится с точностью до aTrgPrecision цифр после запятой
//в результирующем представлении числа.
function XcimalStrToYcimalStr (
  aSrcBase : Byte;
  aSrcNumStr : String;
  aTrgBase : Byte;
  aTrgPrecision : Byte
) : String;
var
  //Число соответствующее записи aSrcNumStr в системе счисления с основанием aSrcBase.
  SrcNum : Extended;
  //Целая часть, выделенная из числа SrcNum.
  IntPart : Int64;
  //Дробная часть, выделенная из числа SrcNum.
  FracPart : Extended;
  //Представление целой части числа SrcNum в системе счисления с основанием aTrgBase.
  StrInt : String;
  //Представление дробной части числа SrcNum в системе счисления с основанием aTrgBase.
  StrFrac : String;
  //Счетчик.
  i : Integer;
  //Для промежуточных вычислений.
  TempNum : Extended;
begin
 
  //Исходное число.
  SrcNum := XcimalStrToNumber(aSrcNumStr, aSrcBase);
 
  // Получаем целую и дробную части числа.
  IntPart := Trunc(SrcNum);
  FracPart := Frac(SrcNum);
 
  //Переводим целую часть.
  StrInt := '';
  repeat
    StrInt := IntToDigit(IntPart mod aTrgBase) + StrInt;
    IntPart := IntPart div aTrgBase;
  until IntPart = 0;
 
  // Если дробная часть = 0, то перевод закончен.
  if FracPart = 0 then begin
    Result := StrInt;
    exit;
  end;
 
  //Переводим дробную часть. Точность - до aTrgPrecision цифр после запятой.
  StrFrac := '';
  for i := 1 to aTrgPrecision do begin
    TempNum := FracPart * aTrgBase;
    StrFrac := StrFrac + IntToDigit(Trunc(TempNum));
    FracPart := Frac(TempNum);
    //Если дробная часть = 0, то перевод закончен.
    if FracPart = 0 then Break;
  end;
 
  Result := StrInt + ',' + StrFrac;
 
end;
 




procedure TFileOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  baza.sql_FileOut.Active:=false;
  baza.SQL_FILE_EXP.Active:=false;
  Reporting.SQL_FILEOUT_P.Active:=false;
  baza.DBF.Active:=false;
  FileOut.Free;
end;

procedure TFileOut.ButCreateClick(Sender: TObject);
Var
  S,S1  : String;
  I     : Int64;

begin
  main.Log('Запуск формирования выходного файла');
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Формирвоание выходного файла');
  with baza.SP_FILEOUT_CHEK do begin
    Active:=false;
    ExecProc;
    if Parameters[1].Value=1 then begin
      main.Log('Тип формирвоания - 1');
      with baza.SP_FILEOUT_NUM do begin
        ExecProc;
        IF parameters[5].Value=0 then begin
          main.Mes('Нет сведений для выгрузки. Возможно незакрыты выплатные ведомости.',Mb_ok+Mb_iconError);
          Exit;
        end;
        I:=parameters[1].Value;
        S:=Copy(Parameters[2].value, 3,2);
        Case Parameters[3].value of
          10 : S:=S+'A';
          11 : S:=S+'B';
          12 : S:=S+'C';
        else
          S:=S+IntToStr(Parameters[3].value);
        end;
        S:=S+IntToStr(Parameters[4].value);
        S1:=XcimalStrToYcimalStr(10,IntTostr(I),36,0);
        Case Length(S1) of
          1: S:=S+'00'+S1;
          2: S:=S+'0'+S1;
        else S:=S+S1;
        end;
        S:=S+'R.DBF';
      end;
      With baza.sp_FileOut_add do begin
        parameters[1].Value:=I;
        parameters[2].Value:=S;
        parameters[3].Value:=UserWorc.ID;
        ExecProc;
        if Parameters[0].Value=0 then I:=Parameters[4].value;
      end;
    end else begin
      main.Log('Тип формирвоания - 2');
      With baza.SP_FILEOUT_ADD_2 do begin
        parameters[1].Value:=UserWorc.ID;
        ExecProc;
        if Parameters[0].Value=0 then I:=Parameters[2].value;
      end;
    end;
  end;
  ButFltr.Click;
end;

procedure TFileOut.FormCreate(Sender: TObject);
begin
  main.Log('Открытие формы выгрузки файлов');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;  
  D1.Date:=date();
  D2.Date:=date();
  if not ForceDirectories(Directory.DirOut) then main.Mes('Ошибка создания выходного каталога '+Directory.DirOut, Mb_Ok+Mb_iconError);
  ButFltr.Click;
end;

procedure TFileOut.ButFltrClick(Sender: TObject);
Var
  S   : String;
  SC  : String;
begin
  S:='';
  SC:='';
  If Length(Trim(TextFilenamet.text))>0 then S:=S+'(FILENAME LIKE ''%'+textFileNamet.Text+'%'') AND ';
  S:=S+'(DATAOUT>='''+Formatdatetime('dd.mm.yyyy hh:nn:ss',D1.DateTime)+''') AND (DATAOUT<='''+Formatdatetime('dd.mm.yyyy hh:nn:ss',D2.DateTime)+''') AND';
  If CheckBoxCreat.Checked=true then SC:=SC+'0,';
  If CheckBoxClose.Checked=true then SC:=SC+'1,';
  Delete(SC,Length(SC),1);
  If Length(SC)=0 then begin
    main.Mes('Необходимо выбрать статус файла',Mb_Ok+Mb_IconInformation);
    Exit;
  end;
  S:=S+' (STATUS IN ('+SC+')) ORDER BY ID';
  with baza.SQL_FILEOUT do begin
    Active:=false;
    SQL.Text:='';
    SQL.Add('SET LANGUAGE Italian;');
    SQL.Add('Select * from TAB_OUTFILE where '+S);
    Active:=true;
  end;
  If VF=true then Tablefileout.SetFocus;
end;

procedure TFileOut.ButAddOutClick(Sender: TObject);
Var
ID : Int64;
begin
  ID:=Baza.SQL_FILEOUTID.Value;
  with baza.SP_FILEOUT_CHEK do begin
    Active:=false;
    ExecProc;
    if Parameters[1].Value=1 then begin
      main.Log('Тип формирования - 1');
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Добавление записей в файл '+Trim(baza.SQL_FILEOUTFILENAME.AsString));

      with baza.SP_FILEOUT_UPD do begin
        Parameters[1].Value:=ID;
        Parameters[2].Value:=2;
        Parameters[3].Value:=UserWorc.ID;
        ExecProc;
        If Parameters[0].Value=0 then ButFltr.Click;
      end;
   end else begin
      main.Log('Тип формирования - 1');
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Добавление записей в файл '+Trim(baza.SQL_FILEOUTFILENAME.AsString));


      
   end;
 end;
  Baza.SQL_FILEOUT.Locate('ID',ID,[]);
  Tablefileout.SetFocus;
end;

procedure TFileOut.ButCloseClick(Sender: TObject);
Var
  F: TFileStream;
  ID,IO : Int64;
  I1,I2 : Integer;
  SF,SA : string;
begin
  ID:=Baza.sql_fileOutId.Value;
  main.Log('Закрытие выходного файла '+Trim(baza.SQL_FILEOUTFILENAME.AsString));
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Закрытие выходного файла '+Trim(baza.SQL_FILEOUTFILENAME.AsString));
  with baza.SP_FILEOUT_CHEK do begin
    Active:=false;
    ExecProc;
    if Parameters[1].Value=2 then begin
      with baza.SP_FILEOUT_UPD_2 do begin
        Active:=false;
        Parameters[1].Value:=ID;
        Parameters[2].Value:=1;
        Parameters[3].Value:=UserWorc.ID;
        ExecProc;
        IO:=Parameters[4].Value;
        If IO>0 then begin
          Main.Mes('Не возможно закрыть файл так как не все выплаты для файла имеют конечный статус',Mb_Ok+Mb_IconInformation);
          exit;
        end;
      end;
    end;
  end;

  SA:=Directory.DirArch+'\DBF_OUT\'+FormatDateTime('yyyymmdd',Date());
  SF:=Directory.DirOut+'\'+Trim(baza.SQL_FILEOUTFILENAME.Value);
  if not CopyFile(Pchar(Directory.FileShab),Pchar(SF),false) then begin
    Main.Mes('Ошибка формирования выходного файлы '+SF ,Mb_Ok+Mb_iconError);
    Exit;
  end;

  try
    with baza.DBF do begin
      Active:=false;
      DBFFileName:=SF;
      Active:=true;
      Tag:=1;
    end;
  except
    baza.DBF.Tag:=0;
  end;

  if baza.DBF.Tag=0 then begin
    main.Mes('Ошибка подключения к файлу '+SF,Mb_ok+Mb_iconError);
    Exit;
  end;
  main.Log('Начало переноса данных в файл');

  with Baza.SQL_FILE_EXP do begin
    Active:=false;
    Parameters[0].Value:=ID;
    Active:=true;
    First;
    Process.Visible:=true;
    Process.MinValue:=0;
    Process.MaxValue:=RecordCount;
    Process.Progress:=0;
    while not EOF do begin
      baza.DBF.Append;
      For I1:=0 to baza.DBF.FieldCount-1 do begin
        For I2:=0 to Baza.SQL_FILE_EXP.FieldCount-1 do
          If AnsiUpperCase(Trim(Baza.SQL_FILE_EXP.Fields[I2].FullName))=AnsiUpperCase(Trim(Baza.DBF.Fields[I1].FullName)) then begin
            if (AnsiUpperCase(Trim(Baza.SQL_FILE_EXP.Fields[I2].FullName))='REASON') and (Baza.SQL_FILE_EXPPAID.Value=1) then
               baza.DBF.Fields[I1].Value:=null
             else
               baza.DBF.Fields[I1].Value:=Baza.SQL_FILE_EXP.Fields[I2].Value;
          end;
      end;
      baza.DBF.Post;
      Process.Progress:=RecNo;
      Application.ProcessMessages;
      Next;
    end;
    Process.Visible:=false;
  end;

  Process.Progress:=0;
  baza.DBF.Active:=false;
  baza.SQL_FILE_EXP.Active:=false;
  main.Log('Перенос данных в файл завершен');
  main.Log('Формирвоание ZIP архива');

  with main.Czip do begin
    DestDir:=directory.DirOut;
    RootDir:=DestDir;
    TempPath:=DestDir;
    ZipName:=Directory.DirOut+'\'+ChangeFileExt(baza.SQL_FILEOUTFILENAME.Value,'.zip');
    FilesList.Clear;
    FilesList.Add(Directory.DirOut+'\'+baza.SQL_FILEOUTFILENAME.Value);
  end;
  Process.Visible:=true;
  Process.Progress:=0;
  Process.MinValue:=0;
  F:=TFileStream.Create(Directory.DirOut+'\'+baza.SQL_FILEOUTFILENAME.Value, fmOpenRead);
  Process.MaxValue:=F.Size;
  F.free;
  If main.Czip.Zip>0 then begin
    main.Log('ZIP архив создан');
    main.Czip.ClearZip;
    If Forcedirectories(SA) then begin
      SA:=SA+'\'+baza.SQL_FILEOUTFILENAME.Value;
      if CopyFile(Pchar(SF),Pchar(SA),false)then begin
      if DeleteFile(Pchar(SF)) then begin
         main.Log('Файл '+Trim(baza.SQL_FILEOUTFILENAME.Value)+' пермещен в каталог '+ExtractFilePath(SA)) ;
      with baza.SP_FILEOUT_UPD do begin
        Parameters[1].Value:=Baza.SQL_FILEOUTID.Value;
        Parameters[2].Value:=1;
        Parameters[3].Value:=UserWorc.ID;
        ExecProc;
        If Parameters[0].Value=0 then ButFltr.Click;
      end;
     end else main.Mes('Ошибка удаления файла '+Trim(baza.SQL_FILEOUTFILENAME.Value)+' из каталога '+#13+Directory.DirOut,Mb_Ok+Mb_IconError);;
    end else main.Mes('Ошибка копирования файла '+Trim(baza.SQL_FILEOUTFILENAME.Value)+#13+'В каталога архива выходных файлов '+#13+ExtractFilePath(SA),Mb_Ok+Mb_IconError);
   end else main.Mes('Ошибка создания каталога архива выходных файлов',Mb_Ok+Mb_IconError);
  end else main.Mes('Ошибка закрытия выходного файла',Mb_Ok+Mb_IconError);
  Baza.SQL_FILEOUT.Locate('ID',ID,[]);
  Process.Visible:=false;
  Tablefileout.SetFocus;
end;

procedure TFileOut.TableFileOutCellClick(Column: TColumn);
begin
  if baza.SQL_FILEOUT.RecordCount=0 then begin
      ButAddOut.Enabled:=false;
      ButClose.Enabled:=false;
      Butprn.Enabled:=false;
  end else begin
    if baza.SQL_FILEOUTSTATUS.Value=1 then begin
      ButAddOut.Enabled:=false;
      ButClose.Enabled:=false;
    end else begin
      ButAddOut.Enabled:=true;
      ButClose.Enabled:=true;
    end;
    ButPrn.Enabled:=true;
  end;
end;

procedure TFileOut.TableFileOutEnter(Sender: TObject);
begin
  if baza.SQL_FILEOUT.RecordCount=0 then begin
      ButAddOut.Enabled:=false;
      ButClose.Enabled:=false;
      Butprn.Enabled:=false;
  end else begin
    if baza.SQL_FILEOUTSTATUS.Value=1 then begin
      ButAddOut.Enabled:=false;
      ButClose.Enabled:=false;
    end else begin
      ButAddOut.Enabled:=true;
      ButClose.Enabled:=true;
    end;
    ButPrn.Enabled:=true;
  end;
end;

procedure TFileOut.TableFileOutDblClick(Sender: TObject);
begin
  TableFileOut.OnEnter(Sender);
end;

procedure TFileOut.FormShow(Sender: TObject);
begin
  Tablefileout.SetFocus;
  VF:=true;
end;

procedure TFileOut.ButPrnClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать реестра выходных файлов');
  main.Log('Формирование отчета по выгруженным файлам');
  with Reporting do begin
    with Sql_Fileout_P do begin
      Active:=false;
      Sql.Text:=baza.SQL_FILEOUT.SQL.Text;
      Active:=true;
    end;
    QRLabel46.Caption:='За период с '+FormatDateTime('dd.mm.yyyy',d1.Date)+' по '+FormatDateTime('dd.mm.yyyy',d2.Date);
    QRlabel60.Caption:=Trim(UserWorc.Dolgn)+' _________________________ '+Trim(UserWorc.ABV);
    ReportFileOut.PreviewModal;
  end;
  main.Log('Формирование отчета завершено');
end;

end.
