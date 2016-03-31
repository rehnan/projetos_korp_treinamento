object Form1: TForm1
  Left = 438
  Top = 219
  Action = EstoqueCadProd
  Caption = 'Cadastro de Produtos'
  ClientHeight = 393
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  OnClick = EstoqueCadProdExecute
  PixelsPerInch = 96
  TextHeight = 13
  object RibbonMenu: TRibbon
    Left = 0
    Top = 0
    Width = 576
    Height = 143
    ActionManager = ActManagerToRibbonMenu
    ApplicationMenu.Menu = RibbonApplicationMenuBar1
    Caption = 'Ribbon Menu'
    QuickAccessToolbar.ActionBar = RibbonQuickAccessToolbar1
    Tabs = <
      item
        Caption = 'Estoque'
        Page = AbaEstoque
      end
      item
        Caption = 'Compras'
        Page = AbaCompras
      end
      item
        Caption = 'Vendas'
        Page = AbaVendas
      end>
    ExplicitLeft = 400
    ExplicitTop = 176
    ExplicitWidth = 0
    DesignSize = (
      576
      143)
    StyleName = 'Ribbon - Luna'
    object AbaVendas: TRibbonPage
      Left = 0
      Top = 50
      Width = 575
      Height = 93
      Caption = 'Vendas'
      Index = 2
      object GVendasNFE: TRibbonGroup
        Left = 4
        Top = 3
        Width = 85
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'NFE'
        GroupIndex = 0
      end
      object GVendasRels: TRibbonGroup
        Left = 91
        Top = 3
        Width = 113
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'Relat'#243'rios'
        GroupIndex = 1
      end
    end
    object RibbonApplicationMenuBar1: TRibbonApplicationMenuBar
      ActionManager = ActManagerToRibbonMenu
      OptionItems = <>
      RecentItems = <>
    end
    object AbaCompras: TRibbonPage
      Left = 0
      Top = 50
      Width = 575
      Height = 93
      Caption = 'Compras'
      Index = 1
      object GComprasNFE: TRibbonGroup
        Left = 4
        Top = 3
        Width = 97
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'NFE'
        GroupIndex = 0
      end
      object GComprasRels: TRibbonGroup
        Left = 103
        Top = 3
        Width = 120
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'Relat'#243'rios'
        GroupIndex = 1
      end
    end
    object AbaEstoque: TRibbonPage
      Left = 0
      Top = 50
      Width = 575
      Height = 93
      Caption = 'Estoque'
      Index = 0
      object GEstoqueMov: TRibbonGroup
        Left = 4
        Top = 3
        Width = 132
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'Movimenta'#231#245'es'
        GroupIndex = 0
      end
      object GEstoqueRels: TRibbonGroup
        Left = 138
        Top = 3
        Width = 132
        Height = 86
        ActionManager = ActManagerToRibbonMenu
        Caption = 'Relat'#243'rios'
        GroupIndex = 1
      end
    end
    object RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar
      Left = 49
      Top = 1
      Width = 48
      Height = 24
      ActionManager = ActManagerToRibbonMenu
    end
  end
  object ActManagerToRibbonMenu: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = EstoqueCadProd
            Caption = '&Cadastro de Produtos'
          end
          item
            Action = EstoqueFornecdores
            Caption = '&Fornecedores'
          end
          item
            Action = EstoqueQtd
            Caption = '&Quantidade em Estoque'
          end>
        ActionBar = GEstoqueMov
      end
      item
        Items = <
          item
            Action = EstoqueRelMov
            Caption = '&Relat'#243'rio Movimenta'#231#227'o'
          end>
        ActionBar = GEstoqueRels
      end
      item
        Items = <
          item
            Action = ComprasNFEsEntrada
            Caption = '&NFEs de Entrada'
          end>
        ActionBar = GComprasNFE
      end
      item
        Items = <
          item
            Action = ComprasRelCompra
            Caption = '&Relat'#243'rio de Compras'
          end>
        ActionBar = GComprasRels
      end
      item
        Items = <
          item
            Action = VendasRelVenda
            Caption = '&Relat'#243'rio de Vendas'
          end>
        ActionBar = GVendasRels
      end
      item
        Items = <
          item
            Action = VendasNFEsSaida
            Caption = '&NFEs de Sa'#237'da'
          end>
        ActionBar = GVendasNFE
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Items = <
                  item
                    Action = EstoqueCadProd
                    Caption = '&Cadastro de Produtos'
                  end>
                Action = EstoqueCadProd
                Caption = '&Cadastro de Produtos'
              end
              item
                Items = <
                  item
                    Action = ActionMensagemSair
                    Caption = '&Exibir Mensagem '
                  end
                  item
                    Action = ActionFechaApp
                  end>
                Caption = '&Op'#231#245'es de Sa'#237'da'
              end>
            Caption = 'ActionClientItem0'
            KeyTip = 'F'
          end>
        ActionBar = RibbonApplicationMenuBar1
        AutoSize = False
      end
      item
        ActionBar = RibbonQuickAccessToolbar1
        AutoSize = False
      end>
    Left = 400
    Top = 240
    StyleName = 'Ribbon - Luna'
    object EstoqueCadProd: TAction
      Caption = 'Cadastro de Produtos'
      OnExecute = EstoqueCadProdExecute
    end
    object EstoqueQtd: TAction
      Caption = 'Quantidade em Estoque'
      OnExecute = EstoqueQtdExecute
    end
    object EstoqueRelMov: TAction
      Caption = 'Relat'#243'rio Movimenta'#231#227'o'
      OnExecute = EstoqueRelMovExecute
    end
    object ComprasNFEsEntrada: TAction
      Caption = 'NFEs de Entrada'
      OnExecute = ComprasNFEsEntradaExecute
    end
    object ComprasRelCompra: TAction
      Caption = 'Relat'#243'rio de Compras'
      OnExecute = ComprasRelCompraExecute
    end
    object VendasRelVenda: TAction
      Caption = 'Relat'#243'rio de Vendas'
      OnExecute = VendasRelVendaExecute
    end
    object VendasNFEsSaida: TAction
      Caption = 'NFEs de Sa'#237'da'
      OnExecute = VendasNFEsSaidaExecute
    end
    object EstoqueFornecdores: TAction
      Caption = 'Fornecedores'
      OnExecute = EstoqueFornecdoresExecute
    end
    object ActionMensagemSair: TAction
      Caption = 'Exibir Mensagem '
      OnExecute = ActionMensagemSairExecute
    end
    object ActionFechaApp: TAction
      Caption = 'Fechar Aplica'#231#227'o'
      OnExecute = ActionFechaAppExecute
    end
  end
  object ScreenTipsManagerHelper: TScreenTipsManager
    Footer = 'Pressione F1 para obter ajuda.'
    FooterImage.Data = {
      07544269746D61709E020000424D9E0200000000000036000000280000000E00
      00000E000000010018000000000068020000C40E0000C40E0000000000000000
      0000FF0099FF0099FF0099B8B8B8DADADABDAFAAC7ACA2C9AEA3C1B3ADE7E7E7
      CFCFCFFF0099FF0099FF00990000FF0099FF0099C7C7C7BDA49BA65336B85029
      BC532AC1572BC55A2CB86039CBB0A4D9D9D9FF0099FF00990000FF0099C7C7C7
      9D6B5CAE4927B24C28BC6241DCBCAFDDAF9CC2582BC5592CC4592BB37E68D9D9
      D9FF00990000C7C7C7B9A099A84426AC4727B14B28C18E7CCFCFCFE3E3E3BF55
      2AC0562BC0562BBE552AC8AEA4CFCFCF0000DCDCDCA4543AA84627AA4626AE49
      27B25231B5826FC4836BBA522ABB532ABB532ABA5229AA5636E7E7E70000BEB1
      ADB0502FB65631A84426AB4727AD5B3FA8A8A8AB9188B64F29B75029B64F29B5
      4E29B34D28BFB1AC0000C2ABA3B35633BD6138B85932A84426AB4727A2A2A2A7
      A7A7AE5C3FB24C28B24C28B14B28AF4A27C4ABA20000C8B2AAB55B37BD643BC2
      693CBE6338AF4E2CA66855A8A8A8A9A3A1B3684EAD4827AC4827AB4726C2A9A1
      0000CFC6C2B96744BC673EC06A3EC26B3EC46C3DBF6538BF907CC7C7C7CFC2BE
      AA4727AE4B29AC4929BCAFAB0000EBEBEBC89780BB6A42BE6C41C98B6ADCC1B2
      CF9474DBBAA9E8E8E8EEEEEEC06137BA5932A6553BDBDBDB0000B8B8B8EBE3E0
      C2805DBB6F45CA8F6FF4F4F4F5F5F5F5F5F5F6F6F6E5C9BCBB5E37B25230C0A7
      A0C7C7C70000FF0099CECECEDBCAC1C2835FBE7952D8AE96E9D1C4EEDACFD9AA
      93BF6C47B45936A37465C7C7C7FF00990000FF0099FF0099DCDCDCEBE4E1C9A0
      87BC7751B96F46BA6C44B96740B06B4DC1AAA2C7C7C7FF0099FF00990000FF00
      99FF0099FF0099D6D6D6ECECECD3CCC8D1BFB5CEBBB2C9BFBADEDEDEB8B8B8FF
      0099FF0099FF00990000}
    LinkedActionLists = <
      item
        ActionList = ActManagerToRibbonMenu
        Caption = '(No Name)'
      end>
    ScreenTips = <
      item
        Action = EstoqueCadProd
        Description.Strings = (
          'Cadastre novos produtos no estoque manualmente.')
        Header = 'Cadastro de Produtos'
      end
      item
        Action = EstoqueQtd
        Description.Strings = (
          'Visualize a quantidade de produtods dispon'#237'veis no estoque.')
        Header = 'Quantidade em Estoque'
      end
      item
        Action = EstoqueRelMov
        Description.Strings = (
          'Visulize um relat'#243'rio de movimenta'#231#227'o do estoque.')
        Header = 'Relat'#243'rio Movimenta'#231#227'o'
      end
      item
        Action = ComprasNFEsEntrada
        Description.Strings = (
          'Visualize as NFEs de entrada registradas no sistema.')
        Header = 'NFEs de Entrada'
      end
      item
        Action = ComprasRelCompra
        Description.Strings = (
          'Visualize o relat'#243'rio de compras.')
        Header = 'Relat'#243'rio de Compras'
      end
      item
        Action = VendasRelVenda
        Description.Strings = (
          'Visualize o Relat'#243'rio de Vendas.')
        Header = 'Relat'#243'rio de Vendas'
      end
      item
        Action = VendasNFEsSaida
        Description.Strings = (
          'Visualize as NFEs de sa'#237'das transmitidas para a receita.')
        Header = 'NFEs de Sa'#237'da'
      end
      item
        Action = EstoqueFornecdores
        Description.Strings = (
          'Visualize quais s'#227'o seus fornecedores')
        Header = 'Fornecedores'
      end
      item
        Action = ActionMensagemSair
        Header = 'Exibir Mensagem '
      end>
    Left = 184
    Top = 232
  end
end
