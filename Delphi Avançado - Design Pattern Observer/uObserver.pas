unit uObserver;

interface

type
  IObservador = interface
      ['{BC270576-0FCB-4B0B-A486-849AA6A0EF9D}']
      procedure notificacao(notificacao : String);
  end;

  IObservavel = interface
      ['{74098116-D46E-415D-A2BD-A2257DD3874A}']
      procedure registrarObservador(observador: IObservador);
      procedure removerObservador(observador: IObservador);
      procedure notificarObservadores();
  end;

implementation

end.







