object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi Intermedi'#225'rio'
  ClientHeight = 261
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 17
    Width = 401
    Height = 105
    Caption = 'Carro'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 142
      Top = 13
      Width = 56
      Height = 13
      Caption = 'Capacidade'
    end
    object Label3: TLabel
      Left = 269
      Top = 16
      Width = 72
      Height = 13
      Caption = 'Quilometragem'
    end
    object EdtDescCarro: TEdit
      Left = 15
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'EdtDescCarro'
    end
    object EdtCapCarro: TEdit
      Left = 142
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'EdtCapCarro'
    end
    object EdtQuilometragem: TEdit
      Left = 269
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'EdtQuilometragem'
    end
    object BtnCriarCarro: TButton
      Left = 16
      Top = 72
      Width = 105
      Height = 25
      Caption = 'Criar'
      TabOrder = 3
      OnClick = BtnCriarCarroClick
    end
    object BtnLiberarCarro: TButton
      Left = 142
      Top = 72
      Width = 107
      Height = 25
      Caption = 'Liberar'
      TabOrder = 4
      OnClick = BtnLiberarCarroClick
    end
    object Button1: TButton
      Left = 269
      Top = 70
      Width = 116
      Height = 25
      Caption = 'Mover'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 128
    Width = 401
    Height = 113
    Caption = 'Avi'#227'o'
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 21
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label5: TLabel
      Left = 142
      Top = 21
      Width = 56
      Height = 13
      Caption = 'Capacidade'
    end
    object Label6: TLabel
      Left = 269
      Top = 21
      Width = 72
      Height = 13
      Caption = 'Quilometragem'
    end
    object BtnMover: TButton
      Left = 269
      Top = 77
      Width = 116
      Height = 25
      Caption = 'Mover'
      TabOrder = 0
    end
  end
  object EdtDescAviao: TEdit
    Left = 39
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'EdtDescAviao'
  end
  object EdtCapAviao: TEdit
    Left = 166
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'EdtCapAviao'
  end
  object EdtHorasVoo: TEdit
    Left = 293
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'EdtHorasVoo'
  end
  object BtnCriarAviao: TButton
    Left = 40
    Top = 208
    Width = 105
    Height = 25
    Caption = 'Criar'
    TabOrder = 5
    OnClick = BtnCriarAviaoClick
  end
  object BtnLberarAviao: TButton
    Left = 166
    Top = 208
    Width = 107
    Height = 25
    Caption = 'Liberar'
    TabOrder = 6
    OnClick = BtnLberarAviaoClick
  end
end
