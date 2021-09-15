unit Gsoft.CadProdutos.Produto.View.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Gsoft.CadProdutos.DAO.Conexao,
  Gsoft.CadProdutos.DAO.Produto, Data.DB, AdvGlowButton, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmConsultaProdutos = class(TForm)
    PnlGrid: TPanel;
    PnlBot: TPanel;
    DbgProdutos: TDBGrid;
    DsProduto: TDataSource;
    EdtPesquisa: TEdit;
    BtnSelecionar: TAdvGlowButton;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    procedure Selecionar;
    { Private declarations }
  public
    ProdutoSelecionado : Integer;
  end;

var
  FrmConsultaProdutos: TFrmConsultaProdutos;

implementation

{$R *.dfm}

procedure TFrmConsultaProdutos.BtnSelecionarClick(Sender: TObject);
begin
  Self.Selecionar;
  Self.Close;
end;

procedure TFrmConsultaProdutos.EdtPesquisaChange(Sender: TObject);
begin
  DmProduto.AbrirConsulta('WHERE DESCRICAO LIKE ''%'+EdtPesquisa.Text+'%'' ');
end;

procedure TFrmConsultaProdutos.FormActivate(Sender: TObject);
begin
  DbgProdutos.Columns[1].Width := 300;
end;

procedure TFrmConsultaProdutos.FormCreate(Sender: TObject);
begin
  DmProduto.AbrirConsulta('');
end;

procedure TFrmConsultaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    Self.Selecionar;
    Self.Close;
  end;
  if key = VK_ESCAPE then Self.Close;
end;

procedure TFrmConsultaProdutos.Selecionar();
begin
  if DmProduto.QryProduto.RecordCount > 0 then
  begin
    ProdutoSelecionado := DmProduto.QryProdutoCodigo.AsInteger;
  end;
end;

end.
