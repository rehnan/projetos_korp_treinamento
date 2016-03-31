program DesignPatternStrategy;

uses
  Vcl.Forms,
  FrmEnvioEmail in 'FrmEnvioEmail.pas' {Form1},
  uTTransporteViaSmtp in 'uTTransporteViaSmtp.pas',
  uTTransporteArquivoTexto in 'uTTransporteArquivoTexto.pas',
  uITransporte in 'uITransporte.pas',
  uTTransporteFactory in 'uTTransporteFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
