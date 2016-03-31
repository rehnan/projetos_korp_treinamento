unit uAviao;

interface

uses
   uMeioTransporte, Vcl.Dialogs;

type
  TAviao = class(TMeioTransporte)
  private
    FhorasVoo : Integer;

  published
    property horasVoo : Integer read FhorasVoo write FhorasVoo;

  public
    procedure Mover; override;
    procedure Ligar; override;
  end;

implementation

{ TAviao }

procedure TAviao.Ligar;
begin
   ShowMessage('Ligando Avião...');
end;

procedure TAviao.Mover;
begin
  inherited; //Chamária o método ligar da classe pai
  ShowMessage(Self.descricao+' está voando!');;
end;

end.
