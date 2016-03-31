program ProjectCalculator;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormCalculator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCalculator, FormCalculator);
  Application.Run;
end.
