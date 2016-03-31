unit uITransporte;

interface

uses IdMessage;

Type
  ITransporte = interface ['{6BB57E7A-7E9C-4A4A-BA66-BE28CB5A98E8}']
    procedure Enviar(const email: TIdMessage);
  end;

implementation

end.
