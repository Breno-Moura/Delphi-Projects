object DmDados: TDmDados
  OldCreateOrder = False
  Height = 426
  Width = 557
  object TbProdutos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'Select * from Produtos')
    Left = 328
    Top = 144
    object TbProdutosCodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 5
      FieldName = 'Codigo'
      ReadOnly = True
      Required = True
    end
    object TbProdutosDescricao: TStringField
      DisplayWidth = 16
      FieldName = 'Descricao'
      Size = 100
    end
    object TbProdutosPrecoVenda: TFloatField
      DisplayWidth = 10
      FieldName = 'PrecoVenda'
    end
    object TbProdutosUnidade: TStringField
      DisplayWidth = 6
      FieldName = 'Unidade'
      Size = 3
    end
    object TbProdutosPorcentagemICMS: TIntegerField
      DisplayWidth = 14
      FieldName = 'PorcentagemICMS'
    end
    object TbProdutosAtivo: TBooleanField
      DisplayWidth = 5
      FieldName = 'Ativo'
    end
  end
  object Provedor: TSQLServerUniProvider
    Left = 336
    Top = 80
  end
  object Conexao: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'DEVELOPERS'
    Username = 'sa'
    Server = 'servidor.gsoft.com.br\SQL2019'
    Connected = True
    LoginPrompt = False
    Left = 432
    Top = 80
    EncryptedPassword = 'BFFFB8FF8CFF90FF99FF8BFFCEFFCDFFCFFFCEFFCFFFCAFFC6FFCFFF'
  end
  object Monitor: TUniSQLMonitor
    Left = 424
    Top = 160
  end
end
