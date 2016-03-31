unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TFormCalculator = class(TForm)
    EditTextDisplay: TEdit;
    BtnZero: TButton;
    BtnOne: TButton;
    btnTwo: TButton;
    btnThree: TButton;
    btnSix: TButton;
    btnSeven: TButton;
    btnNine: TButton;
    btnFour: TButton;
    btnEight: TButton;
    btnFive: TButton;
    procedure AddNumber(Number: String);
    procedure btnZeroClick(Sender: TObject);
    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);

  private
    { Private declarations }


  public
    { Public declarations }


 
end;

var
  FormCalculator: TFormCalculator;

implementation

{$R *.dfm}

procedure AddNumber(Number: String);
begin
   FormCalculator.EditTextDisplay.Text := Concat(FormCalculator.EditTextDisplay.Text, Number);
end;

procedure TFormCalculator.BtnZeroClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnZero.Caption);
end;

procedure TFormCalculator.btnEightClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnEight.Caption);
end;

procedure TFormCalculator.btnFiveClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnFive.Caption);
end;

procedure TFormCalculator.btnFourClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnFour.Caption);
end;

procedure TFormCalculator.btnNineClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnNine.Caption)
end;

procedure TFormCalculator.btnOneClick(Sender: TObject);
begin
  AddNumber(FormCalculator.BtnOne.Caption);
end;

procedure TFormCalculator.btnSevenClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnSeven.Caption);
end;

procedure TFormCalculator.btnSixClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnSix.Caption);
end;

procedure TFormCalculator.btnThreeClick(Sender: TObject);
begin
 AddNumber(FormCalculator.btnThree.Caption);
end;

procedure TFormCalculator.btnTwoClick(Sender: TObject);
begin
  AddNumber(FormCalculator.btnTwo.Caption);
end;

end.


