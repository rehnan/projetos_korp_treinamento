unit uFuncoes;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Dialogs;

type
  TFuncoes = class
    strict private
      class var FInstance : TFuncoes;
      
    private
      class procedure ReleaseInstance();
      
    public
      class function GetInstance(): TFuncoes;
      function FormatarData(const data : TDateTime) : String;
  end;

implementation

{ TFuncoes }

function TFuncoes.FormatarData(const data: TDateTime): String;
begin
  Result := FormatDateTime('yyyymmdd', data);
end;

class function TFuncoes.GetInstance: TFuncoes;
begin
  if not Assigned(Self.FInstance) then
    self.FInstance := TFuncoes.Create;
  Result := Self.FInstance;
end;
 
class procedure TFuncoes.ReleaseInstance;
begin
  if Assigned(Self.FInstance) then
    Self.FInstance.Free;
end;
 
initialization
finalization
  TFuncoes.ReleaseInstance();

end.
