object LogWorc: TLogWorc
  Left = 236
  Top = 200
  Width = 1451
  Height = 651
  Caption = 'LogWorc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PC: TPageControl
    Left = 0
    Top = 0
    Width = 1443
    Height = 576
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1051#1086#1075'-'#1088#1072#1073#1086#1090#1099' '#1085#1072' '#1040#1056#1052
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1435
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        OnResize = Panel2Resize
        object Label1: TLabel
          Left = 8
          Top = 5
          Width = 35
          Height = 16
          Caption = #1060#1072#1081#1083
        end
        object LogList: TComboBox
          Left = 48
          Top = 0
          Width = 857
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 0
          OnChange = LogListChange
        end
        object Panel5: TPanel
          Left = 1335
          Top = 0
          Width = 100
          Height = 34
          Align = alRight
          BevelInner = bvLowered
          TabOrder = 1
          object SpeedButton1: TSpeedButton
            Left = 3
            Top = 2
            Width = 94
            Height = 28
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100
            OnClick = SpeedButton1Click
          end
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 34
        Width = 1435
        Height = 511
        Align = alClient
        BorderStyle = bsNone
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 1
      OnResize = TabSheet2Resize
      OnShow = TabSheet2Show
      object TableWorc: TDBGrid
        Left = 0
        Top = 33
        Width = 1435
        Height = 512
        Align = alClient
        DataSource = Baza.sql_work_log_e
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAREGIM'
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1077#1084#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDUSER'
            Title.Alignment = taCenter
            Title.Caption = 'ID '#1087#1086#1083#1079'.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FM'
            Title.Alignment = taCenter
            Title.Caption = #1060#1072#1084#1080#1083#1080#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IM'
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OT'
            Title.Alignment = taCenter
            Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMEARM'
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1103' '#1040#1056#1052
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAMEUSERS'
            Title.Alignment = taCenter
            Title.Caption = #1048#1084#1103' '#1087#1086#1083#1079'. '#1040#1056#1052
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGIMSTR'
            Title.Alignment = taCenter
            Title.Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1086#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 450
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1435
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        OnResize = Panel3Resize
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 60
          Height = 16
          Caption = #1055#1077#1088#1080#1086#1076' '#1089
        end
        object Label3: TLabel
          Left = 166
          Top = 6
          Width = 16
          Height = 16
          Caption = #1087#1086
        end
        object Label4: TLabel
          Left = 282
          Top = 8
          Width = 95
          Height = 16
          Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        end
        object ListUser: TComboBox
          Left = 381
          Top = 5
          Width = 408
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          Sorted = True
          TabOrder = 0
          OnChange = ListUserChange
        end
        object DT1: TDateTimePicker
          Left = 73
          Top = 3
          Width = 90
          Height = 24
          Date = 43969.000000000000000000
          Time = 43969.000000000000000000
          TabOrder = 1
          OnChange = DT1Change
        end
        object Dt2: TDateTimePicker
          Left = 187
          Top = 3
          Width = 90
          Height = 24
          Date = 43969.999988425930000000
          Time = 43969.999988425930000000
          TabOrder = 2
          OnChange = Dt2Change
        end
        object Panel4: TPanel
          Left = 1335
          Top = 0
          Width = 100
          Height = 33
          Align = alRight
          BevelInner = bvLowered
          TabOrder = 3
          object ButFindLog: TSpeedButton
            Left = 3
            Top = 2
            Width = 94
            Height = 29
            Caption = #1055#1086#1082#1072#1079#1072#1090#1100
            OnClick = ButFindLogClick
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 576
    Width = 1443
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
end
