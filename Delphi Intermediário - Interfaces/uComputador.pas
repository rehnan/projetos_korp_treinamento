unit uComputador;

interface

uses
  uICalculo;

type
  TComputador = class(TInterfacedObject, ICalcPotencia)

    private
      FBase : String;
      FExpoente : String;
      FResult  : Double;

      procedure SetBase(const Value: String);
      procedure SetExpoente(const Value: String);
      procedure SetResult(const Value: Double);
      function GetBase() : String;
      function GetExpoente() : String;

      property Result : Double read FResult write SetResult;

    public
      constructor Create; overload;
      constructor Create(Base, Expoente : String); overload;

      function calcularPotencia() : String;
      property Base : String read GetBase write SetBase;
      property Expoente : String read GetExpoente write SetExpoente;


  end;
implementation

uses
  Vcl.Dialogs, System.SysUtils, Math;

{ TComputador }

constructor TComputador.Create(base, expoente : String);
begin
  inherited Create;
  SetBase(base);
  SetExpoente(expoente);
end;

procedure TComputador.SetBase(const Value: String);
begin
  FBase := Value;
end;

procedure TComputador.SetExpoente(const Value: String);
begin
  FExpoente := Value;
end;

procedure TComputador.SetResult(const Value: Double);
begin
  FResult := Value;
end;

function TComputador.GetBase() : String;
begin
  Result := FBase;
end;

function TComputador.GetExpoente() : String;
begin
  Result := FExpoente;
end;


function TComputador.calcularPotencia() : String;
begin
  try
      ShowMessage('Base: '+GetBase + 'Valor: '+GetExpoente);
      SetResult(Power(StrToInt(getBase), StrToInt(GetExpoente)));
      Result :=  FloatToStr(Self.FResult);
  except on E : Exception  do
    ShowMessage('Houve um erro ao tentar efetuar o c�lculo!');
  end;
end;

constructor TComputador.Create;
begin

end;

end.
