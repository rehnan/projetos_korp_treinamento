object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi Avan'#231'ado - Diretiva Overload (Sobrecarga)'
  ClientHeight = 149
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edt1De1Parametro: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TextHint = 'Param String'
  end
  object edt1De2Parametros: TEdit
    Left = 24
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Param String'
  end
  object edt2De2Parametros: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Param Integer'
  end
  object edt1De3Parametros: TEdit
    Left = 24
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    TextHint = 'Param String'
  end
  object edt2De3Parametros: TEdit
    Left = 168
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Param Integer'
  end
  object edt3De3Parametros: TEdit
    Left = 304
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Param Float'
  end
  object Button1: TButton
    Left = 168
    Top = 22
    Width = 177
    Height = 25
    Caption = 'Chamar exibeMessage com 1 par'#226'metro'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 62
    Width = 201
    Height = 25
    Caption = 'Chamar exibeMessage com 2 par'#226'metro'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 440
    Top = 102
    Width = 201
    Height = 25
    Caption = 'Chamar exibeMessage com 3 par'#226'metro'
    TabOrder = 8
    OnClick = Button3Click
  end
end
