object FrmConsultaProdutos: TFrmConsultaProdutos
  Left = 0
  Top = 0
  Caption = 'Consulta de Produtos'
  ClientHeight = 439
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 376
    Align = alClient
    AutoSize = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DbgProdutos: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 620
      Height = 368
      Align = alClient
      DataSource = DsProduto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -27
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = []
    end
  end
  object PnlBot: TPanel
    Left = 0
    Top = 376
    Width = 628
    Height = 63
    Align = alBottom
    Color = 829683
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object EdtPesquisa: TEdit
      Left = 16
      Top = 14
      Width = 465
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'Informe o nome do produto'
      OnChange = EdtPesquisaChange
    end
    object BtnSelecionar: TAdvGlowButton
      Left = 520
      Top = 6
      Width = 95
      Height = 49
      Caption = 'Selecionar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BtnSelecionarClick
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
  object DsProduto: TDataSource
    DataSet = DmProduto.QryProduto
    Left = 664
    Top = 192
  end
end
