object MailF: TMailF
  Left = 214
  Top = 220
  Width = 391
  Height = 90
  BorderIcons = [biSystemMenu]
  Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#1074#1099#1087#1080#1089#1082#1080' '#1087#1086' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1087#1086#1095#1090#1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 2
    Top = 3
    Width = 41
    Height = 16
    Caption = 'Label1'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 37
    Width = 383
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 22
    Width = 383
    Height = 15
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object smtps: TNMSMTP
    Port = 25
    ReportLevel = 0
    OnDisconnect = smtpsDisconnect
    OnConnect = smtpsConnect
    OnInvalidHost = smtpsInvalidHost
    OnHostResolved = smtpsHostResolved
    OnConnectionFailed = smtpsConnectionFailed
    OnConnectionRequired = smtpsConnectionRequired
    EncodeType = uuMime
    ClearParams = True
    SubType = mtPlain
    Charset = 'windows-1251'
    OnSendStart = smtpsSendStart
    OnAuthenticationFailed = smtpsAuthenticationFailed
    Left = 148
    Top = 5
  end
end
