object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Example'
  ClientHeight = 309
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTecnologias: TLabel
    Left = 36
    Top = 22
    Width = 109
    Height = 25
    Caption = 'Tecnologias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelHabilidades: TLabel
    Left = 240
    Top = 22
    Width = 107
    Height = 25
    Caption = 'Habilidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SBtnAddTecnologia: TSpeedButton
    Left = 176
    Top = 100
    Width = 33
    Height = 22
    Caption = '>'
    OnClick = SBtnAddTecnologiaClick
  end
  object SBtnAddAllTecnologias: TSpeedButton
    Left = 176
    Top = 128
    Width = 33
    Height = 22
    Caption = '>>'
    OnClick = SBtnAddAllTecnologiasClick
  end
  object SBtnRemoveTecnologia: TSpeedButton
    Left = 176
    Top = 156
    Width = 33
    Height = 22
    Caption = '<'
    OnClick = SBtnRemoveTecnologiaClick
  end
  object SBtnRemveAllTecnologias: TSpeedButton
    Left = 176
    Top = 184
    Width = 33
    Height = 22
    Caption = '<<'
    OnClick = SBtnRemveAllTecnologiasClick
  end
  object LbxTecnologias: TListBox
    Left = 20
    Top = 53
    Width = 150
    Height = 228
    ItemHeight = 13
    Items.Strings = (
      'PHP'
      'Ruby'
      'Java SE'
      'Java J2EE'
      'Phyton'
      'Javascript'
      '.NET'
      'C'
      'C#'
      'C++')
    TabOrder = 0
    OnDragDrop = LbxTecnologiasDragDrop
    OnDragOver = LbxTecnologiasDragOver
  end
  object LbxHabilidades: TListBox
    Left = 215
    Top = 53
    Width = 150
    Height = 228
    ItemHeight = 13
    TabOrder = 1
    OnDragDrop = LbxHabilidadesDragDrop
    OnDragOver = LbxHabilidadesDragOver
  end
end
