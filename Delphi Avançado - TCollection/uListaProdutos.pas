unit uListaProdutos;

interface

uses
  Vcl.Dialogs, Vcl.StdCtrls, uObservador, uSujeito;
type
   TListaProdutos = class(TInterfacedObject, IObservador)
     private
        aLista: TListBox;
        procedure SetvLista(const Value: TListBox);
     public
        observado : ISujeito; { Quem ser� observado por esta lista de produtos }
        constructor Create; overload;
        constructor Create(const pListBox : TListBox); overload;
        property lista : TListBox read aLista write SetvLista;
        procedure atualizar();
   end;

implementation

{ TListaProdutos }

procedure TListaProdutos.SetvLista(const Value: TListBox);
begin
  Self.aLista := Value;
end;

procedure TListaProdutos.atualizar();
begin
  ShowMessage('Atualizando lista!');
end;

constructor TListaProdutos.Create(const pListBox : TListBox);
begin
  inherited Create;
  SetvLista(pListBox);
end;

constructor TListaProdutos.Create;
begin

end;

end.
