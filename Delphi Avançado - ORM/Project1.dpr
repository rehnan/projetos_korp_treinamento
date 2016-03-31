program Project1;

uses
  Vcl.Forms,
  uFrmFornecedores in 'uFrmFornecedores.pas' {FrmFornecedores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.Run;
end.
