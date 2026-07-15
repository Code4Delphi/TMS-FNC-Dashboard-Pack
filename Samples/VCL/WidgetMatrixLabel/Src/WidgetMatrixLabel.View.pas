unit WidgetMatrixLabel.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetMatrixLabel, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TWidgetMatrixLabelView = class(TForm)
    Panel1: TPanel;
    TMSFNCWidgetMatrixLabel1: TTMSFNCWidgetMatrixLabel;
    Panel2: TPanel;
    btnScrollAuto: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnScrollAutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WidgetMatrixLabelView: TWidgetMatrixLabelView;

implementation

{$R *.dfm}

procedure TWidgetMatrixLabelView.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetMatrixLabel1.BeginUpdate;
  try
    // Number of character cells along the primary axis.
    TMSFNCWidgetMatrixLabel1.Leds := 25;
    TMSFNCWidgetMatrixLabel1.Orientation := mloHorizontal;

    // Larger cell grid for a crisper, more readable panel.
    TMSFNCWidgetMatrixLabel1.Appearance.LedStyle := mls19x27;

    // Lit and unlit dot colors recreate a classic amber LED board.
    TMSFNCWidgetMatrixLabel1.Appearance.High := gcOrange;
    TMSFNCWidgetMatrixLabel1.Appearance.Low := gcMaroon;
    TMSFNCWidgetMatrixLabel1.Appearance.LedsVisible := True;

    // Static text is positioned with the alignment setting.
    TMSFNCWidgetMatrixLabel1.Appearance.TextStyle := mtsUpperCase;
    TMSFNCWidgetMatrixLabel1.Appearance.Alignment := mlaCenter;

    // The control auto-sizes to the cells, spacing, and margin.
    TMSFNCWidgetMatrixLabel1.Appearance.AutoSize := True;
    TMSFNCWidgetMatrixLabel1.Appearance.Spacing := 3;
    TMSFNCWidgetMatrixLabel1.Appearance.Margin := 12;

    TMSFNCWidgetMatrixLabel1.Text := 'Code4Delphi Matrix Label';
  finally
    TMSFNCWidgetMatrixLabel1.EndUpdate;
  end;
end;

procedure TWidgetMatrixLabelView.btnScrollAutoClick(Sender: TObject);
begin
  TMSFNCWidgetMatrixLabel1.Scroll.Enabled := not TMSFNCWidgetMatrixLabel1.Scroll.Enabled;
end;

end.
