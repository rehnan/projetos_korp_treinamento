  unit uCarro;

interface

uses
  Vcl.Dialogs;
type
  TCarro = class
    descricao : String;
    capacidade : Integer;
    quilometragem : Integer;
    procedure Mover;
  end;

implementation

{ TCarro }

procedure TCarro.Mover;
begin
   ShowMessage(Self.descricao+' em movimento!');
end;

end.
