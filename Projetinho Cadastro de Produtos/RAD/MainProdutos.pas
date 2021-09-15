{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit MainProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, ListaProdutos, DAO.Produtos, Vcl.ExtCtrls,
  AdvSmoothLabel;

type
  TFrmPrincipal = class(TForm)
    Label1: TLabel;
    EdtCodigo: TDBEdit;
    DsProdutos: TDataSource;
    Label2: TLabel;
    EdtDescricao: TDBEdit;
    Label3: TLabel;
    EdtPrecoVenda: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdtICMS: TDBEdit;
    ChbAtivo: TDBCheckBox;
    BtnConsultar: TAdvGlowButton;
    BtnCadastrar: TAdvGlowButton;
    CmbUnidade: TDBComboBox;
    DBNavigator1: TDBNavigator;
    EdtEditar: TAdvGlowButton;
    BtnIncluir: TAdvGlowButton;
    PnlPrincipal: TPanel;
    BtnExcluir: TAdvGlowButton;
    PnlTop: TPanel;
    PnlBot: TPanel;
    PnlCostas: TPanel;
    PnlDireita: TPanel;
    BtnCalcularICMS: TAdvGlowButton;
    AdvSmoothLabel1: TAdvSmoothLabel;
    LblResultadoICMS: TLabel;
    Label6: TLabel;
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtEditarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCalcularICMSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCadastrarClick(Sender: TObject);
begin
  if DsProdutos.State in [dsEdit, dsInsert] then
  begin
    if Application.MessageBox('Deseja gravar?','Confirmação',WM_MDINEXT) = 6 then
    begin
      DmDados.TbProdutosAtivo.Value := True;
      DmDados.TbProdutos.Post;
    end
    else
    begin
      DmDados.TbProdutos.Cancel;
    end;
  end;
  PnlPrincipal.Enabled := False;
end;

procedure TFrmPrincipal.BtnIncluirClick(Sender: TObject);
begin
  PnlPrincipal.Enabled := True;
  DmDados.TbProdutos.Append;
  EdtDescricao.SetFocus;
end;

procedure TFrmPrincipal.BtnCalcularICMSClick(Sender: TObject);
var
  icms :double;
begin
  if StrToIntDef(EdtCodigo.Text, 0) >= 1 then
  begin
//    icms := (StrToFloat(EdtPrecoVenda.Text)*(100+StrToInt(EdtICMS.Text)))/100;
    icms := (DmDados.TbProdutosPrecoVenda.AsFloat*(100+DmDados.TbProdutosPorcentagemICMS.AsFloat))/100;
    LblResultadoICMS.Caption := floattostr(icms);
  end;
end;

procedure TFrmPrincipal.BtnConsultarClick(Sender: TObject);
  begin
  FrmListaProdutos := TFrmListaProdutos.Create(Self);
  try
    FrmListaProdutos.ShowModal;
  finally
    FrmListaProdutos.Free;
  end;
end;

procedure TFrmPrincipal.BtnExcluirClick(Sender: TObject);
begin
  if DsProdutos.State in [dsBrowse] then
  begin
    if DmDados.TbProdutos.RecordCount > 0 then
    begin
       if Application.MessageBox('Deseja excluir?','Confirmação',WM_MDINEXT) = 6 then
        DmDados.TbProdutos.Delete;
    end;
  end;
end;

procedure TFrmPrincipal.EdtEditarClick(Sender: TObject);
begin
  PnlPrincipal.Enabled := True;
  DmDados.TbProdutos.Edit;
  EdtDescricao.SetFocus;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DmDados.TbProdutos.Close;
  DmDados.TbProdutos.Open;

  CmbUnidade.Items.Add('g');
  CmbUnidade.Items.Add('kg');
  CmbUnidade.Items.Add('to');
end;

end.
