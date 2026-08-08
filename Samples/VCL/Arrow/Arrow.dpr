program Arrow;

uses
  Vcl.Forms,
  Arrow.View in 'Src\Arrow.View.pas' {ArrowView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TArrowView, ArrowView);
  Application.Run;
end.
