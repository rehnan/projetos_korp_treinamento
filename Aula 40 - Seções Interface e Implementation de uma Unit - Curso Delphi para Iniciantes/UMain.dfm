object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi OO'
  ClientHeight = 372
  ClientWidth = 505
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
  object LabelNome: TLabel
    Left = 8
    Top = 30
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label1: TLabel
    Left = 8
    Top = 57
    Width = 32
    Height = 13
    Caption = 'Idade:'
  end
  object LabelProfissao: TLabel
    Left = 8
    Top = 89
    Width = 48
    Height = 13
    Caption = 'Profiss'#227'o:'
  end
  object BtnCreateInstance: TButton
    Left = 290
    Top = 8
    Width = 189
    Height = 119
    Caption = 'Criar Nova Inst'#226'ncia'
    TabOrder = 3
    OnClick = BtnCreateInstanceClick
  end
  object EditNome: TEdit
    Left = 45
    Top = 27
    Width = 204
    Height = 21
    MaxLength = 20
    TabOrder = 0
  end
  object EditIdade: TEdit
    Left = 46
    Top = 54
    Width = 33
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 1
  end
  object EditProfissao: TEdit
    Left = 62
    Top = 81
    Width = 187
    Height = 21
    MaxLength = 30
    TabOrder = 2
  end
  object StringGridClientes: TStringGrid
    Left = -6
    Top = 147
    Width = 503
    Height = 217
    ColCount = 4
    DoubleBuffered = False
    DrawingStyle = gdsGradient
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    ParentDoubleBuffered = False
    ParentShowHint = False
    PopupMenu = PopupMenuDetalhesObjeto
    ShowHint = False
    TabOrder = 4
    ColWidths = (
      34
      168
      34
      239)
    RowHeights = (
      24)
  end
  object PopupMenuDetalhesObjeto: TPopupMenu
    Left = 192
    Top = 104
    object ExbieDetalhes: TMenuItem
      Caption = 'Propriedades'
    end
  end
end
