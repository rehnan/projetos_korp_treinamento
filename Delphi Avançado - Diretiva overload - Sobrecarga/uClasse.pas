unit uClasse;

interface

type
  TClasse = class
  public
    procedure exibeMessage(const p1 : String); overload;
    procedure exibeMessage(const p1 : String; const p2 : Integer); overload;
    procedure exibeMessage(const p1 : String; const p2 : Integer; const p3 : Double); overload;
  end;

implementation

uses Vcl.Dialogs, System.SysUtils;
{ TClasse }

procedure TClasse.exibeMessage(const p1: String);
begin
  ShowMessage('String: '+p1);
end;

procedure TClasse.exibeMessage(const p1: String; const p2: Integer);
begin
  ShowMessage('String: '+p1+' Integer: '+IntToStr(p2));
end;

procedure TClasse.exibeMessage(const p1: String; const p2: Integer;
  const p3: Double);
begin
  ShowMessage('String: '+p1+' Integer: '+IntToStr(p2)+' Float: '+FloatToStr(p3));
end;

end.
