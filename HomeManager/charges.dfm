object Form2: TForm2
  Left = 174
  Top = 153
  Width = 775
  Height = 600
  Caption = 'Bevétel / Kiadás nyilvántartás'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Csekkek: '
  end
  object Label2: TLabel
    Left = 10
    Top = 248
    Width = 114
    Height = 13
    Caption = 'Rendszeres levonások: '
  end
  object Label3: TLabel
    Left = 304
    Top = 16
    Width = 58
    Height = 13
    Caption = 'Vásárlások: '
  end
  object Label4: TLabel
    Left = 304
    Top = 248
    Width = 53
    Height = 13
    Caption = 'Tankolás : '
  end
  object Label5: TLabel
    Left = 584
    Top = 192
    Width = 165
    Height = 13
    Caption = 'Elõzõ hónap hiány / megtakarítás :'
  end
  object Label6: TLabel
    Left = 584
    Top = 240
    Width = 78
    Height = 13
    Caption = 'Összes bevétel :'
  end
  object Label7: TLabel
    Left = 584
    Top = 288
    Width = 74
    Height = 13
    Caption = 'Összes kiadás :'
  end
  object DBText1: TDBText
    Left = 584
    Top = 216
    Width = 65
    Height = 17
  end
  object DBText2: TDBText
    Left = 584
    Top = 264
    Width = 65
    Height = 17
  end
  object DBText3: TDBText
    Left = 584
    Top = 312
    Width = 65
    Height = 17
  end
  object Label9: TLabel
    Left = 10
    Top = 408
    Width = 54
    Height = 13
    Caption = 'Bevételek: '
  end
  object MonthCalendar1: TMonthCalendar
    Left = 576
    Top = 16
    Width = 191
    Height = 154
    Date = 41625
    TabOrder = 0
    OnClick = MonthCalendar1Click
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 48
    Width = 249
    Height = 185
    DataSource = DSBill
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Title.Caption = 'Érték'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 144
    Top = 248
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 10
    Top = 280
    Width = 249
    Height = 113
    DataSource = DSRegularBill
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Title.Caption = 'Érték'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 304
    Top = 48
    Width = 249
    Height = 185
    DataSource = DSShopping
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Title.Caption = 'Érték'
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 304
    Top = 280
    Width = 249
    Height = 113
    DataSource = DSFuel
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Title.Caption = 'Érték'
        Visible = True
      end>
  end
  object Button5: TButton
    Left = 684
    Top = 535
    Width = 75
    Height = 25
    Caption = 'Bezárás'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 144
    Top = 16
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 248
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 440
    Top = 16
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 438
    Top = 408
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 10
    OnClick = Button6Click
  end
  object DBGrid5: TDBGrid
    Left = 10
    Top = 440
    Width = 543
    Height = 120
    DataSource = HM_CHDSInbound
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'value'
        Title.Caption = 'Érték'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'begsp'
        Title.Caption = 'Érvényesség kezdete'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endsp'
        Title.Caption = 'Érvényesség vége'
        Visible = True
      end>
  end
  object DSRegularBill: TDataSource
    DataSet = HM_CHQRegularBill
    Left = 264
    Top = 312
  end
  object DSFuel: TDataSource
    DataSet = HM_CHQFuel
    Left = 264
    Top = 384
  end
  object DSBill: TDataSource
    DataSet = HM_CHQBill
    Left = 264
    Top = 80
  end
  object DSShopping: TDataSource
    DataSet = HM_CHQShoping
    Left = 264
    Top = 152
  end
  object HM_CHDB: TmySQLDatabase
    Connected = True
    DatabaseName = 'home_manager'
    UserName = 'home_manager'
    UserPassword = 'kukacka'
    Host = '127.0.0.1'
    ConnectOptions = [coCompress]
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'Host=127.0.0.1'
      'UID=home_manager'
      'PWD=kukacka'
      'DatabaseName=home_manager')
    DatasetOptions = []
    Left = 568
    Top = 528
  end
  object HM_CHQInbound: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '           isinbound;')
    Left = 96
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object HM_CHDSInbound: TDataSource
    DataSet = HM_CHQInbound
    Left = 128
    Top = 408
  end
  object HM_CHQBill: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp) AND'
      '          chtype = '#39'BILL'#39';')
    Left = 264
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object HM_CHQRegularBill: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '          (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'REGBILL'#39';')
    Left = 264
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object HM_CHQShoping: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'SHOP'#39';')
    Left = 264
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object HM_CHQFuel: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'FUEL'#39';')
    Left = 264
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
end
