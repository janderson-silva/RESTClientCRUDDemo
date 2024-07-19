unit untCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataSet.Serialize,
  unt.interfaces.pessoa, unt.model.pessoa;

type
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtNome: TLabeledEdit;
    edtApelido: TLabeledEdit;
    edtCPF: TLabeledEdit;
    pnlSalvar: TPanel;
    pnlCancelar: TPanel;
    procedure FormShow(Sender: TObject);
    procedure pnlSalvarClick(Sender: TObject);
    procedure pnlCancelarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CadastrarPessoa;
    procedure AtualizarPessoa;
    procedure CarregarPessoa;
  public
    { Public declarations }
    var codigo : Integer;
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.AtualizarPessoa;
var
  FPessoa : iPessoa;
begin
  FPessoa := TPessoa.New;

  try
    FPessoa
        .codigo(codigo)
        .nome(edtNome.Text)
        .apelido(edtApelido.Text)
        .cpf(edtCPF.Text)
      .Update;
  except on E : Exception do
    begin
      raise Exception.Create(E.Message);
      Exit;
    end;
  end;
end;

procedure TfrmCadastro.CadastrarPessoa;
var
  FPessoa : iPessoa;
begin
  FPessoa := TPessoa.New;

  try
    FPessoa
        .nome(edtNome.Text)
        .apelido(edtApelido.Text)
        .cpf(edtCPF.Text)
      .Insert;
  except on E : Exception do
    begin
      raise Exception.Create(E.Message);
      Exit;
    end;
  end;
end;

procedure TfrmCadastro.CarregarPessoa;
var
  FDMemTable : TFDMemTable;
  FPessoa : iPessoa;
begin
  FDMemTable := TFDMemTable.Create(Self);
  FPessoa := TPessoa.New;
  try
    try
      FDMemTable.LoadFromJSON(FPessoa
                                  .codigo(codigo)
                                .SelectID);

      FDMemTable.Open;
      if not FDMemTable.IsEmpty then
      begin
        edtNome.Text := FDMemTable.FieldByName('nome').AsString;
        edtApelido.Text := FDMemTable.FieldByName('apelido').AsString;
        edtCPF.Text := FDMemTable.FieldByName('cpf').AsString;
      end;

    except on E : Exception do
      begin
        raise Exception.Create(E.Message);
        Exit;
      end;
    end;
  finally
    FDMemTable.Free;
  end;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  if codigo > 0 then
    CarregarPessoa;
end;

procedure TfrmCadastro.pnlCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.pnlSalvarClick(Sender: TObject);
begin
  if codigo > 0 then
    AtualizarPessoa
  else
    CadastrarPessoa;

  Close;
end;

end.
