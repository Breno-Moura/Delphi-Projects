unit DAO.Produtos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  SQLServerUniProvider, MemDS, DASQLMonitor, UniSQLMonitor;

type
  TDmDados = class(TDataModule)
    TbProdutos: TUniQuery;
    Provedor: TSQLServerUniProvider;
    Conexao: TUniConnection;
    TbProdutosCodigo: TIntegerField;
    TbProdutosDescricao: TStringField;
    TbProdutosPrecoVenda: TFloatField;
    TbProdutosUnidade: TStringField;
    TbProdutosPorcentagemICMS: TIntegerField;
    TbProdutosAtivo: TBooleanField;
    Monitor: TUniSQLMonitor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
