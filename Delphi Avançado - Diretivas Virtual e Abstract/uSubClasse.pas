unit uSubClasse;

interface

uses uSuperClasse;

type
  TSubClasse = class(TSuperClasse)
      //procedure sayHello; override;
  end;

implementation

uses Vcl.Dialogs;

{ TSubClasse }

{
procedure TSubClasse.sayHello;
begin
  //inherited sayHello;
  ShowMessage('Hello From SubClasse');
end;  }

end.
