program ClassesObjetos;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {Form1},
  uAviao in 'uAviao.pas',
  uCarro in 'uCarro.pas',
  uMeioTransporte in 'uMeioTransporte.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
