object Form1: TForm1
  Left = 438
  Top = 219
  Caption = 'Aula 33 - Exemplo'
  ClientHeight = 188
  ClientWidth = 196
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenuActions
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 181
    Height = 13
    Caption = 'Clique com o bot'#227'o querdo do mouse!'
  end
  object AppEvents: TApplicationEvents
    OnMinimize = AppEventsMinimize
    OnRestore = AppEventsRestore
    Left = 40
    Top = 8
  end
  object PopupMenuActions: TPopupMenu
    Alignment = paCenter
    OwnerDraw = True
    Left = 40
    Top = 72
    object Error1: TMenuItem
      Caption = 'Error'
      OnClick = Error1Click
    end
    object Info1: TMenuItem
      Caption = 'Info'
      OnClick = Info1Click
    end
    object Success1: TMenuItem
      Caption = 'Success'
      OnClick = Success1Click
    end
    object Warnning1: TMenuItem
      Caption = 'Warnning'
      OnClick = Warnning1Click
    end
  end
  object TrayIconApp: TTrayIcon
    BalloonTimeout = 20000
    BalloonFlags = bfError
    Visible = True
    Left = 32
    Top = 128
  end
end
