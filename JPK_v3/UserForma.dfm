object UserW: TUserW
  Left = 691
  Top = 216
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1081' '#1076#1086#1087#1091#1097#1077#1085#1085#1099#1093' '#1074' '#1089#1080#1089#1090#1077#1084#1091
  ClientHeight = 331
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 312
    Width = 495
    Height = 19
    Panels = <>
  end
  object TabUser: TDBGrid
    Left = 0
    Top = 0
    Width = 241
    Height = 312
    Align = alLeft
    DataSource = baza.sql_user_w_e
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 0
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = TabUserCellClick
    OnDblClick = TabUserDblClick
    OnEnter = TabUserEnter
    OnKeyUp = TabUserKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'NAMEUSER'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = 0
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 241
    Top = 0
    Width = 254
    Height = 312
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 250
      Height = 270
      Align = alClient
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      object Label3: TLabel
        Left = 5
        Top = 78
        Width = 113
        Height = 16
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
      end
      object Label2: TLabel
        Left = 6
        Top = 26
        Width = 88
        Height = 16
        Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
      end
      object Label1: TLabel
        Left = 5
        Top = 8
        Width = 117
        Height = 16
        Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
      end
      object Label4: TLabel
        Left = 4
        Top = 127
        Width = 134
        Height = 16
        Caption = 'E-mail '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      end
      object Label5: TLabel
        Left = 4
        Top = 175
        Width = 39
        Height = 16
        Caption = #1051#1086#1075#1080#1085
      end
      object Label6: TLabel
        Left = 118
        Top = 175
        Width = 49
        Height = 16
        Caption = #1055#1072#1088#1086#1083#1100
      end
      object Label7: TLabel
        Left = 4
        Top = 197
        Width = 88
        Height = 16
        Caption = 'SMTP '#1089#1077#1088#1074#1077#1088
      end
      object Label8: TLabel
        Left = 4
        Top = 245
        Width = 72
        Height = 16
        Caption = 'SMTP '#1087#1086#1088#1090
      end
      object StatusBox: TCheckBox
        Left = 7
        Top = 101
        Width = 242
        Height = 17
        Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1089#1080#1089#1090#1077#1084#1077' '#1088#1072#1079#1088#1077#1096#1077#1085
        TabOrder = 0
      end
      object TipBox: TComboBox
        Left = 122
        Top = 72
        Width = 126
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        TabOrder = 1
        Items.Strings = (
          #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
          #1054#1087#1077#1088#1072#1090#1086#1088
          #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100)
      end
      object FioT: TEdit
        Left = 3
        Top = 44
        Width = 244
        Height = 24
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 2
        Text = 'FIOT'
      end
      object TabNumT: TEdit
        Left = 127
        Top = 3
        Width = 120
        Height = 24
        MaxLength = 10
        PasswordChar = '#'
        TabOrder = 3
        Text = 'TabNumT'
        OnClick = TabNumTClick
        OnExit = TabNumTExit
      end
      object mailt: TEdit
        Left = 2
        Top = 147
        Width = 247
        Height = 24
        MaxLength = 250
        TabOrder = 4
      end
      object logt: TEdit
        Left = 45
        Top = 173
        Width = 70
        Height = 24
        MaxLength = 50
        TabOrder = 5
      end
      object passt: TEdit
        Left = 168
        Top = 173
        Width = 81
        Height = 24
        MaxLength = 50
        PasswordChar = '#'
        TabOrder = 6
      end
      object smtpst: TEdit
        Left = 2
        Top = 217
        Width = 246
        Height = 24
        MaxLength = 50
        TabOrder = 7
      end
      object portt: TEdit
        Left = 80
        Top = 242
        Width = 81
        Height = 24
        TabOrder = 8
        Text = '25'
        OnChange = porttChange
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 272
      Width = 250
      Height = 38
      Align = alBottom
      BevelInner = bvLowered
      Caption = 'Panel3'
      TabOrder = 1
      object AddBut: TSpeedButton
        Left = 2
        Top = 2
        Width = 60
        Height = 33
        Glyph.Data = {
          7E040000424D7E040000000000003E0200002800000018000000180000000100
          08000000000040020000120B0000120B0000820000008200000000000000FFFF
          FF00FF00FF000F590F00EBF4EB00F6FAF60013661400146A1600146815001468
          1600166F190017721B00156F1A0017771E001C862400CEE8D000DDEEDE00136B
          1A001A8624001B8625001A862500198224001A8525001A8526001A8426001A84
          27001D8E29001D8E2A00229E3100229D3100AEE1B400AEDFB400BEE4C200BEE2
          C200CEE9D100157D24001D932E001C8F2B001C8E2B009DDDA6009EDEA7009DDB
          A6009EDBA6009DDAA6001D933000209E3500209D3500209B35008FDF9C008EDC
          9B009EE0A8009EDEA8009DDBA7009CD7A5001A923100209E3600209E37001E96
          3400209D3600209B360023A73C0023A63C002DBA48002DB9480031C64E0033CA
          50008FE09D008FE09E008EDF9C008EDF9D008EDE9C008EDE9D008FDF9D008CD6
          99001992310024AE420023AB3F0023AA400025AF420026AE410026AE42002DBB
          4B002DBB4C002CB648002CB6490032C9500031C54E0031C4500030C04F0034CF
          530034CE530034CD520033CB510033C9530031C24F0030BF4E0036D2580026B2
          470026B1470026B0470026AE460028B3490031C4520033C9550031C2510038D6
          5B0036D1580037D25C0028B74D0026AF490037D15D003BDC640039D462003BD8
          68003EE26C003AD8680042E875003EDD700041E1750046ED7D003CD6710044ED
          7D0041E0770047F1840042E0780041E27C0040E07A0042E27E0048F087004AF0
          8700020202020202020202020202020202020202020202020202020202020202
          020202020202020202020202020202020202020202020202020202366D6C6C63
          4A02020202020202020202020202020202020264787D7F786402020202020202
          0202020202020202020202617E80817C65020202020202020202020202020202
          020202627A7B7B76620202020202020202020202020202020202024B75797775
          4E0202020202020202020202020202020202024D737474714C02020202020202
          02020202020202020202024F7072727050020202020202020202020223392F2E
          3A2D3D526B6F6F6E513C3837373B3923020202022C535F5E5E5E575D6A696960
          67665E685E58542C02020202243E56555555415C5B5A595B5C41555555403F24
          0202020226493147454645304842434248474444463149250202020218352B29
          292A34272832323327292929292B3519020202021115161417141A1C1F1E1E1F
          1D1B141314161511020202020202020202020212212020210E02020202020202
          02020202020202020202020D0F22220F0D020202020202020202020202020202
          0202020B101010100B0202020202020202020202020202020202020C04040404
          0A02020202020202020202020202020202020207050505050702020202020202
          0202020202020202020202090101010108020202020202020202020202020202
          0202020306060606030202020202020202020202020202020202020202020202
          0202020202020202020202020202020202020202020202020202020202020202
          0202}
        OnClick = AddButClick
      end
      object EdBut: TSpeedButton
        Left = 63
        Top = 2
        Width = 62
        Height = 33
        Glyph.Data = {
          26030000424D2603000000000000E60000002800000018000000180000000100
          08000000000040020000120B0000120B00002C0000002C00000000000000FFFF
          FF00FF00FF006E727200EEF2F200E6EAEA009ECAD2006EE6FE007AE6FE007ECE
          E2007ABACA005ED6F6004ED6FE00B6C2C6004ECEFE003EC2FE0056C2FE002AAA
          FE00329EF20042A6F2001E86DA001E7ECA00063E72009ACAF600B2D2EE0096A2
          AE00165AA20086B6EE00868E9A00325EAA0016224A007E829200262A56004E4E
          B2005A5AB6009696EA003E3E520066666E00B2B2BA00EEEEF200FAFAFA00DEDE
          DE00C6C6C6009A9A9A0002020202020202020202020202020202020202020202
          0202022B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B020202020202022B28282828
          28282828282828282828282B020202020202022B282828282828282828282805
          2828282B020202020202022B28282828282828282828282A2A28282B02020202
          0202022B282826292A292A29292A2603032A282B020202020202022B28282828
          282828282828280D171F292B020202020202022B282828282828282828282829
          181B1C2B020202020202022B2828262A29262A29262A29261910151602020202
          0202022B282828282828282828282828290B1116020202020202022B28282828
          282828282828282828060C141E0202020202022B2804292A2629262A2629262A
          2629090F1A1602020202022B28050505050505050505050505050D07121E0202
          0202022B2805050505050505050505050505050A0E1D16020202022B28052629
          2629262A292A2A2629052825081320020202022B280505050505050505050505
          0505282B0A261F250202022B2805050505050505050505050505282B25052624
          2202022B28052A2629262A292629292A2605282B022523212202022B27050505
          05050505050505050505272B020222220202022B050505050505050505050505
          0505052B020202020202022B0505050505050505050505050505052B02020202
          0202022B0505050505050505050505050505052B020202020202022B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B0202020202020202020202020202020202020202
          02020202020202020202}
        OnClick = EdButClick
      end
      object SavBut: TSpeedButton
        Left = 125
        Top = 2
        Width = 62
        Height = 33
        Enabled = False
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777777777777778888888888888888887777777777777
          8888888888888888888777777777777000000000000000000887777777777707
          7708888888807707088777777777707777088008888077070887777777778077
          7708800888807707088777777770007777088008888077070887777777077077
          7708888888807707088777777077707777000000000000070887777780777077
          7777777777777777088777700077707777777777777777770887770770777070
          00000000000000070887707770777070FFFFFFFFFFFFFF070887707770777070
          FFFFFFFFFFFFFF070887707770777070FFFFFFFFFFFFFF070887707770700070
          FFFFFFFFFFFFFF07088770777070F070FFFFFFFFFFFFFF07088770777070F070
          FFFFFFFFFFFFFF07088770777070F070FFFFFFFFFFFFFF07088770700070F070
          FFFFFFFFFFFFFF0708877070F070F070FFFFFFFFFFFFFF0708877070F070F070
          FFFFFFFFFFFFFF0707777070F070FF00000000000000000007777070F070FFFF
          FFFFFFFFFF07088777777070F070FFFFFFFFFFFFFF07088777777070F070FFFF
          FFFFFFFFFF07077777777070FF000000000000000000077777777070FFFFFFFF
          FFFFFF070887777777777070FFFFFFFFFFFFFF070887777777777070FFFFFFFF
          FFFFFF0707777777777777000000000000000000077777777777}
        OnClick = SavButClick
      end
      object CanBut: TSpeedButton
        Left = 187
        Top = 2
        Width = 60
        Height = 33
        Enabled = False
        Glyph.Data = {
          56030000424D5603000000000000160100002800000018000000180000000100
          08000000000040020000120B0000120B0000380000003800000000000000FFFF
          FF003534D9004846EE005251EB005554DB00D0CFF700FF00FF00CFD0F8001F1F
          BE002424BC002A2BD7002525BC002B2BD7002B2BD6003535D9003739DF004142
          EA004142E9004648EE004445E6004445E5003C3CC4005C5CEF005454DB005D5D
          EF006363DD006363DC007474E8009293F2009192F1009393F2009292F100C8C8
          F400D0D0F800D0D0F700FEFEFE00F8F8F800F0F0F000E8E8E800E6E6E600DFDF
          DF00D2D2D200C9C9C900C7C7C700C6C6C600C5C5C500BBBBBB00B2B2B200B1B1
          B100AFAFAF009C9C9C009A9A9A00989898008181810071717100070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          07070B0B0B0B070707070707070707070707070707070707070B0F1514020B07
          070707070707070707070707070707070B0E111303120D0B0707073737373737
          37373707070707070C1004171904100C07070733010101010101330707070707
          0A1C1E1F1D201C0A070707330101010101330707070707071618060822230516
          0707073301010101303607070707070707161B21211A16070707073301010101
          2434360707070707070716090916070733070733010133010126353607070707
          0707070707073636070707330133332D01012432363607070707070736362F33
          07070733330707332C01010127313636363636362B2E33070707070707070707
          3333290101010101010101293333070707070707070707070707333333282525
          282A333307070707070707070707070707070707073333333333070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707070707070707
          0707070707070707070707070707070707070707070707070707}
        OnClick = CanButClick
      end
    end
  end
end
