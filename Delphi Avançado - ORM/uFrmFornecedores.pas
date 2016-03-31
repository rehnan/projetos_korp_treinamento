unit uFrmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Generics.Collections, UEntidades;

type
  TFrmFornecedores = class(TForm)
    strngrdFornecedores: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Ffornecedores: TList<TFornecedor>;
    procedure Setfornecedores(const Value: TList<TFornecedor>);
    { Private declarations }
  public
    { Public declarations }
    property fornecedores : TList<TFornecedor> read Ffornecedores write Setfornecedores;
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

{$R *.dfm}

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
  Self.fornecedores := TList<TFornecedor>.Create;
  strngrdFornecedores.Cells[0, 0] :=  'Data de Criação';
  strngrdFornecedores.Cells[1, 0] :=  'Fornecedores';
end;

procedure TFrmFornecedores.FormShow(Sender: TObject);
var
  i : Integer;
begin
 
  strngrdFornecedores.RowCount := fornecedores.Count + 1;
  for i := 0 to fornecedores.Count - 1 do
  begin
     strngrdFornecedores.Cols[1].Objects[i + 1] := fornecedores[i];
     strngrdFornecedores.Cells[1, i + 1] := fornecedores[i].Razaosocial;
     strngrdFornecedores.Cells[0, i + 1] := fornecedores[i].dataCriacao;
  end;
end;

procedure TFrmFornecedores.Setfornecedores(const Value: TList<TFornecedor>);
begin
  Ffornecedores := Value;
end;

end.


