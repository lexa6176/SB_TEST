object PathBd: TPathBd
  Left = 213
  Top = 479
  BorderStyle = bsDialog
  Caption = #1054#1073#1097#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
  ClientHeight = 124
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 4
    Top = 3
    Width = 347
    Height = 16
    Caption = #1055#1091#1090#1100' '#1082' '#1092#1072#1081#1083#1091' '#1078#1091#1088#1085#1072#1083#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1086#1083#1103
  end
  object PathBut: TSpeedButton
    Left = 439
    Top = 22
    Width = 30
    Height = 27
    Caption = '...'
    OnClick = PathButClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 105
    Width = 471
    Height = 19
    Panels = <>
  end
  object PatT: TEdit
    Left = 4
    Top = 23
    Width = 433
    Height = 24
    TabOrder = 1
    Text = 'PatT'
  end
  object UserAutoBox: TCheckBox
    Left = 8
    Top = 80
    Width = 305
    Height = 17
    Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103' '#1089#1088#1072#1079#1091' '#1087#1086#1089#1083#1077' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103' '#1089' '#1041#1044
    TabOrder = 2
  end
  object ConBox: TCheckBox
    Left = 8
    Top = 56
    Width = 377
    Height = 17
    Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1089#1088#1086#1077#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044' '#1087#1086#1089#1083#1077' '#1079#1072#1087#1091#1089#1082#1072' '#1055#1054
    TabOrder = 3
  end
end
