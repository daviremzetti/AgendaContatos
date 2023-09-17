object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 96
  end
  object DriveConexao: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\davi_\OneDrive\Documentos\Embarcadero\Studio\Projects\A' +
      'gendaContatos\libmysql.dll'
    Left = 240
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 384
    Top = 112
  end
  object TabelaContatos: TFDTable
    Active = True
    AfterInsert = TabelaContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'agenda.contatos'
    Left = 200
    Top = 216
    object TabelaContatosid: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
    end
    object TabelaContatosnome: TStringField
      DisplayWidth = 13
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object TabelaContatostelefone: TStringField
      DisplayWidth = 14
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 14
    end
    object TabelaContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      DisplayWidth = 9
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object TabelaContatosobervacoes: TMemoField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'obervacoes'
      Origin = 'obervacoes'
      BlobType = ftMemo
    end
    object TabelaContatosdataCadastro: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
    end
  end
  object DadosContatos: TDataSource
    DataSet = TabelaContatos
    Left = 344
    Top = 232
  end
end
