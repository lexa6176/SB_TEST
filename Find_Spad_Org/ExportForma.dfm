object ExportFiltr: TExportFiltr
  Left = 290
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '
  ClientHeight = 187
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object ParamGroup: TGroupBox
    Left = 0
    Top = 0
    Width = 572
    Height = 97
    Align = alTop
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1101#1082#1089#1087#1086#1088#1090#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 117
      Height = 16
      Caption = #1050#1072#1090#1072#1083#1086#1075' '#1101#1082#1089#1087#1086#1088#1090#1072
    end
    object SpeedButton3: TSpeedButton
      Left = 541
      Top = 18
      Width = 27
      Height = 26
      Caption = '...'
      OnClick = SpeedButton3Click
    end
    object Label3: TLabel
      Left = 280
      Top = 56
      Width = 41
      Height = 16
      Align = alCustom
      Caption = 'Label3'
    end
    object DirExportT: TEdit
      Left = 132
      Top = 20
      Width = 405
      Height = 24
      TabOrder = 0
      OnExit = DirExportTExit
    end
    object RB1: TRadioButton
      Left = 136
      Top = 48
      Width = 121
      Height = 17
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XML'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RB1Click
    end
    object RB2: TRadioButton
      Left = 136
      Top = 72
      Width = 129
      Height = 17
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' CSV'
      TabOrder = 2
      OnClick = RB2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 168
    Width = 572
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 97
    Width = 572
    Height = 46
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object StartBut: TSpeedButton
      Left = 6
      Top = 4
      Width = 293
      Height = 42
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100
      OnClick = StartButClick
    end
    object StopBut: TSpeedButton
      Left = 299
      Top = 4
      Width = 271
      Height = 42
      Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
      Enabled = False
      OnClick = StopButClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 143
    Width = 572
    Height = 25
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 3
    object Gauge1: TGauge
      Left = 1
      Top = 1
      Width = 399
      Height = 23
      Align = alClient
      Progress = 0
    end
    object Panel3: TPanel
      Left = 400
      Top = 1
      Width = 171
      Height = 23
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 2
        Top = 2
        Width = 167
        Height = 19
        Align = alClient
        Alignment = taCenter
        Caption = '0'
      end
    end
  end
end
