unit uTTransporteFactory;

interface

uses uITransporte;

type
  TTransporteFactory = class
    public
      class function Factory(Offline: Boolean; Host: string; Porta: String;
         Ssl: Boolean): ITransporte; static;
  end;

implementation
uses uTTransporteArquivoTexto, uTTransporteViaSmtp;

class function TTransporteFactory.Factory(offline: Boolean; host: string; porta: String; ssl: Boolean): ITransporte;
begin
  if offline then
    Result := TTransporteArquivoTexto.Create('C:\Emails.txt', host, porta, ssl)
  else
    Result := TTransporteViaSmtp.Create(host, porta, ssl);
end;

end.

