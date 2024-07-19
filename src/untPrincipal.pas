unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, unt.interfaces.pessoa, unt.model.pessoa, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DataSet.Serialize, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    FDMemTable1nome: TStringField;
    FDMemTable1apelido: TStringField;
    FDMemTable1cpf: TStringField;
    FDMemTable1codigo: TIntegerField;
    pnlNovo: TPanel;
    pnlEditar: TPanel;
    pnlExcluir: TPanel;
    pnlFiltrar: TPanel;
    procedure pnlNovoClick(Sender: TObject);
    procedure pnlEditarClick(Sender: TObject);
    procedure pnlFiltrarClick(Sender: TObject);
    procedure pnlExcluirClick(Sender: TObject);
  private
    procedure CarregarPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untCadastro;

procedure TfrmPrincipal.CarregarPessoa;
var
  FPessoa : iPessoa;
begin
  FPessoa := TPessoa.New;
  try
    FDMemTable1.Close;
    FDMemTable1.LoadFromJSON(FPessoa
                               .Select);
    FDMemTable1.Open;
    FDMemTable1.First;
  except on E : Exception do
    begin
      raise Exception.Create(E.Message);
      Exit;
    end;
  end;
end;

procedure TfrmPrincipal.pnlEditarClick(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(Self);
  try
    frmCadastro.codigo := FDMemTable1.FieldByName('codigo').AsInteger;
    frmCadastro.ShowModal;
  finally
    FreeAndNil(frmCadastro);
  end;
end;

procedure TfrmPrincipal.pnlExcluirClick(Sender: TObject);
var
  FPessoa : iPessoa;
begin
  if Application.MessageBox('Deseja mesmo excluir?','Confirmação',MB_YESNO+MB_ICONQUESTION) = ID_YES then
  begin
    FPessoa := TPessoa.New;
    try
      FPessoa
          .codigo(FDMemTable1.FieldByName('codigo').AsInteger)
        .Delete;

      CarregarPessoa;
    except on E : Exception do
      begin
        raise Exception.Create(E.Message);
        Exit;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.pnlFiltrarClick(Sender: TObject);
begin
  CarregarPessoa;
end;

procedure TfrmPrincipal.pnlNovoClick(Sender: TObject);
begin
  frmCadastro := TfrmCadastro.Create(Self);
  try
    frmCadastro.codigo := 0;
    frmCadastro.ShowModal;
  finally
    FreeAndNil(frmCadastro);
  end;
end;

end.
