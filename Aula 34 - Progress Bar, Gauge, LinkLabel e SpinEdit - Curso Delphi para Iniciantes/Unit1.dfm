object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 398
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTempo: TLabel
    Left = 16
    Top = 128
    Width = 36
    Height = 13
    Caption = 'Tempo:'
  end
  object LabelContagemTempo: TLabel
    Left = 58
    Top = 128
    Width = 3
    Height = 13
  end
  object Gauge: TGauge
    Left = 8
    Top = 176
    Width = 313
    Height = 65
    Progress = 0
  end
  object LabelProgressBarExample: TLabel
    Left = 160
    Top = 8
    Width = 101
    Height = 13
    Caption = 'ProgressBar Examplo'
  end
  object Label1: TLabel
    Left = 160
    Top = 157
    Width = 74
    Height = 13
    Caption = 'Gauge Exemplo'
  end
  object BtnStartProgress: TButton
    Left = 327
    Top = 64
    Width = 125
    Height = 49
    Caption = 'Inicar ProgressBar'
    TabOrder = 0
    OnClick = BtnStartProgressClick
  end
  object ProgressBar: TProgressBar
    Left = 16
    Top = 64
    Width = 305
    Height = 49
    Max = 30
    TabOrder = 1
  end
  object RBtnNormal: TRadioButton
    Left = 16
    Top = 40
    Width = 113
    Height = 17
    Caption = 'Normal'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object RBtnPausa: TRadioButton
    Left = 120
    Top = 40
    Width = 81
    Height = 17
    Caption = 'Pausa'
    TabOrder = 3
  end
  object RBtnErro: TRadioButton
    Left = 232
    Top = 40
    Width = 89
    Height = 17
    Caption = 'Erro'
    TabOrder = 4
  end
  object BtnIniciarGauge: TButton
    Left = 327
    Top = 176
    Width = 125
    Height = 65
    Caption = 'Iniciar Gauge'
    TabOrder = 5
    OnClick = BtnIniciarGaugeClick
  end
  object SpinEdit: TSpinEdit
    Left = 32
    Top = 296
    Width = 65
    Height = 22
    MaxValue = 50
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object LinkLabelDevMedia: TLinkLabel
    Left = 144
    Top = 301
    Width = 136
    Height = 17
    Caption = 
      '<a href="http://www.devmedia.com.br">Link to  Dev Media Website ' +
      '</a>'
    TabOrder = 7
    OnLinkClick = LinkLabelDevMediaLinkClick
  end
end
