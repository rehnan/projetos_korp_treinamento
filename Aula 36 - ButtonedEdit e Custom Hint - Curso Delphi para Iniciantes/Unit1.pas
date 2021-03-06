unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    BtnEditName: TButtonedEdit;
    ImgListMyImages: TImageList;
    PopupMenuActions: TPopupMenu;
    ActionCopy: TMenuItem;
    ActionPast: TMenuItem;
    ActionCut: TMenuItem;
    BlnHintCustom: TBalloonHint;
    procedure BtnEditNameChange(Sender: TObject);
    procedure ActionCopyClick(Sender: TObject);
    procedure ActionPastClick(Sender: TObject);
    procedure ActionCutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ActionCopyClick(Sender: TObject);
begin
    BtnEditName.SelectAll;
    BtnEditName.CopyToClipboard;
end;

procedure TForm1.ActionCutClick(Sender: TObject);
begin
  BtnEditName.SelectAll;
  BtnEditName.CutToClipboard;
end;

procedure TForm1.ActionPastClick(Sender: TObject);
begin
   BtnEditName.PasteFromClipboard;
end;

procedure TForm1.BtnEditNameChange(Sender: TObject);
begin
    BtnEditName.LeftButton.Visible :=  BtnEditName.Text <> EmptyStr;
    BtnEditName.RightButton.Visible :=  BtnEditName.Text <> EmptyStr;
end;

end.
