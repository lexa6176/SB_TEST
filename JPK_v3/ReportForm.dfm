object Report: TReport
  Left = 475
  Top = 313
  Width = 1221
  Height = 780
  Caption = 'Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1213
    Height = 746
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1088#1077#1077#1089#1090#1088
      object Reesrtr: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = baza.Reestr_sql
        Font.Charset = RUSSIAN_CHARSET
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
          70.000000000000000000
          70.000000000000000000
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
        object QRBand4: TQRBand
          Left = 26
          Top = 38
          Width = 1070
          Height = 45
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
            119.062500000000000000
            2831.041666666667000000)
          BandType = rbTitle
          object QRLabel6: TQRLabel
            Left = 4
            Top = 2
            Width = 277
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              5.291666666666667000
              732.895833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1046#1091#1088#1085#1072#1083' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1086#1083#1103' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel7: TQRLabel
            Left = 4
            Top = 23
            Width = 82
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              60.854166666666680000
              216.958333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel39: TQRLabel
            Left = 282
            Top = 2
            Width = 5
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              746.125000000000000000
              5.291666666666667000
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
        object QRBand5: TQRBand
          Left = 26
          Top = 128
          Width = 1070
          Height = 44
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            116.416666666666700000
            2831.041666666667000000)
          BandType = rbDetail
          object QRDBText4: TQRDBText
            Left = 2
            Top = 2
            Width = 44
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              5.291666666666667000
              5.291666666666667000
              116.416666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'Id'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText5: TQRDBText
            Left = 47
            Top = 2
            Width = 50
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              124.354166666666700000
              5.291666666666667000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'IndOps'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText6: TQRDBText
            Left = 97
            Top = 2
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              256.645833333333400000
              5.291666666666667000
              187.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'DataReg'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText7: TQRDBText
            Left = 169
            Top = 2
            Width = 71
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              447.145833333333400000
              5.291666666666667000
              187.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'DatError'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText8: TQRDBText
            Left = 364
            Top = 2
            Width = 227
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              963.083333333333400000
              5.291666666666667000
              600.604166666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'Soder'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText9: TQRDBText
            Left = 858
            Top = 2
            Width = 118
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2270.125000000000000000
              5.291666666666667000
              312.208333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'Oper'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText24: TQRDBText
            Left = 592
            Top = 2
            Width = 265
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1566.333333333333000000
              5.291666666666667000
              701.145833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'SoderOtmetki'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText25: TQRDBText
            Left = 858
            Top = 21
            Width = 118
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2270.125000000000000000
              55.562500000000000000
              312.208333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'fioError'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText26: TQRDBText
            Left = 293
            Top = 2
            Width = 70
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              775.229166666666800000
              5.291666666666667000
              185.208333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'tiperror'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText27: TQRDBText
            Left = 241
            Top = 2
            Width = 51
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              637.645833333333400000
              5.291666666666667000
              134.937500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'Proc'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText28: TQRDBText
            Left = 978
            Top = 2
            Width = 90
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2587.625000000000000000
              5.291666666666667000
              238.125000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'DatPrnVip'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText29: TQRDBText
            Left = 978
            Top = 21
            Width = 89
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2587.625000000000000000
              55.562500000000000000
              235.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.Reestr_sql
            DataField = 'DatMailVip'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
        object QRBand6: TQRBand
          Left = 26
          Top = 83
          Width = 1070
          Height = 45
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            119.062500000000000000
            2831.041666666667000000)
          BandType = rbColumnHeader
          object QRLabel8: TQRLabel
            Left = 2
            Top = 2
            Width = 44
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              5.291666666666667000
              5.291666666666667000
              116.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'ID'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel9: TQRLabel
            Left = 47
            Top = 2
            Width = 50
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              124.354166666666700000
              5.291666666666667000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1055#1057
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel10: TQRLabel
            Left = 98
            Top = 2
            Width = 143
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              52.916666666666660000
              259.291666666666700000
              5.291666666666667000
              378.354166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1044#1072#1090#1072
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel11: TQRLabel
            Left = 98
            Top = 21
            Width = 71
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              58.208333333333340000
              259.291666666666700000
              55.562500000000000000
              187.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1087#1088#1086#1074#1077#1088#1082#1080
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel14: TQRLabel
            Left = 170
            Top = 21
            Width = 71
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              58.208333333333340000
              449.791666666666700000
              55.562500000000000000
              187.854166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1085#1072#1088#1091#1096#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel15: TQRLabel
            Left = 364
            Top = 2
            Width = 227
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              963.083333333333400000
              5.291666666666667000
              600.604166666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1088#1072#1090#1082#1086#1077' '#1089#1086#1076#1077#1088#1072#1078#1085#1080#1077' '#1074#1099#1103#1074#1083#1077#1085#1085#1086#1075#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel18: TQRLabel
            Left = 858
            Top = 2
            Width = 117
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              55.562500000000000000
              2270.125000000000000000
              5.291666666666667000
              309.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1060#1048#1054' '#1042#1099#1103#1074#1080#1074#1096'. '#1085#1072#1088
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel34: TQRLabel
            Left = 592
            Top = 2
            Width = 265
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              1566.333333333333000000
              5.291666666666667000
              701.145833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1055#1088#1080#1103#1085#1090#1099#1077' '#1084#1077#1088#1099
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel36: TQRLabel
            Left = 858
            Top = 22
            Width = 117
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              58.208333333333340000
              2270.125000000000000000
              58.208333333333340000
              309.562500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1060#1048#1054' '#1044#1086#1087#1091#1089#1090' '#1085#1072#1088#1091#1096'.'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel37: TQRLabel
            Left = 293
            Top = 2
            Width = 70
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              775.229166666666800000
              5.291666666666667000
              185.208333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1050#1086#1076' '#1086#1096#1080#1073#1082#1080
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel38: TQRLabel
            Left = 242
            Top = 2
            Width = 50
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              108.479166666666700000
              640.291666666666800000
              5.291666666666667000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1073#1098#1077#1084' '#1087#1088#1086#1074'.'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel40: TQRLabel
            Left = 976
            Top = 2
            Width = 92
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              55.562500000000000000
              2582.333333333333000000
              5.291666666666667000
              243.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1085
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel41: TQRLabel
            Left = 976
            Top = 22
            Width = 92
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            Size.Values = (
              58.208333333333340000
              2582.333333333333000000
              58.208333333333340000
              243.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
        end
        object QRBand7: TQRBand
          Left = 26
          Top = 172
          Width = 1070
          Height = 47
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
            124.354166666666700000
            2831.041666666667000000)
          BandType = rbSummary
          object QRSysData3: TQRSysData
            Left = 979
            Top = 24
            Width = 64
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2590.270833333333000000
              63.500000000000000000
              169.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 274
            Top = 24
            Width = 59
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              724.958333333333400000
              63.500000000000000000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel19'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 29
            Top = 2
            Width = 100
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              76.729166666666680000
              5.291666666666667000
              264.583333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1081
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData4: TQRSysData
            Left = 131
            Top = 2
            Width = 75
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              346.604166666666700000
              5.291666666666667000
              198.437500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDetailCount
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1040#1082#1090
      ImageIndex = 1
      object Akt: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = AktAfterPrint
        DataSet = baza.sql_akte
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
          200.000000000000000000
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
        object QRBand1: TQRBand
          Left = 76
          Top = 38
          Width = 681
          Height = 235
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
            621.770833333333400000
            1801.812500000000000000)
          BandType = rbTitle
          object QRLabel2: TQRLabel
            Left = 16
            Top = 144
            Width = 648
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              381.000000000000000000
              1714.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1080#1079' '#1078#1091#1088#1085#1072#1083#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1086' '#1074#1099#1103#1074#1083#1077#1085#1085#1086#1084' '#1085#1072#1088#1091#1096#1077#1085#1080#1080' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRLabel4: TQRLabel
            Left = 8
            Top = 208
            Width = 557
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              550.333333333333400000
              1473.729166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 
              #1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093' '#1080#1079' '#1074#1072#1096#1077#1075#1086' '#1054#1055#1057' '#1073#1099#1083#1080' '#1074#1099#1103#1074#1083#1077#1085#1099' '#1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1085#1072#1088 +
              #1091#1096#1077#1085#1080#1103':'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText10: TQRDBText
            Left = 608
            Top = 8
            Width = 57
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1608.666666666667000000
              21.166666666666670000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_akte
            DataField = 'IndOps'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel1: TQRLabel
            Left = 483
            Top = 8
            Width = 123
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1277.937500000000000000
              21.166666666666670000
              325.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1054#1055#1057' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText2: TQRDBText
            Left = 484
            Top = 31
            Width = 181
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1280.583333333333000000
              82.020833333333340000
              478.895833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_akte
            DataField = 'OPSNAME'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel5: TQRLabel
            Left = 264
            Top = 112
            Width = 144
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              698.500000000000000000
              296.333333333333400000
              381.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042' '#1067' '#1055' '#1048' '#1057' '#1050' '#1040
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRDBText3: TQRDBText
            Left = 48
            Top = 184
            Width = 97
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              127.000000000000000000
              486.833333333333400000
              256.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_akte
            DataField = 'DataReg'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel3: TQRLabel
            Left = 152
            Top = 184
            Width = 519
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              486.833333333333400000
              1373.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 
              #1086#1087#1077#1088#1072#1090#1086#1088#1086#1084' '#1080#1085#1092#1086#1088#1084#1087#1091#1085#1082#1090#1072'  '#1087#1086#1095#1090#1072#1084#1090#1072' '#1087#1088#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1087#1077#1088#1074#1080#1095 +
              #1085#1099#1093
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand2: TQRBand
          Left = 76
          Top = 273
          Width = 681
          Height = 24
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
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            63.500000000000000000
            1801.812500000000000000)
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 131
            Top = 0
            Width = 542
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              346.604166666666700000
              0.000000000000000000
              1434.041666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.sql_akte
            DataField = 'Soder'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            FontSize = 12
          end
          object QRSysData2: TQRSysData
            Left = 5
            Top = 1
            Width = 41
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              13.229166666666670000
              2.645833333333333000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRDBText17: TQRDBText
            Left = 48
            Top = 0
            Width = 81
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              127.000000000000000000
              0.000000000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_akte
            DataField = 'DatError'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand3: TQRBand
          Left = 76
          Top = 297
          Width = 681
          Height = 344
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
            910.166666666666600000
            1801.812500000000000000)
          BandType = rbSummary
          object QRDBText13: TQRDBText
            Left = 499
            Top = 96
            Width = 174
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1320.270833333333000000
              254.000000000000000000
              460.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_user
            DataField = 'User2'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText14: TQRDBText
            Left = 112
            Top = 96
            Width = 221
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              254.000000000000000000
              584.729166666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_user
            DataField = 'User2Dolgn'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel12: TQRLabel
            Left = 112
            Top = 144
            Width = 93
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              381.000000000000000000
              246.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1087#1077#1088#1072#1090#1086#1088' '#1048#1055
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
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
            Left = 500
            Top = 144
            Width = 169
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1322.916666666667000000
              381.000000000000000000
              447.145833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRLabel7'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel16: TQRLabel
            Left = 336
            Top = 96
            Width = 161
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              889.000000000000000000
              254.000000000000000000
              425.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '____________________'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel17: TQRLabel
            Left = 208
            Top = 144
            Width = 289
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              550.333333333333400000
              381.000000000000000000
              764.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '___________________________________'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo2: TQRMemo
            Left = 8
            Top = 8
            Width = 665
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666666700000
              21.166666666666670000
              21.166666666666670000
              1759.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              
                '             '#1042#1072#1084' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074' '#1090#1088#1077#1093#1076#1085#1077#1074#1085#1099#1081' '#1089#1088#1086#1082' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1073#1098#1103 +
                #1089#1085#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1095#1080#1085#1072#1093' '#1087#1088#1080#1074#1077#1076#1096#1080#1093' '
              ''
              
                ' '#1082' '#1074#1099#1103#1074#1083#1077#1085#1085#1099#1084' '#1085#1072#1088#1091#1096#1077#1085#1080#1103#1084'. '#1040' '#1090#1072#1082' '#1078#1077' '#1087#1088#1080#1103#1085#1090#1100' '#1074#1089#1077' '#1084#1077#1088#1099' '#1076#1083#1103' '#1091#1089#1090#1088#1072#1085#1077#1085 +
                #1080#1103' '#1076#1072#1085#1085#1099#1093'  '#1085#1072#1088#1091#1096#1077#1085#1080#1081'. '
              ''
              '')
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData1: TQRSysData
            Left = 600
            Top = 176
            Width = 74
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1587.500000000000000000
              465.666666666666700000
              195.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRLabel42: TQRLabel
            Left = 29
            Top = 230
            Width = 105
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              76.729166666666670000
              608.541666666666700000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1079#1085#1072#1082#1086#1084#1083#1077#1085' ('#1072')'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel43: TQRLabel
            Left = 136
            Top = 248
            Width = 137
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              359.833333333333400000
              656.166666666666800000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '        ( '#1044#1072#1090#1072' )      '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel44: TQRLabel
            Left = 276
            Top = 248
            Width = 202
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              730.250000000000000000
              656.166666666666800000
              534.458333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '( '#1055#1086#1076#1087#1080#1089#1100' )'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel45: TQRLabel
            Left = 481
            Top = 248
            Width = 194
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1272.645833333333000000
              656.166666666666800000
              513.291666666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '( '#1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1086#1081' )'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo7: TQRMemo
            Left = 8
            Top = 296
            Width = 667
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              21.166666666666670000
              783.166666666666800000
              1764.770833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              
                '        '#1055#1086#1076#1087#1080#1089#1072#1085#1085#1099#1081' '#1101#1082#1079#1077#1084#1087#1083#1103#1088' '#1087#1086#1076#1083#1077#1078#1080#1090' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1084#1091' '#1074#1086#1079#1074#1088#1072#1090#1091' '#1074' ' +
                #1080#1085#1092#1086#1088#1084#1087#1091#1085#1082#1090' '#1087#1086#1095#1090#1072#1084#1090#1072' '#1085#1077' '#1087#1086#1079#1076#1085#1077#1077' '#1076#1074#1091#1093' '#1088#1072#1073#1086#1095#1080#1093' '#1076#1085#1077#1081' '#1089' '#1084#1086#1084#1077#1085#1090#1072' '#1087#1086#1089#1090 +
                #1091#1087#1083#1077#1085#1080#1103' '#1074' '#1054#1055#1057)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1044#1086#1082#1083#1072#1076
      ImageIndex = 2
      object Doklad: TQuickRep
        Left = 0
        Top = 16
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = baza.sql_doklad
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
          70.000000000000000000
          2970.000000000000000000
          70.000000000000000000
          2100.000000000000000000
          200.000000000000000000
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
          Left = 76
          Top = 26
          Width = 681
          Height = 295
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
            780.520833333333400000
            1801.812500000000000000)
          BandType = rbTitle
          object QRLabel21: TQRLabel
            Left = 456
            Top = 155
            Width = 73
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1206.500000000000000000
              410.104166666666700000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel21'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel22: TQRLabel
            Left = 456
            Top = 178
            Width = 73
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1206.500000000000000000
              470.958333333333400000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel22'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel25: TQRLabel
            Left = 3
            Top = 161
            Width = 116
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              425.979166666666700000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044' '#1086' '#1082' '#1083' '#1072' '#1076' '#1085' '#1072' '#1103' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo3: TQRMemo
            Left = 3
            Top = 79
            Width = 412
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333400000
              7.937500000000000000
              209.020833333333300000
              1090.083333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Lines.Strings = (
              #1059#1060#1055#1057' '#1057#1042#1045#1056#1044#1051#1054#1042#1057#1050#1054#1049' '#1054#1041#1051#1040#1057#1058#1048' - '#1060#1048#1051#1048#1040#1051' '#1060#1043#1059#1055' '#171#1055#1054#1063#1058#1040' '#1056#1054#1057#1057#1048#1048#187
              ''
              #1045#1050#1040#1058#1045#1056#1048#1053#1041#1059#1056#1043#1057#1050#1048#1049' '#1055#1054#1063#1058#1040#1052#1058)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRImage1: TQRImage
            Left = 516
            Top = 0
            Width = 133
            Height = 73
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              193.145833333333300000
              1365.250000000000000000
              0.000000000000000000
              351.895833333333400000)
            Picture.Data = {
              0A544A504547496D61676504150000FFD8FFE100E645786966000049492A0008
              0000000500120103000100000001000000310102001C0000004A000000320102
              00140000006600000013020300010000000100000069870400010000007A0000
              00000000004143442053797374656D73204469676974616C20496D6167696E67
              00323031313A30363A30392030393A34343A3535000500009007000400000030
              32323090920200030000003738000002A0040001000000B600000003A0040001
              0000005800000005A0040001000000BC00000000000000020001000200040000
              005239380002000700040000003031303000000000D4FEFEFEFFC00011080058
              00B603012200021101031101FFDB00840007040506050407060506070707080A
              110B0A09090A150F100C1119161A1A181618181C1F28221C1D261E1818232F23
              26292A2D2D2D1B213134312B34282C2D2B010B0B0B0F0D0F1E11111E402B242B
              4040404040404040404040404040404040404040404040404040404040404040
              404040404040404040404040404040404040FFC400A000000203010101010000
              0000000000000000070506080401020310000103030203020B06030509000000
              000102030400051106210712311341081417223251546193B3D3363771758183
              1523915272B1B2D2163342627392A1C1E1010002030101000000000000000000
              0000000301020405061100020102030703040301000000000000010200031104
              1221131431323371D14151528191B1F061A1C1E1FFDA000C0301000211031100
              3F005E514515E9E79B85145144214514510851451442145145108569FE3BFDD4
              DE3F63E7375982B4FF001DFEEA6F1FB1F39BAC38BEAD3EFE26EC2F4EA76F3123
              A1786379D696876E36B936E69969F2C14C9716957304A559F35076C2854F7902
              D51EDF64F8CEFD3ABAF831FD829BF99B9F29AA68567AF8CAA950A88EA384A6F4
              C3199EBC816A8F6FB27C677E9D1E40B547B7D93E33BF4EB42D14ADFEB46EE54A
              67AF205AA3DBEC9F19DFA747902D51EDF64F8CEFD3AD0B5F8C396C4C0E18EB2A
              0D38A69794918524E08DFF00C7A54EFD5A1B952880F205AA3DBEC9F19DFA7479
              02D51EDF64F8CEFD3AD0B4546FF5A1B95299EBC816A8F6FB27C677E9D1E40B54
              7B7D93E33BF4EB42D146FF005A1B95298D6F16F76D377996E90A429E88FAD871
              4D9252549514923206D91EAAE5A9AE207DBDBFFE6727E6AAA16BB4A6EA0CE430
              B122794C36B823ABDD692E2536EE550C8CC8EEC7E14BC57A269CFE1033A5C49B
              A651125C9612E30AE74B4EA9015BA3AE0EFD4D22B3B86555F5BC751442ACCDE9
              68B5D69A42E9A3A73112F2180EBEDF6A8EC5CE618CE3D5EBA99D23C28D49AA2D
              02E50D3163465E7B23256525DF78001DBDE6AC7E13C39F565A53B8CC223F0F3C
              D7EBE105364D8E669AB65B5F763B3022875A0DA8A70B4909076EF013FF0093EB
              A5AD677540389BFF0051868A2B313C04595D2C570B4DF9567B8B058989712D94
              28ED927620F7839CE6A4AF9A1EF165D4F0AC13447F1D9BD9F65C8E651E7AB946
              4E36DC1ABD784404337BD3579E405D763E5C00639B914950FF0031AB1CE6B496
              BAD6363D4D1355478D263A994A60B81216E292BE608C120824923BFDD46F0D95
              5EDA107EF0DDD7332DF516FB450CBD117789ACDAD2EE88FF00C45D2909C39947
              9C9E61BE3D5EEA9F97C15D5B1623B21D4DBF91A6CB8AC48C9C0DCF7579C7C75C
              638AB29D61C5B4E25964A568514907907422A7B89B3E623837A3DD44C90971E4
              243AB4BAA0A582DEE147BFF5A0D4A8421046B014E982E08E128BA2342DE75A37
              29765118A6294873B67793D20718D8FA8D7DEB0E1F6A1D2319126EF111E2CB57
              207D9702D215EA3DE3F5ABFF0083EB0D3BA275587E6082D3A036B924E3B11D9A
              B2BCEDD339FD2A62F3062790CBD4187A886A4117F982573731461495729DCF4D
              CF5E86AAD8965AB97D2E07E9965C3AB52CDEB62620AB4FF1DFEEA6F1FB1F39BA
              CC15A7F8EFF75378FD8F9CDD18BEAD3EFE2185E9D4EDE6427832909D013947A0
              B9384FC26ABF3E22EB19CCDD74CDF346CA45C20BCB72338D36BF31E52B9486D4
              3B9440DB3BE6B97803788162E18CF9D767FC5E2A6E8A4A9C285280CB6D019C03
              5569963B6459F71558AEED5C6CB3895F234EF3762ACE407103CF4E33E6BA01C7
              78C1348C80D762DFF23B39145408F9B05DE2DF6CF1EE3055CCCBE9C807AA0F42
              923B8839047AC5436A9BB5D917745BACA9FE6F601E07B3C851ED12821448C048
              0B0A38DC8491B77ABEC9AE6F1A59C0B096E74571E4BD2D6920975BDD0A7300F9
              ABD93950CA55807BC92D57D9B2F102C0DADB7DD723A5EC8530E96D685A4EE924
              6E37C1C7E07D559DE8EC9AE7847AD5DAAD871914BD40BBADA75146B8AA4DB9A1
              CCD4792DAD2A523239004721C93CC92AFC142A2F405B6669EBE2DCBB3B2D9764
              443E2D11D75450FB99E671454760A381807719355EBF70F0589F8D2A63F13B75
              20AD3297DA250DBBDA2709C8380ACAC609F4B0722BCD51391AE12CB329F8F23C
              550A65A60A1695C8700C979B00EE1601C67601269C1148B29D0C51720DD86A25
              A8EADBEBB6755C5A8EEB6DC43216FA4A50B579A39DB4A827A271941DC2B9B7E8
              2AFB01E326132F28005C405100103246FD403FD455234970CE3DA27A644C78B8
              185A1D8E865C5252957294A92A073CC3A6093B8DAB9788BC4C55B6626D3A64B4
              FCD4BC44A7D49E743084E0ABBF19DC0DFDE3AD2190546CB4E355CD35CD5271F1
              9B595CD2F234F6980E25C71F6D89529B38216BDD2CA4FF00688DCE3A0C0EFA62
              DBAF16FB84C950E14C6644885CA24A5B39ECCAB3804F4CF9A76EEC5215BF1E90
              EF6EE3EA4CB08529A6D8713CCDA9CDD4BED0F9A852B3E73CAE9E8A41C0C5EB83
              274D6998FF00C1D8BDC5B85E67B9DA3C98BCCE24100E1214063037DCFACD36B5
              1514C01C445D2AA4D4B9E0624F881F6F6FFF0099C9F9AAA85A9AE207DBDBFF00
              E6727E6AAA16BAE9CA272DF98CF15E89A6FF00844AD2AB8696E558561956C0F4
              F39BA50D79CD9EFCFEB556A799D5BDAFFDCB254CAA57DE35BC2716956A9B516D
              40E211DC1CE3CF3560BF69A47176CFA76F36CB8476DC61A0CDC12B27991D0A80
              007A40856338C820D22892A3BE49AFA42D6DF3042D68CECA092467F1A56EE42A
              853A8F58CDB82CC48D0C60F8406A18779D591E15B1D4BB1AD8C763CE83949593
              9560F7E0048FC41AAB70FC81AEAC64E302E0C7F9C5427B87E82BDDC1EF045356
              985A79045B542CF9CCBE7840A92AE274C29208EC59DC1FF9054C713D493C18D1
              690A49504A3207FD3A559CE0139C1E868CE40DF23BB7AA8A36082FCB2C6B5CB1
              B718D9E142D2D706F59A8A80250E003383FEE7FF00B47038A25E84D656C51056
              E47E64A49EA54DAC6DFA814A624A4609201A124E7CDCE4FAAAAD87CC1B5E26F2
              56BDB2E9C05A783A0AD41C77FBA9BC7EC7CE6EB30569FE3BFDD4DE3F63E73749
              C5F569F7F11D85E9D4EDE655F804D4D7F85B736AD8884E4855C5C01B9A92A696
              3B26B2158DFF00C6AAB74B04DB76A03E37A7ED36959392633E979B5FE0DA8A8A
              7F402AE9E0D8C37278777065E04B6E5C5C4A805149C764D778DC557B88B6062C
              D3DF7EDBA5E2DB2D519603D7292FABB47D47A86C12A3BFF7493D76A52B5ABBAF
              EFE7CC615BD156FDFC482BEC70DAE3475F63DA76BCCD92C3C0233B1C380F30CE
              370723F0EF95E0EBF787F8AEF3518989190DA953580D7649712072A49474E6C9
              4EFF0089EFDF99F8B6DBA5A990961BE6400B4A9030DA33BE5649FE6AB009C6E0
              0071B026A025447ADB24C97C5C60CC186D2F42C20B84E54AE9839E518DB60477
              EF4EB0652B137CAC1A32389FAAA5C9B93F697E2F8BC48A561E6DF29097C67CD7
              12ACE7D1503D072923A9C62B4DCF9D6594892CC31025339434B90B4952508574
              6F9B6E419E51939C28827150D1421717C62E250FB7DBE0CA92D95AA53494A54E
              92724E473358DFA7E15D2B623B2FB6DCE76DFCAA7878D16DB2A57312048031D0
              9516F006D8CE36CE6AB4D546596672C73467EABBE5EAF1C21B95D2DCDBF6C908
              4920AF08716D2480E2B009E4270BDB270075A4D5B1DF18B2C2765C6652CB6F14
              8E68CE2C3BDE54424FF308DC92A3EA1EBAFD24F8C3C5C813A4DC9825C534F5BE
              3AF9594B9CCA48DB381E7272723B8FAF352168B3254B6972E13C96904762D230
              DBA0800150C60E491D37079863A8CCD341494890EE6A3033AAEB05D76173766C
              BE5ECAB0A4841567BB9960841FEEF2D30784364BBDB121DFE0362B4C37079EE3
              4F29F90F0FEFF3118CFBFF004A5DCD4B772BD3706CD06D72E5BA3B44C67B2D22
              42719E509C8017F82803DD9A7170DEC36FB6DA932E358176298F0E59318BAA50
              E61DE3CE208F51A4621B2D3B7BFEFBFF0091F875BBDFDBF7DBFD99BF881F6F6F
              FF0099C9F9AAA85A9AE207DBDBFF00E6727E6AAA16BA69CA2739F98CF15E89AD
              2F7745A2E3A8E0E8FB95A21B916E36B53E9792D80E21C49C641EEDB2411BE6B3
              42BD135A5F55DE74A69BBF5B6F57C94FB7748B6D52633084A88750AEBD063390
              46E475FE98F197BADB8EB35612D66BFF001179C3C80CE8CD3FAA7544A8CCCB9B
              6A9060444BA360B0A00ABFAA93EFC023BEBE389C18D59C3AB46B66E2311AE0A7
              8C598964602CE5401F7EE9DBBFCEC7757D59243B7FE09EAFECD3CD29372F1E71
              B4EE4254A4289FE8957F4AF2EC9366F07AB4B52414BF36E3E30DB6A183CA0A8E
              7F0C01FF0070A8D73E63CD7B7D2D2DA64CBE96BFD6F26AE536D5C1BD3F6E8B0E
              D6C4FD4335A0EBCFBE3D01DFBF5C6720018E849F7C170B2D16DBECEBFEB5D56C
              B4E4282B5C8547C798A715959D8F503B81EF22BB7C20ED922F06D1AAAD8DAA4D
              B9F869429C681506CE4A813EA042BFA8AF8E0F35FED070D7556998AA409CE8ED
              9A49DB9F29000FC32803DDCD551D1CF7D4F13F5927AD92DA0E1F691379D7CBD6
              BAAB4FC516B8B02145B8B6596DBDC90A5A4615DDDDDC298371E19C5BBF14A65E
              6F68658B3A0B088F1F21224B9C8918C7F673DDDE76F5D2574DC491075BDAA3CC
              61D8EF3770652B6DD494A927B44EC41A69EBABF4E93C7CB2DA1E788830A5472D
              3236056B482547D67CEC7B855AAA1560B4F4D0C8A4E1813535D44E4D23158578
              475D987196D6D053F842920A7A248DAA6B87DC348F695CFBADF8346E9210FAE2
              C4241F176CE473E3FB5B8FC33EB35C5A79BECBC272E63D6DAD5FD5A41AE7E135
              FA7EA0E2DDF645CDF538E2A13CD212364A1097120240EE03FF0074AA99C8241D
              3288C4CA08046B731303A0AD41C77FBA9BC7EC7CE6EB302872A88EB838AD3FC7
              7FBA9BC7EC7CE6E9D8BEAD3EFE22B0BD3A9DBCC84F063FB0537F3373E53557FB
              EE9FB55FD2C22F309B9888EBED1B43A49485631929CE0FEB9AA07831FD829BF9
              9B9F29AA68573B1248ACC44DF8700D150628EFDA117A7949BA49BE466952E615
              CDB8494E111D0701086DBDC6738233B7989CE00C57ED68D1B777A7875C8EDB70
              9D98E30C143A17D9C601650E93DF9C2123D60927D235DBC736A64F91A6AD4C21
              E54599394978378F395CB84A77DB7057D761D7BABAEF33E55934EB7A56D76C30
              E73ED06A1724853ADA5BC12E3857807CC00E463BD38CE69E1DCA0D753F889288
              1CE9A0901AA1706D3A46D1A7E48445B8465F6AF218C29A682B992A0A51F480E6
              0AE51927940F55572C93DB87748D22ECB596A3494B6B4309054F76392B770AF4
              8387979803927077C0A9E4589AB769A8B70B42A1CF8D33CF44C1194954450C82
              A4151D8927036E6CEC06F9117A61A8D227B8DDAFB0BB8549537E2CF8E7436918
              09C01B92819F392738248C80A01AB6CA629AF984B85E74DAAF53E65CED519A76
              2DC9E8A03A85E14A41D9C591DDC83703D655DF55E7B4D5C1B31EDB71916D6EE8
              F4E5A45BDE7369D1801E7A08DD248ED06F8C8C0EA915256B4B7A175649791311
              2E13210DDDFB26D695C753832DAC8390A4E411B1C8E615C7C52833DABB59F544
              5B63B067BD3586872BE1D2E6FE62169C0E53B0D92483DFBE0D2D09CC16FA7A4B
              B8162D6D7D65AF4CF0CED96A68B171526EADC795E3101D793CAF47DF98A79C1D
              C730CF70C93B55DA8A2B0BBB39BB19B551505809917881F6F6FF00F99C9F9AAA
              85A9AE207DBDBFFE6727E6AAA16BD1A7289C07E633C3B8A9DD65AB6E3ABA5457
              EEA98E95C567B147628291CB9CEF9277A83A2A4A8241901881693BA27585D747
              5C5C97695B643A8E4799793CC8707764646E3D75EEB7D6576D6539A91765B494
              B09E465865252DB60F5C024EE76DC9EEA81A2ABB35CD9ADAC9CED972DF496ED1
              1C4BBFE908A61C2719930B2488D2925494E7AF2904119F574F754435A9EE5175
              4BF7FB6BDE2331E7D6F7F2BD11CCA24A707AA77E86A228A3669726DC61B46B01
              7E12E3AAF89976D4CE5A9E9D160B722D8F87DB75A42873A8608E604F4DBBAA32
              E7AC6E771D66D6A77D3184F69C6DC48420846518C6467DDEBA81A285A48BA012
              4D576E265A59E215E19D6EEEAA4370FF00883ADF66A4F667B3C7284F4CE7A01D
              F5C7A5357DC74C5FA45DEDA88CA92FA16858790549C2941470323BC5415146CD
              2D6B48DA35EF79EB8A2E38A59C6544A8E3DF5A7B8EFF0075378FD8F9CDD660AD
              3FC77FBA9BC7EC7CE6EB1E2FAB4FBF89AF0BD3A9DBCC84F063FB0537F3373E53
              54D0A57F831FD829BF99B9F29AA68573B15D669BF0DD2591BA9ECE8BE599E845
              61A748E661FC1CB2E0F4563041C83EA354FD0DA22FF647DD91267C26DCECFB06
              927B49296D04E545214A48473109240C8DA98545516AB2A951C25DA9AB366317
              5A9AD4CD8A4A3C7033754DC56A0CB0FAC3486A5A8FA610081C8AFF0088E09183
              D79CE6163BB0E3177B4B35A50E2E42A221D69FECCA268C152F208296304280EA
              9C0EF50A68DCEC96DBA3A972E10D990E21A5B4952C64A52B00280F56702B8468
              CD3DD996D76A8EB42A322294AC7302DA0E5237EFC81BF5381EAA72D716D629A8
              9BE9389AD232D8B3C8B6A6E8CC88F312AF1AF1A8BCCB756BF4D5CC9524E7D59C
              E361D00A88D05A0EE76BBE2EE3A8A5B730B691D8A4BCB74A9C0301D515637092
              A036DB3DD4C0030001D0514ADB3D88F78DD92DC1F68514514A8C9917881F6F6F
              FF0099C9F9AAA85A9AE207DBDBFF00E6727E6AAA16BD2A7289E79F98C28A28AB
              4A428A28A210A28A288428A28A210A28A28842B4FF001DFEEA6F1FB1F39BACC1
              5A7F8EFF0075378FD8F9CDD61C5F569F7F137617A753B79891D0BC4EBCE8BB43
              B6EB5C6B73ACBAF97CAA4B6B52B98A529C79AA1B6122A7BCBEEA8F60B27C177E
              A52C28AD0D87A4C6E44CEB5EA28B0319FE5F7547B0593E0BBF528F2FBAA3D82C
              9F05DFA94B0A2A375A3F193BCD5F9467F97DD51EC164F82EFD4A3CBEEA8F60B2
              7C177EA52C28A375A3F186F357E519FE5F7547B0593E0BBF5283C7CD53EC165F
              82EFD4A585146EB47E30DE6AFCA33BCBDEAAF63B37C173FD740E3DEA9F62B37C
              173FD74B1A28DD68FC61BCD5F94EABC5C1DBB5DE65C6425097A5BEB7DC4B6084
              852945440CE76C9AE5A28A7816D2249BCFFFD9}
            Stretch = True
          end
          object QRMemo4: TQRMemo
            Left = 516
            Top = 75
            Width = 139
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              1365.250000000000000000
              198.437500000000000000
              367.770833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Terminal'
            Font.Style = []
            Lines.Strings = (
              #1060#1077#1076#1077#1088#1072#1083#1100#1085#1086#1077' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1077' '
              #1091#1085#1080#1090#1072#1088#1085#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRSysData5: TQRSysData
            Left = 4
            Top = 188
            Width = 104
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              497.416666666666700000
              275.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRLabel24: TQRLabel
            Left = 110
            Top = 188
            Width = 16
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              291.041666666666700000
              497.416666666666700000
              42.333333333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #8470
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
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
            Left = 128
            Top = 189
            Width = 129
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              338.666666666666700000
              500.062500000000100000
              341.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo5: TQRMemo
            Left = 8
            Top = 265
            Width = 665
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              21.166666666666670000
              701.145833333333400000
              1759.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRRichText1: TQRRichText
            Left = 2
            Top = 1
            Width = 508
            Height = 72
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Width = 3
            Size.Values = (
              190.500000000000000000
              5.291666666666667000
              2.645833333333333000
              1344.083333333333000000)
            Alignment = taLeftJustify
            AutoStretch = False
            Color = clWindow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Lines.Strings = (
              #1052#1048#1053#1048#1057#1058#1045#1056#1057#1058#1042#1054' '#1057#1042#1071#1047#1048' '#1048
              #1052#1040#1057#1057#1054#1042#1067#1061' '#1050#1054#1052#1052#1059#1053#1048#1050#1040#1062#1048#1049
              #1056#1054#1057#1057#1048#1049#1057#1050#1054#1049' '#1060#1045#1044#1045#1056#1040#1062#1048#1048
              ''
              #1060#1045#1044#1045#1056#1040#1051#1068#1053#1054#1045' '#1040#1043#1045#1053#1058#1057#1058#1042#1054' '#1057#1042#1071#1047#1048)
          end
        end
        object QRBand10: TQRBand
          Left = 76
          Top = 366
          Width = 681
          Height = 43
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
            113.770833333333300000
            1801.812500000000000000)
          BandType = rbSummary
          object QRMemo1: TQRMemo
            Left = 8
            Top = 7
            Width = 633
            Height = 26
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              68.791666666666680000
              21.166666666666670000
              18.520833333333330000
              1674.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand11: TQRBand
          Left = 76
          Top = 321
          Width = 681
          Height = 45
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
            119.062500000000000000
            1801.812500000000000000)
          BandType = rbDetail
          object QRDBText16: TQRDBText
            Left = 50
            Top = 20
            Width = 591
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              132.291666666666700000
              52.916666666666660000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.sql_doklad
            DataField = 'Soder'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData7: TQRSysData
            Left = 8
            Top = 2
            Width = 38
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              5.291666666666667000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRDBText18: TQRDBText
            Left = 49
            Top = 3
            Width = 55
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              129.645833333333300000
              7.937500000000000000
              145.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_doklad
            DataField = 'DatError'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1040#1082#1090#1044#1091#1073#1083#1080#1082#1072#1090
      ImageIndex = 3
      object RepDuble: TQuickRep
        Left = 0
        Top = 2
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = RepDubleAfterPrint
        DataSet = baza.sql_vip_sod
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
          200.000000000000000000
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
        object QRBand9: TQRBand
          Left = 76
          Top = 38
          Width = 681
          Height = 235
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
            621.770833333333400000
            1801.812500000000000000)
          BandType = rbTitle
          object QRLabel23: TQRLabel
            Left = 16
            Top = 144
            Width = 648
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              42.333333333333340000
              381.000000000000000000
              1714.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1080#1079' '#1078#1091#1088#1085#1072#1083#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1086' '#1074#1099#1103#1074#1083#1077#1085#1085#1086#1084' '#1085#1072#1088#1091#1096#1077#1085#1080#1080' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRLabel26: TQRLabel
            Left = 8
            Top = 208
            Width = 557
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              550.333333333333400000
              1473.729166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 
              #1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093' '#1080#1079' '#1074#1072#1096#1077#1075#1086' '#1054#1055#1057' '#1073#1099#1083#1080' '#1074#1099#1103#1074#1083#1077#1085#1099' '#1089#1083#1077#1076#1091#1102#1097#1080#1077' '#1085#1072#1088 +
              #1091#1096#1077#1085#1080#1103':'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText11: TQRDBText
            Left = 608
            Top = 8
            Width = 57
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1608.666666666667000000
              21.166666666666670000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_vip
            DataField = 'IndOps'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel27: TQRLabel
            Left = 483
            Top = 8
            Width = 123
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1277.937500000000000000
              21.166666666666670000
              325.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1053#1072#1095#1072#1083#1100#1085#1080#1082#1091' '#1054#1055#1057' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText12: TQRDBText
            Left = 484
            Top = 31
            Width = 181
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1280.583333333333000000
              82.020833333333340000
              478.895833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_vip
            DataField = 'OPSNAME'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel28: TQRLabel
            Left = 264
            Top = 112
            Width = 144
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              698.500000000000000000
              296.333333333333400000
              381.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042' '#1067' '#1055' '#1048' '#1057' '#1050' '#1040
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 16
          end
          object QRDBText15: TQRDBText
            Left = 48
            Top = 184
            Width = 97
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              127.000000000000000000
              486.833333333333400000
              256.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_vip_sod
            DataField = 'DataReg'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel29: TQRLabel
            Left = 152
            Top = 184
            Width = 519
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              402.166666666666600000
              486.833333333333400000
              1373.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 
              #1086#1087#1077#1088#1072#1090#1086#1088#1086#1084' '#1080#1085#1092#1086#1088#1084#1087#1091#1085#1082#1090#1072'  '#1087#1086#1095#1090#1072#1084#1090#1072' '#1087#1088#1080' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1080' '#1087#1088#1086#1074#1077#1088#1082#1080' '#1087#1077#1088#1074#1080#1095 +
              #1085#1099#1093
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel35: TQRLabel
            Left = 8
            Top = 8
            Width = 85
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
              224.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1044#1059#1041#1051#1048#1050#1040#1058
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand12: TQRBand
          Left = 76
          Top = 273
          Width = 681
          Height = 24
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
          Font.Style = [fsBold]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            63.500000000000000000
            1801.812500000000000000)
          BandType = rbDetail
          object QRDBText19: TQRDBText
            Left = 131
            Top = 0
            Width = 542
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              346.604166666666700000
              0.000000000000000000
              1434.041666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = baza.sql_vip_sod
            DataField = 'Soder'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            FontSize = 12
          end
          object QRSysData6: TQRSysData
            Left = 5
            Top = 1
            Width = 41
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              13.229166666666670000
              2.645833333333333000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRDBText20: TQRDBText
            Left = 48
            Top = 0
            Width = 81
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              127.000000000000000000
              0.000000000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_vip_sod
            DataField = 'DatError'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand13: TQRBand
          Left = 76
          Top = 297
          Width = 681
          Height = 368
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
            973.666666666666900000
            1801.812500000000000000)
          BandType = rbSummary
          object QRDBText21: TQRDBText
            Left = 499
            Top = 96
            Width = 174
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1320.270833333333000000
              254.000000000000000000
              460.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_user
            DataField = 'User2'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText22: TQRDBText
            Left = 112
            Top = 96
            Width = 221
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              254.000000000000000000
              584.729166666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_user
            DataField = 'User2Dolgn'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel30: TQRLabel
            Left = 112
            Top = 144
            Width = 93
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              296.333333333333400000
              381.000000000000000000
              246.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1087#1077#1088#1072#1090#1086#1088' '#1048#1055
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel32: TQRLabel
            Left = 114
            Top = 179
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              301.625000000000000000
              473.604166666666700000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel7'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel33: TQRLabel
            Left = 336
            Top = 96
            Width = 161
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              889.000000000000000000
              254.000000000000000000
              425.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '____________________'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo6: TQRMemo
            Left = 8
            Top = 8
            Width = 665
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666666700000
              21.166666666666670000
              21.166666666666670000
              1759.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              
                '             '#1042#1072#1084' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074' '#1090#1088#1077#1093#1076#1085#1077#1074#1085#1099#1081' '#1089#1088#1086#1082' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1073#1098#1103 +
                #1089#1085#1077#1085#1080#1077' '#1086' '#1087#1088#1080#1095#1080#1085#1072#1093' '#1087#1088#1080#1074#1077#1076#1096#1080#1093' '
              ''
              
                ' '#1082' '#1074#1099#1103#1074#1083#1077#1085#1085#1099#1084' '#1085#1072#1088#1091#1096#1077#1085#1080#1103#1084'. '#1040' '#1090#1072#1082' '#1078#1077' '#1087#1088#1080#1103#1085#1090#1100' '#1074#1089#1077' '#1084#1077#1088#1099' '#1076#1083#1103' '#1091#1089#1090#1088#1072#1085#1077#1085 +
                #1080#1103' '#1076#1072#1085#1085#1099#1093'  '#1085#1072#1088#1091#1096#1077#1085#1080#1081'. '
              ''
              '')
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRSysData8: TQRSysData
            Left = 600
            Top = 199
            Width = 74
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1587.500000000000000000
              526.520833333333400000
              195.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDateTime
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRDBText23: TQRDBText
            Left = 500
            Top = 144
            Width = 169
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1322.916666666667000000
              381.000000000000000000
              447.145833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_vip
            DataField = 'UserCr'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo8: TQRMemo
            Left = 8
            Top = 320
            Width = 667
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              21.166666666666670000
              846.666666666666600000
              1764.770833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              
                '        '#1055#1086#1076#1087#1080#1089#1072#1085#1085#1099#1081' '#1101#1082#1079#1077#1084#1087#1083#1103#1088' '#1087#1086#1076#1083#1077#1078#1080#1090' '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1084#1091' '#1074#1086#1079#1074#1088#1072#1090#1091' '#1074' ' +
                #1080#1085#1092#1086#1088#1084#1087#1091#1085#1082#1090' '#1087#1086#1095#1090#1072#1084#1090#1072' '#1085#1077' '#1087#1086#1079#1076#1085#1077#1077' '#1076#1074#1091#1093' '#1088#1072#1073#1086#1095#1080#1093' '#1076#1085#1077#1081' '#1089' '#1084#1086#1084#1077#1085#1090#1072' '#1087#1086#1089#1090 +
                #1091#1087#1083#1077#1085#1080#1103' '#1074' '#1054#1055#1057)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel46: TQRLabel
            Left = 136
            Top = 272
            Width = 137
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              359.833333333333400000
              719.666666666666800000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '        ( '#1044#1072#1090#1072' )      '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel47: TQRLabel
            Left = 276
            Top = 272
            Width = 202
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              730.250000000000000000
              719.666666666666800000
              534.458333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '( '#1055#1086#1076#1087#1080#1089#1100' )'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel48: TQRLabel
            Left = 481
            Top = 272
            Width = 194
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1272.645833333333000000
              719.666666666666800000
              513.291666666666800000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '( '#1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1086#1081' )'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel49: TQRLabel
            Left = 29
            Top = 246
            Width = 105
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              76.729166666666670000
              650.875000000000000000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1054#1079#1085#1072#1082#1086#1084#1083#1077#1085' ('#1072')'
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
      object Friirep: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = baza.sql_stat
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
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
          200.000000000000000000
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
        object QRBand14: TQRBand
          Left = 76
          Top = 38
          Width = 681
          Height = 27
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
            71.437500000000000000
            1801.812500000000000000)
          BandType = rbTitle
          object FreeSoob: TQRMemo
            Left = 2
            Top = 1
            Width = 676
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              5.291666666666667000
              2.645833333333333000
              1788.583333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
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
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      object SpravReport: TQuickRep
        Left = 0
        Top = 19
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = SpravReportAfterPrint
        AfterPreview = SpravReportAfterPreview
        DataSet = baza.sql_sprav
        Font.Charset = RUSSIAN_CHARSET
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
          70.000000000000000000
          2970.000000000000000000
          70.000000000000000000
          2100.000000000000000000
          200.000000000000000000
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
        object QRBand15: TQRBand
          Left = 76
          Top = 26
          Width = 681
          Height = 343
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
            907.520833333333400000
            1801.812500000000000000)
          BandType = rbTitle
          object QRLabel52: TQRLabel
            Left = 3
            Top = 161
            Width = 102
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              7.937500000000000000
              425.979166666666700000
              269.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1057' '#1055' '#1056' '#1040' '#1042' '#1050' '#1040
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRRichText2: TQRRichText
            Left = 2
            Top = 1
            Width = 508
            Height = 72
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Width = 3
            Size.Values = (
              190.500000000000000000
              5.291666666666667000
              2.645833333333333000
              1344.083333333333000000)
            Alignment = taLeftJustify
            AutoStretch = False
            Color = clWindow
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Lines.Strings = (
              #1052#1048#1053#1048#1057#1058#1045#1056#1057#1058#1042#1054' '#1057#1042#1071#1047#1048' '#1048
              #1052#1040#1057#1057#1054#1042#1067#1061' '#1050#1054#1052#1052#1059#1053#1048#1050#1040#1062#1048#1049
              #1056#1054#1057#1057#1048#1049#1057#1050#1054#1049' '#1060#1045#1044#1045#1056#1040#1062#1048#1048
              ''
              #1060#1045#1044#1045#1056#1040#1051#1068#1053#1054#1045' '#1040#1043#1045#1053#1058#1057#1058#1042#1054' '#1057#1042#1071#1047#1048)
          end
          object QRMemo9: TQRMemo
            Left = 3
            Top = 79
            Width = 412
            Height = 46
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              121.708333333333400000
              7.937500000000000000
              209.020833333333300000
              1090.083333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Lines.Strings = (
              #1059#1060#1055#1057' '#1057#1042#1045#1056#1044#1051#1054#1042#1057#1050#1054#1049' '#1054#1041#1051#1040#1057#1058#1048' - '#1060#1048#1051#1048#1040#1051' '#1060#1043#1059#1055' '#171#1055#1054#1063#1058#1040' '#1056#1054#1057#1057#1048#1048#187
              ''
              #1045#1050#1040#1058#1045#1056#1048#1053#1041#1059#1056#1043#1057#1050#1048#1049' '#1055#1054#1063#1058#1040#1052#1058)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRImage2: TQRImage
            Left = 516
            Top = 0
            Width = 133
            Height = 73
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              193.145833333333300000
              1365.250000000000000000
              0.000000000000000000
              351.895833333333400000)
            Picture.Data = {
              0A544A504547496D61676504150000FFD8FFE100E645786966000049492A0008
              0000000500120103000100000001000000310102001C0000004A000000320102
              00140000006600000013020300010000000100000069870400010000007A0000
              00000000004143442053797374656D73204469676974616C20496D6167696E67
              00323031313A30363A30392030393A34343A3535000500009007000400000030
              32323090920200030000003738000002A0040001000000B600000003A0040001
              0000005800000005A0040001000000BC00000000000000020001000200040000
              005239380002000700040000003031303000000000D4FEFEFEFFC00011080058
              00B603012200021101031101FFDB00840007040506050407060506070707080A
              110B0A09090A150F100C1119161A1A181618181C1F28221C1D261E1818232F23
              26292A2D2D2D1B213134312B34282C2D2B010B0B0B0F0D0F1E11111E402B242B
              4040404040404040404040404040404040404040404040404040404040404040
              404040404040404040404040404040404040FFC400A000000203010101010000
              0000000000000000070506080401020310000103030203020B06030509000000
              000102030400051106210712311341081417223251546193B3D3363771758183
              1523915272B1B2D2163342627392A1C1E1010002030101000000000000000000
              0000000301020405061100020102030703040301000000000000010200031104
              1221131431323371D14151528191B1F061A1C1E1FFDA000C0301000211031100
              3F005E514515E9E79B85145144214514510851451442145145108569FE3BFDD4
              DE3F63E7375982B4FF001DFEEA6F1FB1F39BAC38BEAD3EFE26EC2F4EA76F3123
              A1786379D696876E36B936E69969F2C14C9716957304A559F35076C2854F7902
              D51EDF64F8CEFD3ABAF831FD829BF99B9F29AA68567AF8CAA950A88EA384A6F4
              C3199EBC816A8F6FB27C677E9D1E40B547B7D93E33BF4EB42D14ADFEB46EE54A
              67AF205AA3DBEC9F19DFA747902D51EDF64F8CEFD3AD0B5F8C396C4C0E18EB2A
              0D38A69794918524E08DFF00C7A54EFD5A1B952880F205AA3DBEC9F19DFA7479
              02D51EDF64F8CEFD3AD0B4546FF5A1B95299EBC816A8F6FB27C677E9D1E40B54
              7B7D93E33BF4EB42D146FF005A1B95298D6F16F76D377996E90A429E88FAD871
              4D9252549514923206D91EAAE5A9AE207DBDBFFE6727E6AAA16BB4A6EA0CE430
              B122794C36B823ABDD692E2536EE550C8CC8EEC7E14BC57A269CFE1033A5C49B
              A651125C9612E30AE74B4EA9015BA3AE0EFD4D22B3B86555F5BC751442ACCDE9
              68B5D69A42E9A3A73112F2180EBEDF6A8EC5CE618CE3D5EBA99D23C28D49AA2D
              02E50D3163465E7B23256525DF78001DBDE6AC7E13C39F565A53B8CC223F0F3C
              D7EBE105364D8E669AB65B5F763B3022875A0DA8A70B4909076EF013FF0093EB
              A5AD677540389BFF0051868A2B313C04595D2C570B4DF9567B8B058989712D94
              28ED927620F7839CE6A4AF9A1EF165D4F0AC13447F1D9BD9F65C8E651E7AB946
              4E36DC1ABD784404337BD3579E405D763E5C00639B914950FF0031AB1CE6B496
              BAD6363D4D1355478D263A994A60B81216E292BE608C120824923BFDD46F0D95
              5EDA107EF0DDD7332DF516FB450CBD117789ACDAD2EE88FF00C45D2909C39947
              9C9E61BE3D5EEA9F97C15D5B1623B21D4DBF91A6CB8AC48C9C0DCF7579C7C75C
              638AB29D61C5B4E25964A568514907907422A7B89B3E623837A3DD44C90971E4
              243AB4BAA0A582DEE147BFF5A0D4A8421046B014E982E08E128BA2342DE75A37
              29765118A6294873B67793D20718D8FA8D7DEB0E1F6A1D2319126EF111E2CB57
              207D9702D215EA3DE3F5ABFF0083EB0D3BA275587E6082D3A036B924E3B11D9A
              B2BCEDD339FD2A62F3062790CBD4187A886A4117F982573731461495729DCF4D
              CF5E86AAD8965AB97D2E07E9965C3AB52CDEB62620AB4FF1DFEEA6F1FB1F39BA
              CC15A7F8EFF75378FD8F9CDD18BEAD3EFE2185E9D4EDE6427832909D013947A0
              B9384FC26ABF3E22EB19CCDD74CDF346CA45C20BCB72338D36BF31E52B9486D4
              3B9440DB3BE6B97803788162E18CF9D767FC5E2A6E8A4A9C285280CB6D019C03
              5569963B6459F71558AEED5C6CB3895F234EF3762ACE407103CF4E33E6BA01C7
              78C1348C80D762DFF23B39145408F9B05DE2DF6CF1EE3055CCCBE9C807AA0F42
              923B8839047AC5436A9BB5D917745BACA9FE6F601E07B3C851ED12821448C048
              0B0A38DC8491B77ABEC9AE6F1A59C0B096E74571E4BD2D6920975BDD0A7300F9
              ABD93950CA55807BC92D57D9B2F102C0DADB7DD723A5EC8530E96D685A4EE924
              6E37C1C7E07D559DE8EC9AE7847AD5DAAD871914BD40BBADA75146B8AA4DB9A1
              CCD4792DAD2A523239004721C93CC92AFC142A2F405B6669EBE2DCBB3B2D9764
              443E2D11D75450FB99E671454760A381807719355EBF70F0589F8D2A63F13B75
              20AD3297DA250DBBDA2709C8380ACAC609F4B0722BCD51391AE12CB329F8F23C
              550A65A60A1695C8700C979B00EE1601C67601269C1148B29D0C51720DD86A25
              A8EADBEBB6755C5A8EEB6DC43216FA4A50B579A39DB4A827A271941DC2B9B7E8
              2AFB01E326132F28005C405100103246FD403FD455234970CE3DA27A644C78B8
              185A1D8E865C5252957294A92A073CC3A6093B8DAB9788BC4C55B6626D3A64B4
              FCD4BC44A7D49E743084E0ABBF19DC0DFDE3AD2190546CB4E355CD35CD5271F1
              9B595CD2F234F6980E25C71F6D89529B38216BDD2CA4FF00688DCE3A0C0EFA62
              DBAF16FB84C950E14C6644885CA24A5B39ECCAB3804F4CF9A76EEC5215BF1E90
              EF6EE3EA4CB08529A6D8713CCDA9CDD4BED0F9A852B3E73CAE9E8A41C0C5EB83
              274D6998FF00C1D8BDC5B85E67B9DA3C98BCCE24100E1214063037DCFACD36B5
              1514C01C445D2AA4D4B9E0624F881F6F6FFF0099C9F9AAA85A9AE207DBDBFF00
              E6727E6AAA16BAE9CA272DF98CF15E89A6FF00844AD2AB8696E558561956C0F4
              F39BA50D79CD9EFCFEB556A799D5BDAFFDCB254CAA57DE35BC2716956A9B516D
              40E211DC1CE3CF3560BF69A47176CFA76F36CB8476DC61A0CDC12B27991D0A80
              007A40856338C820D22892A3BE49AFA42D6DF3042D68CECA092467F1A56EE42A
              853A8F58CDB82CC48D0C60F8406A18779D591E15B1D4BB1AD8C763CE83949593
              9560F7E0048FC41AAB70FC81AEAC64E302E0C7F9C5427B87E82BDDC1EF045356
              985A79045B542CF9CCBE7840A92AE274C29208EC59DC1FF9054C713D493C18D1
              690A49504A3207FD3A559CE0139C1E868CE40DF23BB7AA8A36082FCB2C6B5CB1
              B718D9E142D2D706F59A8A80250E003383FEE7FF00B47038A25E84D656C51056
              E47E64A49EA54DAC6DFA814A624A4609201A124E7CDCE4FAAAAD87CC1B5E26F2
              56BDB2E9C05A783A0AD41C77FBA9BC7EC7CE6EB30569FE3BFDD4DE3F63E73749
              C5F569F7F11D85E9D4EDE655F804D4D7F85B736AD8884E4855C5C01B9A92A696
              3B26B2158DFF00C6AAB74B04DB76A03E37A7ED36959392633E979B5FE0DA8A8A
              7F402AE9E0D8C37278777065E04B6E5C5C4A805149C764D778DC557B88B6062C
              D3DF7EDBA5E2DB2D519603D7292FABB47D47A86C12A3BFF7493D76A52B5ABBAF
              EFE7CC615BD156FDFC482BEC70DAE3475F63DA76BCCD92C3C0233B1C380F30CE
              370723F0EF95E0EBF787F8AEF3518989190DA953580D7649712072A49474E6C9
              4EFF0089EFDF99F8B6DBA5A990961BE6400B4A9030DA33BE5649FE6AB009C6E0
              0071B026A025447ADB24C97C5C60CC186D2F42C20B84E54AE9839E518DB60477
              EF4EB0652B137CAC1A32389FAAA5C9B93F697E2F8BC48A561E6DF29097C67CD7
              12ACE7D1503D072923A9C62B4DCF9D6594892CC31025339434B90B4952508574
              6F9B6E419E51939C28827150D1421717C62E250FB7DBE0CA92D95AA53494A54E
              92724E473358DFA7E15D2B623B2FB6DCE76DFCAA7878D16DB2A57312048031D0
              9516F006D8CE36CE6AB4D546596672C73467EABBE5EAF1C21B95D2DCDBF6C908
              4920AF08716D2480E2B009E4270BDB270075A4D5B1DF18B2C2765C6652CB6F14
              8E68CE2C3BDE54424FF308DC92A3EA1EBAFD24F8C3C5C813A4DC9825C534F5BE
              3AF9594B9CCA48DB381E7272723B8FAF352168B3254B6972E13C96904762D230
              DBA0800150C60E491D37079863A8CCD341494890EE6A3033AAEB05D76173766C
              BE5ECAB0A4841567BB9960841FEEF2D30784364BBDB121DFE0362B4C37079EE3
              4F29F90F0FEFF3118CFBFF004A5DCD4B772BD3706CD06D72E5BA3B44C67B2D22
              42719E509C8017F82803DD9A7170DEC36FB6DA932E358176298F0E59318BAA50
              E61DE3CE208F51A4621B2D3B7BFEFBFF0091F875BBDFDBF7DBFD99BF881F6F6F
              FF0099C9F9AAA85A9AE207DBDBFF00E6727E6AAA16BA69CA2739F98CF15E89AD
              2F7745A2E3A8E0E8FB95A21B916E36B53E9792D80E21C49C641EEDB2411BE6B3
              42BD135A5F55DE74A69BBF5B6F57C94FB7748B6D52633084A88750AEBD063390
              46E475FE98F197BADB8EB35612D66BFF001179C3C80CE8CD3FAA7544A8CCCB9B
              6A9060444BA360B0A00ABFAA93EFC023BEBE389C18D59C3AB46B66E2311AE0A7
              8C598964602CE5401F7EE9DBBFCEC7757D59243B7FE09EAFECD3CD29372F1E71
              B4EE4254A4289FE8957F4AF2EC9366F07AB4B52414BF36E3E30DB6A183CA0A8E
              7F0C01FF0070A8D73E63CD7B7D2D2DA64CBE96BFD6F26AE536D5C1BD3F6E8B0E
              D6C4FD4335A0EBCFBE3D01DFBF5C6720018E849F7C170B2D16DBECEBFEB5D56C
              B4E4282B5C8547C798A715959D8F503B81EF22BB7C20ED922F06D1AAAD8DAA4D
              B9F869429C681506CE4A813EA042BFA8AF8E0F35FED070D7556998AA409CE8ED
              9A49DB9F29000FC32803DDCD551D1CF7D4F13F5927AD92DA0E1F691379D7CBD6
              BAAB4FC516B8B02145B8B6596DBDC90A5A4615DDDDDC298371E19C5BBF14A65E
              6F68658B3A0B088F1F21224B9C8918C7F673DDDE76F5D2574DC491075BDAA3CC
              61D8EF3770652B6DD494A927B44EC41A69EBABF4E93C7CB2DA1E788830A5472D
              3236056B482547D67CEC7B855AAA1560B4F4D0C8A4E1813535D44E4D23158578
              475D987196D6D053F842920A7A248DAA6B87DC348F695CFBADF8346E9210FAE2
              C4241F176CE473E3FB5B8FC33EB35C5A79BECBC272E63D6DAD5FD5A41AE7E135
              FA7EA0E2DDF645CDF538E2A13CD212364A1097120240EE03FF0074AA99C8241D
              3288C4CA08046B731303A0AD41C77FBA9BC7EC7CE6EB302872A88EB838AD3FC7
              7FBA9BC7EC7CE6E9D8BEAD3EFE22B0BD3A9DBCC84F063FB0537F3373E53557FB
              EE9FB55FD2C22F309B9888EBED1B43A49485631929CE0FEB9AA07831FD829BF9
              9B9F29AA68573B1248ACC44DF8700D150628EFDA117A7949BA49BE466952E615
              CDB8494E111D0701086DBDC6738233B7989CE00C57ED68D1B777A7875C8EDB70
              9D98E30C143A17D9C601650E93DF9C2123D60927D235DBC736A64F91A6AD4C21
              E54599394978378F395CB84A77DB7057D761D7BABAEF33E55934EB7A56D76C30
              E73ED06A1724853ADA5BC12E3857807CC00E463BD38CE69E1DCA0D753F889288
              1CE9A0901AA1706D3A46D1A7E48445B8465F6AF218C29A682B992A0A51F480E6
              0AE51927940F55572C93DB87748D22ECB596A3494B6B4309054F76392B770AF4
              8387979803927077C0A9E4589AB769A8B70B42A1CF8D33CF44C1194954450C82
              A4151D8927036E6CEC06F9117A61A8D227B8DDAFB0BB8549537E2CF8E7436918
              09C01B92819F392738248C80A01AB6CA629AF984B85E74DAAF53E65CED519A76
              2DC9E8A03A85E14A41D9C591DDC83703D655DF55E7B4D5C1B31EDB71916D6EE8
              F4E5A45BDE7369D1801E7A08DD248ED06F8C8C0EA915256B4B7A175649791311
              2E13210DDDFB26D695C753832DAC8390A4E411B1C8E615C7C52833DABB59F544
              5B63B067BD3586872BE1D2E6FE62169C0E53B0D92483DFBE0D2D09CC16FA7A4B
              B8162D6D7D65AF4CF0CED96A68B171526EADC795E3101D793CAF47DF98A79C1D
              C730CF70C93B55DA8A2B0BBB39BB19B551505809917881F6F6FF00F99C9F9AAA
              85A9AE207DBDBFFE6727E6AAA16BD1A7289C07E633C3B8A9DD65AB6E3ABA5457
              EEA98E95C567B147628291CB9CEF9277A83A2A4A8241901881693BA27585D747
              5C5C97695B643A8E4799793CC8707764646E3D75EEB7D6576D6539A91765B494
              B09E465865252DB60F5C024EE76DC9EEA81A2ABB35CD9ADAC9CED972DF496ED1
              1C4BBFE908A61C2719930B2488D2925494E7AF2904119F574F754435A9EE5175
              4BF7FB6BDE2331E7D6F7F2BD11CCA24A707AA77E86A228A3669726DC61B46B01
              7E12E3AAF89976D4CE5A9E9D160B722D8F87DB75A42873A8608E604F4DBBAA32
              E7AC6E771D66D6A77D3184F69C6DC48420846518C6467DDEBA81A285A48BA012
              4D576E265A59E215E19D6EEEAA4370FF00883ADF66A4F667B3C7284F4CE7A01D
              F5C7A5357DC74C5FA45DEDA88CA92FA16858790549C2941470323BC5415146CD
              2D6B48DA35EF79EB8A2E38A59C6544A8E3DF5A7B8EFF0075378FD8F9CDD660AD
              3FC77FBA9BC7EC7CE6EB1E2FAB4FBF89AF0BD3A9DBCC84F063FB0537F3373E53
              54D0A57F831FD829BF99B9F29AA68573B15D669BF0DD2591BA9ECE8BE599E845
              61A748E661FC1CB2E0F4563041C83EA354FD0DA22FF647DD91267C26DCECFB06
              927B49296D04E545214A48473109240C8DA98545516AB2A951C25DA9AB366317
              5A9AD4CD8A4A3C7033754DC56A0CB0FAC3486A5A8FA610081C8AFF0088E09183
              D79CE6163BB0E3177B4B35A50E2E42A221D69FECCA268C152F208296304280EA
              9C0EF50A68DCEC96DBA3A972E10D990E21A5B4952C64A52B00280F56702B8468
              CD3DD996D76A8EB42A322294AC7302DA0E5237EFC81BF5381EAA72D716D629A8
              9BE9389AD232D8B3C8B6A6E8CC88F312AF1AF1A8BCCB756BF4D5CC9524E7D59C
              E361D00A88D05A0EE76BBE2EE3A8A5B730B691D8A4BCB74A9C0301D515637092
              A036DB3DD4C0030001D0514ADB3D88F78DD92DC1F68514514A8C9917881F6F6F
              FF0099C9F9AAA85A9AE207DBDBFF00E6727E6AAA16BD2A7289E79F98C28A28AB
              4A428A28A210A28A288428A28A210A28A28842B4FF001DFEEA6F1FB1F39BACC1
              5A7F8EFF0075378FD8F9CDD61C5F569F7F137617A753B79891D0BC4EBCE8BB43
              B6EB5C6B73ACBAF97CAA4B6B52B98A529C79AA1B6122A7BCBEEA8F60B27C177E
              A52C28AD0D87A4C6E44CEB5EA28B0319FE5F7547B0593E0BBF528F2FBAA3D82C
              9F05DFA94B0A2A375A3F193BCD5F9467F97DD51EC164F82EFD4A3CBEEA8F60B2
              7C177EA52C28A375A3F186F357E519FE5F7547B0593E0BBF5283C7CD53EC165F
              82EFD4A585146EB47E30DE6AFCA33BCBDEAAF63B37C173FD740E3DEA9F62B37C
              173FD74B1A28DD68FC61BCD5F94EABC5C1DBB5DE65C6425097A5BEB7DC4B6084
              852945440CE76C9AE5A28A7816D2249BCFFFD9}
            Stretch = True
          end
          object QRMemo10: TQRMemo
            Left = 516
            Top = 75
            Width = 139
            Height = 33
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              87.312500000000000000
              1365.250000000000000000
              198.437500000000000000
              367.770833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Terminal'
            Font.Style = []
            Lines.Strings = (
              #1060#1077#1076#1077#1088#1072#1083#1100#1085#1086#1077' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1077' '
              #1091#1085#1080#1090#1072#1088#1085#1086#1077' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077)
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRSysData9: TQRSysData
            Left = 4
            Top = 188
            Width = 104
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              10.583333333333330000
              497.416666666666700000
              275.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 12
          end
          object QRLabel53: TQRLabel
            Left = 110
            Top = 188
            Width = 16
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              291.041666666666700000
              497.416666666666700000
              42.333333333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #8470
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel54: TQRLabel
            Left = 128
            Top = 189
            Width = 129
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              338.666666666666700000
              500.062500000000100000
              341.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = ' '
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel50: TQRLabel
            Left = 8
            Top = 241
            Width = 172
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              637.645833333333400000
              455.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1087#1086' '#1086#1094#1077#1085#1082#1077' '#1082#1072#1095#1077#1089#1090#1074#1072' '#1090#1088#1091#1076#1072
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel51: TQRLabel
            Left = 8
            Top = 264
            Width = 82
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              698.500000000000000000
              216.958333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1079#1072' '#1087#1077#1088#1080#1086#1076' '#1089' '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRMemo11: TQRMemo
            Left = 0
            Top = 313
            Width = 681
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              0.000000000000000000
              828.145833333333300000
              1801.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand16: TQRBand
          Left = 76
          Top = 393
          Width = 681
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
            1801.812500000000000000)
          BandType = rbSummary
          object QRMemo12: TQRMemo
            Left = 0
            Top = 39
            Width = 681
            Height = 26
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              68.791666666666670000
              0.000000000000000000
              103.187500000000000000
              1801.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRExpr1: TQRExpr
            Left = 279
            Top = 4
            Width = 117
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              738.187500000000000000
              10.583333333333330000
              309.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(KOL)'
            FontSize = 12
          end
          object QRLabel55: TQRLabel
            Left = 80
            Top = 4
            Width = 189
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              211.666666666666700000
              10.583333333333330000
              500.062500000000100000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = #1042#1089#1077#1075#1086' '#1074#1099#1103#1074#1083#1077#1085#1086' '#1085#1072#1088#1091#1096#1077#1085#1080#1081
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object QRBand17: TQRBand
          Left = 76
          Top = 369
          Width = 681
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
            1801.812500000000000000)
          BandType = rbDetail
          object QRDBText31: TQRDBText
            Left = 8
            Top = 2
            Width = 65
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              21.166666666666670000
              5.291666666666667000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_sprav
            DataField = 'NumError'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText32: TQRDBText
            Left = 82
            Top = 2
            Width = 473
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              216.958333333333400000
              5.291666666666667000
              1251.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_sprav
            DataField = 'TextError'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRDBText33: TQRDBText
            Left = 558
            Top = 1
            Width = 120
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1476.375000000000000000
              2.645833333333333000
              317.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = baza.sql_sprav
            DataField = 'KOL'
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
      end
    end
  end
end
