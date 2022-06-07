program mamaco;

uses
  Vcl.Forms,
  umacaco in 'umacaco.pas' {macacop},
  uprincipal in 'uprincipal.pas' {principal},
  umemo in 'umemo.pas' {umemoria},
  uforca in 'uforca.pas' {Form1},
  usobre in 'usobre.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(Tmacacop, macacop);
  Application.CreateForm(Tumemoria, umemoria);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
