program Progress;

uses
  Vcl.Forms,
  Progress.View in 'Src\Progress.View.pas' {ProgressView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProgressView, ProgressView);
  Application.Run;
end.
