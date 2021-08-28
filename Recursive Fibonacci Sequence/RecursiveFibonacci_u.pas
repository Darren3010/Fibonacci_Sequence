unit RecursiveFibonacci_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtStartPos: TEdit;
    EdtEndPos: TEdit;
    BtnGenerate: TButton;
    RedOutput: TRichEdit;
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
  StartPos, EndPos, N: Integer;
  Display: String;
begin
  Display := ' ';
  RedOutput.Clear;
  StartPos := StrToInt(EdtStartPos.Text);
  EndPos := StrToInt(EdtEndPos.Text);
  if (StartPos < 0) or (EndPos < 0) or (EndPos < StartPos) then
  begin
    showmessage(
      'The Fibonacci sequence is not defined for negative numbers, or the end position cannot be smaller than the start pos');
    Exit;
  end;
  for N := StartPos to EndPos do
  begin
    // Fibonacci(Number);
    Display := Display + IntToStr(Fibonacci(N)) + '; ';
  end; // For end
  RedOutput.Lines.Add(Display);
end;

function TForm2.Fibonacci(Number: Integer): Int64;
begin
  case Number of
    0:
      Result := 0;
    1:
      Result := 1;
  else
    Result := Fibonacci(Number - 1) + Fibonacci(Number - 2);
  end;
end;

end.
