program PatternObserver;

uses
  Vcl.Forms,
  FormPrincipal in 'FormPrincipal.pas' {Form1},
  uVenda in 'uVenda.pas',
  uBalanco in 'uBalanco.pas',
  uIObservavel in 'uIObservavel.pas',
  uObserver in 'uObserver.pas',
  uBlog in 'uBlog.pas',
  uAssinantes in 'uAssinantes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
