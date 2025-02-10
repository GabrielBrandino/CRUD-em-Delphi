program CRUD;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmNovo in 'UFrmNovo.pas' {TFrmNovo},
  UFrmApagar in 'UFrmApagar.pas' {TFrmApagar}

{$R *.res};

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
