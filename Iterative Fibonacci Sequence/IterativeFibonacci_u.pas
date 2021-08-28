unit IterativeFibonacci_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    LblEdtStart: TLabeledEdit;
    LblEdtEnd: TLabeledEdit;
    BtnGenerate: TButton;
    RedOutput: TRichEdit;
    Image1: TImage;
    Function Fibonacci(Number: Integer): Int64;
    procedure BtnGenerateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TForm2 }

procedure TForm2.BtnGenerateClick(Sender: TObject);
VAR
  Number, StartPos, EndPos: Integer;
  Display: String;
begin
  RedOutput.Clear;
  StartPos := StrToInt(LblEdtStart.Text);
  EndPos := StrToInt(LblEdtEnd.Text);
  if (StartPos < 0) or (EndPos < 0) or (EndPos < StartPos) then
  begin
    showmessage('The Fibonacci Sequence is undefined for negative numbers.');
    LblEdtStart.Clear;
    LblEdtEnd.Clear;
    exit;
  end;

  for Number := StartPos to EndPos do
  begin
    Display := Display + IntToStr(Fibonacci(Number)) + '; ';
  end;
  RedOutput.Lines.Add(Display);
end;

function TForm2.Fibonacci(Number: Integer): Int64;
VAR
  I, Num1, Num2, Num: Integer;
begin
  Num := 0;
  if Number < 0 then
  begin
    showmessage('The Fibonacci Sequence is undefined for negative numbers.');
    exit;
  end;

  case Number of
    0:
      Result := 0;
    1:
      Result := 1;
  else
    begin
      Num1 := 0;
      Num2 := 1;
      for I := 2 to Number do
      begin
        Num := Num1 + Num2;
        Num1 := Num2;
        Num2 := Num;
      end;
      Result := Num;
    end;

  end;
end;

end.
