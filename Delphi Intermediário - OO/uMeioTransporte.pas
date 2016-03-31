unit uMeioTransporte;

interface

uses
  Vcl.Dialogs;

type
  TMeioTransporte  = class
  private
    Fdescricao : String;
    Fcapacidade : Integer;
    { M�todo declarado como est�tico pois n�o h� nenhuma assinatura no mesmo, assim como default fica como est�tico}
    // procedure Mover;

  public
    constructor create();
    destructor Destroy();
    // A assinatura virutal permite que as classes filhas implementem o seu pr�prio m�todo sobrescrevendo este.
    procedure Mover; virtual;

  protected
     // A assinatura abstract indica que n�o h� implementa��o na classe pai, obrigando a classe filha a implement�-la, semelhante a uma interface.
    procedure Ligar; virtual; abstract;

  published
    property descricao: string read Fdescricao write Fdescricao;
    property capacidade: integer read Fcapacidade write Fcapacidade;

  end;

implementation

{ TTMeioTransporte }

constructor TMeioTransporte.create;
begin
  inherited; // chama o construtor da classe base
  Self.descricao := 'Nenhum Selecionado';
  Self.capacidade := 0;
  ShowMessage('Construtor Inicializado!');
end;

destructor TMeioTransporte.Destroy;
begin
  Self.Free;
end;

procedure TMeioTransporte.Mover;
begin
   Ligar();
   //ShowMessage(Self.descricao+' movendo-se!');
end;

end.
