unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCores = 1..100;
  TNumeros = set of char;
  TCliente = record
      id : Cardinal;
      nome, email: String;
  end;
  TForm1 = class(TForm)

    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
const
  Numeros : TNumeros = ['0'..'9'];
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Cores: TCores;
begin
     Cores := 100;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  arrayIntUniD: array[1..10] of Integer;
  I: Integer;
begin
   for I := 1 to 10 do
   begin
   arrayIntUniD[I] := I;
   ShowMessage(IntToStr(arrayIntUniD[I]));
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
const
    C = 3;
    L = 3;
var
  (* array multidimensional de 5 linhas e 6 colunas *)
  arrayIntMultiD: array[1..L, 1..C] of Integer;
  I: Integer;
  J: Integer;
  Count: Integer;
begin
     for I := 1 to L do
     begin
        for J := 1 to C do
        begin
          arrayIntMultiD[I,J] := I*J;
        end;
     end;

     for I := 1 to L do
     begin
       for J := 1 to C do
         begin
           ShowMessage(IntToStr(arrayIntMultiD[I,J]));
         end;
     end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  arrayDinamica: array of Integer;
begin
  (* Setando tamanho da array incrimentando index em 1*)
  SetLength(arrayDinamica, Length(arrayDinamica)+1);
  (* Atribuindo valor a array*)
  arrayDinamica[High(arrayDinamica)] := 200;
  ShowMessage('N�mero do index: '+IntToStr(arrayDinamica[0]));
  ShowMessage('Tamanho da Array: '+IntToStr(Length(arrayDinamica)));
  (* Setando tamanho da array incrimentando index em 1*)
  SetLength(arrayDinamica, Length(arrayDinamica)+1);
  (* Atribuindo valor a array*)
  arrayDinamica[High(arrayDinamica)] := 300;
  ShowMessage('N�mero do index: '+IntToStr(arrayDinamica[0]));
  ShowMessage('Tamanho da Array: '+IntToStr(Length(arrayDinamica)));

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Cliente : TCliente;
begin
   Cliente.id := Random(100);
   Cliente.nome := 'Rehnan Carolino';
   Cliente.email := 'rehnan@email.com';
   ShowMessage('ID: '+IntToStr(CLiente.id)+' Nome: '+Cliente.nome+' Email: '+Cliente.email);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in Numeros) then
      raise Exception.Create('Este campo s� ace�ta n�meros!');
end;

end.
