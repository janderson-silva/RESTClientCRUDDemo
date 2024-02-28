{*******************************************************************************}
{ Projeto: Gerador de API                                                       }
{                                                                               }
{ O objetivo da aplicação é facilitar a criação de Interface, model e controller}
{ para Insert, Update, Delete e Select a partir de tabelas do banco de dados    }
{ (Postgres ou Firebird), respeitando a tipagem, PK e FK                        }
{*******************************************************************************}
{                                                                               }
{ Desenvolvido por JANDERSON APARECIDO DA SILVA                                 }
{ Email: janderson_rm@hotmail.com                                               }
{                                                                               }
{*******************************************************************************}



unit unt.interfaces.pessoa;

interface

type
  iPessoa = interface
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

end.

