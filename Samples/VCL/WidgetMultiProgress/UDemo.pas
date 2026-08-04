unit UDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetProgress, Vcl.StdCtrls, Vcl.ExtCtrls,
  VCL.TMSFNCWidgetMarqueeProgress, VCL.TMSFNCWidgetMultiProgress;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    TMSFNCWidgetMultiProgress1: TTMSFNCWidgetMultiProgress;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    function UpdateProgress(AProgress: Single): Single;
    procedure UpdateAll;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  Button3.Click;
  Timer1.Enabled := True;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  Timer1.Enabled := False;

  for I := 0 to 3 do
     TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value := I;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  LCircleItem: TTMSFNCCircleItem;
begin
  TMSFNCWidgetMultiProgress1.CaptionOptions.Text := 'Sales of Beverages';
  TMSFNCWidgetMultiProgress1.Legend.Position := lpTopRight;
  TMSFNCWidgetMultiProgress1.CaptionOptions.Position := cpTop;
  TMSFNCWidgetMultiProgress1.CircleItems.Clear;
  LCircleItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  LCircleItem.Caption := 'North';
  LCircleItem.Value := Random(12);
  LCircleItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  LCircleItem.Caption := 'South';
  LCircleItem.Value := Random(12);
  LCircleItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  LCircleItem.Caption := 'East';
  LCircleItem.Value := Random(12);
  LCircleItem := TMSFNCWidgetMultiProgress1.CircleItems.Add;
  LCircleItem.Caption := 'West';
  LCircleItem.Value := Random(12);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Self.UpdateAll;
end;

function TForm1.UpdateProgress(AProgress: Single): Single;
var
  LInc: Single;
begin
  Result := AProgress;
  if AProgress >= 100 then
    Exit;

  LInc := 0;
  while LInc = 0 do
    LInc := Random(12);

  AProgress := AProgress + LInc;
  if AProgress >= 100 then
    AProgress := 100;

  Result := AProgress;
end;

procedure TForm1.UpdateAll;
var
  I: Integer;
begin
  for I := 0 to 3 do
    if TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value < 100 then
      TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value := UpdateProgress(TMSFNCWidgetMultiProgress1.CircleItems.Items[I].Value);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.UpdateAll;
end;

end.
