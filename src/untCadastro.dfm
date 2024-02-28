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
    TabOrder = 0
    ExplicitTop = 388
    ExplicitWidth = 618
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 154
      Top = 3
      Width = 145
      Height = 44
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnSalvar: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 145
      Height = 44
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
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
    ExplicitLeft = 264
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
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
