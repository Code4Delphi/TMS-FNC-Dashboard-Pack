program DistributionIndicator;

uses
  Vcl.Forms,
  DistributionIndicator.View in 'Src\DistributionIndicator.View.pas' {DistributionIndicatorView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDistributionIndicatorView, DistributionIndicatorView);
  Application.Run;
end.
