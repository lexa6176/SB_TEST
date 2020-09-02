object ReportParamIp: TReportParamIp
  Left = 801
  Top = 140
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'ReportParamIp'
  ClientHeight = 231
  ClientWidth = 284
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object PanelRepOps: TPanel
    Left = 8
    Top = 8
    Width = 265
    Height = 201
    TabOrder = 0
    object ButRepOps: TSpeedButton
      Left = 8
      Top = 128
      Width = 249
      Height = 57
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      OnClick = ButRepOpsClick
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 29
        Height = 16
        Caption = #1054#1055#1057
      end
      object BoxPeriod: TCheckBox
        Left = 16
        Top = 40
        Width = 153
        Height = 17
        Caption = #1057#1074#1086#1073#1086#1076#1085#1099#1081' '#1087#1077#1088#1080#1086#1076
        TabOrder = 0
        OnClick = BoxPeriodClick
      end
      object TextOpsT: TEdit
        Left = 56
        Top = 8
        Width = 73
        Height = 24
        TabOrder = 1
        Text = 'TextOpsT'
      end
      object CheckBoxOps: TCheckBox
        Left = 136
        Top = 11
        Width = 113
        Height = 17
        Caption = #1055#1086' '#1074#1089#1077#1084' '#1054#1055#1057
        TabOrder = 2
        OnClick = CheckBoxOpsClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 61
      Width = 263
      Height = 61
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 137
        Height = 61
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 10
          Width = 23
          Height = 16
          Caption = #1043#1086#1076
        end
        object Label3: TLabel
          Left = 8
          Top = 35
          Width = 41
          Height = 16
          Caption = #1052#1077#1089#1103#1094
        end
        object MesBox: TComboBox
          Left = 56
          Top = 31
          Width = 73
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 0
        end
        object GodBox: TComboBox
          Left = 56
          Top = 3
          Width = 73
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Left = 137
        Top = 0
        Width = 126
        Height = 61
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 12
          Width = 7
          Height = 16
          Caption = #1089
        end
        object Label5: TLabel
          Left = 8
          Top = 39
          Width = 16
          Height = 16
          Caption = #1087#1086
        end
        object Dt1: TDateTimePicker
          Left = 29
          Top = 8
          Width = 91
          Height = 24
          Date = 44070.452578645830000000
          Time = 44070.452578645830000000
          TabOrder = 0
        end
        object Dt2: TDateTimePicker
          Left = 28
          Top = 34
          Width = 91
          Height = 24
          Date = 44070.452578645830000000
          Time = 44070.452578645830000000
          TabOrder = 1
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 212
    Width = 284
    Height = 19
    Panels = <>
  end
end
