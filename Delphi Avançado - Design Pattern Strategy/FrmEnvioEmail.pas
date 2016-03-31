unit FrmEnvioEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, uITransporte, uTTransporteFactory, IdMessage;

type
  TForm1 = class(TForm)
    lblSmtpHost: TLabel;
    lblPorta: TLabel;
    lblLogin: TLabel;
    lblSenha: TLabel;
    cbbPorta: TComboBox;
    pmAdicionarPorta: TPopupMenu;
    AdicionarPorta1: TMenuItem;
    edtSmtpHost: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    chkConexaoSegura: TCheckBox;
    grpConfigsConexao: TGroupBox;
    grpConfigsEmail: TGroupBox;
    lblRemetente: TLabel;
    lblEmailResposta: TLabel;
    lblEmailsDestinatarios: TLabel;
    lblAssunto: TLabel;
    lblMensagem: TLabel;
    lblProgressoEnvio: TLabel;
    edtRemetente: TEdit;
    edtEmailResposta: TEdit;
    edtDestinatarios: TEdit;
    edtAssunto: TEdit;
    mmoMensagem: TMemo;
    mmoProgresso: TMemo;
    btnEnviar: TButton;
    chkArmazenarLocamente: TCheckBox;
    procedure AdicionarPorta1Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    Femail: TIdMessage;
    procedure Setemail(const Value: TIdMessage);
    { Private declarations }
  public
    { Public declarations }
    transporte : ITransporte;
    property email: TIdMessage read Femail write Setemail;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdicionarPorta1Click(Sender: TObject);
var
  porta : String;
begin
  Try
    repeat
      porta := Trim(inputbox('Adicionar Porta', 'Informe o n�mero da porta:', ''));
    until porta <> '';
    StrToInt(porta);
    cbbPorta.Items.Add(porta);
    ShowMessage('Porta '+porta+' adicionada com sucesso!');
  Except
    On E : EConvertError do
    begin
      ShowMessage('Voc� deve informar um n�mero inteiro!');
      AdicionarPorta1Click(Self);
    end;
  End;
end;

procedure TForm1.btnEnviarClick(Sender: TObject);
begin

  transporte := TTransporteFactory.Factory(chkArmazenarLocamente.Checked, edtSmtpHost.Text, cbbPorta.Text, chkConexaoSegura.Checked);
  email := TIdMessage.Create(nil);
  email.From.Address := edtEmailResposta.Text;
  email.Recipients.EMailAddresses := edtDestinatarios.Text;
  email.Subject := edtAssunto.Text;
  email.Body.Text := mmoMensagem.Text;
  transporte.Enviar(email);

end;

procedure TForm1.Setemail(const Value: TIdMessage);
begin
  Femail := Value;
end;

end.



