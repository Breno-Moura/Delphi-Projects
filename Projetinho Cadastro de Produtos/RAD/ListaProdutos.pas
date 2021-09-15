unit ListaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  AdvGlowButton, DAO.Produtos, Vcl.ExtCtrls;

type
  TFrmListaProdutos = class(TForm)
    DBGrid1: TDBGrid;
    BtnConsultar: TAdvGlowButton;
    EdtConsulta: TEdit;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtConsultaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaProdutos: TFrmListaProdutos;

implementation

uses MainProdutos;
{$R *.dfm}

procedure TFrmListaProdutos.BtnConsultarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmListaProdutos.EdtConsultaChange(Sender: TObject);
begin
  dmDados.TbProdutos.Close;
  dmDados.TbProdutos.SQL.Clear;
  dmDados.TbProdutos.SQL.Add('SELECT * FROM PRODUTOS');
  dmDados.TbProdutos.SQL.Add('WHERE DESCRICAO LIKE ''%'+EdtConsulta.Text+'%'' ');
  dmDados.TbProdutos.Open;
end;

procedure TFrmListaProdutos.FormCreate(Sender: TObject);
begin
  DBGrid1.Columns[1].Width := 100;
end;

end.
