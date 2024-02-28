program AppConsumirServerREST;

uses
  Vcl.Forms,
  untPrincipal in 'src\untPrincipal.pas' {frmPrincipal},
  unt.interfaces.pessoa in 'src\unt.interfaces.pessoa.pas',
  unt.model.pessoa in 'src\unt.model.pessoa.pas',
  untCadastro in 'src\untCadastro.pas' {frmCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.Run;
end.
