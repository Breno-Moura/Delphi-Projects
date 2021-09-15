object DmProduto: TDmProduto
  OldCreateOrder = False
  Height = 305
  Width = 585
  object QryProduto: TUniQuery
    Connection = DmDados.Conexao
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 56
    Top = 48
    object QryProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
      Required = True
    end
    object QryProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object QryProdutoPrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
    end
    object QryProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object QryProdutoPorcentagemICMS: TIntegerField
      FieldName = 'PorcentagemICMS'
    end
    object QryProdutoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
  end
  object TbProduto: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos'
      '  (Descricao, PrecoVenda, Unidade, PorcentagemICMS, Ativo)'
      'VALUES'
      '  (:Descricao, :PrecoVenda, :Unidade, :PorcentagemICMS, :Ativo)'
      'SET :Codigo = SCOPE_IDENTITY()')
    SQLDelete.Strings = (
      'DELETE FROM produtos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE produtos'
      'SET'
      
        '  Descricao = :Descricao, PrecoVenda = :PrecoVenda, Unidade = :U' +
        'nidade, PorcentagemICMS = :PorcentagemICMS, Ativo = :Ativo'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLLock.Strings = (
      'SELECT * FROM produtos'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Descricao, PrecoVenda, Unidade, PorcentagemICMS, Ativo FR' +
        'OM produtos'
      'WHERE'
      '  Codigo = :Codigo')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM produtos'
      ')')
    Connection = DmDados.Conexao
    SQL.Strings = (
      'select * from produtos where codigo = :codigo')
    Left = 168
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        Value = -1
      end>
    object TbProdutoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
      Required = True
    end
    object TbProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object TbProdutoPrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
    end
    object TbProdutoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 3
    end
    object TbProdutoPorcentagemICMS: TIntegerField
      FieldName = 'PorcentagemICMS'
    end
    object TbProdutoAtivo: TBooleanField
      FieldName = 'Ativo'
    end
  end
end
