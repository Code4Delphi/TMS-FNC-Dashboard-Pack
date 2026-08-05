program MultiProgress;

uses
  Vcl.Forms,
  MultiProgress.View in 'Src\MultiProgress.View.pas' {MultiProgressView},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.Title := 'Multi Progress - TMS FNC Dashboard';
  Application.CreateForm(TMultiProgressView, MultiProgressView);
  Application.Run;
end.
