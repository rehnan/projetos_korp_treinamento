program Aurelius;

uses
  Vcl.Forms,
  FrmPrincipal in 'FrmPrincipal.pas' {Form1},
  UEntidades in 'UEntidades.pas',
  UConexao in 'UConexao.pas',
  uVariavelDeClasse in 'uVariavelDeClasse.pas',
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
