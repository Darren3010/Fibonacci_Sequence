program IterativeFibonacci_p;

uses
  Forms,
  IterativeFibonacci_u in 'IterativeFibonacci_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
