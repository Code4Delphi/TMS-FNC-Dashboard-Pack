unit DistributionIndicator.View;

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
  Vcl.StdCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCWidgetDistributionIndicator;

type
  TDistributionIndicatorView = class(TForm)
    DistributionIndicator1: TTMSFNCWidgetDistributionIndicator;
    Panel1: TPanel;
    Label1: TLabel;
    cBoxType: TComboBox;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery1id_mes: TIntegerField;
    FDQuery1mes: TWideMemoField;
    FDQuery1Total: TFloatField;
    Label2: TLabel;
    cBoxValueType: TComboBox;
    procedure cBoxTypeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cBoxValueTypeChange(Sender: TObject);
  private
    procedure CarregarDados;

  public

  end;

var
  DistributionIndicatorView: TDistributionIndicatorView;

implementation

{$R *.dfm}

const
  C_COLORS: array[0..5] of TTMSFNCGraphicsColor = (
    gcDarkturquoise,
    gcOrange,
    gcLimegreen,
    gcViolet,
    gcYellow,
    gcOrangered);

procedure TDistributionIndicatorView.FormCreate(Sender: TObject);
begin
  DistributionIndicator1.Header.Text := 'Vendas mensais';
  Self.CarregarDados;
end;

procedure TDistributionIndicatorView.CarregarDados;
begin
  DistributionIndicator1.Values.Clear;

  FDQuery1.Open;
  FDQuery1.First;
  while not FDQuery1.Eof do
  begin
    var LItem := DistributionIndicator1.Values.Add;
    LItem.Text := FDQuery1mes.AsString;
    LItem.Value := FDQuery1Total.AsFloat;
    LItem.Fill.Color := C_COLORS[LItem.Index];

    FDQuery1.Next;
  end;
end;

procedure TDistributionIndicatorView.cBoxTypeChange(Sender: TObject);
begin
  DistributionIndicator1.DistributionType :=
    TTMSFNCWidgetDistributionType(cBoxType.ItemIndex);
end;

procedure TDistributionIndicatorView.cBoxValueTypeChange(Sender: TObject);
begin
  if cBoxValueType.ItemIndex = 0 then
    DistributionIndicator1.ValueType := vtPercentage
  else
    DistributionIndicator1.ValueType := vtAbsolute;
end;

end.
