object Form1: TForm1
  Left = 0
  Top = 0
  Hint = 'Title BallonHint | Text BallonHint Custom | 0'
  CustomHint = BlnHintCustom
  Caption = 'Aula 36 - ButtonedEdit e Custom Hint'
  ClientHeight = 329
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnEditName: TButtonedEdit
    Left = 48
    Top = 32
    Width = 361
    Height = 41
    Hint = 'Title BallonHint | Text BallonHint Custom | 0'
    CustomHint = BlnHintCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = ImgListMyImages
    LeftButton.CustomHint = BlnHintCustom
    LeftButton.DropDownMenu = PopupMenuActions
    LeftButton.HotImageIndex = 0
    LeftButton.ImageIndex = 1
    LeftButton.PressedImageIndex = 1
    ParentFont = False
    ParentShowHint = False
    RightButton.CustomHint = BlnHintCustom
    RightButton.HotImageIndex = 1
    RightButton.ImageIndex = 0
    RightButton.PressedImageIndex = 0
    ShowHint = True
    TabOrder = 0
    OnChange = BtnEditNameChange
  end
  object ImgListMyImages: TImageList
    Left = 432
    Top = 136
    Bitmap = {
      494C010102002000300010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FCFCFCFF43171DFF31040AFF3405
      0DFF340610FF350812FF350815FF360B19FF370C1CFF3A0E20FF3A0F23FF3C11
      27FF3D132BFF3B142BFF3C162FFF8C7485FFFCFCFCFF43171DFF31040AFF3405
      0DFF340610FF350812FF350815FF360B19FF370C1CFF3A0E20FF3A0F23FF3C11
      27FF3D132BFF3B142BFF3C162FFF8C7485FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE9B9DFF32040AFF31050CFF3306
      0FFF350712FF340815FF370A18FF360C1BFF3A0E20FF3A0F23FF3B1126FF3B13
      29FF3E152EFF3F1631FF411936FF421A39FFAE9B9DFF32040AFF31050CFF3306
      0FFF350712FF340815FF370A18FF360C1BFF3A0E20FF3A0F23FF3B1126FF3B13
      29FF3E152EFF3F1631FF411936FF421A39FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035080EFF31050DFF33060FFF3308
      12FF45222CFFBCB2B5FFBCB2B6FFBCB2B6FFBDB3B7FFBCB3B8FF978A91FF3210
      25FF3C162FFF401835FF401938FF401B3BFF35080EFF31050DFF33060FFF3308
      12FF45222CFF1B0263FF1C0364FF1B0364FF1C0366FF1C0466FF978A91FF3210
      25FF3C162FFF401835FF401938FF401B3BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000032050DFF340610FF350712FF3609
      16FF512F39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF705C6BFF421A39FF421C3CFF431E3FFF32050DFF340610FF350712FF3609
      16FF512F39FF150088FF150088FF150088FF150088FF150088FF150088FF1500
      88FF624C64FF421A39FF421C3CFF431E3FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000340610FF360813FF360916FF360A
      18FF50303BFFFFFFFFFFFFFFFFFF3B1126FF3C132AFF3B152CFFA4949EFFFFFF
      FFFFFFFFFFFF3F1A39FF411C3DFF452044FF340610FF360813FF360916FF360A
      18FF50303BFF150088FF150088FF3B1126FF3C132AFF3B152CFF887690FF1500
      88FF150088FF3F1A39FF411C3DFF452044FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000340712FF360916FF370A18FF370C
      1CFF53323FFFFFFFFFFFFFFFFFFF3C1329FF3E152EFF3F1631FF3F1833FFFFFF
      FFFFFFFFFFFF421D3FFF451F44FF452147FF340712FF360916FF370A18FF370C
      1CFF53323FFF150088FF150088FF3C1329FF3E152EFF3F1631FF3F1833FF1500
      88FF150088FF421D3FFF451F44FF452147FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000360916FF370B19FF360B1BFF3A0E
      20FF553342FFFFFFFFFFFFFFFFFF331125FF341329FF34142BFF958A92FFFFFF
      FFFFFFFFFFFF411E40FF462248FF47234BFF360916FF370B19FF360B1BFF3A0E
      20FF553342FF150088FF150088FF331125FF341329FF34142BFF958A92FF1500
      88FF150088FF411E40FF462248FF47234BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000360B18FF360C1BFF3A0E20FF3A0F
      23FF553445FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFB
      FCFF502F50FF442145FF442148FF46234BFF360B18FF360C1BFF3A0E20FF3A0F
      23FF553445FF150088FF150088FF150088FF150088FF150088FF150088FF2714
      90FF502F50FF442145FF442148FF46234BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000380C1CFF3A0E20FF3B0F23FF3B11
      26FF563548FFFFFFFFFFFFFFFFFF7E6D7AFF806E7DFF9B8E99FFFFFFFFFFFFFF
      FFFF402042FF46224AFF49254FFF492652FF380C1CFF3A0E20FF3B0F23FF3B11
      26FF563548FF150088FF150088FF7E6D7AFF806E7DFF9B8E99FF1A068BFF1500
      88FF402042FF46224AFF49254FFF492652FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A0E20FF3B1024FF3B1126FF3A12
      28FF57374BFFFFFFFFFFFFFFFFFF411A39FF411C3CFF441E41FFB9AEB9FFFFFF
      FFFFB0A8B1FF47244DFF46254EFF482651FF3A0E20FF3B1024FF3B1126FF3A12
      28FF57374BFF150088FF150088FF411A39FF411C3CFF441E41FF270F6FFF1500
      88FF766893FF47244DFF46254EFF482651FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B0F23FF3B1126FF3D132AFF3B14
      2CFF56374BFFFFFFFFFFFFFFFFFF43273FFF422840FF493248FFFCFCFCFFFFFF
      FFFFBBB3BCFF4A2652FF4B2855FF4C2958FF3B0F23FF3B1126FF3D132AFF3B14
      2CFF56374BFF150088FF150088FF43273FFF422840FF493248FF594BA9FF1500
      88FF81749EFF4A2652FF4B2855FF4C2958FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C1127FF3B132AFF3E152EFF3C16
      30FF58394FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF502F59FF4A2854FF4C2A58FF4A2959FF3C1127FF3B132AFF3E152EFF3C16
      30FF58394FFF150088FF150088FF150088FF150088FF150088FF150088FF1500
      88FF502F59FF4A2854FF4C2A58FF4A2959FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000391228FF3E152EFF3F1631FF4018
      35FF522F4BFFA99AA7FFAA9AA8FFAA9CAAFFAA9CABFFAB9DADFF88758BFF4926
      51FF4B2855FF4C2958FF4D2B5BFF4A2A5AFF391228FF3E152EFF3F1631FF4018
      35FF522F4BFFA99AA7FFAA9AA8FFAA9CAAFFAA9CABFFAB9DADFF88758BFF4926
      51FF4B2855FF4C2958FF4D2B5BFF4A2A5AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E6373FF3D1630FF401935FF421B
      3AFF431C3DFF431E40FF431F42FF422044FF452249FF49254FFF492652FF4B28
      55FF4C2A58FF4A2958FF4B2B5CFF4A2A5BFF7E6373FF3D1630FF401935FF421B
      3AFF431C3DFF431E40FF431F42FF422044FF452249FF49254FFF492652FF4B28
      55FF4C2A58FF4A2958FF4B2B5CFF4A2A5BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFDFF401A36FF421A39FF431C
      3DFF421D3FFF441F43FF452146FF432147FF47244CFF46244DFF492753FF4928
      54FF4B2A5AFF4C2B5CFF4E2D60FF614471FFFDFDFDFF401A36FF421A39FF431C
      3DFF421D3FFF441F43FF452146FF432147FF47244CFF46244DFF492753FF4928
      54FF4B2A5AFF4C2B5CFF4E2D60FF614471FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0FFF0F0F0FF887085FF5735
      54FF543453FF59395BFF5A395DFF5C3B61FF5A3B62FF583A60FF5E406AFF5F41
      6CFF5F426EFF624572FFC0B5C6FFF0F0F0FFF0F0F0FFF0F0F0FF887085FF5735
      54FF543453FF59395BFF5A395DFF5C3B61FF5A3B62FF583A60FF5E406AFF5F41
      6CFF5F426EFF624572FFC0B5C6FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenuActions: TPopupMenu
    Images = ImgListMyImages
    Left = 424
    Top = 208
    object ActionCopy: TMenuItem
      Caption = 'Copy'
      ImageIndex = 1
      OnClick = ActionCopyClick
    end
    object ActionPast: TMenuItem
      Caption = 'Past'
      OnClick = ActionPastClick
    end
    object ActionCut: TMenuItem
      Caption = 'Cut'
      OnClick = ActionCutClick
    end
  end
  object BlnHintCustom: TBalloonHint
    Images = ImgListMyImages
    Delay = 100
    Left = 320
    Top = 168
  end
end
