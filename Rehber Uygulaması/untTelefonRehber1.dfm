object TelefonRehberi: TTelefonRehberi
  Left = 0
  Top = 0
  Caption = 'TelefonRehberi'
  ClientHeight = 412
  ClientWidth = 771
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 24
    Width = 13
    Height = 13
    Caption = 'Ad'
  end
  object Label2: TLabel
    Left = 36
    Top = 51
    Width = 30
    Height = 13
    Caption = 'Soyad'
  end
  object Label3: TLabel
    Left = 36
    Top = 78
    Width = 30
    Height = 13
    Caption = 'Tel No'
  end
  object Label4: TLabel
    Left = 36
    Top = 105
    Width = 28
    Height = 13
    Caption = 'Ev No'
  end
  object Label5: TLabel
    Left = 36
    Top = 132
    Width = 28
    Height = 13
    Caption = 'Adres'
  end
  object Label6: TLabel
    Left = 33
    Top = 164
    Width = 32
    Height = 13
    Caption = 'Meslek'
  end
  object Label7: TLabel
    Left = 33
    Top = 191
    Width = 31
    Height = 13
    Caption = 'Durum'
  end
  object Label8: TLabel
    Left = 8
    Top = 261
    Width = 82
    Height = 16
    Caption = 'Rehber Listem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 112
    Top = -1
    Width = 82
    Height = 16
    Caption = 'Yeni Kay'#305't Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 80
    Top = 21
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 80
    Top = 75
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 80
    Top = 102
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 80
    Top = 129
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 160
    Top = 216
    Width = 65
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 156
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      #214#287'renci'
      'Memur'
      'M'#252'hendis'
      'Doktor'
      'Mimar')
  end
  object ComboBox2: TComboBox
    Left = 80
    Top = 183
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'Aktif'
      'Pasif'
      '')
  end
  object ListBox1: TListBox
    Left = 0
    Top = 280
    Width = 771
    Height = 132
    Align = alBottom
    ItemHeight = 13
    TabOrder = 8
    OnClick = ListBox1Click
  end
  object Button2: TButton
    Left = 568
    Top = 150
    Width = 105
    Height = 34
    Caption = 'Ki'#351'iyi sil'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 666
    Top = 280
    Width = 105
    Height = 34
    Caption = 'Arama Yap'
    TabOrder = 10
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 568
    Top = 209
    Width = 105
    Height = 39
    Caption = 'Rehberi G'#252'ncelle'
    TabOrder = 11
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 80
    Top = 216
    Width = 64
    Height = 25
    Caption = 'Temizle'
    TabOrder = 12
    OnClick = Button6Click
  end
  object Edit6: TEdit
    Left = 513
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Button7: TButton
    Left = 432
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Ki'#351'iyi Bul'
    TabOrder = 14
    OnClick = Button7Click
  end
  object Button5: TButton
    Left = 568
    Top = 110
    Width = 105
    Height = 34
    Caption = 'Ki'#351'iyi G'#252'ncelle'
    TabOrder = 15
    OnClick = Button5Click
  end
end
