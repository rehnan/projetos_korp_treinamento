object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Aula 46 - Identificando Exce'#231#245'es pelo tipo do objeto '
  ClientHeight = 157
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnCalcularExceptGenerico: TButton
    Left = 200
    Top = 23
    Width = 161
    Height = 49
    Caption = 'Calcular - Exce'#231#227'o Gen'#233'rica'
    TabOrder = 0
    OnClick = BtnCalcularExceptGenericoClick
  end
  object EdtNumero1: TEdit
    Left = 96
    Top = 24
    Width = 73
    Height = 21
    TabOrder = 1
  end
  object EdtNumero2: TEdit
    Left = 96
    Top = 64
    Width = 73
    Height = 21
    TabOrder = 2
  end
  object EdtResult: TEdit
    Left = 96
    Top = 104
    Width = 73
    Height = 21
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
  end
  object BtnTrataExceptEspecificas: TButton
    Left = 200
    Top = 78
    Width = 161
    Height = 47
    Caption = 'Calcular - Exce'#231#245'es Espec'#237'ficas'
    TabOrder = 4
    OnClick = BtnTrataExceptEspecificasClick
  end
end
