unit uAssinantes;

interface

uses uObserver, Vcl.Dialogs;

type
  TAssinante = class(TInterfacedObject, IObservador)
    private
      fNome: String;
      fEmail: String;
      fPost: String;
      procedure SetNome(const Value: String);
      procedure SetEmail(const Value: String);
      procedure SetPost(const Value: String);
    public
      property nome : String read fNome write SetNome;
      property email : String read fEmail write SetEmail;
      property post : String read fPost write SetPost;
      constructor Create; overload;
      constructor Create (const pNome, pEmail : String); overload;
      procedure notificacao(post: String);
  end;

implementation

{ TAssinate }
constructor TAssinante.Create;
begin

end;

constructor TAssinante.Create (const pNome, pEmail : String);
begin
  inherited Create;
  SetNome(pNome);
  SetEmail(pEmail);
  SetPost('Nenhum Post');
end;

procedure TAssinante.SetEmail(const Value: String);
begin
  Femail := Value;
end;

procedure TAssinante.SetNome(const Value: String);
begin
  Fnome := Value;
end;

procedure TAssinante.SetPost(const Value: String);
begin
  Fpost := Value;
end;

procedure TAssinante.notificacao(post: String);
begin
  ShowMessage('Meu nome �: '+ nome+'! Recebebi o novo post: '+post);
  SetPost(post);
end;

end.
