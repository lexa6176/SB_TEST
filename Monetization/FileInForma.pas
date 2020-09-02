unit FileInForma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, ExtCtrls, VCLUnZip,
  Gauges,StrUtils;

type
  TFileIn = class(TForm)
    StatusBar1: TStatusBar;
    PanelFiltr: TPanel;
    TableFile: TDBGrid;
    PanelBut: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButFltr: TSpeedButton;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    TextFilename: TEdit;
    Label4: TLabel;
    ButDir: TSpeedButton;
    ButLoad: TSpeedButton;
    ButLoadAll: TSpeedButton;
    ButDel: TSpeedButton;
    ButReestr: TSpeedButton;
    PanelItogo: TPanel;
    Procces: TGauge;
    ChekInF: TCheckBox;
    ChekLoadF: TCheckBox;
    ChekDelF: TCheckBox;
    TableItogo: TDBGrid;
    Panel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButDirClick(Sender: TObject);
    procedure ButFltrClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButLoadClick(Sender: TObject);
    procedure ButLoadAllClick(Sender: TObject);
    procedure TableFileCellClick(Column: TColumn);
    procedure TableFileDblClick(Sender: TObject);
    procedure TableFileKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButDelClick(Sender: TObject);
    procedure ButReestrClick(Sender: TObject);
    procedure TableFileEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure RegFile;
    function findder(dir,mask:string):Integer; // Поиск файла в указазном каталоге
    Procedure CopyArc(FileIst,DirArch:String);
    Procedure PanelClose;
    Procedure PanelOpen;
    Procedure ButDriver;
  end;

var
  FileIn  : TFileIn;
  Fil     : TstringList;



implementation

uses BazaForma, MainForma, ProcessLoadForma, ReportingForma;

{$R *.dfm}

function TFileIn.findder(dir,mask:string):Integer; // Поиск файла в указазном каталоге
var
  SF        : TstringList;
  Sr        : TSearchRec;
