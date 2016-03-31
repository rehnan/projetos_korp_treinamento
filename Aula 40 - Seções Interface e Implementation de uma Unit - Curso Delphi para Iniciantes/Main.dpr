program Main;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  UCliente in 'UCliente.pas',
  UValidacoes in 'UValidacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
