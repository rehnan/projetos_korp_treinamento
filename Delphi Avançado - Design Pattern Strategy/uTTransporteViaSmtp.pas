unit uTTransporteViaSmtp;

interface

uses
  IdMessage,
  IdIOHandler,
  IdExplicitTLSClientServerBase,
  IdSMTP,
  IdText,
  IdSSLOpenSSL,
  System.SysUtils,
  Vcl.Dialogs,
  uITransporte;

type
  TTransporteViaSmtp = class(TInterfacedObject, ITransporte)
    private
      Fservidor: String;
      Fporta: String;
      Fusuario: String;
      Fsenha: String;
      Fsmtp: TIdSMTP;
      Fssl: Boolean;
      FIdSSL: TIdSSLIOHandlerSocketOpenSSL;

      procedure SetServidor(const Value: String);
      procedure SetPorta(const Value: String);
      procedure SetUsuario(const Value: String);
      procedure SetSenha(const Value: String);
      procedure SetSmtp(const Value: TIdSMTP);
      procedure SetSsl(const Value: Boolean);
      procedure SetIdSSL(const Value: TIdSSLIOHandlerSocketOpenSSL);

    public
      
      property servidor : String read Fservidor write Setservidor;
      property porta : String read Fporta write Setporta;
      property usuario : String read Fusuario write SetUsuario;
      property senha : String read Fsenha write SetSenha;
      property smtp : TIdSMTP read Fsmtp write SetSmtp;
      property ssl : Boolean read Fssl write SetSsl;
      property IdSSL : TIdSSLIOHandlerSocketOpenSSL read FIdSSL write SetIdSSL;

      constructor Create (const servidor, porta : String; const ssl : Boolean);
      procedure AplicarConfiguracoes();
      procedure Enviar(const email: TIdMessage);
      
  end;

implementation

{ TTransporteViaSmtp }

procedure TTransporteViaSmtp.AplicarConfiguracoes;
begin
  IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
  smtp.IOHandler := IdSSL;
  smtp.Host := servidor;
  smtp.Port := 25;
  smtp.Authenticate;
  if ssl = True then smtp.AuthType := satSASL
  else smtp.AuthType := satDefault;

end;

constructor TTransporteViaSmtp.Create(const servidor, porta : String; const ssl : Boolean);
begin
  inherited Create;
  SetServidor(servidor);
  SetPorta(porta);
  SetSsl(ssl);
  smtp := TIdSMTP.create(nil);
  AplicarConfiguracoes;
end;

procedure TTransporteViaSmtp.Enviar(const email: TIdMessage);
begin

  ShowMessage('Enviando Email...');
   try
     smtp.Authenticate;
     smtp.Connect;
     smtp.Send(Email);
     ShowMessage('Email Enviado.');
   finally
     if smtp.Connected then
       smtp.Disconnect;
   end;

   ShowMessage('Enviar Email via SMTP!');
end;

procedure TTransporteViaSmtp.SetIdSSL(
  const Value: TIdSSLIOHandlerSocketOpenSSL);
begin
  FIdSSL := Value;
end;

procedure TTransporteViaSmtp.Setporta(const Value: String);
begin
  Fporta := Value;
end;

procedure TTransporteViaSmtp.SetSenha(const Value: String);
begin
  Fsenha := Value;
end;

procedure TTransporteViaSmtp.Setservidor(const Value: String);
begin
  Fservidor := Value;
end;

procedure TTransporteViaSmtp.SetSmtp(const Value: TIdSMTP);
begin
  FSmtp := Value;
end;

procedure TTransporteViaSmtp.SetSsl(const Value: Boolean);
begin
  Fssl := Value;
end;

procedure TTransporteViaSmtp.SetUsuario(const Value: String);
begin
  Fusuario := Value;
end;

end.


