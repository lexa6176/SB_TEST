object ProcessLoad: TProcessLoad
  Left = 381
  Top = 691
  BorderStyle = bsNone
  Caption = 'ProcessLoad'
  ClientHeight = 136
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Procces: TGauge
    Left = 8
    Top = 96
    Width = 561
    Height = 33
    Progress = 0
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 561
    Height = 81
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 29
      Height = 16
      Caption = #1054#1055#1057
    end
    object Label2: TLabel
      Left = 88
      Top = 16
      Width = 48
      Height = 16
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 71
      Height = 16
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100
    end
    object Label4: TLabel
      Left = 88
      Top = 40
      Width = 48
      Height = 16
      Caption = 'Label4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 0
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
