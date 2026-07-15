unit UDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetLEDBar, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    TMSFNCWidgetLEDBar1: TTMSFNCWidgetLEDBar;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure SetupLEDBar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.SetupLEDBar;
end;

procedure TForm1.SetupLEDBar;
//var
//  I: Integer;
begin
  // Size the segment collection. Each Leds entry is one LED.
//  TMSFNCWidgetLEDBar1.Leds.BeginUpdate;
//  try
//    TMSFNCWidgetLEDBar1.Leds.Clear;
//    for I := 0 to 9 do
//      TMSFNCWidgetLEDBar1.Leds.Add;
//  finally
//    TMSFNCWidgetLEDBar1.Leds.EndUpdate;
//  end;

  // Gap in pixels between LEDs and at the bar edges.
  TMSFNCWidgetLEDBar1.Spacing := 6;

  // Value is the COUNT of lit LEDs, counting from the left (0..Leds.Count).
  // Setting it updates the State of every LED automatically.
  TMSFNCWidgetLEDBar1.Value := 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TMSFNCWidgetLEDBar1.Value := TMSFNCWidgetLEDBar1.Value - 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TMSFNCWidgetLEDBar1.Value := TMSFNCWidgetLEDBar1.Value + 1;
end;

end.
