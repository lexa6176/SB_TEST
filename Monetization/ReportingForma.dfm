object Reporting: TReporting
  Left = 246
  Top = 108
  Width = 1215
  Height = 780
  Caption = 'Reporting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1207
    Height = 746
    ActivePage = TabSheet10
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1093#1086#1076#1103#1097#1080#1077
      object ReportFileIn: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = Baza.SQL_FILEIN
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          150.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object FileInTitle: TQRBand
          Left = 57
          Top = 38
          Width = 700
          Height = 72
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            190.500000000000000000
            1852.083333333333000000)
          BandType = rbTitle
          object QRLabel2: TQRLabel
            Left = 8
            Top = 42
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              111.125000000000000000
              177.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 8
            Top = 8
            Width = 256
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              21.166666666666670000
              21.166666666666670000
              677.333333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1056#1077#1077#1089#1090#1088' '#1074#1093#1086#1076#1103#1097#1080#1093' '#1092#1072#1081#1083#1086#1074' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
        end
        object FileInHead: TQRBand
          Left = 57
          Top = 110
          Width = 700
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1852.083333333333000000)
          BandType = rbColumnHeader
          object QRLabel5: TQRLabel
            Left = 2
            Top = 1
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              5.291666666666667000
              2.645833333333333000
              195.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 77
            Top = 1
            Width = 109
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              203.729166666666700000
              2.645833333333333000
              288.395833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 187
            Top = 1
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              494.770833333333300000
              2.645833333333333000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 265
            Top = 1
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              701.145833333333200000
              2.645833333333333000
              301.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 380
            Top = 1
            Width = 203
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1005.416666666667000000
              2.645833333333333000
              537.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1090#1072#1090#1091#1089
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 586
            Top = 1
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1550.458333333333000000
              2.645833333333333000
              293.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1089#1090#1072#1090#1091#1089#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object FileInDetali: TQRBand
          Left = 57
          Top = 129
          Width = 700
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1852.083333333333000000)
          BandType = rbDetail
          object QRSysData4: TQRSysData
            Left = 1
            Top = 2
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2.645833333333333000
              5.291666666666667000
              198.437500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText1: TQRDBText
            Left = 77
            Top = 2
            Width = 108
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              203.729166666666700000
              5.291666666666667000
              285.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FILEIN
            DataField = 'FILENAME'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 186
            Top = 2
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              492.125000000000000000
              5.291666666666667000
              203.729166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FILEIN
            DataField = 'COLZ'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 264
            Top = 2
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              698.500000000000000000
              5.291666666666667000
              301.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FILEIN
            DataField = 'SUMZ'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 379
            Top = 2
            Width = 205
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1002.770833333333000000
              5.291666666666667000
              542.395833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FILEIN
            DataField = 'IDSTATUS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 586
            Top = 2
            Width = 111
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1550.458333333333000000
              5.291666666666667000
              293.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FILEIN
            DataField = 'STATUSDATE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand1: TQRBand
          Left = 57
          Top = 150
          Width = 700
          Height = 123
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            325.437500000000000000
            1852.083333333333000000)
          BandType = rbSummary
          object FileInItogo: TQRMemo
            Left = 4
            Top = 6
            Width = 693
            Height = 75
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              198.437500000000000000
              10.583333333333330000
              15.875000000000000000
              1833.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 80
            Top = 96
            Width = 295
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              254.000000000000000000
              780.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1055#1056' ______________________________________'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 57
          Top = 273
          Width = 700
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1852.083333333333000000)
          BandType = rbPageFooter
          object QRSysData1: TQRSysData
            Left = 0
            Top = 5
            Width = 197
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              13.229166666666670000
              521.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Text = #1042#1088#1077#1084#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' : '
            Transparent = False
            FontSize = 10
          end
          object QRSysData2: TQRSysData
            Left = 312
            Top = 4
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              825.500000000000000000
              10.583333333333330000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Text = #1051#1080#1089#1090' - '
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1048#1089#1093#1086#1076#1103#1097#1080#1077
      ImageIndex = 1
      object ReportFileOut: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = SQL_FILEOUT_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand8: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 51
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            134.937500000000000000
            2770.187500000000000000)
          BandType = rbTitle
          object QRLabel45: TQRLabel
            Left = 0
            Top = 0
            Width = 267
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              0.000000000000000000
              0.000000000000000000
              706.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1056#1077#1077#1089#1090#1088' '#1080#1089#1093#1086#1076#1103#1097#1080#1093' '#1092#1072#1081#1083#1086#1074' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
          object QRLabel46: TQRLabel
            Left = 0
            Top = 26
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              68.791666666666680000
              174.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand9: TQRBand
          Left = 38
          Top = 89
          Width = 1047
          Height = 34
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            89.958333333333320000
            2770.187500000000000000)
          BandType = rbColumnHeader
          object QRLabel47: TQRLabel
            Left = 1
            Top = 0
            Width = 74
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              2.645833333333333000
              0.000000000000000000
              195.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel48: TQRLabel
            Left = 77
            Top = 0
            Width = 109
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              203.729166666666700000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel49: TQRLabel
            Left = 187
            Top = 16
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              494.770833333333400000
              42.333333333333340000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel50: TQRLabel
            Left = 265
            Top = 16
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              701.145833333333400000
              42.333333333333340000
              301.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel51: TQRLabel
            Left = 766
            Top = 0
            Width = 167
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              2026.708333333333000000
              0.000000000000000000
              441.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1090#1072#1090#1091#1089
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel52: TQRLabel
            Left = 935
            Top = 0
            Width = 108
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              2473.854166666667000000
              0.000000000000000000
              285.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1089#1090#1072#1090#1091#1089#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel53: TQRLabel
            Left = 380
            Top = 16
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1005.416666666667000000
              42.333333333333340000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel54: TQRLabel
            Left = 457
            Top = 16
            Width = 115
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1209.145833333333000000
              42.333333333333340000
              304.270833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel55: TQRLabel
            Left = 573
            Top = 16
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1516.062500000000000000
              42.333333333333340000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel56: TQRLabel
            Left = 651
            Top = 16
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              42.333333333333340000
              301.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel57: TQRLabel
            Left = 187
            Top = 0
            Width = 192
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              494.770833333333400000
              0.000000000000000000
              508.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1087#1083#1072#1095#1077#1085#1086' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel58: TQRLabel
            Left = 380
            Top = 0
            Width = 192
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1005.416666666667000000
              0.000000000000000000
              508.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel59: TQRLabel
            Left = 573
            Top = 0
            Width = 192
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1516.062500000000000000
              0.000000000000000000
              508.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand10: TQRBand
          Left = 38
          Top = 142
          Width = 1047
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            2770.187500000000000000)
          BandType = rbSummary
          object QRLabel60: TQRLabel
            Left = 80
            Top = 72
            Width = 295
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              190.500000000000000000
              780.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1055#1056' ______________________________________'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr6: TQRExpr
            Left = 651
            Top = 0
            Width = 113
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1722.437500000000000000
              0.000000000000000000
              298.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.SUMZ)'
            FontSize = 12
          end
          object QRExpr7: TQRExpr
            Left = 457
            Top = 0
            Width = 114
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1209.145833333333000000
              0.000000000000000000
              301.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.SUMNOPAY)'
            FontSize = 12
          end
          object QRExpr15: TQRExpr
            Left = 265
            Top = 0
            Width = 113
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              701.145833333333400000
              0.000000000000000000
              298.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.SUMPAY)'
            FontSize = 12
          end
          object QRExpr16: TQRExpr
            Left = 187
            Top = 0
            Width = 76
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              494.770833333333400000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.COLPAY)'
            FontSize = 12
          end
          object QRExpr17: TQRExpr
            Left = 380
            Top = 0
            Width = 76
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1005.416666666667000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.COLNOPAY)'
            FontSize = 12
          end
          object QRExpr18: TQRExpr
            Left = 573
            Top = 0
            Width = 76
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1516.062500000000000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FILEOUT_P.COLZ)'
            FontSize = 12
          end
          object QRLabel67: TQRLabel
            Left = 8
            Top = 0
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              0.000000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1048#1058#1054#1043#1054
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData17: TQRSysData
            Left = 77
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              203.729166666666700000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailCount
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
        end
        object QRBand11: TQRBand
          Left = 38
          Top = 233
          Width = 1047
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            2770.187500000000000000)
          BandType = rbPageFooter
          object QRSysData8: TQRSysData
            Left = 0
            Top = 5
            Width = 197
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              13.229166666666670000
              521.229166666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Text = #1042#1088#1077#1084#1103' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1103' : '
            Transparent = False
            FontSize = 10
          end
          object QRSysData9: TQRSysData
            Left = 960
            Top = 4
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2540.000000000000000000
              10.583333333333330000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Text = #1051#1080#1089#1090' - '
            Transparent = False
            FontSize = 10
          end
        end
        object QRBand12: TQRBand
          Left = 38
          Top = 123
          Width = 1047
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            2770.187500000000000000)
          BandType = rbDetail
          object QRSysData6: TQRSysData
            Left = 1
            Top = 0
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2.645833333333333000
              0.000000000000000000
              195.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText21: TQRDBText
            Left = 77
            Top = 0
            Width = 109
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              203.729166666666700000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'FILENAME'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText22: TQRDBText
            Left = 187
            Top = 0
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              494.770833333333400000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'COLPAY'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText23: TQRDBText
            Left = 265
            Top = 0
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              701.145833333333400000
              0.000000000000000000
              301.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'SUMPAY'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText24: TQRDBText
            Left = 766
            Top = 0
            Width = 168
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2026.708333333333000000
              0.000000000000000000
              444.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'STATUS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText25: TQRDBText
            Left = 935
            Top = 0
            Width = 108
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2473.854166666667000000
              0.000000000000000000
              285.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'DATAOUT'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText26: TQRDBText
            Left = 380
            Top = 0
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1005.416666666667000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'COLNOPAY'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText27: TQRDBText
            Left = 457
            Top = 0
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1209.145833333333000000
              0.000000000000000000
              301.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'SUMNOPAY'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText28: TQRDBText
            Left = 573
            Top = 0
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1516.062500000000000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'COLZ'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText29: TQRDBText
            Left = 651
            Top = 0
            Width = 113
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              0.000000000000000000
              298.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FILEOUT_P
            DataField = 'SUMZ'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1077#1089#1090#1088
      ImageIndex = 2
      object ReestrOps: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = Baza.SQL_REESTR_OPS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand3: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            1899.708333333333000000)
          BandType = rbTitle
          object QRLabel11: TQRLabel
            Left = 272
            Top = 3
            Width = 135
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              719.666666666666800000
              7.937500000000000000
              357.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1056#1077#1077#1089#1090#1088' - '#1086#1090#1095#1077#1090'  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRLabel12: TQRLabel
            Left = 209
            Top = 30
            Width = 185
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              552.979166666666700000
              79.375000000000000000
              489.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103' '#1087#1086#1095#1090#1086#1074#1086#1081' '#1089#1074#1103#1079#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel13: TQRLabel
            Left = 247
            Top = 54
            Width = 14
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              653.520833333333400000
              142.875000000000000000
              37.041666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel14: TQRLabel
            Left = 273
            Top = 54
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              722.312500000000000000
              142.875000000000000000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1052#1077#1089#1103#1094
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText6: TQRDBText
            Left = 397
            Top = 30
            Width = 73
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1050.395833333333000000
              79.375000000000000000
              193.145833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'INDOPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData7: TQRSysData
            Left = 0
            Top = 46
            Width = 113
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              121.708333333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 9
          end
          object QRLabel44: TQRLabel
            Left = 0
            Top = 3
            Width = 113
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              7.937500000000000000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1095#1090#1072' '#1056#1086#1089#1089#1080#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText19: TQRDBText
            Left = 0
            Top = 61
            Width = 113
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              161.395833333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'INPOCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText20: TQRDBText
            Left = 0
            Top = 18
            Width = 113
            Height = 30
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              79.375000000000000000
              0.000000000000000000
              47.625000000000000000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'POCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 129
          Width = 718
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel15: TQRLabel
            Left = 1
            Top = 0
            Width = 40
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              2.645833333333333000
              0.000000000000000000
              105.833333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 44
            Top = 0
            Width = 150
            Height = 39
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              103.187500000000000000
              116.416666666666700000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1086#1084#1077#1088' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel17: TQRLabel
            Left = 195
            Top = 19
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              515.937500000000000000
              50.270833333333330000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel18: TQRLabel
            Left = 246
            Top = 19
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              650.875000000000000000
              50.270833333333330000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 369
            Top = 19
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              976.312500000000000000
              50.270833333333330000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 421
            Top = 19
            Width = 122
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1113.895833333333000000
              50.270833333333330000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 544
            Top = 19
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1439.333333333333000000
              50.270833333333330000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 595
            Top = 19
            Width = 121
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1574.270833333333000000
              50.270833333333330000
              320.145833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel27: TQRLabel
            Left = 195
            Top = 0
            Width = 173
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              515.937500000000000000
              0.000000000000000000
              457.729166666666600000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel28: TQRLabel
            Left = 369
            Top = 0
            Width = 174
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              976.312500000000000000
              0.000000000000000000
              460.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel29: TQRLabel
            Left = 544
            Top = 0
            Width = 172
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              1439.333333333333000000
              0.000000000000000000
              455.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand5: TQRBand
          Left = 38
          Top = 186
          Width = 718
          Height = 231
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            611.187500000000000000
            1899.708333333333000000)
          BandType = rbSummary
          object QRLabel35: TQRLabel
            Left = 40
            Top = 40
            Width = 105
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              105.833333333333300000
              105.833333333333300000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082' '#1054#1055#1057
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText10: TQRDBText
            Left = 491
            Top = 40
            Width = 197
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1299.104166666667000000
              105.833333333333300000
              521.229166666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'Dolgn'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText14: TQRDBText
            Left = 491
            Top = 86
            Width = 197
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1299.104166666667000000
              227.541666666666700000
              521.229166666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'Fio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel30: TQRLabel
            Left = -1
            Top = 0
            Width = 141
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              -2.645833333333333000
              0.000000000000000000
              373.062500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1048#1058#1054#1043#1054
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText7: TQRDBText
            Left = 142
            Top = 0
            Width = 52
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              375.708333333333400000
              0.000000000000000000
              137.583333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'Counts'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText8: TQRDBText
            Left = 195
            Top = 0
            Width = 49
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              515.937500000000000000
              0.000000000000000000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'ColList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText9: TQRDBText
            Left = 246
            Top = 0
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              650.875000000000000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_STATEMENT
            DataField = 'SumList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel31: TQRLabel
            Left = 369
            Top = 0
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              976.312500000000000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel32: TQRLabel
            Left = 421
            Top = 0
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1113.895833333333000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel33: TQRLabel
            Left = 544
            Top = 0
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1439.333333333333000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel34: TQRLabel
            Left = 595
            Top = 0
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              52.916666666666660000
              1574.270833333333000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 0
            Top = 20
            Width = 720
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              53.000000000000000000
              1905.000000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel36: TQRLabel
            Left = 288
            Top = 88
            Width = 30
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              762.000000000000000000
              232.833333333333400000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1050#1055#1064
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 154
            Top = 40
            Width = 73
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              407.458333333333400000
              105.833333333333300000
              193.145833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'INDOPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel37: TQRLabel
            Left = 40
            Top = 88
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              105.833333333333300000
              232.833333333333400000
              187.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '( '#1055#1086#1076#1087#1080#1089#1100' )'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel38: TQRLabel
            Left = 40
            Top = 156
            Width = 333
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              105.833333333333300000
              412.750000000000000000
              881.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1048#1090#1086#1075#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1089' '#1076#1072#1085#1085#1099#1084#1080' '#1076#1085#1077#1074#1085#1080#1082#1072' '#1092'.130 '#1089#1074#1077#1088#1080#1083' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel39: TQRLabel
            Left = 41
            Top = 179
            Width = 185
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              108.479166666666700000
              473.604166666666700000
              489.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1074#1077#1089#1090#1074#1077#1085#1085#1086#1077' '#1083#1080#1094#1086' '#1087#1086#1095#1090#1072#1084#1090#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRLabel40: TQRLabel
            Left = 230
            Top = 201
            Width = 103
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              608.541666666666800000
              531.812500000000000000
              272.520833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel41: TQRLabel
            Left = 336
            Top = 201
            Width = 79
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              889.000000000000000000
              531.812500000000000000
              209.020833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1076#1087#1080#1089#1100
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel42: TQRLabel
            Left = 418
            Top = 201
            Width = 108
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1105.958333333333000000
              531.812500000000000000
              285.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1056#1072#1089#1096#1080#1088#1086#1074#1082#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel43: TQRLabel
            Left = 114
            Top = 88
            Width = 117
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              301.625000000000000000
              232.833333333333400000
              309.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '(  '#1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072'  )'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand6: TQRBand
          Left = 38
          Top = 169
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          BandType = rbDetail
          object QRDBText11: TQRDBText
            Left = 44
            Top = 0
            Width = 150
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              116.416666666666700000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'NUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData3: TQRSysData
            Left = 1
            Top = 0
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2.645833333333333000
              0.000000000000000000
              105.833333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 195
            Top = 0
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              515.937500000000000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'COUNTLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 246
            Top = 0
            Width = 122
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              650.875000000000000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'SUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel23: TQRLabel
            Left = 369
            Top = 0
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              976.312500000000000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel24: TQRLabel
            Left = 421
            Top = 0
            Width = 122
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1113.895833333333000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel25: TQRLabel
            Left = 544
            Top = 0
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1439.333333333333000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel26: TQRLabel
            Left = 595
            Top = 0
            Width = 121
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1574.270833333333000000
              0.000000000000000000
              320.145833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 417
          Width = 718
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333340000
            1899.708333333333000000)
          BandType = rbPageFooter
          object QRDBText16: TQRDBText
            Left = 5
            Top = 3
            Width = 63
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              13.229166666666670000
              7.937500000000000000
              166.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'INDOPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 72
            Top = 3
            Width = 33
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              190.500000000000000000
              7.937500000000000000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'GOD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRDBText18: TQRDBText
            Left = 108
            Top = 3
            Width = 31
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              285.750000000000000000
              7.937500000000000000
              82.020833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_REESTR_OPS
            DataField = 'MES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 11
          end
          object QRSysData5: TQRSysData
            Left = 672
            Top = 5
            Width = 42
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1778.000000000000000000
              13.229166666666670000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100
      ImageIndex = 3
      object RepList: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = RepListAfterPrint
        DataSet = SQL_LIST_LS_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand13: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 99
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          LinkBand = QRBand38
          ParentFont = False
          Size.Values = (
            261.937500000000000000
            2770.187500000000000000)
          BandType = rbPageHeader
          object QRLabel62: TQRLabel
            Left = 111
            Top = 3
            Width = 92
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              293.687500000000000000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#8470
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText31: TQRDBText
            Left = 205
            Top = 3
            Width = 59
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              542.395833333333400000
              7.937500000000000000
              156.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'Numlist'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel63: TQRLabel
            Left = 266
            Top = 2
            Width = 16
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              703.791666666666800000
              5.291666666666667000
              42.333333333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1086#1090
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText32: TQRDBText
            Left = 283
            Top = 2
            Width = 97
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              748.770833333333400000
              5.291666666666667000
              256.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'DAtList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText33: TQRDBText
            Left = 111
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              293.687500000000000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'INPOCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText34: TQRDBText
            Left = 174
            Top = 23
            Width = 238
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              460.375000000000000000
              60.854166666666680000
              629.708333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'POCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText35: TQRDBText
            Left = 452
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1195.916666666667000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'OPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText36: TQRDBText
            Left = 645
            Top = 23
            Width = 96
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1706.562500000000000000
              60.854166666666680000
              254.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MES1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText37: TQRDBText
            Left = 617
            Top = 23
            Width = 26
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1632.479166666667000000
              60.854166666666680000
              68.791666666666680000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'DatDelyvery'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel64: TQRLabel
            Left = 415
            Top = 23
            Width = 35
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1098.020833333333000000
              60.854166666666680000
              92.604166666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel65: TQRLabel
            Left = 381
            Top = 2
            Width = 115
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1008.062500000000000000
              5.291666666666667000
              304.270833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1080#1103' '#1079#1072' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText38: TQRDBText
            Left = 495
            Top = 2
            Width = 82
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1309.687500000000000000
              5.291666666666667000
              216.958333333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText39: TQRDBText
            Left = 578
            Top = 2
            Width = 63
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1529.291666666667000000
              5.291666666666667000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'GOD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel66: TQRLabel
            Left = 518
            Top = 23
            Width = 98
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1370.541666666667000000
              60.854166666666680000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText40: TQRDBText
            Left = 742
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1963.208333333333000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'GOD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText41: TQRDBText
            Left = 112
            Top = 45
            Width = 489
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              119.062500000000000000
              1293.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'FromPaymentOrg'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText42: TQRDBText
            Left = 604
            Top = 45
            Width = 90
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1598.083333333333000000
              119.062500000000000000
              238.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'NamePayment'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData10: TQRSysData
            Left = 967
            Top = 2
            Width = 76
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2558.520833333333000000
              5.291666666666667000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Text = #1051#1080#1089#1090' -'
            Transparent = False
            FontSize = 10
          end
          object QRLabel68: TQRLabel
            Left = 112
            Top = 69
            Width = 107
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              296.333333333333400000
              182.562500000000000000
              283.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText47: TQRDBText
            Left = 220
            Top = 69
            Width = 250
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              582.083333333333400000
              182.562500000000000000
              661.458333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'CITY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText48: TQRDBText
            Left = 471
            Top = 69
            Width = 266
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1246.187500000000000000
              182.562500000000000000
              703.791666666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'STRIT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText49: TQRDBText
            Left = 736
            Top = 69
            Width = 49
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1947.333333333334000000
              182.562500000000000000
              129.645833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'DOM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText50: TQRDBText
            Left = 786
            Top = 69
            Width = 46
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              2079.625000000000000000
              182.562500000000000000
              121.708333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'KORP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText30: TQRDBText
            Left = 0
            Top = 0
            Width = 49
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              0.000000000000000000
              0.000000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'OPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -32
            Font.Name = 'PostIndex'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 24
          end
        end
        object QRBand14: TQRBand
          Left = 38
          Top = 137
          Width = 1047
          Height = 47
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            124.354166666666700000
            2770.187500000000000000)
          BandType = rbColumnHeader
          object QRLabel72: TQRLabel
            Left = 0
            Top = 0
            Width = 36
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              0.000000000000000000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo1: TQRMemo
            Left = 37
            Top = 0
            Width = 79
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              97.895833333333340000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1059#1085#1080#1082#1072#1083#1100#1085#1099#1081
              #1085#1086#1084#1077#1088
              #1087#1086#1083#1091#1095#1072#1090#1077#1083#1103)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo2: TQRMemo
            Left = 118
            Top = 0
            Width = 165
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              312.208333333333400000
              0.000000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1060#1072#1084#1080#1083#1080#1103
              #1048#1084#1103' '
              #1054#1090#1095#1077#1089#1090#1074#1086)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel73: TQRLabel
            Left = 284
            Top = 0
            Width = 54
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              751.416666666666800000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1074#1072#1088#1090#1080#1088#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo3: TQRMemo
            Left = 339
            Top = 0
            Width = 55
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              896.937500000000000000
              0.000000000000000000
              145.520833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1055#1072#1089#1087#1086#1088#1090' '
              #1057#1077#1088#1080#1103
              #1053#1086#1084#1077#1088)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo4: TQRMemo
            Left = 396
            Top = 0
            Width = 85
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              1047.750000000000000000
              0.000000000000000000
              224.895833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1057#1091#1084#1084#1072' '#1082
              #1074#1099#1087#1083#1072#1090#1077)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel74: TQRLabel
            Left = 482
            Top = 0
            Width = 70
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              1275.291666666667000000
              0.000000000000000000
              185.208333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel75: TQRLabel
            Left = 553
            Top = 24
            Width = 93
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1463.145833333333000000
              63.500000000000000000
              246.062500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1083#1091#1095#1080#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel76: TQRLabel
            Left = 647
            Top = 24
            Width = 96
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1711.854166666667000000
              63.500000000000000000
              254.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1076#1072#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel77: TQRLabel
            Left = 553
            Top = 0
            Width = 190
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1463.145833333333000000
              0.000000000000000000
              502.708333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1076#1087#1080#1089#1100
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel78: TQRLabel
            Left = 744
            Top = 0
            Width = 300
            Height = 47
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              124.354166666666700000
              1968.500000000000000000
              0.000000000000000000
              793.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077' '#1074#1099#1087#1083#1072#1090#1099
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand15: TQRBand
          Left = 38
          Top = 184
          Width = 1047
          Height = 63
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            166.687500000000000000
            2770.187500000000000000)
          BandType = rbDetail
          object QRDBText43: TQRDBText
            Left = 37
            Top = 0
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              97.895833333333340000
              0.000000000000000000
              206.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'NLS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText44: TQRDBText
            Left = 118
            Top = 0
            Width = 165
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              312.208333333333400000
              0.000000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'FM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData11: TQRSysData
            Left = 0
            Top = 0
            Width = 36
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666666700000
              0.000000000000000000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText45: TQRDBText
            Left = 118
            Top = 15
            Width = 165
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              312.208333333333400000
              39.687500000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'IM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText46: TQRDBText
            Left = 118
            Top = 30
            Width = 165
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              312.208333333333400000
              79.375000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'OT'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText51: TQRDBText
            Left = 284
            Top = 0
            Width = 54
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              751.416666666666800000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'KVR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText52: TQRDBText
            Left = 339
            Top = 0
            Width = 55
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              896.937500000000000000
              0.000000000000000000
              145.520833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'PSR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText53: TQRDBText
            Left = 339
            Top = 15
            Width = 57
            Height = 49
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              129.645833333333300000
              896.937500000000000000
              39.687500000000000000
              150.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'PNM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText54: TQRDBText
            Left = 396
            Top = 0
            Width = 85
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1047.750000000000000000
              0.000000000000000000
              224.895833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'SMVYP'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel79: TQRLabel
            Left = 482
            Top = 0
            Width = 70
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1275.291666666667000000
              0.000000000000000000
              185.208333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel80: TQRLabel
            Left = 553
            Top = 0
            Width = 93
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1463.145833333333000000
              0.000000000000000000
              246.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel81: TQRLabel
            Left = 647
            Top = 0
            Width = 98
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              169.333333333333300000
              1711.854166666667000000
              0.000000000000000000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText55: TQRDBText
            Left = 37
            Top = 16
            Width = 81
            Height = 48
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              127.000000000000000000
              97.895833333333340000
              42.333333333333340000
              214.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'NLS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'IntP36DlTt'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 28
          end
          object QRShape6: TQRShape
            Left = 751
            Top = 2
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              5.291666666666667000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape31: TQRShape
            Left = 751
            Top = 18
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              47.625000000000000000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape32: TQRShape
            Left = 751
            Top = 34
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              89.958333333333340000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape33: TQRShape
            Left = 896
            Top = 2
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              5.291666666666667000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape34: TQRShape
            Left = 896
            Top = 18
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              47.625000000000000000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape35: TQRShape
            Left = 896
            Top = 34
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              89.958333333333340000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRLabel70: TQRLabel
            Left = 769
            Top = 4
            Width = 65
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2034.645833333333000000
              10.583333333333330000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042' '#1073#1086#1083#1100#1085#1080#1094#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel93: TQRLabel
            Left = 770
            Top = 20
            Width = 32
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2037.291666666667000000
              52.916666666666670000
              84.666666666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1059#1084#1077#1088
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel94: TQRLabel
            Left = 770
            Top = 34
            Width = 85
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2037.291666666667000000
              89.958333333333320000
              224.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1055#1086#1084#1077#1085#1103#1083' '#1072#1076#1088#1077#1089
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel95: TQRLabel
            Left = 915
            Top = 4
            Width = 70
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2420.937500000000000000
              10.583333333333330000
              185.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1089#1091#1089#1090#1074#1086#1074#1072#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel96: TQRLabel
            Left = 917
            Top = 20
            Width = 98
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2426.229166666667000000
              52.916666666666670000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1088#1077#1084#1077#1085#1085#1086' '#1074#1099#1073#1099#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel97: TQRLabel
            Left = 917
            Top = 34
            Width = 42
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2426.229166666667000000
              89.958333333333320000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1088#1091#1075#1086#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape36: TQRShape
            Left = 759
            Top = 60
            Width = 282
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2008.187500000000000000
              158.750000000000000000
              746.125000000000000000)
            Shape = qrsRectangle
          end
        end
        object QRBand16: TQRBand
          Left = 38
          Top = 247
          Width = 1047
          Height = 233
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            616.479166666666800000
            2770.187500000000000000)
          BandType = rbSummary
          object QRLabel71: TQRLabel
            Left = 5
            Top = 4
            Width = 207
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              10.583333333333330000
              547.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086' : '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText56: TQRDBText
            Left = 213
            Top = 4
            Width = 60
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              563.562500000000000000
              10.583333333333330000
              158.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'ColList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText57: TQRDBText
            Left = 345
            Top = 5
            Width = 116
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              912.812500000000100000
              13.229166666666670000
              306.916666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'SumList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel82: TQRLabel
            Left = 274
            Top = 5
            Width = 69
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              724.958333333333200000
              13.229166666666670000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1085#1072' '#1089#1091#1084#1084#1091' :'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel83: TQRLabel
            Left = 6
            Top = 28
            Width = 143
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              15.875000000000000000
              74.083333333333340000
              378.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1074#1099#1087#1091#1089#1090#1080#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText58: TQRDBText
            Left = 9
            Top = 57
            Width = 178
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              23.812500000000000000
              150.812500000000000000
              470.958333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'Dolgn'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText59: TQRDBText
            Left = 340
            Top = 56
            Width = 27
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              899.583333333333400000
              148.166666666666700000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'FIO'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText60: TQRDBText
            Left = 12
            Top = 100
            Width = 177
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              31.750000000000000000
              264.583333333333400000
              468.312500000000100000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MonetyBos'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText61: TQRDBText
            Left = 338
            Top = 100
            Width = 92
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              894.291666666666800000
              264.583333333333400000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MonetyBosFio'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel84: TQRLabel
            Left = 192
            Top = 77
            Width = 145
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              508.000000000000000000
              203.729166666666700000
              383.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '('#1087#1086#1076#1087#1080#1089#1100')'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel85: TQRLabel
            Left = 192
            Top = 123
            Width = 145
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              508.000000000000000000
              325.437500000000000000
              383.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '('#1087#1086#1076#1087#1080#1089#1100')'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel87: TQRLabel
            Left = 804
            Top = 64
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              2127.250000000000000000
              169.333333333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel88: TQRLabel
            Left = 916
            Top = 64
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              2423.583333333333000000
              169.333333333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel89: TQRLabel
            Left = 661
            Top = 87
            Width = 145
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              60.854166666666680000
              1748.895833333334000000
              230.187500000000000000
              383.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel90: TQRLabel
            Left = 661
            Top = 110
            Width = 145
            Height = 26
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              68.791666666666680000
              1748.895833333334000000
              291.041666666666700000
              383.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape2: TQRShape
            Left = 805
            Top = 88
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2129.895833333333000000
              232.833333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape3: TQRShape
            Left = 917
            Top = 88
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2426.229166666667000000
              232.833333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape4: TQRShape
            Left = 805
            Top = 112
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2129.895833333333000000
              296.333333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape5: TQRShape
            Left = 917
            Top = 112
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2426.229166666667000000
              296.333333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRLabel86: TQRLabel
            Left = 16
            Top = 175
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              463.020833333333400000
              317.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072' '#1079#1072' '#1076#1077#1085#1100
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel91: TQRLabel
            Left = 16
            Top = 199
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              526.520833333333400000
              317.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape7: TQRShape
            Left = 288
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape8: TQRShape
            Left = 288
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape9: TQRShape
            Left = 288
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel92: TQRLabel
            Left = 16
            Top = 151
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              399.520833333333400000
              317.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape10: TQRShape
            Left = 365
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape11: TQRShape
            Left = 365
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape12: TQRShape
            Left = 365
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape13: TQRShape
            Left = 136
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape14: TQRShape
            Left = 136
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape15: TQRShape
            Left = 136
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape16: TQRShape
            Left = 213
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape17: TQRShape
            Left = 213
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape18: TQRShape
            Left = 213
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape19: TQRShape
            Left = 440
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape20: TQRShape
            Left = 440
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape21: TQRShape
            Left = 440
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape22: TQRShape
            Left = 517
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape23: TQRShape
            Left = 517
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape24: TQRShape
            Left = 517
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape25: TQRShape
            Left = 592
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape26: TQRShape
            Left = 592
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape27: TQRShape
            Left = 592
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape28: TQRShape
            Left = 669
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape29: TQRShape
            Left = 669
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape30: TQRShape
            Left = 669
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel69: TQRLabel
            Left = 464
            Top = 5
            Width = 5
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1227.666666666667000000
              13.229166666666670000
              13.229166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand38: TQRBand
          Left = 38
          Top = 480
          Width = 1047
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            55.562500000000000000
            2770.187500000000000000)
          BandType = rbPageFooter
          object QRExpr13: TQRExpr
            Left = 288
            Top = 0
            Width = 60
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              762.000000000000000000
              0.000000000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 12
          end
          object QRExpr14: TQRExpr
            Left = 426
            Top = 0
            Width = 224
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1127.125000000000000000
              0.000000000000000000
              592.666666666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_LS_P.SMVYP)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRLabel194: TQRLabel
            Left = 8
            Top = 0
            Width = 274
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              0.000000000000000000
              724.958333333333200000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086' '#1087#1086' '#1083#1080#1089#1090#1091' : '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel195: TQRLabel
            Left = 352
            Top = 0
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              931.333333333333500000
              0.000000000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072' '#1089#1091#1084#1084#1091' :'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1087#1083#1072#1090#1072#1084' '#1048#1090#1086#1075#1086
      ImageIndex = 4
      object RepOps: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPreview = RepOpsAfterPreview
        DataSet = SP_REP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand17: TQRBand
          Left = 38
          Top = 55
          Width = 1047
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            92.604166666666680000
            2770.187500000000000000)
          BandType = rbTitle
          object QRDBText70: TQRDBText
            Left = 376
            Top = 8
            Width = 29
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              994.833333333333400000
              21.166666666666670000
              76.729166666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_REP
            DataField = 'God'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel98: TQRLabel
            Left = 8
            Top = 8
            Width = 273
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              21.166666666666670000
              722.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1087#1083#1072#1090#1072#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#1087#1083#1072#1090#1077#1078#1077#1081
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel110: TQRLabel
            Left = 361
            Top = 8
            Width = 5
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              955.145833333333500000
              21.166666666666670000
              13.229166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand18: TQRBand
          Left = 38
          Top = 90
          Width = 1047
          Height = 40
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            2770.187500000000000000)
          BandType = rbColumnHeader
          object QRLabel99: TQRLabel
            Left = 0
            Top = 0
            Width = 76
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              0.000000000000000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel100: TQRLabel
            Left = 77
            Top = 0
            Width = 73
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              203.729166666666700000
              0.000000000000000000
              193.145833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel101: TQRLabel
            Left = 152
            Top = 0
            Width = 175
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              0.000000000000000000
              463.020833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel102: TQRLabel
            Left = 328
            Top = 0
            Width = 175
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              867.833333333333500000
              0.000000000000000000
              463.020833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel103: TQRLabel
            Left = 504
            Top = 0
            Width = 175
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1333.500000000000000000
              0.000000000000000000
              463.020833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050' '#1086#1087#1083#1072#1090#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel104: TQRLabel
            Left = 152
            Top = 20
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              52.916666666666660000
              171.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel105: TQRLabel
            Left = 218
            Top = 20
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              576.791666666666800000
              52.916666666666660000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel106: TQRLabel
            Left = 328
            Top = 20
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              867.833333333333500000
              52.916666666666660000
              171.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel107: TQRLabel
            Left = 394
            Top = 20
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1042.458333333333000000
              52.916666666666660000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel108: TQRLabel
            Left = 504
            Top = 20
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1333.500000000000000000
              52.916666666666660000
              171.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel109: TQRLabel
            Left = 570
            Top = 20
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1508.125000000000000000
              52.916666666666660000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel4: TQRLabel
            Left = 680
            Top = 0
            Width = 175
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1799.166666666667000000
              0.000000000000000000
              463.020833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel61: TQRLabel
            Left = 680
            Top = 20
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1799.166666666667000000
              52.916666666666660000
              171.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel127: TQRLabel
            Left = 746
            Top = 20
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1973.791666666667000000
              52.916666666666660000
              288.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel129: TQRLabel
            Left = 856
            Top = 0
            Width = 188
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2264.833333333333000000
              0.000000000000000000
              497.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel130: TQRLabel
            Left = 856
            Top = 20
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2264.833333333333000000
              52.916666666666660000
              171.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel131: TQRLabel
            Left = 922
            Top = 20
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2439.458333333333000000
              52.916666666666660000
              322.791666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand19: TQRBand
          Left = 38
          Top = 130
          Width = 1047
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            2770.187500000000000000)
          BandType = rbDetail
          object QRDBText62: TQRDBText
            Left = 77
            Top = 0
            Width = 73
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              203.729166666666700000
              0.000000000000000000
              193.145833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'Indops'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText63: TQRDBText
            Left = 152
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'ColPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText64: TQRDBText
            Left = 218
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              576.791666666666800000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'SumPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText65: TQRDBText
            Left = 328
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              867.833333333333500000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'ColNoPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText66: TQRDBText
            Left = 394
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1042.458333333333000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'SumNoPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText67: TQRDBText
            Left = 504
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1333.500000000000000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'ColForPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText68: TQRDBText
            Left = 570
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1508.125000000000000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'SumForPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData12: TQRSysData
            Left = 0
            Top = 0
            Width = 76
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              0.000000000000000000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 12
          end
          object QRDBText84: TQRDBText
            Left = 680
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1799.166666666667000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'ColNoList'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText85: TQRDBText
            Left = 746
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1973.791666666667000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'SumNoList'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText86: TQRDBText
            Left = 856
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2264.833333333333000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'ColAll'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText87: TQRDBText
            Left = 922
            Top = 0
            Width = 122
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2439.458333333333000000
              0.000000000000000000
              322.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SP_REP
            DataField = 'SumAll'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand20: TQRBand
          Left = 38
          Top = 151
          Width = 1047
          Height = 146
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            386.291666666666700000
            2770.187500000000000000)
          BandType = rbSummary
          object QRLabel111: TQRLabel
            Left = -1
            Top = 0
            Width = 151
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              -2.645833333333333000
              0.000000000000000000
              399.520833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1057#1045#1043#1054
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRExpr32: TQRExpr
            Left = 152
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.ColPay)'
            FontSize = 12
          end
          object QRExpr33: TQRExpr
            Left = 219
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              579.437500000000000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.SumPay)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr34: TQRExpr
            Left = 328
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              867.833333333333500000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.ColNoPay)'
            FontSize = 12
          end
          object QRExpr35: TQRExpr
            Left = 394
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1042.458333333333000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.SumNoPay)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr36: TQRExpr
            Left = 504
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1333.500000000000000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.ColForPay)'
            FontSize = 12
          end
          object QRExpr37: TQRExpr
            Left = 571
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1510.770833333333000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.SumForPay)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr38: TQRExpr
            Left = 680
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1799.166666666667000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.ColNoList)'
            FontSize = 12
          end
          object QRExpr39: TQRExpr
            Left = 746
            Top = 0
            Width = 109
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1973.791666666667000000
              0.000000000000000000
              288.395833333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.SumNoList)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr40: TQRExpr
            Left = 856
            Top = 0
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2264.833333333333000000
              0.000000000000000000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.ColAll)'
            FontSize = 12
          end
          object QRExpr41: TQRExpr
            Left = 922
            Top = 0
            Width = 124
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              52.916666666666660000
              2439.458333333333000000
              0.000000000000000000
              328.083333333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SP_REP.SumAll)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRShape39: TQRShape
            Left = 0
            Top = 20
            Width = 1047
            Height = 3
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              7.937500000000000000
              0.000000000000000000
              52.916666666666660000
              2770.187500000000000000)
            Shape = qrsRectangle
          end
          object QRLabel156: TQRLabel
            Left = 272
            Top = 40
            Width = 257
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              719.666666666666800000
              105.833333333333300000
              679.979166666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1077' '#1074#1082#1083#1102#1095#1077#1085#1085#1099#1093' '#1074' '#1079#1086#1085#1091' '#1086#1073#1089#1083#1091#1078#1080#1074#1072#1085#1080#1103
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel157: TQRLabel
            Left = 464
            Top = 72
            Width = 64
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1227.666666666667000000
              190.500000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText69: TQRDBText
            Left = 536
            Top = 40
            Width = 40
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1418.166666666667000000
              105.833333333333300000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_REP_ITOGI
            DataField = 'ColAll'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText71: TQRDBText
            Left = 536
            Top = 72
            Width = 45
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1418.166666666667000000
              190.500000000000000000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_REP_ITOGI
            DataField = 'SumAll'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand31: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            2770.187500000000000000)
          BandType = rbPageHeader
          object QRSysData20: TQRSysData
            Left = 967
            Top = 0
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2558.520833333333000000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Text = #1051#1080#1089#1090' - '
            Transparent = False
            FontSize = 10
          end
          object QRSysData21: TQRSysData
            Left = 0
            Top = 1
            Width = 105
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              2.645833333333333000
              277.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1088#1077#1077#1089#1090#1088#1072#1084' '#1048#1090#1086#1075' '
      ImageIndex = 5
      object RepSvodList: TQuickRep
        Left = 0
        Top = 1
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPreview = RepSvodListAfterPreview
        DataSet = SQL_REP_LIST
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand21: TQRBand
          Left = 38
          Top = 57
          Width = 718
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            92.604166666666680000
            1899.708333333333000000)
          BandType = rbTitle
          object QRDBText76: TQRDBText
            Left = 496
            Top = 8
            Width = 29
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1312.333333333333000000
              21.166666666666670000
              76.729166666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_REP
            DataField = 'God'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel112: TQRLabel
            Left = 8
            Top = 8
            Width = 388
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              21.166666666666670000
              1026.583333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1087#1083#1072#1090#1072#1084' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '#1087#1083#1072#1090#1077#1078#1077#1081' ('#1087#1086' '#1074#1077#1076#1086#1084#1086#1089#1090#1103#1084')'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel113: TQRLabel
            Left = 489
            Top = 8
            Width = 5
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1293.812500000000000000
              21.166666666666670000
              13.229166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand22: TQRBand
          Left = 38
          Top = 92
          Width = 718
          Height = 41
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            108.479166666666700000
            1899.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel114: TQRLabel
            Left = 0
            Top = 0
            Width = 41
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              0.000000000000000000
              0.000000000000000000
              108.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel115: TQRLabel
            Left = 42
            Top = 0
            Width = 72
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              111.125000000000000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel116: TQRLabel
            Left = 168
            Top = 0
            Width = 177
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              444.500000000000000000
              0.000000000000000000
              468.312500000000100000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel117: TQRLabel
            Left = 346
            Top = 0
            Width = 177
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              915.458333333333200000
              0.000000000000000000
              468.312500000000100000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel118: TQRLabel
            Left = 524
            Top = 0
            Width = 191
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1386.416666666667000000
              0.000000000000000000
              505.354166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel119: TQRLabel
            Left = 168
            Top = 20
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              444.500000000000000000
              52.916666666666660000
              174.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel120: TQRLabel
            Left = 235
            Top = 20
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              621.770833333333400000
              52.916666666666660000
              291.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel121: TQRLabel
            Left = 346
            Top = 20
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              915.458333333333200000
              52.916666666666660000
              174.625000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel122: TQRLabel
            Left = 413
            Top = 20
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1092.729166666667000000
              52.916666666666660000
              291.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel123: TQRLabel
            Left = 524
            Top = 20
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1386.416666666667000000
              52.916666666666660000
              190.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel124: TQRLabel
            Left = 598
            Top = 20
            Width = 117
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1582.208333333333000000
              52.916666666666660000
              309.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel128: TQRLabel
            Left = 116
            Top = 0
            Width = 51
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              306.916666666666700000
              0.000000000000000000
              134.937500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1077#1076#1086#1084'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand23: TQRBand
          Left = 38
          Top = 133
          Width = 718
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1899.708333333333000000)
          BandType = rbDetail
          object QRDBText77: TQRDBText
            Left = 42
            Top = 0
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              111.125000000000000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'INDOPS'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText78: TQRDBText
            Left = 168
            Top = 0
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              444.500000000000000000
              0.000000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'ColPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText79: TQRDBText
            Left = 235
            Top = 0
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              621.770833333333400000
              0.000000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'SumPay'
            Mask = '0.00'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText80: TQRDBText
            Left = 346
            Top = 0
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              915.458333333333200000
              0.000000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'CountNoPay'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText81: TQRDBText
            Left = 413
            Top = 0
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1092.729166666667000000
              0.000000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'SumNoPay'
            Mask = '0.00'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText82: TQRDBText
            Left = 524
            Top = 0
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1386.416666666667000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'ColList'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText83: TQRDBText
            Left = 598
            Top = 0
            Width = 118
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1582.208333333333000000
              0.000000000000000000
              312.208333333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'SUMLIST'
            Mask = '0.00'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData13: TQRSysData
            Left = 0
            Top = 0
            Width = 41
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              0.000000000000000000
              0.000000000000000000
              108.479166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 12
          end
          object QRDBText96: TQRDBText
            Left = 116
            Top = 0
            Width = 51
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              306.916666666666700000
              0.000000000000000000
              134.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_REP_LIST
            DataField = 'COUNT'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand24: TQRBand
          Left = 38
          Top = 153
          Width = 718
          Height = 104
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            275.166666666666700000
            1899.708333333333000000)
          BandType = rbSummary
          object QRLabel125: TQRLabel
            Left = -1
            Top = 0
            Width = 113
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              -2.645833333333333000
              0.000000000000000000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1057#1045#1043#1054
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRExpr25: TQRExpr
            Left = 116
            Top = 0
            Width = 51
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              306.916666666666700000
              0.000000000000000000
              134.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.COUNT)'
            FontSize = 12
          end
          object QRExpr26: TQRExpr
            Left = 168
            Top = 0
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              444.500000000000000000
              0.000000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.ColPay)'
            Mask = '0'
            FontSize = 12
          end
          object QRExpr27: TQRExpr
            Left = 235
            Top = 0
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              621.770833333333400000
              0.000000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.SumPay)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr28: TQRExpr
            Left = 346
            Top = 0
            Width = 66
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              915.458333333333200000
              0.000000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.CountNoPay)'
            Mask = '0'
            FontSize = 12
          end
          object QRExpr29: TQRExpr
            Left = 413
            Top = 0
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1092.729166666667000000
              0.000000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.SumNoPay)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr31: TQRExpr
            Left = 597
            Top = 0
            Width = 120
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              52.916666666666660000
              1579.562500000000000000
              0.000000000000000000
              317.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.SUMLIST)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRExpr30: TQRExpr
            Left = 524
            Top = 0
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1386.416666666667000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_REP_LIST.ColList)'
            Mask = '0'
            FontSize = 12
          end
          object QRShape38: TQRShape
            Left = 0
            Top = 19
            Width = 717
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              50.270833333333330000
              1897.062500000000000000)
            Shape = qrsRectangle
          end
          object QRLabel126: TQRLabel
            Left = 232
            Top = 72
            Width = 81
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              613.833333333333400000
              190.500000000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel126'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand30: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1899.708333333333000000)
          BandType = rbPageHeader
          object QRSysData18: TQRSysData
            Left = 637
            Top = 0
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1685.395833333333000000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Text = #1051#1080#1089#1090' - '
            Transparent = False
            FontSize = 10
          end
          object QRSysData19: TQRSysData
            Left = 0
            Top = 1
            Width = 64
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              2.645833333333333000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1056#1077#1077#1089#1090#1088' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081
      ImageIndex = 6
      object RepListSp: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = SQL_LIST_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand25: TQRBand
          Left = 38
          Top = 55
          Width = 1047
          Height = 51
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            134.937500000000000000
            2770.187500000000000000)
          BandType = rbTitle
          object QRLabel132: TQRLabel
            Left = 368
            Top = -2
            Width = 288
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              973.666666666666900000
              -5.291666666666667000
              762.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1057#1074#1086#1076#1085#1099#1081' '#1088#1077#1077#1089#1090#1088' '#1074#1099#1083#1072#1090#1085#1099#1093' '#1074#1077#1076#1086#1084#1086#1089#1090#1077#1081
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel150: TQRLabel
            Left = 368
            Top = 25
            Width = 64
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              973.666666666666900000
              66.145833333333340000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel151: TQRLabel
            Left = 528
            Top = 24
            Width = 15
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1397.000000000000000000
              63.500000000000000000
              39.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1087#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel152: TQRLabel
            Left = 435
            Top = 24
            Width = 91
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1150.937500000000000000
              63.500000000000000000
              240.770833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRLabel152'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel153: TQRLabel
            Left = 547
            Top = 24
            Width = 108
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1447.270833333333000000
              63.500000000000000000
              285.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRLabel153'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand26: TQRBand
          Left = 38
          Top = 106
          Width = 1047
          Height = 32
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            84.666666666666680000
            2770.187500000000000000)
          BandType = rbColumnHeader
          object QRLabel133: TQRLabel
            Left = 0
            Top = 0
            Width = 41
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              0.000000000000000000
              0.000000000000000000
              108.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel134: TQRLabel
            Left = 43
            Top = 0
            Width = 52
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              113.770833333333300000
              0.000000000000000000
              137.583333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel135: TQRLabel
            Left = 96
            Top = 0
            Width = 48
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              254.000000000000000000
              0.000000000000000000
              127.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1043#1086#1076
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel136: TQRLabel
            Left = 145
            Top = 0
            Width = 30
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              383.645833333333400000
              0.000000000000000000
              79.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1052#1077#1089'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel137: TQRLabel
            Left = 176
            Top = 0
            Width = 36
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              465.666666666666700000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1086#1084'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel138: TQRLabel
            Left = 213
            Top = 15
            Width = 50
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              563.562500000000000000
              39.687500000000000000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel139: TQRLabel
            Left = 265
            Top = 15
            Width = 94
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              701.145833333333400000
              39.687500000000000000
              248.708333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel140: TQRLabel
            Left = 360
            Top = 15
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              952.500000000000000000
              39.687500000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel141: TQRLabel
            Left = 418
            Top = 15
            Width = 91
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1105.958333333333000000
              39.687500000000000000
              240.770833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel142: TQRLabel
            Left = 510
            Top = 15
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1349.375000000000000000
              39.687500000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083'-'#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel143: TQRLabel
            Left = 566
            Top = 15
            Width = 94
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1497.541666666667000000
              39.687500000000000000
              248.708333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel144: TQRLabel
            Left = 662
            Top = 0
            Width = 136
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              1751.541666666667000000
              0.000000000000000000
              359.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel145: TQRLabel
            Left = 800
            Top = 0
            Width = 108
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              2116.666666666667000000
              0.000000000000000000
              285.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1088#1077#1084#1103
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel146: TQRLabel
            Left = 909
            Top = 0
            Width = 135
            Height = 31
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              82.020833333333340000
              2405.062500000000000000
              0.000000000000000000
              357.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1087#1077#1088#1072#1090#1086#1088
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel147: TQRLabel
            Left = 213
            Top = 0
            Width = 147
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              563.562500000000000000
              0.000000000000000000
              388.937500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel148: TQRLabel
            Left = 360
            Top = 0
            Width = 148
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              952.500000000000000000
              0.000000000000000000
              391.583333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel149: TQRLabel
            Left = 510
            Top = 0
            Width = 152
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1349.375000000000000000
              0.000000000000000000
              402.166666666666600000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1087#1086' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand27: TQRBand
          Left = 38
          Top = 138
          Width = 1047
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333340000
            2770.187500000000000000)
          BandType = rbDetail
          object QRDBText91: TQRDBText
            Left = 43
            Top = 0
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              113.770833333333300000
              0.000000000000000000
              137.583333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'INDOPS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText97: TQRDBText
            Left = 96
            Top = 0
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              0.000000000000000000
              127.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'GOD'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText98: TQRDBText
            Left = 145
            Top = 0
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              383.645833333333400000
              0.000000000000000000
              79.375000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'MES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText99: TQRDBText
            Left = 176
            Top = 0
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              465.666666666666700000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'NUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText100: TQRDBText
            Left = 213
            Top = 0
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              563.562500000000000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'ColPay'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText101: TQRDBText
            Left = 265
            Top = 0
            Width = 94
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              701.145833333333400000
              0.000000000000000000
              248.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'SumPay'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText102: TQRDBText
            Left = 360
            Top = 0
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              952.500000000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'CountNoPay'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText103: TQRDBText
            Left = 418
            Top = 0
            Width = 91
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1105.958333333333000000
              0.000000000000000000
              240.770833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'SumNoPay'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText104: TQRDBText
            Left = 510
            Top = 0
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1349.375000000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'COUNTLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText105: TQRDBText
            Left = 566
            Top = 0
            Width = 94
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1497.541666666667000000
              0.000000000000000000
              248.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'SUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText106: TQRDBText
            Left = 662
            Top = 0
            Width = 136
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1751.541666666667000000
              0.000000000000000000
              359.833333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'IDSTATUS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText107: TQRDBText
            Left = 800
            Top = 0
            Width = 108
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2116.666666666667000000
              0.000000000000000000
              285.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'DATASTATUS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText108: TQRDBText
            Left = 909
            Top = 0
            Width = 135
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2405.062500000000000000
              0.000000000000000000
              357.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_P
            DataField = 'FM_STATUS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData14: TQRSysData
            Left = 0
            Top = 1
            Width = 41
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              2.645833333333333000
              108.479166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
        end
        object QRBand29: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            2770.187500000000000000)
          BandType = rbPageHeader
          object QRLabel155: TQRLabel
            Left = 971
            Top = 1
            Width = 28
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2569.104166666667000000
              2.645833333333333000
              74.083333333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1051#1080#1089#1090
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData15: TQRSysData
            Left = 1002
            Top = 0
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2651.125000000000000000
              0.000000000000000000
              111.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
          object QRSysData16: TQRSysData
            Left = 0
            Top = 1
            Width = 105
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              2.645833333333333000
              277.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
        end
        object QRBand33: TQRBand
          Left = 38
          Top = 154
          Width = 1047
          Height = 71
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            2770.187500000000000000)
          BandType = rbSummary
          object QRLabel196: TQRLabel
            Left = 662
            Top = 0
            Width = 5
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1751.541666666667000000
              0.000000000000000000
              13.229166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel197: TQRLabel
            Left = -1
            Top = 0
            Width = 143
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              -2.645833333333333000
              0.000000000000000000
              378.354166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1057#1045#1043#1054' : '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData28: TQRSysData
            Left = 145
            Top = 0
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              383.645833333333400000
              0.000000000000000000
              177.270833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
          object QRShape37: TQRShape
            Left = 0
            Top = 16
            Width = 1047
            Height = 2
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              5.291666666666667000
              0.000000000000000000
              42.333333333333340000
              2770.187500000000000000)
            Shape = qrsRectangle
          end
          object QRExpr19: TQRExpr
            Left = 566
            Top = 0
            Width = 94
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1497.541666666667000000
              0.000000000000000000
              248.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.SUMLIST)'
            FontSize = 10
          end
          object QRExpr20: TQRExpr
            Left = 418
            Top = 0
            Width = 91
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1105.958333333333000000
              0.000000000000000000
              240.770833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.SumNoPay)'
            FontSize = 10
          end
          object QRExpr21: TQRExpr
            Left = 265
            Top = 0
            Width = 94
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              701.145833333333400000
              0.000000000000000000
              248.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.SumPay)'
            FontSize = 10
          end
          object QRExpr22: TQRExpr
            Left = 213
            Top = 0
            Width = 50
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              563.562500000000000000
              0.000000000000000000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.ColPay)'
            FontSize = 10
          end
          object QRExpr23: TQRExpr
            Left = 360
            Top = 0
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              952.500000000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.CountNoPay)'
            FontSize = 10
          end
          object QRExpr24: TQRExpr
            Left = 510
            Top = 0
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1349.375000000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_P.COUNTLIST)'
            FontSize = 10
          end
          object QRLabel154: TQRLabel
            Left = 344
            Top = 48
            Width = 65
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              910.166666666666600000
              127.000000000000000000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel154'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1057#1087#1088#1072#1074#1082#1072' '#1087#1086' '#1051#1057
      ImageIndex = 7
      object RepLS: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = Baza.SQL_FIND
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand32: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 331
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            875.770833333333400000
            1899.708333333333000000)
          BandType = rbTitle
          object QRLabel159: TQRLabel
            Left = 264
            Top = 4
            Width = 77
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              698.500000000000000000
              10.583333333333330000
              203.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1057#1087#1088#1072#1074#1082#1072' '#8470
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText115: TQRDBText
            Left = 344
            Top = 4
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              910.166666666666600000
              10.583333333333330000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'NumSprav'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText122: TQRDBText
            Left = 0
            Top = 0
            Width = 137
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              52.916666666666660000
              0.000000000000000000
              0.000000000000000000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'INPOCT'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText123: TQRDBText
            Left = 0
            Top = 19
            Width = 137
            Height = 38
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              100.541666666666700000
              0.000000000000000000
              50.270833333333330000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'POCT'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData22: TQRSysData
            Left = 0
            Top = 56
            Width = 137
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              0.000000000000000000
              148.166666666666700000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 12
          end
          object QRLabel160: TQRLabel
            Left = 3
            Top = 95
            Width = 62
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              7.937500000000000000
              251.354166666666700000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1083#1080#1077#1085#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText124: TQRDBText
            Left = 68
            Top = 96
            Width = 117
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              179.916666666666700000
              254.000000000000000000
              309.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'NLS'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText125: TQRDBText
            Left = 255
            Top = 95
            Width = 247
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              674.687500000000000000
              251.354166666666700000
              653.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'FM'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText126: TQRDBText
            Left = 255
            Top = 117
            Width = 247
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              674.687500000000000000
              309.562500000000000000
              653.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'IM'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText127: TQRDBText
            Left = 255
            Top = 138
            Width = 247
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              674.687500000000000000
              365.125000000000000000
              653.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'OT'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel161: TQRLabel
            Left = 4
            Top = 162
            Width = 113
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              428.625000000000000000
              298.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel164: TQRLabel
            Left = 633
            Top = 183
            Width = 23
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1674.812500000000000000
              484.187500000000000000
              60.854166666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1082#1074'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText130: TQRDBText
            Left = 655
            Top = 184
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1733.020833333333000000
              486.833333333333400000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'KVR'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText129: TQRDBText
            Left = 189
            Top = 183
            Width = 316
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              500.062500000000100000
              484.187500000000000000
              836.083333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'STRIT'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText128: TQRDBText
            Left = 188
            Top = 162
            Width = 527
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              497.416666666666700000
              428.625000000000000000
              1394.354166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'CITY'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText131: TQRDBText
            Left = 520
            Top = 183
            Width = 41
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1375.833333333333000000
              484.187500000000000000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'DOM'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel162: TQRLabel
            Left = 506
            Top = 183
            Width = 13
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1338.791666666667000000
              484.187500000000000000
              34.395833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1076'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel163: TQRLabel
            Left = 563
            Top = 183
            Width = 30
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1489.604166666667000000
              484.187500000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1082#1086#1088'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText132: TQRDBText
            Left = 593
            Top = 183
            Width = 38
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1568.979166666667000000
              484.187500000000000000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'KORP'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText133: TQRDBText
            Left = 119
            Top = 162
            Width = 68
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              314.854166666666700000
              428.625000000000000000
              179.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'INDOPS'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText147: TQRDBText
            Left = 605
            Top = 117
            Width = 110
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1600.729166666667000000
              309.562500000000000000
              291.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'DTR'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel166: TQRLabel
            Left = 502
            Top = 95
            Width = 102
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1328.208333333333000000
              251.354166666666700000
              269.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1059#1051' '#1057#1077#1088'. '#8470
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel167: TQRLabel
            Left = 218
            Top = 208
            Width = 126
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              576.791666666666800000
              550.333333333333400000
              333.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072' '#1074#1099#1087#1083#1072#1090#1099
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel168: TQRLabel
            Left = 439
            Top = 207
            Width = 189
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1161.520833333333000000
              547.687500000000000000
              500.062500000000100000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1074#1099#1087#1083#1072#1090#1085#1086#1081' '#1074#1077#1076#1086#1084#1086#1089#1090#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel169: TQRLabel
            Left = 4
            Top = 208
            Width = 129
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              550.333333333333400000
              341.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1077#1088#1080#1086#1076' '#1074#1099#1087#1083#1072#1090#1099
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel171: TQRLabel
            Left = 227
            Top = 233
            Width = 158
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              600.604166666666800000
              616.479166666666800000
              418.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1088#1080#1095#1085#1072' '#1085#1077' '#1074#1099#1087#1083#1072#1090#1099
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel170: TQRLabel
            Left = 5
            Top = 231
            Width = 84
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              13.229166666666670000
              611.187500000000000000
              222.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText134: TQRDBText
            Left = 606
            Top = 95
            Width = 40
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1603.375000000000000000
              251.354166666666700000
              105.833333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'PSR'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText135: TQRDBText
            Left = 648
            Top = 95
            Width = 68
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1714.500000000000000000
              251.354166666666700000
              179.916666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'PNM'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText136: TQRDBText
            Left = 345
            Top = 208
            Width = 94
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              912.812500000000100000
              550.333333333333400000
              248.708333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'SMVYP'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText137: TQRDBText
            Left = 629
            Top = 207
            Width = 87
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1664.229166666667000000
              547.687500000000000000
              230.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'NUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText139: TQRDBText
            Left = 134
            Top = 208
            Width = 49
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              354.541666666666700000
              550.333333333333400000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'GOD'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText140: TQRDBText
            Left = 90
            Top = 233
            Width = 135
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              238.125000000000000000
              616.479166666666800000
              357.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'PAID'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText141: TQRDBText
            Left = 387
            Top = 232
            Width = 326
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1023.937500000000000000
              613.833333333333400000
              862.541666666666900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'OPISANIE'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel172: TQRLabel
            Left = 90
            Top = 257
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              238.125000000000000000
              679.979166666666800000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1055#1086#1089#1090#1091#1087#1080#1083
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText143: TQRDBText
            Left = 165
            Top = 256
            Width = 141
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              436.562499999999900000
              677.333333333333400000
              373.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'LOADDATA'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel173: TQRLabel
            Left = 9
            Top = 279
            Width = 151
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              23.812500000000000000
              738.187500000000000000
              399.520833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1083#1077#1085' '#1074' '#1054#1055#1057
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText142: TQRDBText
            Left = 163
            Top = 280
            Width = 142
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              431.270833333333400000
              740.833333333333400000
              375.708333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'PAIDDATA'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText144: TQRDBText
            Left = 164
            Top = 303
            Width = 141
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              433.916666666666800000
              801.687500000000100000
              373.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'EXPDATA'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel174: TQRLabel
            Left = 81
            Top = 303
            Width = 79
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              214.312500000000000000
              801.687500000000100000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1075#1088#1091#1078#1077#1085
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText138: TQRDBText
            Left = 184
            Top = 208
            Width = 33
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              486.833333333333400000
              550.333333333333400000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SQL_FIND
            DataField = 'MES'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel176: TQRLabel
            Left = 524
            Top = 117
            Width = 80
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1386.416666666667000000
              309.562500000000000000
              211.666666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel177: TQRLabel
            Left = 185
            Top = 96
            Width = 70
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              489.479166666666600000
              254.000000000000000000
              185.208333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1060#1072#1084#1080#1083#1080#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel178: TQRLabel
            Left = 221
            Top = 117
            Width = 33
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              584.729166666666800000
              309.562500000000000000
              87.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1048#1084#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel179: TQRLabel
            Left = 184
            Top = 138
            Width = 70
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              486.833333333333400000
              365.125000000000000000
              185.208333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1095#1077#1089#1090#1074#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand39: TQRBand
          Left = 38
          Top = 369
          Width = 718
          Height = 128
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            338.666666666666700000
            1899.708333333333000000)
          BandType = rbSummary
          object QRDBText116: TQRDBText
            Left = 302
            Top = 24
            Width = 37
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              799.041666666666800000
              63.500000000000000000
              97.895833333333340000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'Dolgn'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText117: TQRDBText
            Left = 454
            Top = 24
            Width = 27
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1201.208333333333000000
              63.500000000000000000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'FIO'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText118: TQRDBText
            Left = 270
            Top = 56
            Width = 72
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              714.375000000000000000
              148.166666666666700000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'MonetyBos'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText119: TQRDBText
            Left = 454
            Top = 56
            Width = 92
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1201.208333333333000000
              148.166666666666700000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'MonetyBosFio'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText120: TQRDBText
            Left = 310
            Top = 96
            Width = 33
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              820.208333333333500000
              254.000000000000000000
              87.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'Oper'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText121: TQRDBText
            Left = 454
            Top = 96
            Width = 53
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1201.208333333333000000
              254.000000000000000000
              140.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_SPRAV_LS
            DataField = 'OperFio'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = #1056#1077#1077#1089#1090#1088' '#1087#1086' '#1051#1057
      ImageIndex = 8
      object RepFindReestr: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = SQL_FIND_GR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand34: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            92.604166666666680000
            1899.708333333333000000)
          BandType = rbTitle
          object QRLabel182: TQRLabel
            Left = 304
            Top = 2
            Width = 113
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              804.333333333333200000
              5.291666666666667000
              298.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1056#1077#1077#1089#1090#1088' '#1074#1099#1087#1083#1072#1090' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData24: TQRSysData
            Left = 0
            Top = 0
            Width = 64
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              0.000000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            FontSize = 10
          end
          object QRSysData25: TQRSysData
            Left = 673
            Top = 0
            Width = 42
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1780.645833333333000000
              0.000000000000000000
              111.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
        end
        object QRBand35: TQRBand
          Left = 38
          Top = 73
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel187: TQRLabel
            Left = 0
            Top = 0
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              0.000000000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel188: TQRLabel
            Left = 56
            Top = 0
            Width = 77
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              148.166666666666700000
              0.000000000000000000
              203.729166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1077#1088#1080#1086#1076
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel189: TQRLabel
            Left = 136
            Top = 0
            Width = 89
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              359.833333333333400000
              0.000000000000000000
              235.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1053#1086#1084#1077#1088' '#1074#1077#1076'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel190: TQRLabel
            Left = 228
            Top = 0
            Width = 82
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              603.250000000000000000
              0.000000000000000000
              216.958333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1074#1077#1076#1086#1084'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel191: TQRLabel
            Left = 311
            Top = 0
            Width = 90
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              822.854166666666600000
              0.000000000000000000
              238.125000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel192: TQRLabel
            Left = 402
            Top = 0
            Width = 107
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1063.625000000000000000
              0.000000000000000000
              283.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel193: TQRLabel
            Left = 510
            Top = 0
            Width = 205
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              1349.375000000000000000
              0.000000000000000000
              542.395833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077' '#1086#1087#1083#1072#1090#1099
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand36: TQRBand
          Left = 38
          Top = 145
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          BandType = rbDetail
          object QRDBText146: TQRDBText
            Left = 311
            Top = 0
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              822.854166666666600000
              0.000000000000000000
              238.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'SMVYP'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText153: TQRDBText
            Left = 56
            Top = 0
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              148.166666666666700000
              0.000000000000000000
              108.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'GOD'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText155: TQRDBText
            Left = 99
            Top = 0
            Width = 35
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              261.937500000000000000
              0.000000000000000000
              92.604166666666680000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'MES'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData23: TQRSysData
            Left = 1
            Top = 0
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2.645833333333333000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText156: TQRDBText
            Left = 136
            Top = 0
            Width = 89
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              359.833333333333400000
              0.000000000000000000
              235.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'NUMLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText157: TQRDBText
            Left = 228
            Top = 0
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              603.250000000000000000
              0.000000000000000000
              216.958333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'DATLIST'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText158: TQRDBText
            Left = 510
            Top = 0
            Width = 205
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1349.375000000000000000
              0.000000000000000000
              542.395833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'OPISANIE'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText159: TQRDBText
            Left = 402
            Top = 0
            Width = 107
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1063.625000000000000000
              0.000000000000000000
              283.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'PAID'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand37: TQRBand
          Left = 38
          Top = 182
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          BandType = rbSummary
          object QRLabel183: TQRLabel
            Left = 35
            Top = 0
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              92.604166666666680000
              0.000000000000000000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel184: TQRLabel
            Left = 132
            Top = 0
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              349.250000000000000000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr8: TQRExpr
            Left = 252
            Top = 0
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              666.750000000000000000
              0.000000000000000000
              82.020833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MIN(SQL_FIND_GR.MES)'
            FontSize = 10
          end
          object QRExpr9: TQRExpr
            Left = 205
            Top = 0
            Width = 44
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              542.395833333333400000
              0.000000000000000000
              116.416666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MIN(SQL_FIND_GR.GOD)'
            FontSize = 10
          end
          object QRExpr10: TQRExpr
            Left = 299
            Top = 0
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              791.104166666666800000
              0.000000000000000000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MAX(SQL_FIND_GR.GOD)'
            FontSize = 10
          end
          object QRExpr11: TQRExpr
            Left = 349
            Top = 0
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              923.395833333333400000
              0.000000000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MAX(SQL_FIND_GR.MES)'
            FontSize = 10
          end
          object QRLabel185: TQRLabel
            Left = 379
            Top = 0
            Width = 61
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1002.770833333333000000
              0.000000000000000000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr12: TQRExpr
            Left = 440
            Top = 0
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1164.166666666667000000
              0.000000000000000000
              238.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FIND_GR.SMVYP)'
            FontSize = 10
          end
          object QRLabel186: TQRLabel
            Left = 284
            Top = 0
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              751.416666666666800000
              0.000000000000000000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1087#1086
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData27: TQRSysData
            Left = 75
            Top = 0
            Width = 53
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              198.437500000000000000
              0.000000000000000000
              140.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailCount
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
        end
        object QRGroup1: TQRGroup
          Left = 38
          Top = 91
          Width = 718
          Height = 54
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            142.875000000000000000
            1899.708333333333000000)
          FooterBand = QRBand40
          Master = RepFindReestr
          ReprintOnNewPage = False
          object QRDBText145: TQRDBText
            Left = 1
            Top = 0
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2.645833333333333000
              0.000000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'NLS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText148: TQRDBText
            Left = 64
            Top = 32
            Width = 183
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              169.333333333333300000
              84.666666666666680000
              484.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'OT'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText149: TQRDBText
            Left = 64
            Top = 16
            Width = 183
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              169.333333333333300000
              42.333333333333340000
              484.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'IM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText150: TQRDBText
            Left = 64
            Top = 0
            Width = 183
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              169.333333333333300000
              0.000000000000000000
              484.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'FM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText151: TQRDBText
            Left = 248
            Top = 0
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              656.166666666666800000
              0.000000000000000000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'PSR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText152: TQRDBText
            Left = 248
            Top = 16
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              656.166666666666800000
              42.333333333333340000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'PNM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText154: TQRDBText
            Left = 248
            Top = 32
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              656.166666666666800000
              84.666666666666680000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_FIND_GR
            DataField = 'DTR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand40: TQRBand
          Left = 38
          Top = 163
          Width = 718
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1899.708333333333000000)
          BandType = rbGroupFooter
          object QRExpr1: TQRExpr
            Left = 440
            Top = 0
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1164.166666666667000000
              0.000000000000000000
              238.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_FIND_GR.SMVYP)'
            FontSize = 10
          end
          object QRLabel175: TQRLabel
            Left = 3
            Top = 0
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              7.937500000000000000
              0.000000000000000000
              185.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1087#1086' '#1051#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 205
            Top = 0
            Width = 44
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              542.395833333333400000
              0.000000000000000000
              116.416666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MIN(SQL_FIND_GR.GOD)'
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 299
            Top = 0
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              791.104166666666800000
              0.000000000000000000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MAX(SQL_FIND_GR.GOD)'
            FontSize = 10
          end
          object QRExpr4: TQRExpr
            Left = 252
            Top = 0
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              666.750000000000000000
              0.000000000000000000
              82.020833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MIN(SQL_FIND_GR.MES)'
            FontSize = 10
          end
          object QRExpr5: TQRExpr
            Left = 349
            Top = 0
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              923.395833333333400000
              0.000000000000000000
              79.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'MAX(SQL_FIND_GR.MES)'
            FontSize = 10
          end
          object QRLabel165: TQRLabel
            Left = 284
            Top = 0
            Width = 15
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              751.416666666666800000
              0.000000000000000000
              39.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1087#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel180: TQRLabel
            Left = 380
            Top = 0
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1005.416666666667000000
              0.000000000000000000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel181: TQRLabel
            Left = 132
            Top = 0
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              349.250000000000000000
              0.000000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData26: TQRSysData
            Left = 75
            Top = 0
            Width = 54
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              198.437500000000000000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailCount
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' 2'
      ImageIndex = 9
      object RepList2: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = RepListAfterPrint
        DataSet = SQL_LIST_LS_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object QRBand28: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 99
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          LinkBand = QRBand44
          ParentFont = False
          Size.Values = (
            261.937500000000000000
            2770.187500000000000000)
          BandType = rbPageHeader
          object QRLabel158: TQRLabel
            Left = 111
            Top = 3
            Width = 92
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              293.687500000000000000
              7.937500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#8470
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText72: TQRDBText
            Left = 205
            Top = 3
            Width = 59
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              542.395833333333400000
              7.937500000000000000
              156.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'Numlist'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel198: TQRLabel
            Left = 266
            Top = 2
            Width = 16
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              703.791666666666800000
              5.291666666666667000
              42.333333333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1086#1090
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText73: TQRDBText
            Left = 283
            Top = 2
            Width = 97
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              748.770833333333400000
              5.291666666666667000
              256.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'DAtList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText74: TQRDBText
            Left = 111
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              293.687500000000000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'INPOCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText75: TQRDBText
            Left = 174
            Top = 23
            Width = 238
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              460.375000000000000000
              60.854166666666680000
              629.708333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'POCT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText88: TQRDBText
            Left = 452
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1195.916666666667000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'OPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText89: TQRDBText
            Left = 645
            Top = 23
            Width = 96
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1706.562500000000000000
              60.854166666666680000
              254.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MES1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText90: TQRDBText
            Left = 617
            Top = 23
            Width = 26
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1632.479166666667000000
              60.854166666666680000
              68.791666666666680000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'DatDelyvery'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel199: TQRLabel
            Left = 415
            Top = 23
            Width = 35
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1098.020833333333000000
              60.854166666666680000
              92.604166666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel200: TQRLabel
            Left = 381
            Top = 2
            Width = 115
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1008.062500000000000000
              5.291666666666667000
              304.270833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1080#1103' '#1079#1072' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText92: TQRDBText
            Left = 495
            Top = 2
            Width = 82
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1309.687500000000000000
              5.291666666666667000
              216.958333333333400000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText93: TQRDBText
            Left = 578
            Top = 2
            Width = 63
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1529.291666666667000000
              5.291666666666667000
              166.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'GOD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel201: TQRLabel
            Left = 518
            Top = 23
            Width = 98
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1370.541666666667000000
              60.854166666666680000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText94: TQRDBText
            Left = 742
            Top = 23
            Width = 61
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1963.208333333333000000
              60.854166666666680000
              161.395833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'GOD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText95: TQRDBText
            Left = 112
            Top = 45
            Width = 489
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              119.062500000000000000
              1293.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'FromPaymentOrg'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText109: TQRDBText
            Left = 604
            Top = 45
            Width = 90
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1598.083333333333000000
              119.062500000000000000
              238.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'NamePayment'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData29: TQRSysData
            Left = 967
            Top = 2
            Width = 76
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2558.520833333333000000
              5.291666666666667000
              201.083333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Text = #1051#1080#1089#1090' -'
            Transparent = False
            FontSize = 10
          end
          object QRDBText114: TQRDBText
            Left = 0
            Top = 0
            Width = 37
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              0.000000000000000000
              0.000000000000000000
              97.895833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'OPS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'PostIndex'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
        end
        object QRBand41: TQRBand
          Left = 38
          Top = 137
          Width = 1047
          Height = 47
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            124.354166666666700000
            2770.187500000000000000)
          BandType = rbColumnHeader
          object QRLabel203: TQRLabel
            Left = 0
            Top = 0
            Width = 36
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              0.000000000000000000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #8470' '#1087'.'#1087'.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo5: TQRMemo
            Left = 37
            Top = 0
            Width = 79
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              97.895833333333340000
              0.000000000000000000
              209.020833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1059#1085#1080#1082#1072#1083#1100#1085#1099#1081
              #1085#1086#1084#1077#1088
              #1087#1086#1083#1091#1095#1072#1090#1077#1083#1103)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo6: TQRMemo
            Left = 118
            Top = 0
            Width = 165
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              312.208333333333400000
              0.000000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1060#1072#1084#1080#1083#1080#1103
              #1048#1084#1103' '
              #1054#1090#1095#1077#1089#1090#1074#1086)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel204: TQRLabel
            Left = 284
            Top = 0
            Width = 54
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              751.416666666666800000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1074#1072#1088#1090#1080#1088#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo7: TQRMemo
            Left = 339
            Top = 0
            Width = 55
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              896.937500000000000000
              0.000000000000000000
              145.520833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1055#1072#1089#1087#1086#1088#1090' '
              #1057#1077#1088#1080#1103
              #1053#1086#1084#1077#1088)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRMemo8: TQRMemo
            Left = 396
            Top = 0
            Width = 85
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              1047.750000000000000000
              0.000000000000000000
              224.895833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Lines.Strings = (
              #1057#1091#1084#1084#1072' '#1082
              #1074#1099#1087#1083#1072#1090#1077)
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel205: TQRLabel
            Left = 482
            Top = 0
            Width = 70
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333300000
              1275.291666666667000000
              0.000000000000000000
              185.208333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1103
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel206: TQRLabel
            Left = 553
            Top = 24
            Width = 93
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1463.145833333333000000
              63.500000000000000000
              246.062500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1083#1091#1095#1080#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel207: TQRLabel
            Left = 647
            Top = 24
            Width = 96
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1711.854166666667000000
              63.500000000000000000
              254.000000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1099#1076#1072#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel208: TQRLabel
            Left = 553
            Top = 0
            Width = 190
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1463.145833333333000000
              0.000000000000000000
              502.708333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1086#1076#1087#1080#1089#1100
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel209: TQRLabel
            Left = 744
            Top = 0
            Width = 300
            Height = 47
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              124.354166666666700000
              1968.500000000000000000
              0.000000000000000000
              793.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1088#1080#1095#1080#1085#1072' '#1085#1077' '#1074#1099#1087#1083#1072#1090#1099
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand42: TQRBand
          Left = 38
          Top = 205
          Width = 1047
          Height = 63
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            166.687500000000000000
            2770.187500000000000000)
          BandType = rbDetail
          object QRDBText160: TQRDBText
            Left = 37
            Top = 0
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              97.895833333333340000
              0.000000000000000000
              206.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'NLS'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText161: TQRDBText
            Left = 118
            Top = 0
            Width = 165
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              312.208333333333400000
              0.000000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'FM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData30: TQRSysData
            Left = 0
            Top = 0
            Width = 36
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666666700000
              0.000000000000000000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText162: TQRDBText
            Left = 118
            Top = 15
            Width = 165
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              312.208333333333400000
              39.687500000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'IM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText163: TQRDBText
            Left = 118
            Top = 30
            Width = 165
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              312.208333333333400000
              79.375000000000000000
              436.562499999999900000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'OT'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText164: TQRDBText
            Left = 284
            Top = 0
            Width = 54
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              751.416666666666800000
              0.000000000000000000
              142.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'KVR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText165: TQRDBText
            Left = 339
            Top = 0
            Width = 55
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              896.937500000000000000
              0.000000000000000000
              145.520833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'PSR'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText166: TQRDBText
            Left = 339
            Top = 15
            Width = 57
            Height = 49
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              129.645833333333300000
              896.937500000000000000
              39.687500000000000000
              150.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'PNM'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText167: TQRDBText
            Left = 396
            Top = 0
            Width = 85
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1047.750000000000000000
              0.000000000000000000
              224.895833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'SMVYP'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel210: TQRLabel
            Left = 482
            Top = 0
            Width = 70
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1275.291666666667000000
              0.000000000000000000
              185.208333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel211: TQRLabel
            Left = 553
            Top = 0
            Width = 93
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              1463.145833333333000000
              0.000000000000000000
              246.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel212: TQRLabel
            Left = 647
            Top = 0
            Width = 98
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              169.333333333333300000
              1711.854166666667000000
              0.000000000000000000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '  '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText168: TQRDBText
            Left = 37
            Top = 16
            Width = 79
            Height = 48
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = False
            Size.Values = (
              127.000000000000000000
              97.895833333333340000
              42.333333333333340000
              209.020833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'NLS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -37
            Font.Name = 'IntP36DlTt'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 28
          end
          object QRShape40: TQRShape
            Left = 751
            Top = 2
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              5.291666666666667000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape41: TQRShape
            Left = 751
            Top = 18
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              47.625000000000000000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape42: TQRShape
            Left = 751
            Top = 34
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1987.020833333333000000
              89.958333333333340000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape43: TQRShape
            Left = 896
            Top = 2
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              5.291666666666667000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape44: TQRShape
            Left = 896
            Top = 18
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              47.625000000000000000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRShape45: TQRShape
            Left = 896
            Top = 34
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2370.666666666667000000
              89.958333333333340000
              44.979166666666670000)
            Shape = qrsRectangle
          end
          object QRLabel213: TQRLabel
            Left = 769
            Top = 4
            Width = 65
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2034.645833333333000000
              10.583333333333330000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042' '#1073#1086#1083#1100#1085#1080#1094#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel214: TQRLabel
            Left = 770
            Top = 20
            Width = 32
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2037.291666666667000000
              52.916666666666670000
              84.666666666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1059#1084#1077#1088
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel215: TQRLabel
            Left = 770
            Top = 34
            Width = 85
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2037.291666666667000000
              89.958333333333320000
              224.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1055#1086#1084#1077#1085#1103#1083' '#1072#1076#1088#1077#1089
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel216: TQRLabel
            Left = 915
            Top = 4
            Width = 70
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2420.937500000000000000
              10.583333333333330000
              185.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1090#1089#1091#1089#1090#1074#1086#1074#1072#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel217: TQRLabel
            Left = 917
            Top = 20
            Width = 98
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2426.229166666667000000
              52.916666666666670000
              259.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1088#1077#1084#1077#1085#1085#1086' '#1074#1099#1073#1099#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel218: TQRLabel
            Left = 917
            Top = 34
            Width = 42
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              2426.229166666667000000
              89.958333333333320000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1088#1091#1075#1086#1077
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape46: TQRShape
            Left = 759
            Top = 60
            Width = 282
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2008.187500000000000000
              158.750000000000000000
              746.125000000000000000)
            Shape = qrsRectangle
          end
        end
        object QRBand43: TQRBand
          Left = 38
          Top = 291
          Width = 1047
          Height = 233
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            616.479166666666800000
            2770.187500000000000000)
          BandType = rbSummary
          object QRLabel219: TQRLabel
            Left = 5
            Top = 3
            Width = 304
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              7.937500000000000000
              804.333333333333200000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086' '#1087#1086' '#1074#1077#1076#1086#1084#1086#1089#1090#1080' : '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText169: TQRDBText
            Left = 311
            Top = 3
            Width = 60
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              822.854166666666600000
              7.937500000000000000
              158.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'ColList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText170: TQRDBText
            Left = 444
            Top = 4
            Width = 116
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1174.750000000000000000
              10.583333333333330000
              306.916666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'SumList'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel220: TQRLabel
            Left = 373
            Top = 2
            Width = 69
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              986.895833333333400000
              5.291666666666667000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1085#1072' '#1089#1091#1084#1084#1091' :'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel221: TQRLabel
            Left = 6
            Top = 28
            Width = 143
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              15.875000000000000000
              74.083333333333340000
              378.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1074#1099#1087#1091#1089#1090#1080#1083
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText171: TQRDBText
            Left = 9
            Top = 57
            Width = 178
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              23.812500000000000000
              150.812500000000000000
              470.958333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'Dolgn'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText172: TQRDBText
            Left = 340
            Top = 56
            Width = 27
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              899.583333333333400000
              148.166666666666700000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'FIO'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText173: TQRDBText
            Left = 12
            Top = 100
            Width = 177
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              31.750000000000000000
              264.583333333333400000
              468.312500000000100000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MonetyBos'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText174: TQRDBText
            Left = 338
            Top = 100
            Width = 92
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              894.291666666666800000
              264.583333333333400000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'MonetyBosFio'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel222: TQRLabel
            Left = 192
            Top = 77
            Width = 145
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              508.000000000000000000
              203.729166666666700000
              383.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '('#1087#1086#1076#1087#1080#1089#1100')'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel223: TQRLabel
            Left = 192
            Top = 123
            Width = 145
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              508.000000000000000000
              325.437500000000000000
              383.645833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '('#1087#1086#1076#1087#1080#1089#1100')'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel224: TQRLabel
            Left = 804
            Top = 64
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              2127.250000000000000000
              169.333333333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel225: TQRLabel
            Left = 916
            Top = 64
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              2423.583333333333000000
              169.333333333333300000
              298.979166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel226: TQRLabel
            Left = 661
            Top = 87
            Width = 145
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              60.854166666666680000
              1748.895833333334000000
              230.187500000000000000
              383.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel227: TQRLabel
            Left = 661
            Top = 110
            Width = 145
            Height = 26
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              68.791666666666680000
              1748.895833333334000000
              291.041666666666700000
              383.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1077' '#1074#1099#1087#1083#1072#1095#1077#1085#1086
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape47: TQRShape
            Left = 805
            Top = 88
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2129.895833333333000000
              232.833333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape48: TQRShape
            Left = 917
            Top = 88
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2426.229166666667000000
              232.833333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape49: TQRShape
            Left = 805
            Top = 112
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2129.895833333333000000
              296.333333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRShape50: TQRShape
            Left = 917
            Top = 112
            Width = 113
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2426.229166666667000000
              296.333333333333400000
              298.979166666666700000)
            Shape = qrsRectangle
          end
          object QRLabel228: TQRLabel
            Left = 16
            Top = 175
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              463.020833333333400000
              317.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057#1091#1084#1084#1072' '#1079#1072' '#1076#1077#1085#1100
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel229: TQRLabel
            Left = 16
            Top = 199
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              526.520833333333400000
              317.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1057' '#1085#1072#1095#1072#1083#1072' '#1084#1077#1089#1103#1094#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape51: TQRShape
            Left = 288
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape52: TQRShape
            Left = 288
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape53: TQRShape
            Left = 288
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              762.000000000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel230: TQRLabel
            Left = 16
            Top = 151
            Width = 120
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              399.520833333333400000
              317.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRShape54: TQRShape
            Left = 365
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape55: TQRShape
            Left = 365
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape56: TQRShape
            Left = 365
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              965.729166666666800000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape57: TQRShape
            Left = 136
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape58: TQRShape
            Left = 136
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape59: TQRShape
            Left = 136
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              359.833333333333400000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape60: TQRShape
            Left = 213
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape61: TQRShape
            Left = 213
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape62: TQRShape
            Left = 213
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              563.562500000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape63: TQRShape
            Left = 440
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape64: TQRShape
            Left = 440
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape65: TQRShape
            Left = 440
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1164.166666666667000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape66: TQRShape
            Left = 517
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape67: TQRShape
            Left = 517
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape68: TQRShape
            Left = 517
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1367.895833333333000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape69: TQRShape
            Left = 592
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape70: TQRShape
            Left = 592
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape71: TQRShape
            Left = 592
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1566.333333333333000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape72: TQRShape
            Left = 669
            Top = 200
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              529.166666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape73: TQRShape
            Left = 669
            Top = 176
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              465.666666666666800000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRShape74: TQRShape
            Left = 669
            Top = 152
            Width = 78
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1770.062500000000000000
              402.166666666666600000
              206.375000000000000000)
            Shape = qrsRectangle
          end
          object QRLabel231: TQRLabel
            Left = 561
            Top = 3
            Width = 5
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1484.312500000000000000
              7.937500000000000000
              13.229166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand44: TQRBand
          Left = 38
          Top = 524
          Width = 1047
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            55.562500000000000000
            2770.187500000000000000)
          BandType = rbPageFooter
          object QRExpr42: TQRExpr
            Left = 288
            Top = 0
            Width = 60
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              762.000000000000000000
              0.000000000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 12
          end
          object QRExpr43: TQRExpr
            Left = 426
            Top = 0
            Width = 224
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1127.125000000000000000
              0.000000000000000000
              592.666666666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_LS_P.SMVYP)'
            Mask = '0.00'
            FontSize = 12
          end
          object QRLabel232: TQRLabel
            Left = 8
            Top = 0
            Width = 274
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              21.166666666666670000
              0.000000000000000000
              724.958333333333200000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086' '#1087#1086' '#1083#1080#1089#1090#1091' : '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel233: TQRLabel
            Left = 352
            Top = 0
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              931.333333333333500000
              0.000000000000000000
              187.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072' '#1089#1091#1084#1084#1091' :'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRGroup3: TQRGroup
          Left = 38
          Top = 184
          Width = 1047
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = True
          Size.Values = (
            55.562500000000000000
            2770.187500000000000000)
          Expression = 'SQL_LIST_LS_P.DOM'
          FooterBand = QRBand46
          Master = RepList2
          ReprintOnNewPage = False
          object QRLabel202: TQRLabel
            Left = 1
            Top = 2
            Width = 107
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              2.645833333333333000
              5.291666666666667000
              283.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText111: TQRDBText
            Left = 341
            Top = 0
            Width = 213
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              902.229166666666800000
              0.000000000000000000
              563.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'STRIT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText112: TQRDBText
            Left = 555
            Top = 0
            Width = 159
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1468.437500000000000000
              0.000000000000000000
              420.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = SQL_LIST_LS_P
            DataField = 'DOM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText110: TQRDBText
            Left = 118
            Top = 0
            Width = 221
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              312.208333333333400000
              0.000000000000000000
              584.729166666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = Baza.SP_LIST_PRNP
            DataField = 'CITY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand46: TQRBand
          Left = 38
          Top = 268
          Width = 1047
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666680000
            2770.187500000000000000)
          BandType = rbGroupFooter
          object QRExpr44: TQRExpr
            Left = 341
            Top = 2
            Width = 56
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              902.229166666666800000
              5.291666666666667000
              148.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'COUNT'
            FontSize = 12
          end
          object QRExpr45: TQRExpr
            Left = 398
            Top = 1
            Width = 83
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1053.041666666667000000
              2.645833333333333000
              219.604166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(SQL_LIST_LS_P.SMVYP)'
            FontSize = 12
          end
          object QRLabel234: TQRLabel
            Left = 145
            Top = 2
            Width = 194
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              383.645833333333400000
              5.291666666666667000
              513.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1095#1080#1089#1083#1077#1085#1086' '#1087#1086' '#1072#1076#1088#1077#1089#1091
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
  end
  object SQL_FIND_GR: TADOQuery
    Connection = Baza.DB
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID,NLS,FM,IM,OT, CAST(V.DTR as DATE) DTR,PSR,PNM,NUMLIST,' +
        'SMVYP,PAID,OPISANIE,GOD,MES,DATLIST FROM V_MONETY_ALL V GROUP BY' +
        ' ID,NLS,FM,IM,OT, CAST(V.DTR as DATE),PSR,PNM,NUMLIST,SMVYP,PAID' +
        ',OPISANIE,GOD,MES,DATLIST  ORDER BY V.ID')
    Left = 1171
    Top = 152
    object SQL_FIND_GRID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_FIND_GRNLS: TWideStringField
      FieldName = 'NLS'
      FixedChar = True
      Size = 30
    end
    object SQL_FIND_GRFM: TWideStringField
      FieldName = 'FM'
      FixedChar = True
      Size = 50
    end
    object SQL_FIND_GRIM: TWideStringField
      FieldName = 'IM'
      FixedChar = True
      Size = 50
    end
    object SQL_FIND_GROT: TWideStringField
      FieldName = 'OT'
      FixedChar = True
      Size = 50
    end
    object SQL_FIND_GRDTR: TWideStringField
      FieldName = 'DTR'
      Size = 10
    end
    object SQL_FIND_GRPSR: TWideStringField
      FieldName = 'PSR'
      FixedChar = True
      Size = 10
    end
    object SQL_FIND_GRPNM: TWideStringField
      FieldName = 'PNM'
      FixedChar = True
      Size = 10
    end
    object SQL_FIND_GRNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
    object SQL_FIND_GRSMVYP: TBCDField
      FieldName = 'SMVYP'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object SQL_FIND_GRPAID: TIntegerField
      FieldName = 'PAID'
      OnGetText = SQL_FIND_GRPAIDGetText
    end
    object SQL_FIND_GROPISANIE: TWideStringField
      FieldName = 'OPISANIE'
      FixedChar = True
      Size = 255
    end
    object SQL_FIND_GRGOD: TWideStringField
      FieldName = 'GOD'
      FixedChar = True
      Size = 4
    end
    object SQL_FIND_GRMES: TWideStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 2
    end
    object SQL_FIND_GRDATLIST: TWideStringField
      FieldName = 'DATLIST'
      Size = 10
    end
  end
  object SQL_LIST_LS_P: TADOQuery
    Connection = Baza.DB
    Parameters = <>
    SQL.Strings = (
      'SET LANGUAGE Italian;'
      'SELECT '
      'ID,'
      'RTRIM(LTRIM(NLS)) NLS, '
      'RTRIM(LTRIM(FM)) FM,'
      'RTRIM(LTRIM(IM)) IM,'
      'RTRIM(LTRIM(OT)) OT,'
      'RTRIM(LTRIM(STRIT)) STRIT,'
      'RTRIM(LTRIM(DOM)) DOM,'
      'RTRIM(LTRIM(KORP)) KORP,'
      'SMVYP,'
      'STATUSP,'
      'REASON,'
      'RTRIM(LTRIM(KVR)) KVR,'
      'RTRIM(LTRIM(PSR)) PSR,'
      'RTRIM(LTRIM(PNM)) PNM'
      'FROM V_MONETY_LIST T '
      'ORDER BY CAST(KVR as Int)'
      ''
      ''
      '')
    Left = 1169
    Top = 88
    object SQL_LIST_LS_PID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_LIST_LS_PNLS: TWideStringField
      FieldName = 'NLS'
      ReadOnly = True
      Size = 30
    end
    object SQL_LIST_LS_PFM: TWideStringField
      FieldName = 'FM'
      ReadOnly = True
      Size = 50
    end
    object SQL_LIST_LS_PIM: TWideStringField
      FieldName = 'IM'
      ReadOnly = True
      Size = 50
    end
    object SQL_LIST_LS_POT: TWideStringField
      FieldName = 'OT'
      ReadOnly = True
      Size = 50
    end
    object SQL_LIST_LS_PSTRIT: TWideStringField
      FieldName = 'STRIT'
      ReadOnly = True
      Size = 100
    end
    object SQL_LIST_LS_PDOM: TWideStringField
      FieldName = 'DOM'
      ReadOnly = True
      Size = 10
    end
    object SQL_LIST_LS_PKORP: TWideStringField
      FieldName = 'KORP'
      ReadOnly = True
      Size = 10
    end
    object SQL_LIST_LS_PSMVYP: TBCDField
      FieldName = 'SMVYP'
      Precision = 18
      Size = 2
    end
    object SQL_LIST_LS_PSTATUSP: TIntegerField
      FieldName = 'STATUSP'
    end
    object SQL_LIST_LS_PREASON: TIntegerField
      FieldName = 'REASON'
    end
    object SQL_LIST_LS_PKVR: TWideStringField
      FieldName = 'KVR'
      ReadOnly = True
      Size = 10
    end
    object SQL_LIST_LS_PPSR: TWideStringField
      FieldName = 'PSR'
      ReadOnly = True
      Size = 10
    end
    object SQL_LIST_LS_PPNM: TWideStringField
      FieldName = 'PNM'
      ReadOnly = True
      Size = 10
    end
  end
  object SQL_LIST_P: TADOQuery
    Connection = Baza.DB
    Parameters = <>
    SQL.Strings = (
      'Select * from V_LIST_ALL')
    Left = 1170
    Top = 119
    object SQL_LIST_PID: TLargeintField
      FieldName = 'ID'
    end
    object SQL_LIST_PINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_LIST_PNUMLIST: TLargeintField
      FieldName = 'NUMLIST'
    end
    object SQL_LIST_PCOUNTLIST: TLargeintField
      FieldName = 'COUNTLIST'
    end
    object SQL_LIST_PSUMLIST: TBCDField
      FieldName = 'SUMLIST'
      Precision = 18
      Size = 2
    end
    object SQL_LIST_PColPay: TIntegerField
      FieldName = 'ColPay'
      ReadOnly = True
    end
    object SQL_LIST_PSumPay: TBCDField
      FieldName = 'SumPay'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_LIST_PCountNoPay: TIntegerField
      FieldName = 'CountNoPay'
      ReadOnly = True
    end
    object SQL_LIST_PSumNoPay: TBCDField
      FieldName = 'SumNoPay'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_LIST_PMES: TIntegerField
      FieldName = 'MES'
    end
    object SQL_LIST_PGOD: TIntegerField
      FieldName = 'GOD'
    end
    object SQL_LIST_PSTATUSL: TIntegerField
      FieldName = 'STATUSL'
    end
    object SQL_LIST_PDATLIST: TWideStringField
      FieldName = 'DATLIST'
      Size = 10
    end
    object SQL_LIST_PDATACREAT: TDateTimeField
      FieldName = 'DATACREAT'
    end
    object SQL_LIST_PFM_CREAT: TWideStringField
      FieldName = 'FM_CREAT'
      FixedChar = True
      Size = 100
    end
    object SQL_LIST_PDATPRINTY: TDateTimeField
      FieldName = 'DATPRINTY'
    end
    object SQL_LIST_PFM_PRN: TWideStringField
      FieldName = 'FM_PRN'
      FixedChar = True
      Size = 100
    end
    object SQL_LIST_PDATASTATUS: TDateTimeField
      FieldName = 'DATASTATUS'
      ReadOnly = True
    end
    object SQL_LIST_PIDSTATUS: TIntegerField
      FieldName = 'IDSTATUS'
      ReadOnly = True
      OnGetText = SQL_LIST_PIDSTATUSGetText
    end
    object SQL_LIST_PFM_STATUS: TWideStringField
      FieldName = 'FM_STATUS'
      FixedChar = True
      Size = 100
    end
    object SQL_LIST_PPRINTY: TIntegerField
      FieldName = 'PRINTY'
    end
  end
  object SQL_FILEOUT_P: TADOQuery
    Connection = Baza.DB
    Parameters = <>
    SQL.Strings = (
      'SET LANGUAGE Italian;'
      'Select * from TAB_OUTFILE')
    Left = 1168
    Top = 58
    object SQL_FILEOUT_PID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SQL_FILEOUT_PFILENAME: TWideStringField
      FieldName = 'FILENAME'
      FixedChar = True
      Size = 50
    end
    object SQL_FILEOUT_PCOLZ: TLargeintField
      FieldName = 'COLZ'
    end
    object SQL_FILEOUT_PSUMZ: TBCDField
      FieldName = 'SUMZ'
      Precision = 18
      Size = 2
    end
    object SQL_FILEOUT_PIDUSEREXP: TLargeintField
      FieldName = 'IDUSEREXP'
    end
    object SQL_FILEOUT_PDATAEXP: TWideStringField
      FieldName = 'DATAEXP'
      Size = 10
    end
    object SQL_FILEOUT_PTIMEEXP: TWideStringField
      FieldName = 'TIMEEXP'
      Size = 16
    end
    object SQL_FILEOUT_PSTATUS: TIntegerField
      FieldName = 'STATUS'
      OnGetText = SQL_FILEOUT_PSTATUSGetText
    end
    object SQL_FILEOUT_PDATAOUT: TDateTimeField
      FieldName = 'DATAOUT'
    end
    object SQL_FILEOUT_PNumFile: TIntegerField
      FieldName = 'NumFile'
    end
    object SQL_FILEOUT_PGodFile: TIntegerField
      FieldName = 'GodFile'
    end
    object SQL_FILEOUT_PMesFile: TIntegerField
      FieldName = 'MesFile'
    end
    object SQL_FILEOUT_PCOLPAY: TIntegerField
      FieldName = 'COLPAY'
    end
    object SQL_FILEOUT_PSUMPAY: TBCDField
      FieldName = 'SUMPAY'
      Precision = 18
      Size = 2
    end
    object SQL_FILEOUT_PCOLNOPAY: TIntegerField
      FieldName = 'COLNOPAY'
    end
    object SQL_FILEOUT_PSUMNOPAY: TBCDField
      FieldName = 'SUMNOPAY'
      Precision = 18
      Size = 2
    end
  end
  object SQL_REP_LIST: TADOQuery
    Connection = Baza.DB
    Parameters = <>
    SQL.Strings = (
      'Select '
      '  INDOPS,'
      '  COUNT(*) COUNT,'
      '  Sum(COUNTLIST) ColList,'
      '  Sum(SUMLIST) SUMLIST, '
      '  Sum(ColPay) ColPay,'
      '  Sum(SumPay) SumPay,'
      '  Sum(CountNoPay) CountNoPay,'
      '  Sum(SumNoPay) SumNoPay,'
      '  MES,'
      '  GOD'
      'from '
      '  V_LIST_ALL'
      'GROUP BY INDOPS,  MES,GOD')
    Left = 1172
    Top = 192
    object SQL_REP_LISTINDOPS: TWideStringField
      FieldName = 'INDOPS'
      FixedChar = True
      Size = 6
    end
    object SQL_REP_LISTCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
    object SQL_REP_LISTColList: TLargeintField
      FieldName = 'ColList'
      ReadOnly = True
    end
    object SQL_REP_LISTSUMLIST: TBCDField
      FieldName = 'SUMLIST'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_REP_LISTColPay: TIntegerField
      FieldName = 'ColPay'
      ReadOnly = True
    end
    object SQL_REP_LISTSumPay: TBCDField
      FieldName = 'SumPay'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_REP_LISTCountNoPay: TIntegerField
      FieldName = 'CountNoPay'
      ReadOnly = True
    end
    object SQL_REP_LISTSumNoPay: TBCDField
      FieldName = 'SumNoPay'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object SQL_REP_LISTMES: TIntegerField
      FieldName = 'MES'
    end
    object SQL_REP_LISTGOD: TIntegerField
      FieldName = 'GOD'
    end
  end
  object SP_REP: TADOStoredProc
    Connection = Baza.DB
    ProcedureName = 'SP_REP'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@GOD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Mes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OPSI'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 6
        Value = Null
      end
      item
        Name = '@TYPE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1176
    Top = 224
    object SP_REPIndops: TWideStringField
      FieldName = 'Indops'
      FixedChar = True
      Size = 6
    end
    object SP_REPGod: TIntegerField
      FieldName = 'God'
    end
    object SP_REPMes: TIntegerField
      FieldName = 'Mes'
    end
    object SP_REPColAll: TIntegerField
      FieldName = 'ColAll'
    end
    object SP_REPSumAll: TBCDField
      FieldName = 'SumAll'
      Precision = 18
      Size = 2
    end
    object SP_REPColNoList: TIntegerField
      FieldName = 'ColNoList'
    end
    object SP_REPSumNoList: TBCDField
      FieldName = 'SumNoList'
      Precision = 18
      Size = 2
    end
    object SP_REPColForPay: TIntegerField
      FieldName = 'ColForPay'
    end
    object SP_REPSumForPay: TBCDField
      FieldName = 'SumForPay'
      Precision = 18
      Size = 2
    end
    object SP_REPColPay: TIntegerField
      FieldName = 'ColPay'
    end
    object SP_REPSumPay: TBCDField
      FieldName = 'SumPay'
      Precision = 18
      Size = 2
    end
    object SP_REPColNoPay: TIntegerField
      FieldName = 'ColNoPay'
    end
    object SP_REPSumNoPay: TBCDField
      FieldName = 'SumNoPay'
      Precision = 18
      Size = 2
    end
  end
end
