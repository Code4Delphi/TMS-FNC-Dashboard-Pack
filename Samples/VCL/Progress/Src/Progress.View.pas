unit Progress.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCWidgetMarqueeContinuousProgress,
  VCL.TMSFNCWidgetMarqueeProgress,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetProgress;

type
  TProgressView = class(TForm)
    Panel1: TPanel;
  private

  public

  end;

var
  ProgressView: TProgressView;

implementation

{$R *.dfm}

end.
