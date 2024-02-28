object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Lista de Pessoas'
  ClientHeight = 461
  ClientWidth = 894
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 408
    Width = 888
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    ExplicitTop = 388
    ExplicitWidth = 618
    object btnEditar: TButton
      AlignWithMargins = True
      Left = 154
      Top = 3
      Width = 145
      Height = 44
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 0
      OnClick = btnEditarClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object btnCadastrar: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 145
      Height = 44
      Align = alLeft
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = btnCadastrarClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 41
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 888
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    ExplicitWidth = 618
    object btnListarClientes: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 145
      Height = 44
      Align = alLeft
      Caption = 'Listar Clientes'
      TabOrder = 0
      OnClick = btnListarClientesClick
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 59
    Width = 888
    Height = 343
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 376
    Top = 144
    object FDMemTable1codigo: TIntegerField
      FieldName = 'codigo'
    end
    object FDMemTable1nome: TStringField
      DisplayWidth = 50
      FieldName = 'nome'
      Size = 60
    end
    object FDMemTable1apelido: TStringField
      DisplayWidth = 50
      FieldName = 'apelido'
      Size = 60
    end
    object FDMemTable1cpf: TStringField
      DisplayWidth = 30
      FieldName = 'cpf'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 376
    Top = 216
  end
end
