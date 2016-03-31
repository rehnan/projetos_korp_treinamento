unit UCliente;

interface

uses
  UValidacoes, System.SysUtils;

type
  TStringArray = array of string;
  TCliente = Class
   private
    id       : Integer;
    nome     : String;
    idade    : Integer;
    profissao: String;
    erros : TStringArray;
   public
    {Setters}
    procedure setId(id: Integer);
    procedure setNome(nome: String);
    procedure setIdade(idade: String);
    procedure setProfissao(profissao: String);

    {Getters}
    function getId() : Integer;
    function getNome() : String;
    function getIdade() :Integer;
    function getProfissao() : String;


    function possuiErros() : Boolean;
    function getErros() : TStringArray;
    procedure addErro(erro : String);

end;

implementation

procedure TCliente.setId(id: Integer);
begin
    if UValidacoes.validaCampoEmBranco(id) = True then Self.id := id;
end;

procedure TCliente.setNome(nome: String);
begin
    if UValidacoes.validaCampoEmBranco(nome) = True then Self.nome := nome;
end;

procedure TCliente.setIdade(idade: String);
begin
    if UValidacoes.validaCampoEmBranco(idade) = True then Self.idade := StrToInt(idade);

end;

procedure TCliente.setProfissao(profissao: String);
begin
    if UValidacoes.validaCampoEmBranco(profissao) = True then Self.profissao := profissao;
end;

function TCliente.getId() : Integer;
begin
    Result := Self.id;
end;

function TCliente.getNome() : String;
begin
    Result := Self.nome;
end;

function TCliente.getIdade() : Integer;
begin
    Result := Self.idade;
end;

function TCliente.getProfissao() : String;
begin
    Result := Self.profissao;
end;

function TCliente.possuiErros() : Boolean;
begin
  Result := False;
  if Length(Self.erros) > 0 then Result := True;
end;

function TCliente.getErros() : TStringArray;
begin
   Result := Self.erros;
end;

procedure TCliente.addErro(erro : String);
begin

end;

end.
