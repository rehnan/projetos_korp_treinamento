unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uVariavelDeClasse, Vcl.StdCtrls, UConexao, UEntidades,
  Aurelius.Commands.Listeners,
  Aurelius.Drivers.Interfaces,
  Aurelius.Engine.AbstractManager,
  Aurelius.Engine.ObjectManager,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Drivers.SQLite,
  Aurelius.Criteria.Linq,
  Aurelius.Criteria.Expression,
  Aurelius.Criteria.Base,
  Generics.Collections,
  Aurelius.Sql.SQLite, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Data.DB,
  Aurelius.Bind.Dataset, frxClass, frxDBSet, Data.SqlExpr;

type
  TForm1 = class(TForm)
    Button1: TButton;
    pgcCadastros: TPageControl;
    tabFornecedores: TTabSheet;
    tabProdutos: TTabSheet;
    tabLista: TTabSheet;
    grpPesquisa: TGroupBox;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtCidade: TEdit;
    edtTelefone: TEdit;
    btnNovoFornecedor: TButton;
    btnSalvarFornecedor: TButton;
    btnAtualizarFornecedor: TButton;
    btnRemoverFornecedor: TButton;
    edtId: TEdit;
    lblId: TLabel;
    lblRazaoSocial: TLabel;
    lblEndereco: TLabel;
    lblCidade: TLabel;
    lblTelefone: TLabel;
    rgRestricaoFornecedor: TRadioGroup;
    edtPesquisaFornecedor: TEdit;
    btnPesquisarFornecedor: TButton;
    sgProdutos: TStringGrid;
    btnListar: TButton;
    grpProdutos: TGroupBox;
    rgRestricaoProduto: TRadioGroup;
    btnPesquisarProduto: TButton;
    edtIdProduto: TEdit;
    edtDescProduto: TEdit;
    edtQtdProduto: TEdit;
    edtValorProduto: TEdit;
    lblIdProduto: TLabel;
    lblIdFornecedorProd: TLabel;
    lblDescProduto: TLabel;
    lblQtdProduto: TLabel;
    lblValorProduto: TLabel;
    btnRemoverProduto: TButton;
    btnAtualizarProduto: TButton;
    btnSalvarProduto: TButton;
    btnNovoProduto: TButton;
    cbbFornecedores: TComboBox;
    lblNomeFornecedor: TLabel;
    edtPesquisaProduto: TEdit;
    dtpDataInicial: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Button2: TButton;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoFornecedorClick(Sender: TObject);
    procedure btnSalvarFornecedorClick(Sender: TObject);
    procedure btnPesquisarFornecedorClick(Sender: TObject);
    procedure edtPesquisaFornecedorEnter(Sender: TObject);
    procedure btnAtualizarFornecedorClick(Sender: TObject);
    procedure btnRemoverFornecedorClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);

    procedure limparFormulario();
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure btnSalvarProdutoClick(Sender: TObject);
    procedure tabProdutosShow(Sender: TObject);
    procedure cbbFornecedoresSelect(Sender: TObject);
    procedure cbbFornecedoresExit(Sender: TObject);
    procedure cbbFornecedoresKeyPress(Sender: TObject; var Key: Char);
    procedure btnAtualizarProdutoClick(Sender: TObject);
    procedure btnPesquisarProdutoClick(Sender: TObject);
    procedure edtPesquisaProdutoEnter(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    produtoAtual : TProduto;
    fornecedorAtual : TFornecedor;
    gerenciadorFornecedores : TObjectManager;
    gerenciadorProdutos : TObjectManager;
    gerenciador : TObjectManager;

    function GetConexaoAtual: IDBConnection;
  end;

var
  Form1: TForm1;
   minhaPackage: HMODULE;

implementation

{$R *.dfm}

procedure TForm1.btnAtualizarProdutoClick(Sender: TObject);
begin
  if produtoAtual <> nil then
   begin
      produtoAtual.Idfornecedor := StrToInt(cbbFornecedores.Text);
      produtoAtual.Descricao := edtDescProduto.Text;
      produtoAtual.Quantidade := StrToInt(edtQtdProduto.Text);
      produtoAtual.Valor := StrToFloat(edtValorProduto.Text);
      try
         gerenciadorProdutos.OwnsObjects := False;
         gerenciadorProdutos.Update(produtoAtual);
         gerenciadorProdutos.Flush;
         edtPesquisaProduto.SetFocus;
         ShowMessage('Produto atualizado com �xito!');
      except
         ShowMessage('Houve um erro ao gravar!');
      end;
   end
   else
      ShowMessage('Selecione um produto para alterar!');
end;

procedure TForm1.btnListarClick(Sender: TObject);
  var
  listaProdutos: TList<TProduto>;
  produtoTemp: TProduto;
  i, j: Integer;
begin
   if fornecedorAtual <> nil then
   begin
      for i := 0 to sgProdutos.RowCount - 1 do
         for j := 0 to sgProdutos.ColCount - 1 do
            sgProdutos.Cells[j, i] := '';
      with sgProdutos do
      begin
         RowCount := 2;
         Cells[0, 0] := 'Id';
         Cells[1, 0] := 'Descri��o';
         Cells[2, 0] := 'Quantidade';
         Cells[3, 0] := 'Valor';
      end;
      try
         listaProdutos := gerenciadorProdutos.CreateCriteria<TProduto>.Where(TLinq.Eq('Idfornecedor', fornecedorAtual.Id)).List;

         if listaProdutos.Count > 0 then
         begin
            sgProdutos.RowCount := ListaProdutos.Count + 1;
            for i := 0 to ListaProdutos.Count - 1 do
            begin
               produtoTemp := listaProdutos[i];
               sgProdutos.Cols[0].Objects[i + 1] := produtoTemp;
               sgProdutos.Cells[0, i + 1] := IntToStr(produtoTemp.Id);
               sgProdutos.Cells[1, i + 1] := produtoTemp.Descricao;
               sgProdutos.Cells[2, i + 1] := FormatFloat
               ('0.00', produtoTemp.Quantidade);
               sgProdutos.Cells[3, i + 1] := FormatFloat
               ('0.00', produtoTemp.Valor);
            end;
         end;
      finally
         listaProdutos.Free;
      end;
   end
   else
   begin
      ShowMessage('Selecione um fornecedor!');
       pgcCadastros.ActivePage := tabFornecedores;
       edtPesquisaFornecedor.SetFocus;
   end;
end;

procedure TForm1.btnNovoFornecedorClick(Sender: TObject);
begin
   limparFormulario();
   fornecedorAtual := nil;
end;

procedure TForm1.btnNovoProdutoClick(Sender: TObject);
begin
   cbbFornecedores.ItemIndex := -1;
   lblNomeFornecedor.Caption := '';
   limparFormulario();
   produtoAtual := nil;
end;

procedure TForm1.btnPesquisarFornecedorClick(Sender: TObject);
begin
 if Trim(edtPesquisaFornecedor.Text) <> '' then
 begin
    try
       //gerenciador.OwnsObjects := False;
       case rgRestricaoFornecedor.ItemIndex of
          0: fornecedorAtual := gerenciador.
          Find<TFornecedor>(StrToInt(edtPesquisaFornecedor.Text));
          1: fornecedorAtual := gerenciador.
          CreateCriteria<TFornecedor>.Where(TLinq.Like('Razaosocial', edtPesquisaFornecedor.Text)).UniqueResult;
       end;
       if fornecedorAtual <> nil then
       begin
          edtId.Text := IntToStr(fornecedorAtual.Id);
          edtRazaoSocial.Text := fornecedorAtual.Razaosocial;
          edtEndereco.Text := fornecedorAtual.Endereco;
          edtCidade.Text := fornecedorAtual.Cidade;
          edtTelefone.Text := fornecedorAtual.Telefone;
       end
       else
          ShowMessage('Fornecedor n�o foi encontrado!');
    except
       ShowMessage('Houve um erro!');
    end;
  end;
end;

procedure TForm1.btnPesquisarProdutoClick(Sender: TObject);
begin
  try
     gerenciadorProdutos.OwnsObjects := False;
     case rgRestricaoProduto.ItemIndex of
        0: produtoAtual := gerenciadorProdutos.
        Find<TProduto>(StrToInt(edtPesquisaProduto.Text));
        1: produtoAtual := gerenciadorProdutos.
        CreateCriteria<TProduto>.Where(TLinq.Like('Descricao', edtPesquisaProduto.Text)).UniqueResult;
     end;
     if produtoAtual <> nil then
     begin
        edtIdProduto.Text := IntToStr(produtoAtual.Id);
        cbbFornecedores.ItemIndex := cbbFornecedores.Items.IndexOf(IntToStr(produtoAtual.Idfornecedor)); 
        edtDescProduto.Text := produtoAtual.Descricao;
        edtQtdProduto.Text := FloatToStr(produtoAtual.Quantidade);
        edtValorProduto.Text := FloatToStr(produtoAtual.Valor);

        cbbFornecedoresExit(Self);
     end
     else
        ShowMessage('Produto n�o foi encontrado!');
    except
       ShowMessage('Houve um erro!');
    end;
end;

procedure TForm1.btnSalvarFornecedorClick(Sender: TObject);
var
   fornecedor: TFornecedor;
begin
   fornecedor := TFornecedor.Create;
   fornecedor.RazaoSocial := edtRazaoSocial.Text;
   fornecedor.Endereco := edtEndereco.Text;
   fornecedor.Cidade := edtCidade.Text;
   fornecedor.Telefone := edtTelefone.Text;
   try
      gerenciador.Save(fornecedor);
      gerenciador.Flush;
      edtId.Text := IntToStr(fornecedor.Id);
      fornecedorAtual := fornecedor;
      ShowMessage('Fornecedor gravado com �xito!');
   except
      ShowMessage('Houve um erro ao gravar!');
   end;
end;

procedure TForm1.btnSalvarProdutoClick(Sender: TObject);
var
   produto: TProduto;
begin
   try
      produto := TProduto.Create;
      produto.Idfornecedor := StrToInt(cbbFornecedores.Items[cbbFornecedores.ItemIndex]);
      produto.Descricao := edtDescProduto.Text;
      produto.Quantidade := StrToFloat(edtQtdProduto.Text);
      produto.Valor := StrToFloat(edtValorProduto.Text);
      
      gerenciador.Save(produto);
      gerenciador.Flush;
      edtIdProduto.Text := IntToStr(produto.Id);
      produtoAtual := produto;
      ShowMessage('Produto gravado com �xito!');
   except 
      on E : Exception do
        ShowMessage('Houve um erro ao tentar gravar');
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
//var
//  class1, class2 : TMyUniqueClass;
//  p1, p2: ^integer;
begin
    {*
  if Assigned(class1) then ShowMessage('O ponteiro da Classe 1 n�o est� nulo')
  else ShowMessage('O ponteiro est� nulo');

  if Assigned(class2) then ShowMessage('O ponteiro da Classe 2 n�o est� nulo')
  else ShowMessage('O ponteiro est� nulo');


  class1 := TMyUniqueClass.Instance;
  class2 := TMyUniqueClass.Instance;

  FreeAndNil(class2);

  class2 := TMyUniqueClass.Instance;

  p1 := @class1;
  p2 := @class2;

  ShowMessage('Classe 1 apontando para o endere�o de inst�ncia: '+inttostr(integer(p1^)));
  ShowMessage('Classe 2 apontando para o endere�o de inst�ncia: '+inttostr(integer(p2^)));
    }


end;

procedure TForm1.Button2Click(Sender: TObject);
var
   listaFornecedores : TList<TFornecedor>;
   f : TFornecedor;
   anoInicial, mesInicial, diaInicial, anoFinal, mesFinal, diaFinal : Word;
begin
  anoInicial := StrToint(FormatDateTime('yyyy', dtpDataInicial.Date));
  mesInicial := StrToint(FormatDateTime('mm',  dtpDataInicial.Date));
  diaInicial := StrToint(FormatDateTime('dd',  dtpDataInicial.Date));

  anoFinal := StrToint(FormatDateTime('yyyy', dtpDataFinal.Date));
  mesFinal := StrToint(FormatDateTime('mm',  dtpDataFinal.Date));
  diaFinal := StrToint(FormatDateTime('dd',  dtpDataFinal.Date));
 
  listaFornecedores := TList<TFornecedor>.Create;

  //ShowMessage(DateToStr(dtpDataInicial.Date));

  try
       { http://www.tmssoftware.biz/business/aurelius/doc/web/less_than_or_equals_to.htm
         uses que devem ser adicionadas:
             Aurelius.Criteria.Expression,
             Aurelius.Criteria.Base,
       }

      GerenciadorFornecedores.OwnsObjects := False;
      listaFornecedores := gerenciadorFornecedores.Find<TFornecedor>
      .Add(TExpression.GreaterOrEqual('DATACRIACAO', EncodeDate(anoInicial, mesInicial, diaInicial)))
      .Add(TExpression.LessOrEqual('DATACRIACAO', EncodeDate(anoFinal, mesFinal, diaFinal)))
      .List;

      for f in listaFornecedores do
      begin
         ShowMessage(f.Razaosocial);
      end;





  finally
    FreeAndNil(listaFornecedores);
  end;

end;

procedure TForm1.cbbFornecedoresExit(Sender: TObject);
var
   f : TFornecedor;
   fornecedor_id : String;
begin
  if cbbFornecedores.ItemIndex > -1 then
    try
      GerenciadorFornecedores.OwnsObjects := False;
      fornecedor_id := cbbFornecedores.Items[cbbFornecedores.ItemIndex];
      f := GerenciadorFornecedores.Find<TFornecedor>(StrToInt(fornecedor_id));
      lblNomeFornecedor.Caption := f.Razaosocial;
    except on E : Exception do
      begin
        ShowMessage('Fornecedor n�o encontrado!');
        cbbFornecedores.SetFocus;
      end;
    end;
end;

procedure TForm1.cbbFornecedoresKeyPress(Sender: TObject; var Key: Char);
begin
  key:=#0;
end;

procedure TForm1.cbbFornecedoresSelect(Sender: TObject);
begin
      ;
end;

procedure TForm1.btnAtualizarFornecedorClick(Sender: TObject);
begin
  if fornecedorAtual <> nil then
   begin
      fornecedorAtual.RazaoSocial := edtRazaoSocial.Text;
      fornecedorAtual.Endereco := edtEndereco.Text;
      fornecedorAtual.Cidade := edtCidade.Text;
      fornecedorAtual.Telefone := edtTelefone.Text;
      try
         GerenciadorFornecedores.OwnsObjects := False;
         GerenciadorFornecedores.Update(fornecedorAtual);
         GerenciadorFornecedores.Flush;
         edtPesquisaFornecedor.SetFocus;
         ShowMessage('Fornecedor gravado com �xito!');
      except
         ShowMessage('Houve um erro ao gravar!');
      end;
   end
   else
      ShowMessage('Selecione um fornecedor para alterar!');
end;

procedure TForm1.btnRemoverFornecedorClick(Sender: TObject);
begin
  if fornecedorAtual <> nil then
   begin
      gerenciadorFornecedores.Remove(fornecedorAtual);
      gerenciadorFornecedores.Flush;
      btnNovoFornecedor.Click;
      ShowMessage('Fornecedor exclu�do com �xito!');
   end;
end;

procedure TForm1.btnRemoverProdutoClick(Sender: TObject);
begin
  if produtoAtual <> nil then
   begin
      gerenciadorProdutos.Remove(produtoAtual);
      gerenciadorProdutos.Flush;
      btnNovoProduto.Click;
      ShowMessage('Produto exclu�do com �xito!');
   end;
end;

procedure TForm1.edtPesquisaFornecedorEnter(Sender: TObject);
begin
   edtPesquisaFornecedor.Clear;
   case rgRestricaoFornecedor.ItemIndex of
    0: edtPesquisaFornecedor.NumbersOnly := True;
    1: edtPesquisaFornecedor.NumbersOnly := False;
   end;
end;

procedure TForm1.edtPesquisaProdutoEnter(Sender: TObject);
begin
   edtPesquisaProduto.Clear;
   case rgRestricaoProduto.ItemIndex of
    0: edtPesquisaProduto.NumbersOnly := True;
    1: edtPesquisaProduto.NumbersOnly := False;
   end;
end;

{ Retorna uma conex�o }
procedure TForm1.FormCreate(Sender: TObject);
begin
   gerenciadorFornecedores := TObjectManager.Create(GetConexaoAtual);
   gerenciadorProdutos := TObjectManager.Create(GetConexaoAtual);
   gerenciador := TObjectManager.Create(GetConexaoAtual);
   pgcCadastros.ActivePage := tabFornecedores;
end;


procedure TForm1.FormDestroy(Sender: TObject);
begin
  gerenciadorFornecedores.Free;
  gerenciadorProdutos.Free;
end;

function TForm1.GetConexaoAtual: IDBConnection;
begin
  Result := TGerenciadorConexao.GetInstancia.Conexao;
end;


procedure TForm1.limparFormulario();
var
  i : Integer;
begin
  for i := ComponentCount -1 downto 0 do
     if Components[i].ClassType = TEdit then
       TEdit(Components[i]).Clear;
end;

procedure TForm1.tabProdutosShow(Sender: TObject);
  var
    fornecedores : TList<TFornecedor>;
    f : TFornecedor;
begin
  cbbFornecedores.Items.Clear;
  fornecedores := gerenciadorFornecedores.FindAll<TFornecedor>;
  for f in fornecedores do
  begin
    cbbFornecedores.Items.Add(IntToStr(f.Id));
  end;
end;

end.
