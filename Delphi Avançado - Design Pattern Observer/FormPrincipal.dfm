object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Delphi Avan'#231'ado - Pattern Observer'
  ClientHeight = 395
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblLog: TLabel
    Left = 24
    Top = 197
    Width = 21
    Height = 13
    Caption = 'Log:'
  end
  object edtNomeAssnt: TEdit
    Left = 24
    Top = 24
    Width = 193
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object edtEmailAssnt: TEdit
    Left = 24
    Top = 51
    Width = 193
    Height = 21
    TabOrder = 1
    TextHint = 'Email'
  end
  object btnRegistrarAssnt: TButton
    Left = 24
    Top = 78
    Width = 193
    Height = 35
    Caption = 'Registrar Assinante'
    TabOrder = 2
    OnClick = btnRegistrarAssntClick
  end
  object btnPublicarPost: TButton
    Left = 24
    Top = 160
    Width = 193
    Height = 25
    Caption = 'Publicar Post'
    TabOrder = 3
    OnClick = btnPublicarPostClick
  end
  object edtPost: TEdit
    Left = 24
    Top = 133
    Width = 193
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TextHint = 'Post'
  end
  object lstAssinantes: TListBox
    Left = 240
    Top = 24
    Width = 354
    Height = 161
    ItemHeight = 13
    PopupMenu = PopupMenuAcoes
    TabOrder = 5
  end
  object mmoLog: TMemo
    Left = 24
    Top = 216
    Width = 570
    Height = 113
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object PopupMenuAcoes: TPopupMenu
    Left = 544
    Top = 8
    object RemoverAssinante1: TMenuItem
      Caption = 'Remover Assinante'
      OnClick = RemoverAssinante1Click
    end
    object VisualizarAssinante1: TMenuItem
      Caption = 'Visualizar Assinante'
    end
  end
end
