unit uSujeito;

interface

uses
  uObservador;

type
  ISujeito = Interface(IInterface)['{92B5257A-5A05-45E6-8C93-6616AD11B467}']
    procedure incluirObservador(const obs: IObservador);
    procedure removerObservador();
    procedure notificarObservadores();
  end;

implementation

end.
