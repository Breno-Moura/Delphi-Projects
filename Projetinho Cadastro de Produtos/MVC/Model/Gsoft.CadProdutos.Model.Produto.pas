unit Gsoft.CadProdutos.Model.Produto;

interface

  type TUnidade = (g = 0, kg = 1, ton = 2);

  type TProduto = class
    private
      FCodigo: Integer;
      FDescricao: String;
      FPrecoVenda: Double;
      FUnidade: TUnidade;
      FIcms: Integer;
      FAtivo: Boolean;
      function CalcularICMS: Double;

    public
      property Codigo: Integer read FCodigo write FCodigo;
      property Descricao: String read FDescricao write FDescricao;
      property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
      property Unidade: TUnidade read FUnidade write FUnidade;
      property Icms: Integer read FIcms write FIcms;
      property Ativo: Boolean read FAtivo write FAtivo;
      property ImpostoICMS: Double read CalcularICMS;
  end;

implementation

{ TProduto }

function TProduto.CalcularICMS: Double;
var
  x: double;
begin
  x := FIcms/100;
  Result :=  FPrecoVenda - (FPrecoVenda/(1+x));
end;

end.
