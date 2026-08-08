program WidgetArrow;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TMS FNC Dashboard Pack - Arrow';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
