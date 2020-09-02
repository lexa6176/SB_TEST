object Options: TOptions
  Left = 612
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1040#1056#1052
  ClientHeight = 332
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 313
    Width = 578
    Height = 19
    Panels = <>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 126
    Width = 578
    Height = 138
    Align = alBottom
    Caption = #1050#1072#1090#1072#1083#1086#1075#1080' '#1089#1080#1089#1090#1077#1084#1099' '#1085#1072' '#1040#1056#1052
    TabOrder = 1
    object Label7: TLabel
      Left = 81
      Top = 26
      Width = 57
      Height = 16
      Caption = #1056#1072#1073#1086#1095#1080#1081
    end
    object Label8: TLabel
      Left = 70
      Top = 111
      Width = 64
      Height = 16
      Caption = #1040#1088#1093#1080#1074#1085#1099#1081
    end
    object Label5: TLabel
      Left = 32
      Top = 52
      Width = 108
      Height = 16
      Caption = #1042#1093#1086#1076#1085#1099#1093' '#1092#1072#1081#1083#1086#1074
    end
    object Label6: TLabel
      Left = 16
      Top = 84
      Width = 118
      Height = 16
      Caption = #1042#1099#1093#1086#1076#1085#1086#1081' '#1092#1072#1081#1083#1086#1074
    end
    object ButDirSys: TSpeedButton
      Left = 532
      Top = 21
      Width = 23
      Height = 24
      Caption = '...'
      Flat = True
      OnClick = ButDirSysClick
    end
    object ButDirArc: TSpeedButton
      Left = 532
      Top = 107
      Width = 23
      Height = 24
      Caption = '...'
      Flat = True
      OnClick = ButDirArcClick
    end
    object ButDirIn: TSpeedButton
      Left = 532
      Top = 47
      Width = 23
      Height = 24
      Caption = '...'
      Flat = True
      OnClick = ButDirInClick
    end
    object ButDirOut: TSpeedButton
      Left = 532
      Top = 79
      Width = 23
      Height = 24
      Caption = '...'
      Flat = True
      OnClick = ButDirOutClick
    end
    object TextDirOut: TEdit
      Left = 144
      Top = 79
      Width = 385
      Height = 24
      TabOrder = 0
    end
    object TextDirIn: TEdit
      Left = 144
      Top = 47
      Width = 385
      Height = 24
      TabOrder = 1
    end
    object TextDirArch: TEdit
      Left = 145
      Top = 106
      Width = 385
      Height = 24
      TabOrder = 2
    end
    object TextDirSystem: TEdit
      Left = 144
      Top = 21
      Width = 385
      Height = 24
      TabOrder = 3
    end
  end
  object PanelBut: TPanel
    Left = 0
    Top = 264
    Width = 578
    Height = 49
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object ButSave: TSpeedButton
      Left = 160
      Top = 4
      Width = 193
      Height = 41
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      OnClick = ButSaveClick
    end
    object ButCansel: TSpeedButton
      Left = 355
      Top = 3
      Width = 201
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OnClick = ButCanselClick
    end
  end
  object PanelParamBd: TGroupBox
    Left = 0
    Top = 0
    Width = 578
    Height = 83
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103' '#1082' '#1041#1044
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 25
      Width = 49
      Height = 16
      Caption = #1057#1077#1088#1074#1077#1088
    end
    object Label3: TLabel
      Left = 24
      Top = 60
      Width = 39
      Height = 16
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 269
      Top = 25
      Width = 83
      Height = 16
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
    end
    object Label4: TLabel
      Left = 304
      Top = 60
      Width = 49
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object TextLogin: TEdit
      Left = 72
      Top = 49
      Width = 177
      Height = 24
      TabOrder = 0
      Text = 'TextLogin'
    end
    object TextServer: TEdit
      Left = 72
      Top = 20
      Width = 177
      Height = 24
      TabOrder = 1
      Text = 'TextServer'
    end
    object TextPassw: TEdit
      Left = 360
      Top = 52
      Width = 193
      Height = 24
      PasswordChar = '#'
      TabOrder = 2
      Text = 'TextPassw'
    end
    object TextBaza: TEdit
      Left = 360
      Top = 20
      Width = 193
      Height = 24
      TabOrder = 3
      Text = 'TextBaza'
    end
  end
  object PanelExpDBF: TPanel
    Left = 0
    Top = 83
    Width = 578
    Height = 43
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 4
    object Label9: TLabel
      Left = 10
      Top = 12
      Width = 126
      Height = 16
      Caption = #1064#1072#1073#1083#1086#1085' '#1074#1099#1093'. '#1092#1072#1081#1083#1072
    end
    object SpeedButton1: TSpeedButton
      Left = 532
      Top = 8
      Width = 23
      Height = 24
      Caption = '...'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object TextFileOut: TEdit
      Left = 143
      Top = 8
      Width = 385
      Height = 24
      TabOrder = 0
    end
  end
end
