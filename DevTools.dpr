program DevTools;

uses
  Vcl.Forms,
  frmPrincipal in 'Forms\frmPrincipal.pas' {Form1},
  uBase64 in 'Units\uBase64.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
