unit uSuperClasse;

interface

type
  TSuperClasse = class
    procedure sayHello; virtual; abstract;
  end;

implementation

uses Vcl.Dialogs;
{ TSuperClasse }

{
procedure TSuperClasse.sayHello;
begin
  ShowMessage('Hello From SuperClasse!');
end;  }



end.
