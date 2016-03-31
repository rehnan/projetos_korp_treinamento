unit UEntidades;

interface

uses
  Aurelius.Mapping.Attributes, System.SysUtils, System.Variants, System.Classes, uFuncoes;
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
      property dataCriacao : string
      read FDataCriacao write FDataCriacao;

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

    public
      property Id: Integer read FId;
      property Idfornecedor: Integer
      read FIdfornecedor write FIdfornecedor;
      property Descricao: string
      read FDescricao write FDescricao;
      property Quantidade: Double
      read FQuantidade write FQuantidade;
      property Valor: Double read FValor write FValor;
      property dataCriacao : string
      read FDataCriacao write FDataCriacao;


      constructor Create();
  end;

implementation

{ TProduto }

constructor TProduto.Create;
begin
  inherited Create;
  dataCriacao :=  TFuncoes.GetInstance.FormatarData(Now);
end;

{ TFornecedor }

constructor TFornecedor.Create;
begin
  inherited Create;
  dataCriacao :=  TFuncoes.GetInstance.FormatarData(Now);
end;

end.
