object Service: TService
  Left = 216
  Top = 268
  BorderStyle = bsDialog
  Caption = #1057#1077#1088#1074#1080#1089#1085#1086#1077' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1077' '#1041#1044
  ClientHeight = 167
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 148
    Width = 323
    Height = 19
    Panels = <>
  end
  object Opsbox: TGroupBox
    Left = 189
    Top = 2
    Width = 132
    Height = 71
    Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1054#1055#1057
    TabOrder = 1
    object LoadSprav: TSpeedButton
      Left = 8
      Top = 24
      Width = 113
      Height = 41
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      OnClick = LoadSpravClick
    end
  end
  object RezBox: TGroupBox
    Left = 3
    Top = 2
    Width = 185
    Height = 72
    Caption = #1056#1077#1079#1077#1088#1074#1085#1086#1077' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 8
      Top = 24
      Width = 169
      Height = 41
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      OnClick = SpeedButton3Click
    end
  end
  object ClBox: TGroupBox
    Left = 191
    Top = 77
    Width = 132
    Height = 71
    Caption = #1054#1095#1080#1089#1090#1082#1072' '#1090#1072#1073#1083#1080#1094
    TabOrder = 3
    object ClearBut: TSpeedButton
      Left = 8
      Top = 24
      Width = 113
      Height = 41
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      OnClick = ClearButClick
    end
  end
  object VidBox: TGroupBox
    Left = 3
    Top = 76
    Width = 186
    Height = 72
    TabOrder = 4
    object Panel1: TPanel
      Left = 2
      Top = 18
      Width = 182
      Height = 52
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
end
