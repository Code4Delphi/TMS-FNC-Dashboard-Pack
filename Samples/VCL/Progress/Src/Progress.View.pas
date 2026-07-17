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
  VCL.TMSFNCWidgetProgress, VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer, Vcl.StdCtrls;

type
  TProgressView = class(TForm)
    Panel1: TPanel;
    TMSFNCWidgetProgress1: TTMSFNCWidgetProgress;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    Panel2: TPanel;
    btnIncrement: TButton;
    TMSFNCWidgetMarqueeProgress1: TTMSFNCWidgetMarqueeProgress;
    TMSFNCWidgetMarqueeContinuousProgress1: TTMSFNCWidgetMarqueeContinuousProgress;
    Panel3: TPanel;
    btnActiveMarqueeProgress: TButton;
    btnActiveMarqueeContinuousProgress: TButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure btnIncrementClick(Sender: TObject);
    procedure btnActiveMarqueeProgressClick(Sender: TObject);
    procedure btnActiveMarqueeContinuousProgressClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  ProgressView: TProgressView;

implementation

{$R *.dfm}

procedure TProgressView.FormCreate(Sender: TObject);
begin
  TMSFNCWidgetProgress1.CaptionOptions.Text := 'Teste Code4Delphi';
  TMSFNCWidgetProgress1.BitmapContainer := TMSFNCBitmapContainer1;
  TMSFNCWidgetProgress1.ValueIndicator.Kind := piBitmap;
  TMSFNCWidgetProgress1.ValueIndicator.BitmapName := 'C4D';
  TMSFNCWidgetProgress1.ValueFormat := '%.0f%%';
  TMSFNCWidgetProgress1.Value := 0;

  //largura do anel preenchido
  //TMSFNCWidgetProgress1.CircleOptions.Thickness := 20;
  //onde começa os 0% (graus)
  //TMSFNCWidgetProgress1.CircleOptions.StartAngle := 45;
end;

procedure TProgressView.btnIncrementClick(Sender: TObject);
begin
  if TMSFNCWidgetProgress1.Value >= 100 then
    TMSFNCWidgetProgress1.Value := 0;

  if TMSFNCWidgetProgress1.Value < 100 then
    TMSFNCWidgetProgress1.Value := TMSFNCWidgetProgress1.Value + 20;
end;

procedure TProgressView.btnActiveMarqueeProgressClick(Sender: TObject);
begin
  TMSFNCWidgetMarqueeProgress1.Value := TMSFNCWidgetMarqueeProgress1.Value + 10;
  TMSFNCWidgetMarqueeProgress1.MarqueeAnimation.Active := True;

  Timer1.Enabled := True;
end;

procedure TProgressView.Timer1Timer(Sender: TObject);
begin
  if TMSFNCWidgetMarqueeProgress1.Value < 100 then
    TMSFNCWidgetMarqueeProgress1.Value := TMSFNCWidgetMarqueeProgress1.Value + 10;
end;

procedure TProgressView.btnActiveMarqueeContinuousProgressClick(Sender: TObject);
begin
  TMSFNCWidgetMarqueeContinuousProgress1.MarqueeAnimation.Active := not TMSFNCWidgetMarqueeContinuousProgress1.MarqueeAnimation.Active;
end;

end.
