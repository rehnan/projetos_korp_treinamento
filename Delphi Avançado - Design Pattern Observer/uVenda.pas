unit uVenda;

interface

type
  TVenda = class
    private
      VendaIniciada: Boolean;
    public
      procedure IniciarVenda;
      procedure FinalizarVenda;
  end;

implementation

uses Dialogs;

procedure TVenda.IniciarVenda;
begin
  if not VendaIniciada then
  begin
    VendaIniciada := True;
    ShowMessage('Venda iniciada!');
  end;
end;

procedure TVenda.FinalizarVenda;
begin
  if VendaIniciada then
  begin
    VendaIniciada := False;
    ShowMessage('Venda finalizada!');
  end;
end;

end.
