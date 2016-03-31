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
   ShowMessage('Ligando Avi�o...');
end;

procedure TAviao.Mover;
begin
  inherited; //Cham�ria o m�todo ligar da classe pai
  ShowMessage(Self.descricao+' est� voando!');;
end;

end.
