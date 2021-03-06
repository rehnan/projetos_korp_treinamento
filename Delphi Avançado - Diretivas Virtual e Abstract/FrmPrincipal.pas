unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uSuperClasse, uSubClasse;

type
    TForm1 = class(TForm)
    btnShowMessage: TButton;
    procedure btnShowMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnShowMessageClick(Sender: TObject);
var
   subClasse : TSuperClasse;
begin
  subClasse := TSubClasse.Create;
  try
    subClasse.sayHello;
  except on E : EAbstractError do
         ShowMessage('O m�todo: sayHello n�o foi implementado na subClasse!');
  end;
end;

end.
