unit Arrow.View;

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
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetArrow,
  Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TArrowView = class(TForm)
    Panel2: TPanel;
    btnIncrementValue: TButton;
    TMSFNCWidgetArrow1: TTMSFNCWidgetArrow;
    procedure FormCreate(Sender: TObject);
    procedure btnIncrementValueClick(Sender: TObject);
  private
    procedure ConfigComponente;
  public

  end;

var
  ArrowView: TArrowView;

implementation

{$R *.dfm}

procedure TArrowView.FormCreate(Sender: TObject);
begin
  Self.ConfigComponente;
end;

procedure TArrowView.ConfigComponente;
begin
  TMSFNCWidgetArrow1.ArrowOptions.Margin := 10;
  TMSFNCWidgetArrow1.ArrowOptions.Width := 30;
  TMSFNCWidgetArrow1.ArrowOptions.HeadWidth := 60;
  TMSFNCWidgetArrow1.ArrowOptions.HeadLength := 60;
  TMSFNCWidgetArrow1.CaptionOptions.Text := 'Processando';

  TMSFNCWidgetArrow1.Value := -90;
  TMSFNCWidgetArrow1.ValueText := 'Aguardando';
end;

procedure TArrowView.btnIncrementValueClick(Sender: TObject);
begin
  TMSFNCWidgetArrow1.Value := TMSFNCWidgetArrow1.Value + 30;
  TMSFNCWidgetArrow1.ValueText := Format('Procesando %d%', [TMSFNCWidgetArrow1.Value]);
end;

end.
