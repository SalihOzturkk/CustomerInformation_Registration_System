object Form1: TForm1
  Left = 425
  Top = 265
  BorderStyle = bsToolWindow
  Caption = #304'LK KAYIT UYGULAMASI'
  ClientHeight = 421
  ClientWidth = 704
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 376
    Top = 8
    Width = 6
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 209
    Height = 28
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 48
    Width = 209
    Height = 28
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 80
    Width = 209
    Height = 28
    Style = csDropDownList
    ItemHeight = 20
    Sorted = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 16
    Top = 112
    Width = 89
    Height = 28
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 136
    Top = 112
    Width = 89
    Height = 28
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 264
    Top = 40
    Width = 97
    Height = 17
    Caption = 'EVL'#304
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 264
    Top = 64
    Width = 97
    Height = 17
    Caption = 'BEKAR'
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object Edit5: TEdit
    Left = 264
    Top = 112
    Width = 313
    Height = 28
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 32
    Width = 201
    Height = 73
    Cursor = crHandPoint
    Caption = 'S'#304'STEME KAYDET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 234
    Width = 704
    Height = 187
    Align = alBottom
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 72
    Top = 80
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 296
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 328
    Top = 288
  end
end
