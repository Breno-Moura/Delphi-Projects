object FrmListaProdutos: TFrmListaProdutos
  Left = 0
  Top = 0
  Caption = 'Lista de Produtos'
  ClientHeight = 503
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 789
    Height = 448
    Align = alClient
    DataSource = FrmPrincipal.DsProdutos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 318
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecoVenda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PorcentagemICMS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativo'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 448
    Width = 789
    Height = 55
    Align = alBottom
    Color = clGreen
    ParentBackground = False
    TabOrder = 1
    object EdtConsulta: TEdit
      Left = 8
      Top = 15
      Width = 625
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Informe o nome do produto'
      OnChange = EdtConsultaChange
    end
    object BtnConsultar: TAdvGlowButton
      Left = 673
      Top = 6
      Width = 100
      Height = 41
      Caption = 'Consultar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BtnConsultarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
end
