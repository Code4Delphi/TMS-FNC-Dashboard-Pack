program WidgetLEDScope;

uses
  Vcl.Forms,
  WidgetLEDScope.View in 'Src\WidgetLEDScope.View.pas' {WidgetLEDScopeView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWidgetLEDScopeView, WidgetLEDScopeView);
  Application.Run;
end.
