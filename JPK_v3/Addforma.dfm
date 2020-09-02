object Add: TAdd
  Left = 474
  Top = 286
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Add'
  ClientHeight = 378
  ClientWidth = 562
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 359
    Width = 562
    Height = 19
    Panels = <
      item
        Text = 
          #1055#1077#1088#1077#1084#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1087#1086#1083#1103#1084' -Enter\Esc, '#1047#1072#1087#1080#1089#1072#1090#1100' - Ctrl+Enter,  '#1054#1090#1084#1077#1085#1080#1090 +
          #1100' - Ctrl+Esc'
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 562
    Height = 47
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object Savbut: TSpeedButton
      Left = 3
      Top = 4
      Width = 276
      Height = 40
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      OnClick = SavbutClick
    end
    object CanBut: TSpeedButton
      Left = 282
      Top = 4
      Width = 276
      Height = 40
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OnClick = CanButClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 312
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 54
      Top = 11
      Width = 32
      Height = 16
      Caption = #1044#1072#1090#1072
    end
    object Label2: TLabel
      Left = 197
      Top = 11
      Width = 65
      Height = 16
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088
    end
    object Label3: TLabel
      Left = 266
      Top = 12
      Width = 48
      Height = 16
      Caption = 'Label3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 196
      Top = 39
      Width = 118
      Height = 16
      Caption = #1053#1045' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 38
      Width = 80
      Height = 16
      Caption = #1048#1085#1076#1077#1082#1089' '#1054#1055#1057
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 75
      Height = 16
      Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077
    end
    object Label8: TLabel
      Left = 8
      Top = 67
      Width = 81
      Height = 16
      Caption = #1053#1072#1088#1091#1096#1080#1090#1077#1083#1100
    end
    object Label9: TLabel
      Left = 444
      Top = 8
      Width = 112
      Height = 32
      Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100' '#1076#1083#1103' '#13#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1086#1087#1077#1088'.'
    end
    object Label10: TLabel
      Left = 7
      Top = 124
      Width = 118
      Height = 16
      Caption = #1054#1073#1098#1077#1084#1072' '#1087#1088#1086#1074#1077#1088#1082#1080
    end
    object Dt1: TDateTimePicker
      Left = 96
      Top = 8
      Width = 97
      Height = 24
      Hint = #1044#1072#1090#1072' '#1079#1072' '#1082#1086#1090#1088#1086#1077' '#1074#1099#1103#1074#1083#1077#1085#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1077
      Date = 41677.000000000000000000
      Time = 41677.000000000000000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnKeyDown = Dt1KeyDown
    end
    object OpsT: TEdit
      Left = 96
      Top = 35
      Width = 93
      Height = 24
      Hint = #1048#1085#1076#1077#1082#1089' '#1054#1055#1057' '#1074' '#1082#1086#1090#1088#1086#1084' '#1074#1099#1103#1074#1083#1077#1085#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1077
      MaxLength = 6
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnExit = OpsTExit
      OnKeyDown = OpsTKeyDown
      OnKeyUp = OpsTKeyUp
    end
    object Memo1: TMemo
      Left = 1
      Top = 147
      Width = 560
      Height = 164
      Hint = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
      Align = alBottom
      Lines.Strings = (
        'Memo1')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyDown = Memo1KeyDown
    end
    object BosBox: TComboBox
      Left = 96
      Top = 64
      Width = 217
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1055#1057
      OnKeyDown = BosBoxKeyDown
      Items.Strings = (
        #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1055#1057
        #1047#1072#1084#1077#1089#1090#1080#1090#1077#1083#1100' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1054#1055#1057
        #1050#1086#1085#1090#1088#1086#1083#1077#1088)
    end
    object TipError: TComboBox
      Left = 96
      Top = 93
      Width = 462
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      OnKeyDown = TipErrorKeyDown
    end
    object FioBos: TEdit
      Left = 314
      Top = 63
      Width = 241
      Height = 24
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 5
      OnExit = FioBosExit
      OnKeyDown = FioBosKeyDown
    end
    object lastbox: TCheckBox
      Left = 427
      Top = 4
      Width = 17
      Height = 25
      TabOrder = 6
      OnClick = lastboxClick
    end
    object ProcT: TEdit
      Left = 132
      Top = 120
      Width = 61
      Height = 24
      TabOrder = 7
      Text = '100'
      OnExit = ProcTExit
      OnKeyDown = ProcTKeyDown
    end
    object ErrorNotBox: TCheckBox
      Left = 200
      Top = 123
      Width = 129
      Height = 17
      Caption = #1047#1072#1084#1077#1095#1072#1085#1080#1081' '#1085#1077#1090
      TabOrder = 8
      OnClick = ErrorNotBoxClick
    end
  end
  object Panel3: TPanel
    Left = 280
    Top = 176
    Width = 282
    Height = 136
    Caption = 'Panel3'
    TabOrder = 3
    object Label7: TLabel
      Left = 1
      Top = 1
      Width = 280
      Height = 16
      Align = alTop
      Caption = #1057#1086#1076#1088#1077#1078#1072#1085#1080#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1086#1081' '#1088#1072#1073#1086#1090#1099
    end
    object Memo2: TMemo
      Left = 1
      Top = 17
      Width = 280
      Height = 255
      Align = alTop
      Lines.Strings = (
        'Memo2')
      TabOrder = 0
      OnKeyDown = Memo2KeyDown
    end
    object ClosBox: TCheckBox
      Left = 8
      Top = 285
      Width = 153
      Height = 17
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1079#1072#1084#1077#1095#1077#1085#1080#1077
      TabOrder = 1
    end
  end
end
