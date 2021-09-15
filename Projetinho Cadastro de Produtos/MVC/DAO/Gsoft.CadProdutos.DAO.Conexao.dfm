object DmDados: TDmDados
  OldCreateOrder = False
  Height = 215
  Width = 446
  object Conexao: TUniConnection
    ProviderName = 'SQL Server'
    Database = 'DEVELOPERS'
    Username = 'sa'
    Server = 'servidor.gsoft.com.br\SQL2019'
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 64
    EncryptedPassword = 'BFFFB8FF8CFF90FF99FF8BFFCEFFCDFFCFFFCEFFCFFFCAFFC6FFCFFF'
  end
  object Provedor: TSQLServerUniProvider
    Left = 192
    Top = 64
  end
  object Monitor: TUniSQLMonitor
    Left = 304
    Top = 64
  end
end
