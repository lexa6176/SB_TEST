object Ops: TOps
  Left = 334
  Top = 315
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 382
  ClientWidth = 645
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
  object PCSpr: TPageControl
    Left = 0
    Top = 0
    Width = 645
    Height = 363
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PCSprChange
    object TabSheet1: TTabSheet
      Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103' '#1089#1074#1103#1079#1080
      OnShow = TabSheet1Show
      object Panel1: TPanel
        Left = 321
        Top = 0
        Width = 316
        Height = 332
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 295
          Width = 316
          Height = 37
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 0
          object AddBut: TSpeedButton
            Left = 4
            Top = 1
            Width = 61
            Height = 34
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
            Left = 65
            Top = 1
            Width = 62
            Height = 34
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
            Left = 190
            Top = 1
            Width = 62
            Height = 34
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
            Left = 252
            Top = 1
            Width = 62
            Height = 34
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
          object DelBut: TSpeedButton
            Left = 127
            Top = 1
            Width = 62
            Height = 34
            Glyph.Data = {
              E6040000424DE604000000000000A60200002800000018000000180000000100
              08000000000040020000120B0000120B00009C0000009C00000000000000FFFF
              FF002322DC002826E4003331E6003635EA003634E9003433E1003B39E3004140
              EA004644E500514FF300514FEA005452E8005957E800605EF1005F5DEC007C7B
              E5008685E7008786E5009392EA009594EB009897EB009B9AEB009C9BEC009E9D
              ED00A3A2EE00CCCBF600FF00FF002222DD002525E2002526E2002727E4002828
              E4002829E0002929DF002B2DE5002D2EE7002E2EE8002E2EE7002D2DE5002D2D
              DF002E2EDF003131E6003535EA003436E9003333E1003636EA003838E8003A3A
              EA003939E3003D3DED003C3CEC003C3DEC003C3CE6004040EA003F3FE4004040
              E5004545EF004546EF004444EE004446EE004646F0004747EB004646E6004444
              E0004949ED004646E5004949EC004D4DF1004E4EF2004F4FF3004B4BE7004D4D
              E7005050EE005151EA005556F3005151E7005656F3005254E8005252E7005757
              F4005959F6005858F0005353E3005354E2005757E8005759E8005C5CF3005E5E
              F6005D5FF0006161F7006060F5005D5DEC006060F1005F5FF0006365F4006262
              E3006969E4006969E3007070E6006F70E5006F6FE4007676E6007676E5007575
              E4007576E4007C7CE6007C7CE5007B7CE4007F80E5008080E6008080E5008484
              E6008484E5008686E7008687E7008585E5008586E5008787E7008888E8008888
              E7008787E6008989E7008A8BE7008B8BE7008D8DE8008E8EE9008E8FE9009191
              E9009494EB009797EB009999EC009A9AEC009B9BEC009C9CEC009C9CEB00A0A0
              ED009F9FEC00A0A0EC00A2A2EE00A2A3ED00A4A4ED00AAAAF200ABABF300BBBB
              F500BABAF400BABBF400BBBBF400CCCCF700CBCCF600CCCCF600DBDBF900DBDB
              F800E9E9FB00F5F5FD001C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
              1C1C1C1C1C1C1C8E1C1C1C1C1C1C1C1C1C1C1C1C8E1C1C1C1C1C1C1C1C1C8E55
              8E1C1C1C1C1C1C1C1C1C1C8E548E1C1C1C1C1C1C1C1A5610578D1C1C1C1C1C1C
              1C1C8C0E5D578C1C1C1C1C1C8A505F600F4F891C1C1C1C1C1C890D5E605A4D8B
              1C1C1C88414B585B5C5349191C1C1C1C194853595B580C41881C1C1C86434A51
              524C4A0A871C1C18404A4E52514A43171C1C1C1C1C8439444647453F38858538
              3F450B464239841C1C1C1C1C1C1C1632373B3E3D373636093C3E3A3708831C1C
              1C1C1C1C1C1C1C8207303533343131343334302E151C1C1C1C1C1C1C1C1C1C1C
              14292B062C2C2F052D042A141C1C1C1C1C1C1C1C1C1C1C1C1C81222427262527
              2823811C1C1C1C1C1C1C1C1C1C1C1C1C1C801D1F212020031E027F1C1C1C1C1C
              1C1C1C1C1C1C1C1C7E618F9090909090908F617E1C1C1C1C1C1C1C1C1C1C1C7D
              6392939191949191919392627C1C1C1C1C1C1C1C1C1C7B66979795959764651B
              95959697667B1C1C1C1C1C1C1C796A999998989867797868989898999969791C
              1C1C1C1C136C9A9A9A9A9A11741C1C776B9A9A9A9A9A6D7A1C1C1C766E9B9B9B
              9B9B6F121C1C1C1C736F9B9B9B9B9B70761C1C1C757101010171751C1C1C1C1C
              1C757101010171751C1C1C1C1C75710171751C1C1C1C1C1C1C1C75710171751C
              1C1C1C1C1C1C7172711C1C1C1C1C1C1C1C1C1C7172711C1C1C1C1C1C1C1C1C71
              1C1C1C1C1C1C1C1C1C1C1C1C711C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C}
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 316
          Height = 295
          Align = alClient
          BevelInner = bvLowered
          Enabled = False
          TabOrder = 1
          object Label1: TLabel
            Left = 9
            Top = 8
            Width = 80
            Height = 16
            Caption = #1048#1085#1076#1077#1082#1089' '#1054#1055#1057
          end
          object Label2: TLabel
            Left = 179
            Top = 9
            Width = 131
            Height = 16
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1054#1055#1057
          end
          object Label3: TLabel
            Left = 11
            Top = 64
            Width = 242
            Height = 16
            Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072' '#1085#1072#1095#1072#1083#1100#1085#1080#1082#1072' '#1054#1055#1057
          end
          object IndT: TEdit
            Left = 100
            Top = 4
            Width = 73
            Height = 24
            MaxLength = 6
            TabOrder = 0
            OnExit = IndTExit
          end
          object NameT: TEdit
            Left = 8
            Top = 35
            Width = 301
            Height = 24
            MaxLength = 50
            TabOrder = 1
          end
          object MailT: TEdit
            Left = 8
            Top = 88
            Width = 300
            Height = 24
            MaxLength = 250
            TabOrder = 2
          end
        end
      end
      object Opstab: TDBGrid
        Left = 0
        Top = 0
        Width = 321
        Height = 332
        Align = alLeft
        DataSource = baza.Sql_Ops_Sprav_e
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = OpstabCellClick
        OnEnter = OpstabEnter
        OnKeyUp = OpstabKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'POSTINDEX'
            Title.Alignment = taCenter
            Title.Caption = #1048#1085#1076#1077#1082#1089
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPSNAME'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1054#1055#1057
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1080' '#1086#1096#1080#1073#1086#1082
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel4: TPanel
        Left = 321
        Top = 0
        Width = 316
        Height = 332
        Align = alClient
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 314
          Height = 293
          Align = alClient
          BevelInner = bvLowered
          Enabled = False
          TabOrder = 0
          object Label4: TLabel
            Left = 7
            Top = 8
            Width = 75
            Height = 16
            Caption = #1050#1086#1076' '#1086#1096#1080#1073#1082#1080
          end
          object Label5: TLabel
            Left = 165
            Top = 9
            Width = 133
            Height = 16
            Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1086#1096#1080#1073#1082#1080
          end
          object KodT: TEdit
            Left = 85
            Top = 4
            Width = 73
            Height = 24
            MaxLength = 4
            TabOrder = 0
          end
          object NamErT: TEdit
            Left = 8
            Top = 35
            Width = 301
            Height = 24
            MaxLength = 50
            TabOrder = 1
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 294
          Width = 314
          Height = 37
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 1
          object AddErBut: TSpeedButton
            Left = 4
            Top = 1
            Width = 61
            Height = 34
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
            OnClick = AddErButClick
          end
          object EditErBut: TSpeedButton
            Left = 65
            Top = 1
            Width = 62
            Height = 34
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
            OnClick = EditErButClick
          end
          object SavErBut: TSpeedButton
            Left = 190
            Top = 1
            Width = 62
            Height = 34
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
            OnClick = SavErButClick
          end
          object CanErBut: TSpeedButton
            Left = 252
            Top = 1
            Width = 62
            Height = 34
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
            OnClick = CanErButClick
          end
          object DelErBut: TSpeedButton
            Left = 127
            Top = 1
            Width = 62
            Height = 34
            Glyph.Data = {
              E6040000424DE604000000000000A60200002800000018000000180000000100
              08000000000040020000120B0000120B00009C0000009C00000000000000FFFF
              FF002322DC002826E4003331E6003635EA003634E9003433E1003B39E3004140
              EA004644E500514FF300514FEA005452E8005957E800605EF1005F5DEC007C7B
              E5008685E7008786E5009392EA009594EB009897EB009B9AEB009C9BEC009E9D
              ED00A3A2EE00CCCBF600FF00FF002222DD002525E2002526E2002727E4002828
              E4002829E0002929DF002B2DE5002D2EE7002E2EE8002E2EE7002D2DE5002D2D
              DF002E2EDF003131E6003535EA003436E9003333E1003636EA003838E8003A3A
              EA003939E3003D3DED003C3CEC003C3DEC003C3CE6004040EA003F3FE4004040
              E5004545EF004546EF004444EE004446EE004646F0004747EB004646E6004444
              E0004949ED004646E5004949EC004D4DF1004E4EF2004F4FF3004B4BE7004D4D
              E7005050EE005151EA005556F3005151E7005656F3005254E8005252E7005757
              F4005959F6005858F0005353E3005354E2005757E8005759E8005C5CF3005E5E
              F6005D5FF0006161F7006060F5005D5DEC006060F1005F5FF0006365F4006262
              E3006969E4006969E3007070E6006F70E5006F6FE4007676E6007676E5007575
              E4007576E4007C7CE6007C7CE5007B7CE4007F80E5008080E6008080E5008484
              E6008484E5008686E7008687E7008585E5008586E5008787E7008888E8008888
              E7008787E6008989E7008A8BE7008B8BE7008D8DE8008E8EE9008E8FE9009191
              E9009494EB009797EB009999EC009A9AEC009B9BEC009C9CEC009C9CEB00A0A0
              ED009F9FEC00A0A0EC00A2A2EE00A2A3ED00A4A4ED00AAAAF200ABABF300BBBB
              F500BABAF400BABBF400BBBBF400CCCCF700CBCCF600CCCCF600DBDBF900DBDB
              F800E9E9FB00F5F5FD001C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
              1C1C1C1C1C1C1C8E1C1C1C1C1C1C1C1C1C1C1C1C8E1C1C1C1C1C1C1C1C1C8E55
              8E1C1C1C1C1C1C1C1C1C1C8E548E1C1C1C1C1C1C1C1A5610578D1C1C1C1C1C1C
              1C1C8C0E5D578C1C1C1C1C1C8A505F600F4F891C1C1C1C1C1C890D5E605A4D8B
              1C1C1C88414B585B5C5349191C1C1C1C194853595B580C41881C1C1C86434A51
              524C4A0A871C1C18404A4E52514A43171C1C1C1C1C8439444647453F38858538
              3F450B464239841C1C1C1C1C1C1C1632373B3E3D373636093C3E3A3708831C1C
              1C1C1C1C1C1C1C8207303533343131343334302E151C1C1C1C1C1C1C1C1C1C1C
              14292B062C2C2F052D042A141C1C1C1C1C1C1C1C1C1C1C1C1C81222427262527
              2823811C1C1C1C1C1C1C1C1C1C1C1C1C1C801D1F212020031E027F1C1C1C1C1C
              1C1C1C1C1C1C1C1C7E618F9090909090908F617E1C1C1C1C1C1C1C1C1C1C1C7D
              6392939191949191919392627C1C1C1C1C1C1C1C1C1C7B66979795959764651B
              95959697667B1C1C1C1C1C1C1C796A999998989867797868989898999969791C
              1C1C1C1C136C9A9A9A9A9A11741C1C776B9A9A9A9A9A6D7A1C1C1C766E9B9B9B
              9B9B6F121C1C1C1C736F9B9B9B9B9B70761C1C1C757101010171751C1C1C1C1C
              1C757101010171751C1C1C1C1C75710171751C1C1C1C1C1C1C1C75710171751C
              1C1C1C1C1C1C7172711C1C1C1C1C1C1C1C1C1C7172711C1C1C1C1C1C1C1C1C71
              1C1C1C1C1C1C1C1C1C1C1C1C711C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C}
          end
        end
      end
      object SpravErTab: TDBGrid
        Left = 0
        Top = 0
        Width = 321
        Height = 332
        Align = alLeft
        DataSource = baza.sql_error_e
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 0
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = SpravErTabCellClick
        OnDblClick = SpravErTabDblClick
        OnEnter = SpravErTabEnter
        OnKeyUp = SpravErTabKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'NumError'
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TextError'
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1096#1080#1073#1082#1080
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = 0
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 363
    Width = 645
    Height = 19
    Panels = <>
  end
end
