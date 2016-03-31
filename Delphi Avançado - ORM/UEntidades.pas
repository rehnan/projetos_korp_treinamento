unit UEntidades;

interface

uses
  Aurelius.Mapping.Attributes, System.SysUtils, System.Variants, System.Classes;
type
  [Entity]
  [Automapping]
  TFornecedor = class
    private
      FId: Integer;
      FRazaosocial: string;
      FEndereco: string;
      FCidade: string;
      FTelefone: string;
      FDataCriacao : String;

      property dataCriacao : string
      read FDataCriacao write FDataCriacao;

    public
      property Id: Integer read FId;
      property Razaosocial: string
      read FRazaosocial write FRazaosocial;
      property Endereco: string
      read FEndereco write FEndereco;
      property Cidade: string
      read FCidade write FCidade;
      property Telefone: string
      read FTelefone write FTelefone;

      constructor Create();

  end;

  [Entity]
  [Automapping]
  TProduto = class
    private
      FId: Integer;
      FIdfornecedor: Integer;
      FDescricao: string;
      FQuantidade: Double;
      FValor: Double;
      FDataCriacao : String;

      property dataCriacao : string
      read FDataCriacao write FDataCriacao;

    public
      property Id: Integer read FId;
      property Idfornecedor: Integer
      read FIdfornecedor write FIdfornecedor;
      property Descricao: string
      read FDescricao write FDescricao;
      property Quantidade: Double
      read FQuantidade write FQuantidade;
      property Valor: Double read FValor write FValor;


      constructor Create();
  end;

implementation

{ TProduto }

constructor TProduto.Create;
var
  today : TDateTime;
begin
  inherited Create;
  today := Now;
  dataCriacao := DateToStr(today);
end;

{ TFornecedor }

constructor TFornecedor.Create;
var
  today : TDateTime;
begin
  inherited Create;
  today := Now;
  dataCriacao := DateToStr(today);
end;

end.
