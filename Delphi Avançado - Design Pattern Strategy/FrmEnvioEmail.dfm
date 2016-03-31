object Form1: TForm1
  Left = 439
  Top = 165
  Caption = 'Enviar Email'
  ClientHeight = 496
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object grpConfigsConexao: TGroupBox
    Left = 8
    Top = 8
    Width = 431
    Height = 89
    Caption = 'Configura'#231#245'es de Conex'#227'o'
    TabOrder = 1
    object lblSmtpHost: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = 'SMTP Host'
    end
    object lblPorta: TLabel
      Left = 135
      Top = 16
      Width = 26
      Height = 13
      Caption = 'Porta'
    end
    object lblLogin: TLabel
      Left = 180
      Top = 16
      Width = 81
      Height = 13
      Caption = 'Nome do Usu'#225'rio'
    end
    object lblSenha: TLabel
      Left = 307
      Top = 16
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edtSenha: TEdit
      Left = 307
      Top = 32
      Width = 117
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
    object edtUsuario: TEdit
      Left = 180
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtSmtpHost: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object chkConexaoSegura: TCheckBox
      Left = 8
      Top = 59
      Width = 121
      Height = 17
      Caption = 'Usar Conex'#227'o Segura'
      TabOrder = 4
    end
    object cbbPorta: TComboBox
      Left = 135
      Top = 32
      Width = 39
      Height = 21
      MaxLength = 5
      PopupMenu = pmAdicionarPorta
      TabOrder = 1
      Text = '25'
      Items.Strings = (
        '25')
    end
  end
  object grpConfigsEmail: TGroupBox
    Left = 8
    Top = 103
    Width = 431
    Height = 386
    Caption = 'Configura'#231#245'es de Email'
    TabOrder = 0
    object lblRemetente: TLabel
      Left = 8
      Top = 16
      Width = 98
      Height = 13
      Caption = 'Nome do Remetente'
    end
    object lblEmailResposta: TLabel
      Left = 219
      Top = 16
      Width = 97
      Height = 13
      Caption = 'Email para Resposta'
    end
    object lblEmailsDestinatarios: TLabel
      Left = 8
      Top = 62
      Width = 179
      Height = 13
      Caption = 'Destinat'#225'rios (Separados por v'#237'rgula)'
    end
    object lblAssunto: TLabel
      Left = 8
      Top = 108
      Width = 39
      Height = 13
      Caption = 'Assunto'
    end
    object lblMensagem: TLabel
      Left = 8
      Top = 154
      Width = 51
      Height = 13
      Caption = 'Mensagem'
    end
    object lblProgressoEnvio: TLabel
      Left = 8
      Top = 268
      Width = 161
      Height = 21
      Caption = 'Detalhe do Progresso de envio'
    end
    object edtEmailResposta: TEdit
      Left = 219
      Top = 35
      Width = 205
      Height = 21
      TabOrder = 0
    end
    object edtDestinatarios: TEdit
      Left = 8
      Top = 81
      Width = 416
      Height = 21
      TabOrder = 1
    end
    object edtAssunto: TEdit
      Left = 8
      Top = 127
      Width = 416
      Height = 21
      TabOrder = 2
    end
    object mmoMensagem: TMemo
      Left = 8
      Top = 173
      Width = 416
      Height = 89
      TabOrder = 3
    end
    object mmoProgresso: TMemo
      Left = 8
      Top = 288
      Width = 293
      Height = 57
      ReadOnly = True
      TabOrder = 4
    end
    object btnEnviar: TButton
      Left = 307
      Top = 288
      Width = 117
      Height = 57
      Caption = 'Enviar Mensagem'
      TabOrder = 5
      OnClick = btnEnviarClick
    end
    object edtRemetente: TEdit
      Left = 8
      Top = 35
      Width = 205
      Height = 21
      TabOrder = 6
    end
    object chkArmazenarLocamente: TCheckBox
      Left = 294
      Top = 360
      Width = 134
      Height = 17
      Caption = 'Armazenar Localmente'
      TabOrder = 7
    end
  end
  object pmAdicionarPorta: TPopupMenu
    Left = 400
    Top = 72
    object AdicionarPorta1: TMenuItem
      Caption = 'Adicionar Porta'
      OnClick = AdicionarPorta1Click
    end
  end
end
