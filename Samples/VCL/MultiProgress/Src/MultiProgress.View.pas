unit MultiProgress.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetProgress, VCL.TMSFNCWidgetMultiProgress, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMultiProgressView = class(TForm)
    Panel2: TPanel;
    btnIncrement: TButton;
    MultiProgress: TTMSFNCWidgetMultiProgress;
    cBoxLegendPosition: TComboBox;
    Label1: TLabel;
    btnClear: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnIncrementClick(Sender: TObject);
    procedure cBoxLegendPositionChange(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    procedure ConfigComponent;
    procedure AddItens;
  public

  end;

var
  MultiProgressView: TMultiProgressView;

implementation

{$R *.dfm}

procedure TMultiProgressView.FormCreate(Sender: TObject);
begin
  Self.AddItens;
  Self.ConfigComponent;
end;

procedure TMultiProgressView.ConfigComponent;
begin
  MultiProgress.CaptionOptions.Text := 'Inscritos';
  MultiProgress.Legend.Position := TTMSFNCWPLegendPosition(cBoxLegendPosition.ItemIndex);
  MultiProgress.CaptionOptions.Position := cpTop;
end;

procedure TMultiProgressView.cBoxLegendPositionChange(Sender: TObject);
begin
  MultiProgress.Legend.Position := TTMSFNCWPLegendPosition(cBoxLegendPosition.ItemIndex);
end;

procedure TMultiProgressView.AddItens;
begin
  MultiProgress.CircleItems.Clear;

  var LItem := MultiProgress.CircleItems.Add;
  LItem.Caption := 'Youtube';
  LItem.Value := Random(60);
  LItem.UnfinishedFill.Color := $0017110D;

  LItem := MultiProgress.CircleItems.Add;
  LItem.Caption := 'Instagram';
  LItem.Value := Random(60);
  LItem.UnfinishedFill.Color := $0017110D;

  LItem := MultiProgress.CircleItems.Add;
  LItem.Caption := 'LinkedIn';
  LItem.Value := Random(60);
  LItem.UnfinishedFill.Color := $0017110D;
end;

procedure TMultiProgressView.btnIncrementClick(Sender: TObject);
begin
  var LTodosConcluidos := MultiProgress.CircleItems.Count > 0;

  for var i := 0 to Pred(MultiProgress.CircleItems.Count) do
  begin
    var LItem := MultiProgress.CircleItems.Items[i];
    var LValue := LItem.Value + 5 + i;

    if LValue > 100 then
      LValue := 100;

    LItem.Value := LValue;

    if LItem.Value < 100 then
      LTodosConcluidos := False;
  end;

  if LTodosConcluidos then
    ShowMessage('Todos os itens foram concluídos!');
end;

procedure TMultiProgressView.btnClearClick(Sender: TObject);
begin
  for var i := 0 to Pred(MultiProgress.CircleItems.Count) do
    MultiProgress.CircleItems.Items[i].Value := 0;
end;

end.
