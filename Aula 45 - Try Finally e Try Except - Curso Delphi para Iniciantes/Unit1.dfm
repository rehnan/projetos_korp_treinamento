object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Aula 45 - Try Finally e Try Except'
  ClientHeight = 202
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnNaoTratarException: TButton
    Left = 8
    Top = 32
    Width = 201
    Height = 57
    Caption = 'N'#227'o tratar Excess'#227'o'
    TabOrder = 0
    OnClick = BtnNaoTratarExceptionClick
  end
  object BtnTratarException: TButton
    Left = 247
    Top = 32
    Width = 234
    Height = 57
    Caption = 'Tratar Excess'#227'o com Try-Except'
    TabOrder = 1
    OnClick = BtnTratarExceptionClick
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 201
    Height = 57
    Caption = 'Tratar Excess'#227'o com Try-Finally'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 247
    Top = 112
    Width = 234
    Height = 57
    Caption = 'Tratar Excess'#227'o Com Try-Finally e Try-Except'
    TabOrder = 3
    OnClick = Button2Click
  end
end
