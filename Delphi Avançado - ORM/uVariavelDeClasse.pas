unit uVariavelDeClasse;

interface

type
  TMyUniqueClass = class
  strict private
    constructor Create;
  class var
    FInternalInstance: TMyUniqueClass;
  private
    FValue: Extended;
    procedure SetValue(const Value: Extended);
  published
  public
    class function Instance: TMyUniqueClass;
    property Value:Extended read FValue write SetValue;
  end;

  TMyClass = class
  private
    FMyUniqueClass: TMyUniqueClass;
    function GetUniqueValue: Extended;
    procedure SetUniqueValue(const Value: Extended);
  public
    constructor Create;
    property UniqueValue: Extended read GetUniqueValue write SetUniqueValue;
  end;

implementation

{ TMyUniqueClass }

constructor TMyUniqueClass.Create;
begin
  inherited;
end;

class function TMyUniqueClass.Instance: TMyUniqueClass;
begin
  if not Assigned(FInternalInstance) then
    FInternalInstance := TMyUniqueClass.Create;
  Result := FInternalInstance;
end;

procedure TMyUniqueClass.SetValue(const Value: Extended);
begin
  FValue := Value;
end;

{ TMyClass }

constructor TMyClass.Create;
begin
  FMyUniqueClass := TMyUniqueClass.Instance;
end;

function TMyClass.GetUniqueValue: Extended;
begin
  Result := FMyUniqueClass.Value
end;

procedure TMyClass.SetUniqueValue(const Value: Extended);
begin
  FMyUniqueClass.Value := Value;
end;

end.
