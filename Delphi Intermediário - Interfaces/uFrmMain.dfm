object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Interfaces'
  ClientHeight = 201
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblBase: TLabel
    Left = 16
    Top = 17
    Width = 27
    Height = 13
    Caption = 'Base:'
  end
  object LblExpoente: TLabel
    Left = 77
    Top = 0
    Width = 50
    Height = 13
    Caption = 'Expoente:'
  end
  object lblResultCalculo: TLabel
    Left = 166
    Top = 164
    Width = 91
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblLblPotencia: TLabel
    Left = 95
    Top = 164
    Width = 65
    Height = 19
    Caption = 'Pot'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtBase: TEdit
    Left = 16
    Top = 36
    Width = 55
    Height = 21
    Hint = 'Base'
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 0
  end
  object RGOpcaoCalculo: TRadioGroup
    Left = 16
    Top = 68
    Width = 241
    Height = 90
    Caption = 'Efetuar c'#225'lculo com:'
    TabOrder = 5
  end
  object rbTCalculadora: TRadioButton
    Left = 32
    Top = 88
    Width = 113
    Height = 17
    Caption = 'TCalculadora'
    TabOrder = 2
  end
  object rbTComputador: TRadioButton
    Left = 32
    Top = 119
    Width = 113
    Height = 17
    Caption = 'TComputador'
    TabOrder = 3
  end
  object btnBtnCalcular: TButton
    Left = 16
    Top = 164
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btnBtnCalcularClick
  end
  object edtExpoente: TEdit
    Left = 77
    Top = 19
    Width = 50
    Height = 21
    Hint = 'Expoente'
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 1
  end
end
