object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TCollection - Delphi Avan'#231'ado'
  ClientHeight = 260
  ClientWidth = 466
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
  object btnAddProduto: TButton
    Left = 8
    Top = 104
    Width = 121
    Height = 25
    Caption = 'Novo Produto'
    TabOrder = 3
    OnClick = btnAddProdutoClick
  end
  object edtNomeProduto: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 21
    Hint = 'Nome'
    TabOrder = 1
    TextHint = 'Nome'
  end
  object edtPrecoProduto: TEdit
    Left = 8
    Top = 67
    Width = 121
    Height = 21
    Hint = 'Pre'#231'o'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    TextHint = 'Pre'#231'o'
  end
  object edtCodProduto: TEdit
    Left = 8
    Top = 13
    Width = 121
    Height = 21
    Hint = 'C'#243'digo'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TextHint = 'C'#243'digo'
  end
  object lstProdutos: TListBox
    Left = 208
    Top = 29
    Width = 201
    Height = 164
    ItemHeight = 13
    TabOrder = 4
  end
end
