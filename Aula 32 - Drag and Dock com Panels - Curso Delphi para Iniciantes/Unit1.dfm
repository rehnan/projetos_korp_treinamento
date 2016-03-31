object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMenuEsquerdo: TPanel
    Left = 0
    Top = 56
    Width = 185
    Height = 302
    Align = alLeft
    BevelOuter = bvNone
    DockSite = True
    PopupMenu = PopupMenuCustomize
    TabOrder = 0
    ExplicitTop = 96
    ExplicitHeight = 265
    object PanelPropriedades: TPanel
      Left = 0
      Top = 40
      Width = 185
      Height = 137
      Caption = 'Propriedades'
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 0
    end
  end
  object PanelMenuDireita: TPanel
    Left = 455
    Top = 56
    Width = 185
    Height = 302
    Align = alRight
    BevelOuter = bvNone
    DockSite = True
    TabOrder = 1
    ExplicitTop = 62
    object PanelFerramentas: TPanel
      Left = 0
      Top = 47
      Width = 193
      Height = 123
      Caption = 'Ferramentas'
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 0
    end
  end
  object PanelMenuCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    DockSite = True
    PopupMenu = PopupMenuCustomize
    TabOrder = 2
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 0
      Top = 0
      Width = 640
      Height = 25
      ActionManager = ActionManagerMenuOpcoes
      Caption = 'Menu de Op'#231'oes'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
      ExplicitHeight = 49
    end
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 33
    Width = 640
    Height = 23
    ActionManager = ActionManagerMenuOpcoes
    Caption = 'ActionToolBar1'
    Color = clMenuBar
    ColorMap.DisabledFontColor = 7171437
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedFont = clBlack
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Spacing = 0
  end
  object ActionManagerMenuOpcoes: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coAll
        Items = <>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Items = <
              item
                Action = ActCliente
                Caption = '&Clientes'
              end
              item
                Action = ActCadastro
                Caption = '&Fornecedores'
              end
              item
                Action = ActProdutos
                Caption = '&Produtos'
              end>
            Caption = '&Cadastro'
          end
          item
            Items = <
              item
                Action = ActContasAPagar
                Caption = '&Contas a Receber'
              end
              item
                Action = ActRelatorios
                Caption = '&Relat'#243'rios'
              end>
            Caption = '&Financeiro'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 280
    Top = 120
    StyleName = 'Platform Default'
    object ActCliente: TAction
      Category = 'Cadastro'
      Caption = 'Clientes'
      OnExecute = ActClienteExecute
    end
    object ActCadastro: TAction
      Category = 'Cadastro'
      Caption = 'Fornecedores'
      OnExecute = ActCadastroExecute
    end
    object ActProdutos: TAction
      Category = 'Cadastro'
      Caption = 'Produtos'
      OnExecute = ActProdutosExecute
    end
    object ActContasAPagar: TAction
      Category = 'Financeiro'
      Caption = 'Contas a Receber'
      OnExecute = ActContasAPagarExecute
    end
    object ActRelatorios: TAction
      Category = 'Financeiro'
      Caption = 'Relat'#243'rios'
      OnExecute = ActRelatoriosExecute
    end
  end
  object PopupMenuCustomize: TPopupMenu
    Left = 216
    Top = 184
    object PopUpPersonlizar: TMenuItem
      Caption = 'Personlizar'
      OnClick = PopUpPersonlizarClick
    end
  end
  object CustomizeDlgMenu: TCustomizeDlg
    ActionManager = ActionManagerMenuOpcoes
    StayOnTop = False
    Left = 336
    Top = 184
  end
end
