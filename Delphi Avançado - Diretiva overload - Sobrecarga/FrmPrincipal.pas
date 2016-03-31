unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasse;

type
  TForm1 = class(TForm)
    edt1De1Parametro: TEdit;
    edt1De2Parametros: TEdit;
    edt2De2Parametros: TEdit;
    edt1De3Parametros: TEdit;
    edt2De3Parametros: TEdit;
    edt3De3Parametros: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    classe : TClasse;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  classe.exibeMessage(edt1De1Parametro.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  classe.exibeMessage(edt1De2Parametros.Text, StrToInt(edt2De2Parametros.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  classe.exibeMessage(edt1De3Parametros.Text, StrToInt(edt2De3Parametros.Text), StrToFloat(edt3De3Parametros.Text));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  classe := TClasse.Create;
end;

end.
