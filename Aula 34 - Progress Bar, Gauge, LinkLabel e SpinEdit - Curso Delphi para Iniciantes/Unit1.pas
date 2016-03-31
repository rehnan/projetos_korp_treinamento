unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Samples.Gauges, Vcl.Samples.Spin, Vcl.ExtCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    BtnStartProgress: TButton;
    ProgressBar: TProgressBar;
    LabelTempo: TLabel;
    LabelContagemTempo: TLabel;
    RBtnNormal: TRadioButton;
    RBtnPausa: TRadioButton;
    RBtnErro: TRadioButton;
    Gauge: TGauge;
    LabelProgressBarExample: TLabel;
    Label1: TLabel;
    BtnIniciarGauge: TButton;
    SpinEdit: TSpinEdit;
    LinkLabelDevMedia: TLinkLabel;
    procedure BtnStartProgressClick(Sender: TObject);
    procedure BtnIniciarGaugeClick(Sender: TObject);
    procedure LinkLabelDevMediaLinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnIniciarGaugeClick(Sender: TObject);
var
  I : Integer;
begin
   for I := Gauge.MinValue to Gauge.MaxValue do
  begin
      Gauge.Progress := I;
      Sleep(50);
      Application.ProcessMessages; (* Processa Mensagens Enviadas para o SO ao clicar na aplica��o, evita travamentos.. *)
  end;
end;

procedure TForm1.BtnStartProgressClick(Sender: TObject);
var
  I: Integer;
begin
  LabelContagemTempo.Caption := IntToStr(ProgressBar.Max) + ' segundos...';
  LabelContagemTempo.Update;
  for I := ProgressBar.Min + 1 to ProgressBar.Max do
  begin
      if RBtnNormal.Checked then ProgressBar.State := pbsNormal ;
      if RBtnPausa.Checked then ProgressBar.State := pbsPaused;
      if RBtnErro.Checked then ProgressBar.State := pbsError;

      ProgressBar.Position := I;
      LabelContagemTempo.Caption := IntToStr(ProgressBar.Max - ProgressBar.Position) + ' segundos...';
      LabelContagemTempo.Update;
      Sleep(500);
      Application.ProcessMessages; (* Processa Mensagens Enviadas para o SO ao clicar na aplica��o, evita travamentos.. *)
  end;
  LabelContagemTempo.Caption := 'Conclu�do!';
end;

procedure TForm1.LinkLabelDevMediaLinkClick(Sender: TObject; const Link: string;
  LinkType: TSysLinkType);
begin
  ShellExecute(handle,'open',PChar(Link), '','',SW_SHOWNORMAL)
end;

end.
