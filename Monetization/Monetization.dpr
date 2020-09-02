program Monetization;

uses
  Forms,
  MainForma in 'MainForma.pas' {Main},
  AuntificationForma in 'AuntificationForma.pas' {Auntification},
  OptionsForma in 'OptionsForma.pas' {Options},
  SpravForma in 'SpravForma.pas' {Sprav},
  ProcessLoadForma in 'ProcessLoadForma.pas' {ProcessLoad},
  ProcessFindForma in 'ProcessFindForma.pas' {ProcessFind},
  BazaForma in 'BazaForma.pas' {Baza: TDataModule},
  NonpaymentForma in 'NonpaymentForma.pas' {Nonpayment},
  RegistryForOpsForma in 'RegistryForOpsForma.pas' {RegistryForOps},
  FindPaymentForma in 'FindPaymentForma.pas' {FindPayment},
  ReportingForma in 'ReportingForma.pas' {Reporting},
  FileInForma in 'FileInForma.pas' {FileIn},
  FileOutForma in 'FileOutForma.pas' {FileOut},
  ListForma in 'ListForma.pas' {List},
  NoPayPricinaForma in 'NoPayPricinaForma.pas' {NoPayPricina},
  ReestryForOpsForma in 'ReestryForOpsForma.pas' {ReestryForOps},
  ReportParamIpForma in 'ReportParamIpForma.pas' {ReportParamIp},
  LogForma in 'LogForma.pas' {LogWorc};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Обработка сведений по монетизации льгот по ЖКХ';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TBaza, Baza);
  Application.CreateForm(TProcessLoad, ProcessLoad);
  Application.CreateForm(TProcessFind, ProcessFind);
  Application.CreateForm(TReporting, Reporting);
  Application.CreateForm(TNoPayPricina, NoPayPricina);
  //Application.CreateForm(TLogWorc, LogWorc);
  //Application.CreateForm(TReportParamIp, ReportParamIp);
  // Application.CreateForm(TReestryForOps, ReestryForOps);
  //Application.CreateForm(TList, List);
  // Application.CreateForm(TFileOut, FileOut);
  ///Application.CreateForm(TFileIn, FileIn);
  //Application.CreateForm(TFindPayment, FindPayment);
  //Application.CreateForm(TRegistryForOps, RegistryForOps);
  //Application.CreateForm(TNonpayment, Nonpayment);
  //Application.CreateForm(TSprav, Sprav);
  //Application.CreateForm(TOptions, Options);
  //Application.CreateForm(TAuntification, Auntification);
  Application.Run;
end.
