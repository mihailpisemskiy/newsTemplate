object Form1: TForm1
  Left = 669
  Top = 211
  Width = 825
  Height = 700
  Caption = #1057#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081' ('#1090#1072#1088#1080#1092#1099')'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 288
    Width = 54
    Height = 13
    Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
  end
  object Label2: TLabel
    Left = 224
    Top = 336
    Width = 31
    Height = 13
    Caption = #1040#1085#1086#1085#1089
  end
  object Label3: TLabel
    Left = 224
    Top = 408
    Width = 39
    Height = 13
    Caption = #1057#1089#1099#1083#1082#1080
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 156
    Height = 13
    Caption = #1044#1074#1086#1081#1085#1086#1081' '#1082#1083#1080#1082' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
  end
  object Label5: TLabel
    Left = 224
    Top = 48
    Width = 90
    Height = 13
    Caption = #1058#1077#1082#1089#1090' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 217
    Height = 89
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = #1042
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 48
      Width = 113
      Height = 17
      Caption = #1048#1079
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 24
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = #1043#1086#1088#1086#1076
    end
    object Edit1: TEdit
      Left = 64
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 3
      Text = #1044#1072#1090#1072' '#1044#1044'.'#1052#1052'.'#1043#1043
      OnClick = Edit1Click
    end
  end
  object Memo1: TMemo
    Left = 224
    Top = 64
    Width = 505
    Height = 209
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 8
    Width = 81
    Height = 25
    Caption = 'LETS GO'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkIgnore
  end
  object ListBox1: TListBox
    Left = 0
    Top = 120
    Width = 105
    Height = 537
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
    OnDblClick = ListBox1DblClick
  end
  object ListBox2: TListBox
    Left = 112
    Top = 120
    Width = 105
    Height = 537
    ItemHeight = 13
    Sorted = True
    TabOrder = 4
    OnDblClick = ListBox2DblClick
  end
  object Edit2: TEdit
    Left = 224
    Top = 304
    Width = 585
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 224
    Top = 352
    Width = 585
    Height = 21
    TabOrder = 6
  end
  object Memo2: TMemo
    Left = 224
    Top = 424
    Width = 585
    Height = 81
    TabOrder = 7
  end
  object Memo3: TMemo
    Left = 224
    Top = 512
    Width = 585
    Height = 89
    TabOrder = 8
  end
end
