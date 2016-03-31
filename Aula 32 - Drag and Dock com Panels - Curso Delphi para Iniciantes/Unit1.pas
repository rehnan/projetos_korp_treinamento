unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnList, Vcl.ActnMan, Vcl.ActnMenus,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Menus, Vcl.CustomizeDlg;

type
    TForm1 = class(TForm)
    PanelMenuEsquerdo: TPanel;
    PanelMenuDireita: TPanel;
    PanelMenuCabecalho: TPanel;
    ActionManagerMenuOpcoes: TActionManager;
    PopupMenuCustomize: TPopupMenu;
    ActionToolBar1: TActionToolBar;
    ActCliente: TAction;
    ActCadastro: TAction;
    ActProdutos: TAction;
    ActContasAPagar: TAction;
    ActRelatorios: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    CustomizeDlgMenu: TCustomizeDlg;
    PopUpPersonlizar: TMenuItem;
    PanelPropriedades: TPanel;
    PanelFerramentas: TPanel;
    procedure PopUpPersonlizarClick(Sender: TObject);
    procedure ActClienteExecute(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure ActProdutosExecute(Sender: TObject);
    procedure ActContasAPagarExecute(Sender: TObject);
    procedure ActRelatoriosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ActClienteExecute(Sender: TObject);
begin
    ShowMessage('Action Clientes!');
end;

procedure TForm1.ActCadastroExecute(Sender: TObject);
begin
  ShowMessage('Action Fornecedores!');
end;

procedure TForm1.ActProdutosExecute(Sender: TObject);
begin
  ShowMessage('Action Produtos!');
end;

procedure TForm1.ActContasAPagarExecute(Sender: TObject);
begin
  ShowMessage('Action Contas � Receber!');
end;

procedure TForm1.ActRelatoriosExecute(Sender: TObject);
begin
  ShowMessage('Action Relat�rios!');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   ActionManagerMenuOpcoes.SaveToFile('configs_menu.txt');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ConfigFile : String;
begin
  ConfigFile := 'configs_menu.txt';
  if fileexists(ConfigFile) then
  begin
  ActionManagerMenuOpcoes.LoadFromFile('configs_menu.txt');
  ShowMessage('Configura��es carregadas com sucesso!');
  end;
end;

procedure TForm1.PopUpPersonlizarClick(Sender: TObject);
begin
  CustomizeDlgMenu.Show;
end;

end.
