object Sprav: TSprav
  Left = 215
  Top = 247
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1089#1080#1089#1090#1077#1084#1099
  ClientHeight = 589
  ClientWidth = 1043
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 570
    Width = 1043
    Height = 19
    Panels = <>
  end
  object PageSprav: TPageControl
    Left = 0
    Top = 0
    Width = 1043
    Height = 570
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet4: TTabSheet
      Caption = #1054#1073#1097#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 3
      OnShow = TabSheet4Show
      object TableParam: TDBGrid
        Left = 0
        Top = 0
        Width = 1035
        Height = 383
        Align = alClient
        DataSource = Baza.SQL_SYSTEM_E
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = TableParamCellClick
        OnDblClick = TableParamDblClick
        OnEnter = TableParamEnter
        Columns = <
          item
            Expanded = False
            FieldName = 'NAMESPR'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 330
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARAMVALUE'
            Title.Alignment = taCenter
            Title.Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 330
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPISANIE'
            Title.Alignment = taCenter
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' ('#1056#1091#1089')'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 330
            Visible = True
          end>
      end
      object PanelParametry: TPanel
        Left = 0
        Top = 383
        Width = 1035
        Height = 97
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 75
          Height = 16
          Caption = #1058#1080#1087' '#1076#1072#1085#1085#1099#1093
        end
        object Label8: TLabel
          Left = 408
          Top = 11
          Width = 99
          Height = 16
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label9: TLabel
          Left = 8
          Top = 40
          Width = 65
          Height = 16
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label10: TLabel
          Left = 8
          Top = 72
          Width = 65
          Height = 16
          Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        end
        object ListBoxType: TComboBox
          Left = 96
          Top = 8
          Width = 305
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            #1057#1090#1088#1086#1082#1072
            #1062#1077#1083#1086#1077' '#1095#1080#1089#1083#1086
            #1044#1077#1085#1077#1078#1085#1099#1086#1077' '#1095#1080#1089#1083#1086
            #1044#1072#1090#1072'\'#1042#1088#1077#1084#1103)
        end
        object TextName: TEdit
          Left = 512
          Top = 8
          Width = 505
          Height = 24
          MaxLength = 30
          TabOrder = 1
          Text = 'TextName'
        end
        object TextOpisanie: TEdit
          Left = 96
          Top = 38
          Width = 921
          Height = 24
          MaxLength = 255
          TabOrder = 2
          Text = 'TextOpisanie'
        end
        object TextValue: TEdit
          Left = 96
          Top = 66
          Width = 921
          Height = 24
          MaxLength = 255
          TabOrder = 3
          Text = 'TextValue'
        end
      end
      object PanelParametryBut: TPanel
        Left = 0
        Top = 480
        Width = 1035
        Height = 59
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 2
        object ButParamAdd: TSpeedButton
          Left = 6
          Top = 6
          Width = 200
          Height = 48
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          OnClick = ButParamAddClick
        end
        object ButParamDel: TSpeedButton
          Left = 211
          Top = 6
          Width = 200
          Height = 48
          Caption = #1059#1076#1072#1083#1080#1090#1100
          OnClick = ButParamDelClick
        end
        object ButParamEdit: TSpeedButton
          Left = 418
          Top = 6
          Width = 200
          Height = 48
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          OnClick = ButParamEditClick
        end
        object ButParamSave: TSpeedButton
          Left = 623
          Top = 6
          Width = 200
          Height = 48
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Enabled = False
          OnClick = ButParamSaveClick
        end
        object ButParamCancel: TSpeedButton
          Left = 828
          Top = 6
          Width = 200
          Height = 48
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100
          Enabled = False
          OnClick = ButParamCancelClick
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      OnShow = TabSheet1Show
      object TableUser: TDBGrid
        Left = 0
        Top = 0
        Width = 369
        Height = 539
        Align = alLeft
        DataSource = Baza.Sql_UserViewE
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = TableUserCellClick
        OnDblClick = TableUserDblClick
        OnEnter = TableUserEnter
        OnKeyUp = TableUserKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FM'
            Title.Alignment = taCenter
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1054
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end>
      end
      object PanelUser: TPanel
        Left = 369
        Top = 0
        Width = 666
        Height = 539
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PanelUserBut: TPanel
          Left = 0
          Top = 488
          Width = 666
          Height = 51
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object ButUserAdd: TSpeedButton
            Left = 6
            Top = 6
            Width = 129
            Height = 41
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            OnClick = ButUserAddClick
          end
          object ButUserDel: TSpeedButton
            Left = 139
            Top = 6
            Width = 128
            Height = 41
            Caption = #1059#1076#1072#1083#1080#1090#1100
            OnClick = ButUserDelClick
          end
          object ButUserEdit: TSpeedButton
            Left = 270
            Top = 6
            Width = 129
            Height = 41
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            OnClick = ButUserEditClick
          end
          object ButUserSave: TSpeedButton
            Left = 402
            Top = 6
            Width = 128
            Height = 41
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Enabled = False
            OnClick = ButUserSaveClick
          end
          object ButUserCansel: TSpeedButton
            Left = 534
            Top = 5
            Width = 127
            Height = 41
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            Enabled = False
            OnClick = ButUserCanselClick
          end
        end
        object PanelUserDate: TPanel
          Left = 0
          Top = 0
          Width = 666
          Height = 488
          Align = alClient
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 1
          object Label1: TLabel
            Left = 15
            Top = 9
            Width = 59
            Height = 16
            Caption = #1060#1072#1084#1080#1083#1080#1103
          end
          object Label2: TLabel
            Left = 17
            Top = 55
            Width = 26
            Height = 16
            Caption = #1048#1084#1103
          end
          object Label3: TLabel
            Left = 16
            Top = 99
            Width = 63
            Height = 16
            Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          end
          object Label4: TLabel
            Left = 17
            Top = 144
            Width = 71
            Height = 16
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          end
          object Label5: TLabel
            Left = 18
            Top = 192
            Width = 113
            Height = 16
            Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
          end
          object Label6: TLabel
            Left = 20
            Top = 242
            Width = 49
            Height = 16
            Caption = #1055#1072#1088#1086#1083#1100
          end
          object TextFm: TEdit
            Left = 16
            Top = 29
            Width = 625
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 0
            Text = 'TEXTFM'
            OnKeyDown = TextFmKeyDown
          end
          object TextIm: TEdit
            Left = 16
            Top = 73
            Width = 625
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 1
            Text = 'TEXTIM'
            OnKeyDown = TextImKeyDown
          end
          object TextOt: TEdit
            Left = 16
            Top = 117
            Width = 625
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 2
            Text = 'TEXTOT'
            OnKeyDown = TextOtKeyDown
          end
          object TextDolgn: TEdit
            Left = 17
            Top = 163
            Width = 625
            Height = 24
            CharCase = ecUpperCase
            MaxLength = 100
            TabOrder = 3
            Text = 'TEXTDOLGN'
            OnKeyDown = TextDolgnKeyDown
          end
          object ListBoxUrd: TComboBox
            Left = 18
            Top = 213
            Width = 625
            Height = 24
            Style = csDropDownList
            ItemHeight = 16
            TabOrder = 4
            OnKeyDown = ListBoxUrdKeyDown
            Items.Strings = (
              #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
              #1050#1086#1085#1090#1088#1086#1083#1077#1088
              #1054#1087#1077#1088#1072#1090#1086#1088
              #1057#1086#1090#1088#1091#1076#1085#1080#1082' '#1050#1057#1059'\'#1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100)
          end
          object TextPassw: TEdit
            Left = 16
            Top = 261
            Width = 625
            Height = 24
            MaxLength = 255
            PasswordChar = '#'
            TabOrder = 5
            Text = 'TextPassw'
            OnKeyDown = TextPasswKeyDown
          end
          object ChekBoxUserStatus: TCheckBox
            Left = 14
            Top = 293
            Width = 257
            Height = 17
            Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1089#1080#1089#1090#1077#1084#1077
            TabOrder = 6
            OnKeyDown = ChekBoxUserStatusKeyDown
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1054#1055#1057
      ImageIndex = 1
      OnShow = TabSheet2Show
      object TableOps: TDBGrid
        Left = 0
        Top = 0
        Width = 369
        Height = 539
        Align = alLeft
        DataSource = Baza.SQL_OPS_E
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = TableOpsCellClick
        OnDblClick = TableOpsDblClick
        OnEnter = TableOpsEnter
        OnKeyUp = TableOpsKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'INDOPS'
            Title.Alignment = taCenter
            Title.Caption = #1048#1085#1076#1077#1082#1089
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMEOPS'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end>
      end
      object PanelOps: TPanel
        Left = 369
        Top = 0
        Width = 666
        Height = 539
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PanelOpsBut: TPanel
          Left = 0
          Top = 486
          Width = 666
          Height = 53
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object ButOpsAdd: TSpeedButton
            Left = 9
            Top = 6
            Width = 105
            Height = 41
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            OnClick = ButOpsAddClick
          end
          object ButOpsDel: TSpeedButton
            Left = 118
            Top = 6
            Width = 105
            Height = 41
            Caption = #1059#1076#1072#1083#1080#1090#1100
            OnClick = ButOpsDelClick
          end
          object ButOpsEdit: TSpeedButton
            Left = 227
            Top = 6
            Width = 105
            Height = 41
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            OnClick = ButOpsEditClick
          end
          object ButOpsSave: TSpeedButton
            Left = 335
            Top = 6
            Width = 105
            Height = 41
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Enabled = False
            OnClick = ButOpsSaveClick
          end
          object ButOpsCancel: TSpeedButton
            Left = 444
            Top = 5
            Width = 105
            Height = 41
            Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            Enabled = False
            OnClick = ButOpsCancelClick
          end
          object ButOpsDbf: TSpeedButton
            Left = 553
            Top = 5
            Width = 105
            Height = 41
            Caption = #1048#1084#1087#1086#1088#1090' DBF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 0
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            OnClick = ButOpsDbfClick
          end
        end
        object PanelOpsDate: TPanel
          Left = 0
          Top = 0
          Width = 666
          Height = 486
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label11: TLabel
            Left = 40
            Top = 14
            Width = 80
            Height = 16
            Caption = #1048#1085#1076#1077#1082#1089' '#1054#1055#1057
          end
          object Label12: TLabel
            Left = 23
            Top = 41
            Width = 99
            Height = 16
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          object Label13: TLabel
            Left = 75
            Top = 69
            Width = 47
            Height = 16
            Caption = #1056#1077#1075#1080#1086#1085
          end
          object Label14: TLabel
            Left = 83
            Top = 98
            Width = 41
            Height = 16
            Caption = #1056#1072#1081#1086#1085
          end
          object Label15: TLabel
            Left = 6
            Top = 123
            Width = 123
            Height = 16
            Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
          end
          object Label16: TLabel
            Left = 83
            Top = 153
            Width = 41
            Height = 16
            Caption = #1059#1083#1080#1094#1072
          end
          object Label17: TLabel
            Left = 64
            Top = 181
            Width = 64
            Height = 16
            Caption = #1057#1090#1088#1086#1077#1085#1080#1077
          end
          object TextIndex: TEdit
            Left = 129
            Top = 8
            Width = 121
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 0
            Text = 'TEXTINDEX'
            OnKeyPress = TextIndexKeyPress
          end
          object TextNameOps: TEdit
            Left = 130
            Top = 35
            Width = 523
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 1
            Text = 'TEXTNAMEOPS'
          end
          object TextRegion: TEdit
            Left = 131
            Top = 63
            Width = 523
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 2
            Text = 'TEXTREGION'
          end
          object TextArea: TEdit
            Left = 132
            Top = 91
            Width = 523
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 3
            Text = 'TEXTAREA'
          end
          object TextCity: TEdit
            Left = 132
            Top = 120
            Width = 524
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 4
            Text = 'TEXTCITY'
          end
          object TextStrit: TEdit
            Left = 132
            Top = 149
            Width = 525
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 5
            Text = 'TEXTSTRIT'
          end
          object TextDom: TEdit
            Left = 133
            Top = 176
            Width = 223
            Height = 24
            CharCase = ecUpperCase
            TabOrder = 6
            Text = 'TEXTDOM'
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 208
            Width = 666
            Height = 278
            Align = alBottom
            Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
            TabOrder = 7
            object Label26: TLabel
              Left = 7
              Top = 196
              Width = 59
              Height = 16
              Caption = #1060#1072#1084#1080#1083#1080#1103
            end
            object Label27: TLabel
              Left = 6
              Top = 222
              Width = 63
              Height = 16
              Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            end
            object Label28: TLabel
              Left = 355
              Top = 194
              Width = 26
              Height = 16
              Caption = #1048#1084#1103
            end
            object Label29: TLabel
              Left = 323
              Top = 219
              Width = 71
              Height = 16
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            end
            object Label30: TLabel
              Left = 16
              Top = 247
              Width = 49
              Height = 16
              Caption = #1055#1072#1088#1086#1083#1100
            end
            object SpeedButton1: TSpeedButton
              Left = 336
              Top = 244
              Width = 159
              Height = 26
              Caption = #1047#1072#1087#1080#1089#1072#1090#1100
            end
            object SpeedButton2: TSpeedButton
              Left = 499
              Top = 244
              Width = 158
              Height = 26
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
            end
            object TableOpsUser: TDBGrid
              Left = 2
              Top = 18
              Width = 662
              Height = 169
              Align = alTop
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = 0
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = 0
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = 0
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = #1048#1084#1103
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = 0
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 155
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Alignment = taCenter
                  Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = 0
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                  Width = 155
                  Visible = True
                end>
            end
            object ComboBox1: TComboBox
              Left = 395
              Top = 218
              Width = 262
              Height = 24
              ItemHeight = 16
              ItemIndex = 0
              TabOrder = 1
              Text = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1055#1057
              Items.Strings = (
                #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1055#1057
                #1047#1072#1084#1077#1089#1090#1080#1090#1077#1083#1100' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1054#1055#1057)
            end
            object Edit1: TEdit
              Left = 70
              Top = 191
              Width = 249
              Height = 24
              TabOrder = 2
              Text = 'Edit1'
            end
            object Edit2: TEdit
              Left = 395
              Top = 191
              Width = 259
              Height = 24
              TabOrder = 3
              Text = 'Edit1'
            end
            object Edit3: TEdit
              Left = 70
              Top = 218
              Width = 249
              Height = 24
              TabOrder = 4
              Text = 'Edit3'
            end
            object Edit4: TEdit
              Left = 71
              Top = 244
              Width = 248
              Height = 24
              TabOrder = 5
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1040#1076#1088#1077#1089#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
      ImageIndex = 2
      OnShow = TabSheet3Show
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1035
        Height = 539
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = #1040#1076#1088#1077#1089#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
          OnExit = TabSheet5Exit
          OnShow = TabSheet5Show
          object TableDeliveryOps: TDBGrid
            Left = 0
            Top = 0
            Width = 126
            Height = 361
            Align = alLeft
            DataSource = Baza.SQL_DeliveryOpsSprav_e
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = 0
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = TableDeliveryOpsCellClick
            OnDblClick = TableDeliveryOpsDblClick
            OnEnter = TableDeliveryOpsEnter
            OnKeyUp = TableDeliveryOpsKeyUp
            Columns = <
              item
                Expanded = False
                FieldName = 'INDOPS'
                Title.Alignment = taCenter
                Title.Caption = #1048#1085#1076#1077#1082#1089
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end>
          end
          object PanelDeliveryBut: TPanel
            Left = 0
            Top = 449
            Width = 1027
            Height = 59
            Align = alBottom
            BevelOuter = bvLowered
            TabOrder = 1
            object ButDeliveryAdd: TSpeedButton
              Left = 6
              Top = 6
              Width = 200
              Height = 48
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              OnClick = ButDeliveryAddClick
            end
            object ButDeliveryDel: TSpeedButton
              Left = 211
              Top = 6
              Width = 200
              Height = 48
              Caption = #1059#1076#1072#1083#1080#1090#1100
              OnClick = ButDeliveryDelClick
            end
            object ButDeliveryEdit: TSpeedButton
              Left = 418
              Top = 6
              Width = 200
              Height = 48
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              OnClick = ButDeliveryEditClick
            end
            object ButDeliverySave: TSpeedButton
              Left = 623
              Top = 6
              Width = 200
              Height = 48
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              Enabled = False
              OnClick = ButDeliverySaveClick
            end
            object ButDeliveryCansel: TSpeedButton
              Left = 828
              Top = 6
              Width = 200
              Height = 48
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              Enabled = False
              OnClick = ButDeliveryCanselClick
            end
          end
          object TableDeliveryWork: TDBGrid
            Left = 126
            Top = 0
            Width = 901
            Height = 361
            Align = alClient
            DataSource = Baza.Sql_DeliveryAdressE
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = 0
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = TableDeliveryWorkKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CITY'
                Title.Alignment = taCenter
                Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 294
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STRIT'
                Title.Alignment = taCenter
                Title.Caption = #1059#1083#1080#1094#1072
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 294
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOM'
                Title.Alignment = taCenter
                Title.Caption = #1044#1086#1084
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KORP'
                Title.Alignment = taCenter
                Title.Caption = #1050#1086#1088#1087#1091#1089
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DatDelyvery'
                Title.Alignment = taCenter
                Title.Caption = #1044#1072#1090#1072
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object PanelDeliveryAdress: TPanel
            Left = 0
            Top = 361
            Width = 1027
            Height = 88
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 3
            Visible = False
            object Label18: TLabel
              Left = 10
              Top = 11
              Width = 123
              Height = 16
              Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
            end
            object Label19: TLabel
              Left = 91
              Top = 37
              Width = 41
              Height = 16
              Caption = #1059#1083#1080#1094#1072
            end
            object Label20: TLabel
              Left = 105
              Top = 65
              Width = 26
              Height = 16
              Caption = #1044#1086#1084
            end
            object Label21: TLabel
              Left = 320
              Top = 63
              Width = 47
              Height = 16
              Caption = #1050#1086#1088#1087#1091#1089
            end
            object Label22: TLabel
              Left = 551
              Top = 64
              Width = 29
              Height = 16
              Caption = #1054#1055#1057
            end
            object Label23: TLabel
              Left = 768
              Top = 64
              Width = 96
              Height = 16
              Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
            end
            object TextDelivCity: TEdit
              Left = 138
              Top = 7
              Width = 879
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 100
              TabOrder = 0
              Text = 'TEXTDELIVCITY'
              OnKeyDown = TextDelivCityKeyDown
            end
            object TextDelivStrit: TEdit
              Left = 139
              Top = 34
              Width = 878
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 100
              TabOrder = 1
              Text = 'TEXTDELIVSTRIT'
              OnKeyDown = TextDelivStritKeyDown
            end
            object TextDelivDom: TEdit
              Left = 139
              Top = 61
              Width = 175
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 2
              Text = 'TEXTDELIVDOM'
              OnKeyDown = TextDelivDomKeyDown
            end
            object TextDelivKorp: TEdit
              Left = 371
              Top = 61
              Width = 174
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 10
              TabOrder = 3
              Text = 'TEXTDELIVKORP'
              OnKeyDown = TextDelivKorpKeyDown
            end
            object TextDelivOps: TEdit
              Left = 586
              Top = 60
              Width = 175
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 6
              TabOrder = 4
              Text = 'TEXTDELIVOPS'
              OnKeyDown = TextDelivOpsKeyDown
              OnKeyPress = TextDelivOpsKeyPress
            end
            object TextDelivData: TEdit
              Left = 872
              Top = 59
              Width = 144
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 2
              TabOrder = 5
              Text = 'TEXTDELIVDATA'
              OnKeyDown = TextDelivDataKeyDown
              OnKeyPress = TextDelivDataKeyPress
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1053#1077' '#1079#1072#1082#1088#1077#1087#1083#1077#1085#1085#1099#1077' '#1072#1076#1088#1077#1089#1072
          ImageIndex = 1
          OnExit = TabSheet6Exit
          OnShow = TabSheet6Show
          object TableDeliveryNotAdres: TDBGrid
            Left = 0
            Top = 0
            Width = 1027
            Height = 452
            Align = alClient
            DataSource = Baza.SQl_DeliveryAdresNotOpsE
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = 0
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = TableDeliveryNotAdresDblClick
            OnKeyDown = TableDeliveryNotAdresKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CITY'
                Title.Alignment = taCenter
                Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 390
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STRIT'
                Title.Alignment = taCenter
                Title.Caption = #1059#1083#1080#1094#1072
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 390
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOM'
                Title.Alignment = taCenter
                Title.Caption = #1044#1086#1084
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KORP'
                Title.Alignment = taCenter
                Title.Caption = #1050#1086#1088#1087#1091#1089
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = 0
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 100
                Visible = True
              end>
          end
          object PanelDeliveryNotAdress: TPanel
            Left = 0
            Top = 452
            Width = 1027
            Height = 56
            Align = alBottom
            BevelInner = bvLowered
            TabOrder = 1
            Visible = False
            object Label24: TLabel
              Left = 9
              Top = 23
              Width = 153
              Height = 16
              Caption = #1054#1055#1057' '#1076#1086#1089#1090#1072#1074#1082#1080' '#1074#1099#1087#1083#1072#1090#1099
            end
            object Label25: TLabel
              Left = 355
              Top = 21
              Width = 96
              Height = 16
              Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
            end
            object ButSAvNotDelive: TSpeedButton
              Left = 623
              Top = 5
              Width = 200
              Height = 48
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              OnClick = ButSAvNotDeliveClick
            end
            object ButCanNotDelive: TSpeedButton
              Left = 827
              Top = 5
              Width = 200
              Height = 48
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              OnClick = ButCanNotDeliveClick
            end
            object TextDelivNotOps: TEdit
              Left = 170
              Top = 18
              Width = 175
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 6
              TabOrder = 0
              Text = 'TEXTDELIVOPS'
              OnKeyDown = TextDelivNotOpsKeyDown
              OnKeyPress = TextDelivNotOpsKeyPress
            end
            object TextDelivNotDate: TEdit
              Left = 461
              Top = 16
              Width = 144
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 2
              TabOrder = 1
              Text = 'TEXTDELIVDATA'
              OnKeyDown = TextDelivNotDateKeyDown
              OnKeyPress = TextDelivNotDateKeyPress
            end
          end
        end
      end
    end
  end
end
