program TrendIndicator;

uses
  Vcl.Forms,
  TrendIndicator.View in 'Src\TrendIndicator.View.pas' {TrendIndicatorView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TMS FNC Dashboard Pack - Indicador de Tendência (Trend Indicator)';
  Application.CreateForm(TTrendIndicatorView, TrendIndicatorView);
  Application.Run;
end.
