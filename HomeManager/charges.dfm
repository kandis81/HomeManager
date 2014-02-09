object InOutBoundMain: TInOutBoundMain
  Left = 406
  Top = 237
  Width = 776
  Height = 614
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
    Top = 256
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
    Top = 256
    Width = 53
    Height = 13
    Caption = 'Tankolás : '
  end
  object Label5: TLabel
    Left = 584
    Top = 192
    Width = 99
    Height = 13
    Caption = 'Hiány / megtakarítás'
  end
  object Label6: TLabel
    Left = 584
    Top = 248
    Width = 42
    Height = 13
    Caption = 'Bevétel :'
  end
  object Label7: TLabel
    Left = 721
    Top = 248
    Width = 38
    Height = 13
    Caption = 'Kiadás :'
  end
  object DIFF_PrevMonth: TDBText
    Left = 584
    Top = 224
    Width = 65
    Height = 17
    DataField = 'value'
    DataSource = DSDiff_PrevMonth
  end
  object Label9: TLabel
    Left = 10
    Top = 424
    Width = 54
    Height = 13
    Caption = 'Bevételek: '
  end
  object Label8: TLabel
    Left = 10
    Top = 238
    Width = 52
    Height = 13
    Caption = 'Összesen: '
  end
  object SUM_Bill: TDBText
    Left = 194
    Top = 236
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'summary'
    DataSource = DSSUM_Bill
  end
  object Label10: TLabel
    Left = 306
    Top = 238
    Width = 52
    Height = 13
    Caption = 'Összesen: '
  end
  object SUM_Shopping: TDBText
    Left = 488
    Top = 236
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'summary'
    DataSource = DSSUM_Shopping
  end
  object Label11: TLabel
    Left = 10
    Top = 406
    Width = 52
    Height = 13
    Caption = 'Összesen: '
  end
  object SUM_RegularBill: TDBText
    Left = 194
    Top = 404
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'summary'
    DataSource = DSSUM_RegularBill
  end
  object Label12: TLabel
    Left = 306
    Top = 406
    Width = 52
    Height = 13
    Caption = 'Összesen: '
  end
  object SUM_Fuel: TDBText
    Left = 488
    Top = 404
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'summary'
    DataSource = DSSUM_Fuel
  end
  object SUM_Inbound: TDBText
    Left = 584
    Top = 264
    Width = 65
    Height = 17
    DataField = 'summary'
    DataSource = DSSUM_Inbound
  end
  object DIFF_ActMonth: TDBText
    Left = 694
    Top = 224
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'value'
    DataSource = DSDiff_ActMonth
  end
  object Label13: TLabel
    Left = 584
    Top = 208
    Width = 65
    Height = 13
    Caption = 'Elõzõ hónap: '
  end
  object Label14: TLabel
    Left = 686
    Top = 208
    Width = 73
    Height = 13
    Caption = 'Aktuális hónap:'
  end
  object SUM_Outbound: TDBText
    Left = 694
    Top = 264
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'summary'
    DataSource = DSSUM_Outbund
  end
  object Diff_ChId: TDBText
    Left = 888
    Top = 16
    Width = 65
    Height = 17
    DataField = 'chid'
    DataSource = DSDiff_ActMonth
    Visible = False
  end
  object MonthCalendar1: TMonthCalendar
    Left = 576
    Top = 16
    Width = 191
    Height = 154
    Date = 41625.4849462847
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
    Top = 256
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 10
    Top = 288
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
    Top = 288
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
    Top = 551
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
    Top = 256
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
    Top = 424
    Width = 115
    Height = 25
    Caption = 'Hozzáad / Eltávolít'
    TabOrder = 10
    OnClick = Button6Click
  end
  object DBGrid5: TDBGrid
    Left = 10
    Top = 456
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
  object Diff_Grid: TDBGrid
    Left = 784
    Top = 80
    Width = 320
    Height = 120
    DataSource = DSDiff_ActMonthE
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DSRegularBill: TDataSource
    DataSet = HM_CHQRegularBill
    Left = 784
    Top = 448
  end
  object DSFuel: TDataSource
    DataSet = HM_CHQFuel
    Left = 896
    Top = 448
  end
  object DSBill: TDataSource
    DataSet = HM_CHQBill
    Left = 784
    Top = 376
  end
  object DSShopping: TDataSource
    DataSet = HM_CHQShoping
    Left = 896
    Top = 376
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
    Left = 560
    Top = 544
  end
  object HM_CHQInbound: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '           isinbound > 0;')
    Left = 96
    Top = 424
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
    Top = 424
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
    Left = 784
    Top = 344
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
    Left = 784
    Top = 416
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
    Left = 896
    Top = 344
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
    Left = 896
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object HM_QCache: TmySQLQuery
    Database = HM_CHDB
    SQL.Strings = (
      'SELECT *'
      'FROM    cache_charges_monthly'
      'WHERE chargesp = :chsp OR'
      '               chargesp = :pchsp'
      'ORDER BY chargesp;')
    Left = 560
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'chsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end
      item
        DataType = ftUnknown
        Name = 'pchsp'
        ParamType = ptUnknown
      end>
  end
  object HM_CHQSUM_Bill: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp) AND'
      '          chtype = '#39'BILL'#39';')
    Left = 816
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_Bill: TDataSource
    DataSet = HM_CHQSUM_Bill
    Left = 816
    Top = 376
  end
  object HM_CHQSUM_Shopping: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'SHOP'#39';')
    Left = 864
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_Shopping: TDataSource
    DataSet = HM_CHQSUM_Shopping
    Left = 864
    Top = 376
  end
  object HM_CHQSUM_RegularBill: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '          (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'REGBILL'#39';')
    Left = 816
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_RegularBill: TDataSource
    DataSet = HM_CHQSUM_RegularBill
    Left = 816
    Top = 448
  end
  object HM_CHQSUM_Fuel: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'FUEL'#39';')
    Left = 864
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_Fuel: TDataSource
    DataSet = HM_CHQSUM_Fuel
    Left = 864
    Top = 448
  end
  object HM_CHQSUM_Inbound: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '           isinbound > 0;')
    Left = 168
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_Inbound: TDataSource
    DataSet = HM_CHQSUM_Inbound
    Left = 200
    Top = 424
  end
  object HM_CHQSUM_Outbund: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select sum(value) summary'
      'from    charges '
      'where  begsp <= :begsp AND'
      '           (endsp is NULL OR endsp >=  :begsp)  AND'
      '           isinbound = 0 AND'
      '          chtype != '#39'DIFF'#39';')
    Left = 840
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end>
  end
  object DSSUM_Outbund: TDataSource
    DataSet = HM_CHQSUM_Outbund
    Left = 840
    Top = 520
  end
  object HM_CHQDiff_PrevMonth: TmySQLQuery
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      '          (endsp is NULL OR endsp >=  :begsp)  AND'
      '          chtype = '#39'DIFF'#39';')
    Left = 784
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-11-01'
      end>
  end
  object DSDiff_PrevMonth: TDataSource
    DataSet = HM_CHQDiff_PrevMonth
    Left = 784
    Top = 48
  end
  object HM_CHQDiff_ActMonth: TmySQLQuery
    AutoRefresh = True
    Database = HM_CHDB
    Active = True
    SQL.Strings = (
      'select * '
      'from    charges '
      'where  begsp <= :begsp AND'
      
        '          (endsp is NULL OR endsp >=  :begsp)  AND chtype = '#39'DIF' +
        'F'#39';')
    Left = 816
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
      end>
  end
  object DSDiff_ActMonth: TDataSource
    DataSet = HM_CHQDiff_ActMonth
    Left = 816
    Top = 48
  end
  object HM_CHTDiff_ActMonth: TmySQLTable
    Database = HM_CHDB
    Active = True
    IndexFieldNames = 'chid'
    MasterFields = 'chid'
    MasterSource = DSDiff_ActMonth
    TableName = 'charges'
    UpdateMode = upWhereChanged
    Left = 848
    Top = 16
  end
  object DSDiff_ActMonthE: TDataSource
    DataSet = HM_CHTDiff_ActMonth
    Left = 848
    Top = 48
  end
end
