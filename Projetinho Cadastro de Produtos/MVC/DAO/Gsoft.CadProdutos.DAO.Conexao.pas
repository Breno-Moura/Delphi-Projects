unit Gsoft.CadProdutos.DAO.Conexao;

interface

uses
  System.SysUtils, System.Classes, DASQLMonitor, UniSQLMonitor, UniProvider,
  SQLServerUniProvider, Data.DB, DBAccess, Uni;

type
  TDmDados = class(TDataModule)
    Conexao: TUniConnection;
    Provedor: TSQLServerUniProvider;
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
