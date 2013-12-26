object Form3: TForm3
  Left = 531
  Top = 211
  Width = 560
  Height = 398
  Caption = 'Bevételek / Kiadások kezelése'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 320
    Top = 16
    Width = 67
    Height = 13
    Caption = 'Költség típus: '
  end
  object Label2: TLabel
    Left = 320
    Top = 41
    Width = 108
    Height = 13
    Caption = 'Érvényesség kezdete: '
  end
  object Label3: TLabel
    Left = 432
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 432
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label5: TLabel
    Left = 16
    Top = 16
    Width = 67
    Height = 13
    Caption = 'Megnevezés: '
  end
  object Label6: TLabel
    Left = 16
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Érték: '
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 537
    Height = 233
    DataSource = HM_DSQCharges
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'chid'
        Title.Caption = 'Azonosító'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'description'
        Title.Caption = 'Megnevezés'
        Width = 174
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
  object DBEdit1: TDBEdit
    Left = 136
    Top = 12
    Width = 177
    Height = 21
    DataField = 'description'
    DataSource = HM_DSTCharges
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 136
    Top = 36
    Width = 177
    Height = 21
    DataField = 'value'
    DataSource = HM_DSTCharges
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 64
    Width = 113
    Height = 17
    Caption = 'Érvényesség vége: '
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 136
    Top = 62
    Width = 177
    Height = 21
    CalAlignment = dtaLeft
    Date = 41626.5832353125
    Time = 41626.5832353125
    DateFormat = dfShort
    DateMode = dmComboBox
    Enabled = False
    Kind = dtkDate
    ParseInput = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 472
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Bezárás'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 384
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Mentés'
    TabOrder = 6
    OnClick = Button2Click
  end
  object HM_EEndSp: TDBEdit
    Left = 560
    Top = 8
    Width = 121
    Height = 21
    DataField = 'endsp'
    DataSource = HM_DSTCharges
    TabOrder = 7
    Visible = False
  end
  object HM_EBegSp: TDBEdit
    Left = 560
    Top = 40
    Width = 121
    Height = 21
    DataField = 'begsp'
    DataSource = HM_DSTCharges
    TabOrder = 8
    Visible = False
  end
  object HM_EChType: TDBEdit
    Left = 560
    Top = 72
    Width = 121
    Height = 21
    DataField = 'chtype'
    DataSource = HM_DSTCharges
    TabOrder = 9
    Visible = False
  end
  object HM_EInsSp: TDBEdit
    Left = 560
    Top = 104
    Width = 121
    Height = 21
    DataField = 'inssp'
    DataSource = HM_DSTCharges
    TabOrder = 10
    Visible = False
  end
  object HM_EIsInbound: TDBEdit
    Left = 560
    Top = 136
    Width = 121
    Height = 21
    DataField = 'isinbound'
    DataSource = HM_DSTCharges
    TabOrder = 11
    Visible = False
  end
  object Button3: TButton
    Left = 296
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Törlés'
    TabOrder = 12
    OnClick = Button3Click
  end
  object HM_EDelEndSp: TDBEdit
    Left = 560
    Top = 264
    Width = 121
    Height = 21
    DataField = 'endsp'
    DataSource = HM_DSTChargesDelete
    TabOrder = 13
    Visible = False
  end
  object HM_EDelBegSp: TDBEdit
    Left = 560
    Top = 240
    Width = 121
    Height = 21
    DataField = 'begsp'
    DataSource = HM_DSTChargesDelete
    TabOrder = 14
    Visible = False
  end
  object HM_TCharges: TmySQLTable
    Database = Form2.HM_CHDB
    Active = True
    FieldDefs = <
      item
        Name = 'chid'
        DataType = ftAutoInc
      end
      item
        Name = 'inssp'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'begsp'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'endsp'
        DataType = ftDate
      end
      item
        Name = 'isinbound'
        DataType = ftSmallint
      end
      item
        Name = 'chtype'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'value'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'description'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Fields = 'chid'
        Options = [ixPrimary, ixUnique, ixCaseInsensitive]
      end
      item
        Name = 'IDX_BOUND'
        Fields = 'begsp;endsp;isinbound;chtype'
      end>
    IndexFieldNames = 'begsp;endsp;isinbound;chtype'
    StoreDefs = True
    TableName = 'charges'
    Left = 336
    Top = 64
  end
  object HM_DSTCharges: TDataSource
    DataSet = HM_TCharges
    Left = 376
    Top = 64
  end
  object HM_QCharges: TmySQLQuery
    AutoRefresh = True
    Database = Form2.HM_CHDB
    Active = True
    SQL.Strings = (
      'select'
      '   *'
      'from'
      '   charges'
      'where'
      '   begsp <= :begsp AND'
      '   (endsp is NULL OR endsp >=  :begsp)  AND'
      '   chtype = :chtype'
      'order by'
      '   chid desc;')
    Left = 8
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'begsp'
        ParamType = ptUnknown
        Value = '2013-12-01'
      end
      item
        DataType = ftString
        Name = 'chtype'
        ParamType = ptUnknown
        Value = 'BILL'
      end>
  end
  object HM_DSQCharges: TDataSource
    DataSet = HM_QCharges
    Left = 40
    Top = 336
  end
  object HM_TChargesDelete: TmySQLTable
    Database = Form2.HM_CHDB
    Active = True
    IndexFieldNames = 'chid'
    MasterFields = 'chid'
    MasterSource = HM_DSQCharges
    TableName = 'charges'
    Left = 80
    Top = 336
  end
  object HM_DSTChargesDelete: TDataSource
    DataSet = HM_TChargesDelete
    Left = 112
    Top = 336
  end
end