begin
  main.Log('Формирование списка входящих файлов');
  Result:=0;
  if FindFirst(dir+mask,(faAnyFile) and (not faDirectory),Sr)=0 then  repeat
    if (sr.Name<>'.') or (sr.Name<>'..') then begin
      fil.Add(dir+'\'+sr.Name);
      result:=result+1;
    end;
    main.Log(sr.Name);
  until FindNext(sr)<>0;
  FindClose(Sr);
  main.Log('Формирвоание списка входящих файлов завершено');
end;

Procedure TFileIn.CopyArc(FileIst,DirArch:String);
var S:String;
begin
  If CopyFile(Pchar(FileIst),Pchar(DirArch+'\'+ExtractFileName(FileIst)),false) then begin
    if DeleteFile(FileIst) then begin
      S:=StringReplace(AnsiUppercase(FileIst),'L','C',[rfReplaceAll, rfIgnoreCase]);
      DeleteFile(S);
      main.Log('Выполнен перенос файла '+FileIst+' в каталог '+DirArch)
    end else begin
      main.Mes('Ошибка удаления файла '+FileIst,Mb_Ok+Mb_iconError);
    end;
  end else begin
    main.Mes('Ошибка копирования исходного файла в каталог архива '+DirArch,MB_Ok+Mb_IconError);
  end;
end;


Procedure TFileIn.PanelClose;
begin
  PanelFiltr.Enabled:=false;
  PanelBut.Enabled:=false;
  TableFile.Enabled:=false;
end;

Procedure TFileIn.PanelOpen;
begin
  PanelFiltr.Enabled:=true;
  PanelBut.Enabled:=true;
  TableFile.Enabled:=true;
end;

Procedure TFileIn.ButDriver;
begin
  Case Baza.SQL_FILEINIDSTATUS.Value of
    0: begin
      ButLoad.Enabled:=false;
      ButDel.Enabled:=false;
    end;
    1: begin
      ButLoad.Enabled:=true;
      ButDel.Enabled:=true;
    end;
    2: begin
      ButLoad.Enabled:=false;
      ButDel.Enabled:=false;
    end;
  end;
  if Baza.SQL_FILEIN.RecordCount=0 then  Butreestr.Enabled:=false else ButReestr.Enabled:=true;
end;


procedure TFileIn.RegFile;
Var
  S,SA  : string;
  I1,I2 : Integer;
  SumP  : Currency;
begin
  main.log('Регистрация файлов для загрузки в БД');
  Fil:=TstringList.Create;
  SA:=Directory.DirArch+'\ZIP\'+FormatDateTime('YYYYMMDD',Now());
  if not ForceDirectories(SA) then begin
    main.Mes('Ошибка создания каталога архивного хранения ZIP файлов '+#13+SA,MB_OK+MB_IconError);
    Exit;
  end;
  Main.Log(Directory.DirInp+'\*.zip');
  if findder(Directory.DirInp,'\*.zip')>0 then begin
    For I1:=0 to Fil.Count-1 do begin
      Procces.Visible:=true;
      Procces.MinValue:=0;
      with main do begin
        Uzip.ClearZip;
        main.Log('Извлечение данных из архива '+fil.Strings[I1]);
        S:=ExtractFileName(ChangeFileExt(fil.Strings[I1],'.dbf'));
        S:=StringReplace(AnsiUppercase(S),'P','L',[rfReplaceAll, rfIgnoreCase]);
        Uzip.ZipName:=fil.Strings[I1];
        Uzip.FilesList.Clear;
        Uzip.FilesList.Add(S);
        main.Log(uzip.FilesList.Text);
        Uzip.DestDir:=Directory.DirInp;
        Uzip.RootDir:=Uzip.DestDir;
        Procces.MaxValue:=Uzip.ZipSize;
        with baza.SP_CHEK do begin
          main.Log('Проверка файла на наличие в БД '+S);
          Parameters[1].Value:=2;
          Parameters[2].Value:=S;
          ExecProc;
          if Parameters[0].Value=0 then begin
            If Parameters[3].Value>0 then begin
              main.Mes('Файл '+S+' уже зарегистрован \ загружен в БД ',Mb_ok+Mb_iconInformation);
              DeleteFile(fil.Strings[I1]);
            end else begin
              if Uzip.UnZip>0 then begin
                main.Log('Извлечен файл '+Uzip.FilesList.Text);
                main.Log('Приступаю к регистрации файла в БД');
                with baza.DBF do begin
                  Active:=false;
                  DbfFilename:=directory.DirInp+'\'+S;
                  Active:=true;
                  I2:=0;
                  SumP:=0;
                  First;
                  while not EOF do begin
                    SumP:=Sump+baza.DBF['SMVYP'];
                    Next;
                  end;
                  I2:=RecordCount;
                end;
                with baza.SP_FILIN_REG do begin
                  Parameters[1].Value:=S;
                  Parameters[2].Value:=I2;
                  Parameters[3].Value:=SumP;
                  Parameters[4].Value:=UserWorc.ID;
                  ExecProc;
                end;
                main.Log('Файл зарегистрирован');
                Uzip.ClearZip;
                CopyArc(fil.Strings[I1],SA);
              end else main.Log('Не извлечен не один файл');
            end;
          end else begin

          end;
        end;
      end;
      Procces.Visible:=false;
      ButFltr.Click;
    end;
  end else begin
    main.Mes('Нет файлов для регистрации',Mb_ok+Mb_iconInformation);
    Main.Log('Нет файлов для регистрации');
  end;
  Fil.Free;
end;



procedure TFileIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  baza.SQL_FILEIN.active:=false;
  baza.SQL_FILE_IT.Active:=false;
  baza.DBF.active:=false;
  main.Log('Форма обработки вхоядщих файлов закрыта');
  FileIn.Free;
end;

procedure TFileIn.ButDirClick(Sender: TObject);
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Обработка каталога');
  main.Log('Обработка входящего каталога '+Directory.DirInp);
  PanelClose;
  RegFile;
  PanelOpen;
  TableFile.SetFocus;
  main.Log('Обработка входящего каталога завершена');
end;

procedure TFileIn.ButFltrClick(Sender: TObject);
var
  I     : Int64;
  S,S1,SC  : string;
begin
  main.Log('Сработка фильтра');
  if Baza.SQL_FILEIN.Active=true then I:=Baza.SQL_FILEINID.Value else I:=0;
  SC:='';
  S:='(F.DATALOAD>='''+DateToStr(D1.date)+''') AND (F.DATALOAD<='''+DateToStr(D2.date)+''')' ;
  If Length(Trim(TextFilename.Text))>0 then S:=S+' AND(F.FILENAME LIKE ''%'+TextFilename.Text+'%'')';
  If ChekInF.Checked=true then SC:=SC+'1,';
  If ChekLoadF.Checked=true then SC:=SC+'2,';
  If ChekDelF.Checked=true then SC:=SC+'0,';
  Delete(SC,Length(SC),1);
  if Length(SC)=0 then begin
    main.Log('Надо указать хотя бы одну категорию файлов');
    main.Mes('Надо указать хотя бы одну категорию файлов',Mb_ok+Mb_iconError);
    Exit;
  end;
  S:=S+' AND (ST.IDSTATUS IN ('+SC+'))';
  with baza.SQL_FILEIN do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SET LANGUAGE russian;');
    SQL.Add('Select	F.ID,F.FILENAME,F.COLZ,F.SUMZ,ST.IDSTATUS,ST.STATUSDATE,ST.STATUSUSER,F.DATALOAD');
    SQL.Add('from TAB_INPFILE F left join ( select MAX(IDZ) IDZ,IDF,IDSTATUS,STATUSDATE,STATUSUSER');
	  SQL.Add('from TAB_INPFILE_STATUS group by IDF,IDSTATUS,STATUSDATE,STATUSUSER ) as ST on ST.IDF=F.ID and ST.IDSTATUS=F.STATUS');
    SQL.Add('Where '+S);
    Active:=true;
  end;
  with baza.SQL_FILE_IT do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SET LANGUAGE russian;');
    SQL.Add('SELECT COUNT(*) KOLF,SUM(F.COLZ) COLZ,SUM(F.SUMZ) SUMZ, ST.IDSTATUS FROM TAB_INPFILE F');
    SQL.Add('left join (select MAX(IDZ) IDZ,IDF,IDSTATUS from TAB_INPFILE_STATUS group by IDF,IDSTATUS,STATUSDATE,STATUSUSER) as ST on ST.IDF=F.ID and ST.IDSTATUS=F.STATUS');
    SQL.Add('Where '+S);
    SQL.Add('GROUP BY ST.IDSTATUS');
    SQL.Add('UNION');
    SQL.Add('SELECT COUNT(*) KOLF,SUM(F.COLZ) COLZ,SUM(F.SUMZ) SUMZ, -1 IDSTATUS FROM TAB_INPFILE F');
    SQL.Add('left join (select MAX(IDZ) IDZ,IDF,IDSTATUS from TAB_INPFILE_STATUS group by IDF,IDSTATUS,STATUSDATE,STATUSUSER) as ST on ST.IDF=F.ID and ST.IDSTATUS=F.STATUS');
    SQL.Add('Where '+S);
    SQL.Add('Order By IDSTATUS DESC');
    Active:=true;
  end;
  if I>0 then Baza.SQL_FILEIN.Locate('ID',I,[]);
  main.Log('Фильтр отработал');
end;

procedure TFileIn.FormShow(Sender: TObject);
begin
  main.Log('Форма обработки файлов открыта');
  ButFltr.Click;
  TableFile.SetFocus;
end;

procedure TFileIn.FormCreate(Sender: TObject);
begin
  main.Log('Создание формы загрузки файлов');
  with Constraints do begin
   MaxHeight:=Height;
    MaxWidth:=Width;
    MinHeight:=Height;
    MinWidth:=Width;
  end;
  D1.Date:=Date();
  D2.Date:=Date();
  If not ForceDirectories(Directory.DirInp) then begin
    main.Mes('Ошибка создания входного каталога '+directory.DirInp,Mb_Ok+Mb_IconError);
  end;
  If not ForceDirectories(Directory.DirArch) then begin
     main.Mes('Ошибка создания архивного каталога '+directory.DirArch,Mb_Ok+Mb_IconError);
  end;
  ButDir.Caption:='Обработать'+#13+'каталог';
  ButLoad.Caption:='Загрузить'+#13+'файл в БД';
  ButLoadAll.Caption:='Загрузить все'+#13+'файлы в БД';
end;

procedure TFileIn.ButLoadClick(Sender: TObject);
Label E;
Var SA : String;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Pагрузка файла в БД '+Trim(Baza.SQL_FILEINFILENAME.AsString));
  main.Log('Загрузка файла '+Trim(baza.SQL_FILEINFILENAME.Value)+' в БД');
  PanelClose;
  SA:=Directory.DirArch+'\DBF_IN\'+FormatDateTime('YYYYMMDD',Now());
  if not ForceDirectories(SA) then begin
    main.Mes('Ошибка создания каталога архивного хранения входящих DBF файлов '+#13+SA,MB_OK+MB_IconError);
    Goto E;
  end;
  if not FileExists(Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString)) then begin
    Main.Mes('Файл '+Trim(baza.SQL_FILEINFILENAME.AsString)+' отсуствует'+#13+'в каталоге '+Directory.DirInp,Mb_Ok+Mb_IconError);
    Goto E;
  end;
  if baza.SQL_FILEINIDSTATUS.Value<>1 then begin
    main.Mes('Файл '+Trim(baza.SQL_FILEINFILENAME.AsString)+' загружен\удален',Mb_Ok+Mb_IconInformation);
    Goto E;
  end;

  With baza.DBF do begin
    main.Log('Загрузка данных из файла начата ');
    Active:=false;
    DBFFilename:=Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString);
    Active:=true;
    First;
    FileIn.Procces.Visible:=true;
    FileIn.Procces.MinValue:=0;
    FileIn.Procces.MaxValue:=RecordCount;
    While not EOF do begin
      with baza.SP_MONETY_ADD do begin
        Parameters[1].Value:=baza.DBF['NLS'];
        Parameters[2].Value:=baza.DBF['ORG'];
        Parameters[3].Value:=baza.DBF['MES'];
        Parameters[4].Value:=baza.DBF['GOD'];
        Parameters[5].Value:=baza.DBF['FM'];
        Parameters[6].Value:=baza.DBF['IM'];
        Parameters[7].Value:=baza.DBF['OT'];
        Parameters[8].Value:=baza.DBF['DTR'];
        Parameters[9].Value:=baza.DBF['PSR'];
        Parameters[10].Value:=baza.DBF['PNM'];
        Parameters[11].Value:=baza.DBF['SVZ'];
        Parameters[12].Value:=baza.DBF['NSP'];
        Parameters[13].Value:=baza.DBF['ULC'];
        Parameters[14].Value:=baza.DBF['DOM'];
        Parameters[15].Value:=baza.DBF['KOR'];
        Parameters[16].Value:=baza.DBF['KVR'];
        Parameters[17].Value:=baza.DBF['NPSU'];
        Parameters[18].Value:=baza.DBF['VYPL'];
        Parameters[19].Value:=baza.DBF['SMVYP'];
        Parameters[20].Value:=baza.SQL_FILEINID.Value;
        Parameters[21].Value:=UserWorc.ID;
        ExecProc;
      end;
      FileIn.Procces.Progress:=RecNo;
      Application.ProcessMessages;
      Next;
    end;
    Active:=false;
    with baza.SP_FILEIN_UPD do begin
      Parameters[1].Value:=baza.SQL_FILEINID.Value;
      Parameters[2].Value:=2;
      Parameters[3].Value:=UserWorc.ID;
      ExecProc;

    end;
    main.Log('Загрузка файла завершена');
    main.Log('Перенос файла в архив');
    CopyArc(Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString),SA);
    FileIn.Procces.Visible:=false;
    FileIn.ButFltr.Click;
  end;
  E:
  PanelOpen;
end;

procedure TFileIn.ButLoadAllClick(Sender: TObject);
Label e1,e2;
var
  I     : Int64;
  S,SA  : string;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Массовая загрузка в БД');
  main.Log('Массовая загрузка файлов');
  PanelClose;
  if Baza.SQL_FILEIN.Active=true then I:=Baza.SQL_FILEINID.Value else I:=0;
  S:=S+'(ST.IDSTATUS = 1)';
  main.Log('Включается режим отбора файлов для загрузки');
  with baza.SQL_FILEIN do begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SET LANGUAGE Italian;');
    SQL.Add('Select	F.ID,F.FILENAME,F.COLZ,F.SUMZ,ST.IDSTATUS,ST.STATUSDATE,ST.STATUSUSER,F.DATALOAD');
    SQL.Add('from TAB_INPFILE F left join ( select MAX(IDZ) IDZ,IDF,IDSTATUS,STATUSDATE,STATUSUSER');
	  SQL.Add('from TAB_INPFILE_STATUS group by IDF,IDSTATUS,STATUSDATE,STATUSUSER ) as ST on ST.IDF=F.ID and ST.IDSTATUS=F.STATUS');
    SQL.Add('Where '+S);
    Active:=true;
  end;

  if baza.SQL_FILEIN.RecordCount>0 then begin

    SA:=Directory.DirArch+'\DBF_IN\'+FormatDateTime('YYYYMMDD',Now());
    if not ForceDirectories(SA) then begin
      main.Mes('Ошибка создания каталога архивного хранения входящих DBF файлов '+#13+SA,MB_OK+MB_IconError);
      Goto E2;
    end;
    baza.SQL_FILEIN.First;
    main.Log('Начало обработк файлов из списка');
    while not baza.SQL_FILEIN.Eof do begin
      if not FileExists(Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString)) then begin
        Main.Mes('Файл '+Trim(baza.SQL_FILEINFILENAME.AsString)+' отсуствует'+#13+'в каталоге '+Directory.DirInp,Mb_Ok+Mb_IconError);
        GoTo E1;
      end;
      main.RegWorc(UserWorc.ID,NameArm,NameUser,'Pагрузка файла в БД '+Trim(Baza.SQL_FILEINFILENAME.AsString));
      main.Log('Загрузка данных из файла '+Trim(baza.SQL_FILEINFILENAME.Value)+' начата');
      With baza.DBF do begin
        Active:=false;
        DBFFilename:=Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString);
        Active:=true;
        First;
        FileIn.Procces.Visible:=true;
        FileIn.Procces.MinValue:=0;
        FileIn.Procces.MaxValue:=RecordCount;
        While not EOF do begin
          with baza.SP_MONETY_ADD do begin
            Parameters[1].Value:=baza.DBF['NLS'];
            Parameters[2].Value:=baza.DBF['ORG'];
            Parameters[3].Value:=baza.DBF['MES'];
            Parameters[4].Value:=baza.DBF['GOD'];
            Parameters[5].Value:=baza.DBF['FM'];
            Parameters[6].Value:=baza.DBF['IM'];
            Parameters[7].Value:=baza.DBF['OT'];
            Parameters[8].Value:=baza.DBF['DTR'];
            Parameters[9].Value:=baza.DBF['PSR'];
            Parameters[10].Value:=baza.DBF['PNM'];
            Parameters[11].Value:=baza.DBF['SVZ'];
            Parameters[12].Value:=baza.DBF['NSP'];
            Parameters[13].Value:=baza.DBF['ULC'];
            Parameters[14].Value:=baza.DBF['DOM'];
            Parameters[15].Value:=baza.DBF['KOR'];
            Parameters[16].Value:=baza.DBF['KVR'];
            Parameters[17].Value:=baza.DBF['NPSU'];
            Parameters[18].Value:=baza.DBF['VYPL'];
            Parameters[19].Value:=baza.DBF['SMVYP'];
            Parameters[20].Value:=baza.SQL_FILEINID.Value;
            Parameters[21].Value:=UserWorc.ID;
            ExecProc;
          end;
          FileIn.Procces.Progress:=RecNo;
          Application.ProcessMessages;
          Next;
        end;
        Active:=false;

        main.Log('Изменние');
        with baza.SP_FILEIN_UPD do begin
          Parameters[1].Value:=baza.SQL_FILEINID.Value;
          Parameters[2].Value:=2;
          Parameters[3].Value:=UserWorc.ID;
          ExecProc;
        end;
        
        FileIn.Procces.Visible:=false;
      end;
      E1:
      main.Log('Загрузка завершена');
      main.Log('Перенос файла в архив');
      CopyArc(Directory.DirInp+'\'+Trim(baza.SQL_FILEINFILENAME.AsString),SA);
      baza.SQL_FILEIN.Next;
    end;
    main.Log('Завершена загрузка в БД всех файлов');
  end else main.Mes('Нет файлов для загрузки в БД',Mb_ok+Mb_IconInformation);
  E2:
  ButFltr.Click;
  if (I>0) and (Baza.SQL_FILEIN.Active=true) then Baza.SQL_FILEIN.Locate('ID',I,[]);
  PanelOpen;
end;

procedure TFileIn.TableFileCellClick(Column: TColumn);
begin
  ButDriver;
end;

procedure TFileIn.TableFileDblClick(Sender: TObject);
begin
  ButDriver;
end;

procedure TFileIn.TableFileKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ButDriver;
end;

procedure TFileIn.ButDelClick(Sender: TObject);
VAR
  SF,SFZ,SAD,SAZ : string;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Удаление файла '+Trim(baza.SQL_FILEINFILENAME.AsString));
  main.Log('Удаление файла ');
  PanelClose;
  SF:=Trim(Baza.SQL_FILEINFILENAME.AsString);
  SFZ:=StringReplace(AnsiUppercase(SF),'L','P',[rfReplaceAll, rfIgnoreCase]);
  if baza.SQL_FILEINIDSTATUS.Value=1 then SAZ:=Directory.DirArch+'\ZIP\'+FormatdateTime('YYYYMMDD',baza.SQL_FILEINSTATUSDATE.Value)+'\'+SFZ;
  if baza.SQL_FILEINIDSTATUS.Value=2 then SAD:=Directory.DirArch+'\DBF_IN\'+FormatDateTime('YYYYMMDD',baza.SQL_FILEINSTATUSDATE.Value)+'\'+SF;
  with Baza.SP_FILEIN_DEL do begin
    Parameters[1].Value:=Baza.SQL_FILEINID.AsLargeInt;
    Parameters[2].Value:=UserWorc.ID;
    ExecProc;
    if Parameters[2].Value=0 then begin
      main.Mes('Нельзя удалить файл, данные котрого уже в реестре или выгружены',Mb_Ok+MB_IconError);
    end else begin
      if baza.SQL_FILEINIDSTATUS.Value=1 then begin
        DeleteFile(Directory.DirInp+'\'+SF);
        DeleteFile(SAZ);
      end;
      if baza.SQL_FILEINIDSTATUS.Value=2 then begin
        DeleteFile(SAD);
        DeleteFile(SAZ);
      end;
      ButFltr.Click;
    end;
  end;
  PanelOpen;
  main.Log('Удаление заверешено');
end;

procedure TFileIn.ButReestrClick(Sender: TObject);
Var
  S1,S2,S3,S4 : string;
  I1          : Integer;
begin
  main.RegWorc(UserWorc.ID,NameArm,NameUser,'Печать рестра входящих файлов');
  main.Log('Формирвоание реестра на печать');
  with Reporting do begin
    QRLabel2.Caption:='За период с '+FormatDateTime('dd.mm.yyyy',d1.Date)+' по '+FormatDateTime('dd.mm.yyyy',d2.Date);
    QRlabel3.Caption:=Trim(UserWorc.Dolgn)+' _________________________ '+Trim(UserWorc.ABV);
    baza.SQL_FILE_IT.First;
    FileInItogo.Lines.Clear;
    while not baza.SQL_FILE_IT.Eof do begin
      S1:=Trim(Baza.SQL_FILE_ITIDSTATUS.Text)+'  ';
      Case Baza.SQL_FILE_ITIDSTATUS.Value of
         1: For I1:=(32-Length(Trim(S1))) downto 1 do S1:=S1+'.';
         2: For I1:=(27-Length(Trim(S1))) downto 1 do S1:=S1+'.';
         0: For I1:=(32-Length(Trim(S1))) downto 1 do S1:=S1+'.';
        -1: For I1:=(36-Length(Trim(S1))) downto 1 do S1:=S1+'.';
      end;

      S2:=Format('%d',[baza.SQL_FILE_ITKOLF.Value]);
      For I1:=(5-Length(Trim(S2))) downto 0 do S2:='..'+S2;

      S3:=Format('%d',[baza.SQL_FILE_ITCOLZ.Value]);
      For I1:=(10-Length(Trim(S3))) downto 0 do S3:='..'+S3;

      S4:=Format('%m',[Baza.SQL_FILE_ITSUMZ.Value]);
      For I1:=(20-Length(Trim(S4))) downto 0 do S4:='..'+S4;

      FileInItogo.Lines.Add(S1+S2+S3+S4);
      baza.SQL_FILE_IT.Next;
    end;
    ReportFileIn.Preview;
  end;
  main.Log('Формирвоание рестра завершнео ');
end;

procedure TFileIn.TableFileEnter(Sender: TObject);
begin
  ButDriver;
end;

end.
