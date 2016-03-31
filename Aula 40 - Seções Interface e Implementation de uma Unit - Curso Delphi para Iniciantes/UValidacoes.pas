unit UValidacoes;

interface

uses
  SysUtils, Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics;

function validaCampoEmBranco(campo:String)  : Boolean; Overload;
function validaCampoEmBranco(campo:Integer) : Boolean; Overload;

implementation
function validaCampoEmBranco(campo:String)  : Boolean;
begin
  Result := true;
  if Trim(campo) = '' then Result := false;
end;

function validaCampoEmBranco(campo:Integer) : Boolean;
begin
  Result := true;
  if Trim(IntToStr(campo)) = '' then Result := false;

end;
end.
