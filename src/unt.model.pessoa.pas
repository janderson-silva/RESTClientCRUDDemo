{*******************************************************************************}
{ Projeto: Gerador de CLASSES                                                   }
{                                                                               }
{ O objetivo da aplicação é facilitar a criação de Interface e  model           }
{ para Insert, Update, Delete e Select a partir de tabelas do banco de dados    }
{ (Postgres ou Firebird), respeitando a tipagem, PK e FK                        }
{*******************************************************************************}
{                                                                               }
{ Desenvolvido por JANDERSON APARECIDO DA SILVA                                 }
{ Email: janderson_rm@hotmail.com                                               }
{                                                                               }
{*******************************************************************************}



unit unt.model.pessoa;

interface

uses
  RESTRequest4D,
  System.SysUtils,
  Vcl.Forms,
  Winapi.Windows,
  unt.interfaces.pessoa;

type
  TPessoa = class(TInterfacedObject, iPessoa)
    private
      Fcodigo : Integer;
      Fnome : string;
      Fapelido : string;
      Fcpf : string;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iPessoa;

      function codigo (Value : Integer) : iPessoa; overload;
      function codigo : Integer; overload;

      function nome (Value : String) : iPessoa; overload;
      function nome : String; overload;

      function apelido (Value : String) : iPessoa; overload;
      function apelido : String; overload;

      function cpf (Value : String) : iPessoa; overload;
      function cpf : String; overload;

      function Select : String; overload;
      function SelectID : String; overload;
      function Insert : iPessoa; overload;
      function Update : iPessoa; overload;
      function Delete : iPessoa; overload;

      function &End : iPessoa;

  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

end;

class function TPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.&End: iPessoa;
begin
  Result := Self;
end;

function TPessoa.Select: String;
var
  Resp : IResponse;
begin
  Resp := TRequest.New.BaseURL('http://localhost:9000/v1/')
              .Resource('pessoa')
              .Accept('application/json')
            .Get;

  if Resp.StatusCode <> 200 then
    raise Exception.Create('Status Code: #' + Resp.StatusCode.ToString + #13+#13 + Resp.Content )
  else
    Result := Resp.Content;
end;

function TPessoa.SelectID: String;
var
  Resp : IResponse;
begin
  Resp := TRequest.New.BaseURL('http://localhost:9000/v1/')
              .Resource('pessoa/'  + '/' + IntToStr(codigo))
              .Accept('application/json')
            .Get;

  if Resp.StatusCode <> 200 then
    raise Exception.Create('Status Code: #' + Resp.StatusCode.ToString + #13+#13 + Resp.Content )
  else
    Result := Resp.Content;
end;

function TPessoa.Insert: iPessoa;
var
  Resp : IResponse;
begin
  Resp := TRequest.New.BaseURL('http://localhost:9000/v1/')
              .Resource('pessoa')
              .Accept('application/json')
              .AddBody('{'+
                       '"nome":"'+nome+'",'+
                       '"apelido":"'+apelido+'",'+
                       '"cpf":"'+cpf+'"'+
                       '}')
            .Post;

  if Resp.StatusCode <> 200 then
    raise Exception.Create('Status Code: #' + Resp.StatusCode.ToString + #13+#13 + Resp.Content )
  else
    Application.MessageBox(PChar('Cadastrado com sucesso!'),'Atenção',MB_OK+MB_ICONINFORMATION);
end;

function TPessoa.Update: iPessoa;
var
  Resp : IResponse;
begin
  Resp := TRequest.New.BaseURL('http://localhost:9000/v1/')
              .Resource('pessoa')
              .Accept('application/json')
              .AddBody('{'+
                       '"codigo":'+IntToStr(codigo)+','+
                       '"nome":"'+nome+'",'+
                       '"apelido":"'+apelido+'",'+
                       '"cpf":"'+cpf+'"'+
                       '}')
            .Put;

  if Resp.StatusCode <> 200 then
    raise Exception.Create('Status Code: #' + Resp.StatusCode.ToString + #13+#13 + Resp.Content )
  else
    Application.MessageBox(PChar('Atualizado com sucesso!'),'Atenção',MB_OK+MB_ICONINFORMATION);
end;

function TPessoa.Delete: iPessoa;
var
  Resp : IResponse;
begin
  Resp := TRequest.New.BaseURL('http://localhost:9000/v1/')
              .Resource('pessoa/' + IntToStr(codigo))
              .Accept('application/json')
            .Delete;

  if Resp.StatusCode <> 200 then
    raise Exception.Create('Status Code: #' + Resp.StatusCode.ToString + #13+#13 + Resp.Content )
  else
    Application.MessageBox(PChar('Deletado com sucesso!'),'Atenção',MB_OK+MB_ICONINFORMATION);
end;

function TPessoa.codigo (Value : Integer) : iPessoa;
begin
  Result := Self;
  Fcodigo := Value;
end;

function TPessoa.codigo : Integer;
begin
  Result := Fcodigo;
end;

function TPessoa.nome (Value : string) : iPessoa;
begin
  Result := Self;
  Fnome := Value;
end;

function TPessoa.nome : string;
begin
  Result := Fnome;
end;

function TPessoa.apelido (Value : string) : iPessoa;
begin
  Result := Self;
  Fapelido := Value;
end;

function TPessoa.apelido : string;
begin
  Result := Fapelido;
end;

function TPessoa.cpf (Value : string) : iPessoa;
begin
  Result := Self;
  Fcpf := Value;
end;

function TPessoa.cpf : string;
begin
  Result := Fcpf;
end;

end.
