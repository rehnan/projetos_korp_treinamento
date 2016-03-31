object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 341
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 208
    Width = 62
    Height = 13
    Caption = 'Exemplo Set '
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 153
    Height = 73
    Caption = 'Tipos Personalizados'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 8
    Width = 169
    Height = 73
    Caption = 'Array Unidimensional'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 95
    Width = 153
    Height = 81
    Caption = 'Array Multidimensional'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 200
    Top = 104
    Width = 169
    Height = 72
    Caption = 'Array Din'#226'mica'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 100
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit1KeyPress
  end
  object Button5: TButton
    Left = 48
    Top = 256
    Width = 273
    Height = 61
    Caption = 'Exemplo Record (Save datas)'
    TabOrder = 5
    OnClick = Button5Click
  end
end
