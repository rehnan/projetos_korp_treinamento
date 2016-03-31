unit uIObservavel;

interface

type
  IObservavel = interface;

  IObservador = interface
      ['{BC270576-0FCB-4B0B-A486-849AA6A0EF9D}']
      procedure notificacao(BalancoIniciado: Boolean);
  end;

  IObservavel = interface
      ['{74098116-D46E-415D-A2BD-A2257DD3874A}']
      procedure registrarObservador(Observador: IObservador);
      procedure removerObservador(Observador: IObservador);
      procedure notificarObservadores;
  end;

implementation

end.
