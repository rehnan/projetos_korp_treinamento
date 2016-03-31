unit FrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uProduto, uSetProduto, uListaProdutos, uSujeito;

type
    TForm1 = class(TForm)
    btnAddProduto: TButton;
    edtNomeProduto: TEdit;
    edtPrecoProduto: TEdit;
    edtCodProduto: TEdit;
    lstProdutos: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnAddProdutoClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    produtos : TSetProduto;
    listaProdutos : TListaProdutos;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddProdutoClick(Sender: TObject);
var
  produto : TProduto;
  pos : Integer;
  item : String;
begin
  try
    produto := produtos.AddProduto(StrToInt(edtCodProduto.Text), edtNomeProduto.Text, StrToFloat(edtPrecoProduto.Text));
    pos := produtos.getProduto(produto.getCodigo);
    if pos <> -1 then
    begin
      item := IntToStr(produtos.Item[pos].getCodigo)+' - '+produtos.Item[pos].getNome+' - '+FloatToStr(produtos.Item[pos].getPreco);
      lstProdutos.Items.Add(item);
      ShowMessage('Produto adicionado com sucesso!');
    end;
  except 
    on EitemExist : EItemExists do
       ShowMessage('EItemExists: '+EitemExist.Message);
    on E : Exception do
       ShowMessage('Deu pau! '+E.Message);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  produtos := TSetProduto.Create(TProduto);
  listaProdutos := TListaProdutos.Create(lstProdutos);
  
  
  produtos.observado := TObservado.Create;

    produtos.observado.incluirObservador(listaProdutos);
  //listaProdutos := TListaProdutos.Create(lstProdutos);
  //listaProdutos.atualizar;
 
   
   //listaProdutos.lista.Items.Add('we');
end;

end.
