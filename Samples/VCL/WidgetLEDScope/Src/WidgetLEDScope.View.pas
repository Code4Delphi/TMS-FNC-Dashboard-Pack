unit WidgetLEDScope.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetLEDScope, Vcl.StdCtrls;

type
  TWidgetLEDScopeView = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCWidgetLEDScope1: TTMSFNCWidgetLEDScope;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure SetupLEDScope;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WidgetLEDScopeView: TWidgetLEDScopeView;

implementation

{$R *.dfm}

procedure TWidgetLEDScopeView.Button1Click(Sender: TObject);
begin
  Self.SetupLEDScope;
end;

procedure TWidgetLEDScopeView.SetupLEDScope;
var
  I: Integer;
  Channel: TTMSFNCWidgetLEDScopeChannel;
begin
  // Replace the design-time sample channels with our own.
  TMSFNCWidgetLEDScope1.Channels.BeginUpdate;
  try
    TMSFNCWidgetLEDScope1.Channels.Clear;
    for I := 0 to 14 do
    begin
      Channel := TMSFNCWidgetLEDScope1.Channels.Add;
      Channel.Steps := 24;           // 24 stacked LED segments per bar
      Channel.Value := 4 + (Random(20) mod 20); // number of lit segments, counted from the bottom
    end;
  finally
    TMSFNCWidgetLEDScope1.Channels.EndUpdate;
  end;
end;

end.
