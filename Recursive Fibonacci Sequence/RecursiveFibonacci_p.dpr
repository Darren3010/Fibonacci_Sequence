program RecursiveFibonacci_p;

uses
  Forms,
  RecursiveFibonacci_u in 'RecursiveFibonacci_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
