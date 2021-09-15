unit Gsoft.CadProdutos.DAO.Produto;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, Gsoft.CadProdutos.DAO.Conexao,
  Gsoft.CadProdutos.Model.Produto, System.TypInfo;

type
  TDmProduto = class(TDataModule)
    QryProduto: TUniQuery;
    TbProduto: TUniQuery;
    QryProdutoCodigo: TIntegerField;
    QryProdutoDescricao: TStringField;
    QryProdutoPrecoVenda: TFloatField;
    QryProdutoUnidade: TStringField;
    QryProdutoPorcentagemICMS: TIntegerField;
    QryProdutoAtivo: TBooleanField;
    TbProdutoCodigo: TIntegerField;
    TbProdutoDescricao: TStringField;
    TbProdutoPrecoVenda: TFloatField;
    TbProdutoUnidade: TStringField;
    TbProdutoPorcentagemICMS: TIntegerField;
    TbProdutoAtivo: TBooleanField;
  private
    //Funções usadas no DAO
    procedure AbrirTabela(Codigo: Integer);
    function DataToObjeto: TProduto;
    procedure ObjetoToData(AProduto: TProduto);
  public
  //Funções usadas em tudo
    procedure AbrirConsulta(APesquisa: String);
    function Inserir(AProduto: TProduto): TProduto;
    function Alterar(AProduto : TProduto):TProduto;
    function Excluir(ACodigo: Integer): Boolean;
    function Selecionar (Codigo : Integer): TProduto;
  end;

var
  DmProduto: TDmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
procedure TDmProduto.AbrirConsulta(APesquisa: String);
begin
  Self.QryProduto.Close;
  Self.QryProduto.SQL.Clear;
  Self.QryProduto.SQL.Add('SELECT * FROM PRODUTOS');
  Self.QryProduto.SQL.Add(APesquisa);
  Self.QryProduto.Open;
end;

procedure TDmProduto.AbrirTabela(Codigo: Integer);
begin
  Self.TbProduto.Close();
//  Self.TbProduto.SQL.Add('SELECT * FROM PRODUTOS where codigo = '+TbProdutoCodigo.ToString);
  Self.TbProduto.ParamByName('Codigo').AsInteger := Codigo;
  Self.TbProduto.Open();
end;

function TDmProduto.Inserir(AProduto : TProduto) : TProduto;
begin
  Self.AbrirTabela(-1);
  Self.TbProduto.Append();
  Self.ObjetoToData(AProduto);
  Self.TbProduto.Post();
  Self.TbProduto.Refresh();
  Self.TbProduto.Last();
  Result := Self.DataToObjeto();
end;

function TDmProduto.Alterar(AProduto: TProduto): TProduto;
begin
  Self.AbrirTabela(AProduto.Codigo);
  Self.TbProduto.Edit();
  Self.ObjetoToData(AProduto);
  Self.TbProduto.Post();
  Result := Self.Selecionar(AProduto.Codigo);
end;

function TDmProduto.DataToObjeto: TProduto;
begin
  Result := TProduto.Create();
  Result.Codigo := Self.TbProdutoCodigo.AsInteger;
  Result.Descricao := Self.TbProdutoDescricao.AsString;
  Result.PrecoVenda := Self.TbProdutoPrecoVenda.AsFloat;
  Result.Unidade := TUnidade(GetEnumValue(TypeInfo(TUnidade),Self.TbProdutoUnidade.AsString));
  Result.Icms := Self.TbProdutoPorcentagemICMS.AsInteger;
  Result.Ativo := Self.TbProdutoAtivo.AsBoolean;
end;

procedure TDmProduto.ObjetoToData(AProduto: TProduto);
begin
  Self.TbProdutoDescricao.AsString := AProduto.Descricao;
  Self.TbProdutoPrecoVenda.AsFloat := AProduto.PrecoVenda;
  Self.TbProdutoUnidade.AsString := (GetEnumName(TypeInfo(TUnidade),Integer(AProduto.Unidade)));
  Self.TbProdutoPorcentagemICMS.AsInteger := AProduto.Icms;
  Self.TbProdutoAtivo.AsBoolean := AProduto.Ativo;
end;

function TDmProduto.Selecionar(Codigo: Integer): TProduto;
begin
  Self.AbrirTabela(Codigo);
  if TbProduto.RecordCount < 1  then
    raise Exception.Create('Cadastro de pessoa não encontrado');
  Result := Self.DataToObjeto();
end;

function TDmProduto.Excluir(ACodigo: Integer): Boolean;
begin
  try
    self.Selecionar(ACodigo);
    TbProduto.Delete();
    Result := True;
  except
    Result := False;
  end;
end;

{$R *.dfm}

end.
