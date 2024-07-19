object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro'
  ClientHeight = 241
  ClientWidth = 564
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 188
    Width = 558
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object pnlSalvar: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Salvar'
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
      OnClick = pnlSalvarClick
    end
    object pnlCancelar: TPanel
      AlignWithMargins = True
      Left = 129
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Cancelar'
      Color = 923248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleElements = []
      OnClick = pnlCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 185
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object edtNome: TLabeledEdit
      Left = 30
      Top = 40
      Width = 500
      Height = 23
      EditLabel.Width = 103
      EditLabel.Height = 15
      EditLabel.Caption = 'Nome/Raz'#227'o Social'
      TabOrder = 0
      Text = ''
    end
    object edtApelido: TLabeledEdit
      Left = 30
      Top = 90
      Width = 500
      Height = 23
      EditLabel.Width = 89
      EditLabel.Height = 15
      EditLabel.Caption = 'Apelido/Fantasia'
      TabOrder = 1
      Text = ''
    end
    object edtCPF: TLabeledEdit
      Left = 30
      Top = 140
      Width = 500
      Height = 23
      EditLabel.Width = 53
      EditLabel.Height = 15
      EditLabel.Caption = 'CPF/CNPJ'
      TabOrder = 2
      Text = ''
    end
  end
end
