unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BtnCalcularExceptGenerico: TButton;
    EdtNumero1: TEdit;
    EdtNumero2: TEdit;
    EdtResult: TEdit;
    BtnTrataExceptEspecificas: TButton;
    procedure BtnCalcularExceptGenericoClick(Sender: TObject);
    procedure BtnTrataExceptEspecificasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCalcularExceptGenericoClick(Sender: TObject);
var
  number1, numbero2, result : Double;
begin
  try
    number1  := StrToFloat(EdtNumero1.Text);
    numbero2 := StrToFloat(EdtNumero2.Text);

    result := number1 / numbero2;
    EdtResult.Text := FloatToStr(result);
  except
    on E: Exception do
    begin
      ShowMessage('Ocorreu um Erro!');
      EdtNumero1.SetFocus;
    end;
  end;
end;

procedure TForm1.BtnTrataExceptEspecificasClick(Sender: TObject);
var
  number1, numbero2, result : Double;
begin
  try
    number1  := StrToFloat(EdtNumero1.Text);
    numbero2 := StrToFloat(EdtNumero2.Text);

    result := number1 / numbero2;
    EdtResult.Text := FloatToStr(result);
  except
    on E: EConvertError do
      ShowMessage('(Tratando excess�o espec�fica de convers�o) Tratando Exce��o de Erro de convers�o '+E.Message);
    on E: EZeroDivide do
      ShowMessage('(Tratando excess�o espec�fica de divis�o por 0) N�o � poss�vel efetuar a divis�o por 0! '+E.Message);
    on E: Exception do
      ShowMessage('(Tratando excess�o gen�rica) Um erro n�o esperado ocorreu: '+E.Message);
  end;
  EdtNumero1.SetFocus;
end;
end.
