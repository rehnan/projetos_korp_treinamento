unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarro, uAviao;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EdtDescCarro: TEdit;
    EdtCapCarro: TEdit;
    EdtQuilometragem: TEdit;
    EdtDescAviao: TEdit;
    EdtCapAviao: TEdit;
    EdtHorasVoo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnCriarCarro: TButton;
    BtnLiberarCarro: TButton;
    BtnCriarAviao: TButton;
    BtnLberarAviao: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    BtnMover: TButton;
    procedure BtnCriarCarroClick(Sender: TObject);
    procedure BtnCriarAviaoClick(Sender: TObject);
    procedure BtnLiberarCarroClick(Sender: TObject);
    procedure BtnLberarAviaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Carro : TCarro;
    Aviao : TAviao;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnCriarAviaoClick(Sender: TObject);
begin
  // cria o objeto e inicia campos conforme valores dos edits

  Aviao := TAviao.Create;

  if EdtDescAviao.Text<>'' then

     Aviao.Descricao:=EdtDescAviao.Text;

  if EdtCapAviao.Text<>'' then

     Aviao.Capacidade:=StrToIntDef(EdtCapAviao.Text,0);

  if EdtHorasVoo.Text<>'' then

     Aviao.HorasVoo:=StrToIntDef(EdtHorasVoo.Text,0);

end;

procedure TForm1.BtnCriarCarroClick(Sender: TObject);
begin
  Carro := TCarro.Create;

  Carro:=TCarro.Create;

  if EdtDescCarro.Text<>'' then

     Carro.Descricao:=EdtDescCarro.Text;

  if EdtCapCarro.Text<>'' then

     Carro.Capacidade:=StrToIntDef(EdtCapCarro.Text,0);

  if EdtQuilometragem.Text<>'' then

     Carro.Quilometragem:=StrToIntDef(EdtQuilometragem.Text,0);
end;

procedure TForm1.BtnLberarAviaoClick(Sender: TObject);
begin
  Aviao.Free; // ou FreeAndNil(Carro)
end;

procedure TForm1.BtnLiberarCarroClick(Sender: TObject);
begin
  Carro.Free; // ou FreeAndNil(Carro)
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Carro.Mover;
end;

end.
