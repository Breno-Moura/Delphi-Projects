object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produtos'
  ClientHeight = 418
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 51
    Align = alTop
    Color = 829683
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 695
      Height = 49
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'CADASTRO DE PRODUTOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = -55
      ExplicitWidth = 697
      ExplicitHeight = 295
    end
  end
  object PnlBot: TPanel
    Left = 0
    Top = 352
    Width = 697
    Height = 66
    Align = alBottom
    Color = 829683
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 357
    object BtnIncluir: TAdvGlowButton
      Left = 8
      Top = 5
      Width = 120
      Height = 55
      Caption = 'Novo Produto'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = BtnIncluirClick
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
    object BtnCadastrar: TAdvGlowButton
      Left = 148
      Top = 5
      Width = 120
      Height = 55
      Caption = 'Cadastrar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = BtnCadastrarClick
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
    object BtnEditar: TAdvGlowButton
      Left = 290
      Top = 5
      Width = 120
      Height = 55
      Caption = 'Editar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 2
      OnClick = BtnEditarClick
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
    object BtnExcluir: TAdvGlowButton
      Left = 428
      Top = 5
      Width = 120
      Height = 55
      Caption = 'Excluir'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = BtnExcluirClick
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
    object BtnConsultar: TAdvGlowButton
      Left = 564
      Top = 5
      Width = 120
      Height = 55
      Caption = 'Consultar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
  object PnlCostas: TPanel
    Left = 0
    Top = 51
    Width = 697
    Height = 301
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 309
    object PnlPrincipal: TPanel
      Left = 1
      Top = 1
      Width = 360
      Height = 299
      Align = alLeft
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 5
      object Label2: TLabel
        Left = 48
        Top = 5
        Width = 45
        Height = 20
        Caption = 'C'#243'digo'
      end
      object Label3: TLabel
        Left = 48
        Top = 55
        Width = 61
        Height = 20
        Caption = 'Descri'#231#227'o'
      end
      object Label4: TLabel
        Left = 48
        Top = 112
        Width = 79
        Height = 20
        Caption = 'Pre'#231'o Venda'
      end
      object Label5: TLabel
        Left = 48
        Top = 172
        Width = 51
        Height = 20
        Caption = 'Unidade'
      end
      object Label6: TLabel
        Left = 48
        Top = 232
        Width = 119
        Height = 20
        Caption = 'Porcentagem ICMS'
      end
      object EdtCodigo: TEdit
        Left = 48
        Top = 28
        Width = 61
        Height = 28
        Color = clSilver
        Enabled = False
        TabOrder = 0
      end
      object EdtDescricao: TEdit
        Left = 48
        Top = 78
        Width = 225
        Height = 28
        TabOrder = 1
      end
      object EdtPrecoVenda: TEdit
        Left = 48
        Top = 138
        Width = 100
        Height = 28
        TabOrder = 2
      end
      object EdtICMS: TEdit
        Left = 48
        Top = 258
        Width = 100
        Height = 28
        TabOrder = 3
      end
      object CbbUnidade: TComboBox
        Left = 48
        Top = 198
        Width = 61
        Height = 28
        TabOrder = 4
        Items.Strings = (
          'g'
          'kg'
          'ton')
      end
      object ChbAtivo: TCheckBox
        Left = 263
        Top = 269
        Width = 97
        Height = 17
        Caption = 'Ativo'
        TabOrder = 5
      end
    end
    object PnlDireita: TPanel
      Left = 360
      Top = 1
      Width = 336
      Height = 299
      Align = alRight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 336
      ExplicitTop = 92
      object LblResultadoICMS: TLabel
        Left = 137
        Top = 77
        Width = 5
        Height = 25
      end
    end
  end
  object BtnCalcularICMS: TAdvGlowButton
    Left = 488
    Top = 297
    Width = 100
    Height = 41
    Caption = 'Calcular ICMS'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 3
    OnClick = BtnCalcularICMSClick
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
