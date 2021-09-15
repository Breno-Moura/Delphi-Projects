program CadProdutos;

uses
  Vcl.Forms,
  Gsoft.CadProdutos.View.Main in 'View\Gsoft.CadProdutos.View.Main.pas' {FrmPrincipal},
  Gsoft.CadProdutos.Model.Produto in 'Model\Gsoft.CadProdutos.Model.Produto.pas',
  Gsoft.CadProdutos.DAO.Conexao in 'DAO\Gsoft.CadProdutos.DAO.Conexao.pas' {DmDados: TDataModule},
  Gsoft.CadProdutos.DAO.Produto in 'DAO\Gsoft.CadProdutos.DAO.Produto.pas' {DmProduto: TDataModule},
  Gsoft.CadProdutos.Produto.View.Consulta in 'View\Gsoft.CadProdutos.Produto.View.Consulta.pas' {FrmConsultaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
