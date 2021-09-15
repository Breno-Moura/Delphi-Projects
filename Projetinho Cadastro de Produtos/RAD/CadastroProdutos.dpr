program CadastroProdutos;

uses
  Vcl.Forms,
  MainProdutos in 'MainProdutos.pas' {FrmPrincipal},
  DAO.Produtos in 'DAO.Produtos.pas' {DmDados: TDataModule},
  ListaProdutos in 'ListaProdutos.pas' {FrmListaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
