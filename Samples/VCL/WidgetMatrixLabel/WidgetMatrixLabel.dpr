program WidgetMatrixLabel;

uses
  Vcl.Forms,
  WidgetMatrixLabel.View in 'Src\WidgetMatrixLabel.View.pas' {WidgetMatrixLabelView},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TWidgetMatrixLabelView, WidgetMatrixLabelView);
  Application.Run;
end.
