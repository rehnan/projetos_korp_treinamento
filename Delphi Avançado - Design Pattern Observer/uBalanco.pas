unit uBalanco;

interface

type
  TBalanco = class
    private
      BalancoIniciado: Boolean;
    public
      procedure IniciarBalanco;
      procedure FinalizarBalanco;
  end;

implementation

uses Dialogs;
{ TBalanco }

procedure TBalanco.FinalizarBalanco;
begin
  if not BalancoIniciado = True then
  begin
    BalancoIniciado := True;
    ShowMessage('Balanco Iniciado!');
  end;

end;

procedure TBalanco.IniciarBalanco;
begin
  if BalancoIniciado = True then
  begin
    BalancoIniciado := False;
    ShowMessage('Balanco finalizado!');
  end;
end;

end.
