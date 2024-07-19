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
    object pnlNovo: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Novo'
      Color = 5540912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      OnClick = pnlNovoClick
    end
    object pnlEditar: TPanel
      AlignWithMargins = True
      Left = 129
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Editar'
      Color = 2401504
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleElements = []
      OnClick = pnlEditarClick
    end
    object pnlExcluir: TPanel
      AlignWithMargins = True
      Left = 255
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Excluir'
      Color = 923248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      StyleElements = []
      OnClick = pnlExcluirClick
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
    object pnlFiltrar: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Listar Clientes'
      Color = 5540912
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleElements = []
      OnClick = pnlFiltrarClick
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
    DrawingStyle = gdsClassic
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
