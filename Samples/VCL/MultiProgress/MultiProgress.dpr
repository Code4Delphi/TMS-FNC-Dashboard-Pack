program MultiProgress;

uses
  Vcl.Forms,
  MultiProgress.View in 'Src\MultiProgress.View.pas' {MultiProgressView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multi Progress - TMS FNC Dashboard';
  Application.CreateForm(TMultiProgressView, MultiProgressView);
  Application.Run;
end.
