unit TrendIndicator.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWidgetTrendIndicator, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTrendIndicatorView = class(TForm)
    TMSFNCWidgetTrendIndicator1: TTMSFNCWidgetTrendIndicator;
    Panel2: TPanel;
    Label1: TLabel;
    btnFill: TButton;
    cBoxGraphType: TComboBox;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery1id_mes: TIntegerField;
    FDQuery1mes: TWideMemoField;
    FDQuery1Total: TFloatField;
    procedure cBoxGraphTypeChange(Sender: TObject);
    procedure btnFillClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure FillValues;
    procedure ConfigComponente;
  public

  end;

var
  TrendIndicatorView: TTrendIndicatorView;

implementation

{$R *.dfm}

procedure TTrendIndicatorView.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := '..\Data\code4delphi.db';
  Self.ConfigComponente;
end;

procedure TTrendIndicatorView.ConfigComponente;
begin
  TMSFNCWidgetTrendIndicator1.GraphType := TTMSFNCWidgetTrendIndicatorGraphType(cBoxGraphType.ItemIndex);
  TMSFNCWidgetTrendIndicator1.DescriptionText := 'Indicador de vendas do ano';
end;

procedure TTrendIndicatorView.cBoxGraphTypeChange(Sender: TObject);
begin
  Self.ConfigComponente;
end;

procedure TTrendIndicatorView.FillValues;
begin
  TMSFNCWidgetTrendIndicator1.Values.BeginUpdate;
  try
    TMSFNCWidgetTrendIndicator1.Values.Clear;
    TMSFNCWidgetTrendIndicator1.Value := 0;

    FDQuery1.Open;
    FDQuery1.First;
    while not FDQuery1.Eof do
    begin
      TMSFNCWidgetTrendIndicator1.Values.Add.Value := FDQuery1Total.AsFloat;
      TMSFNCWidgetTrendIndicator1.Value := TMSFNCWidgetTrendIndicator1.Value + FDQuery1Total.AsFloat;

      FDQuery1.Next;
    end;
  finally
    TMSFNCWidgetTrendIndicator1.Values.EndUpdate;
  end;
end;

procedure TTrendIndicatorView.btnFillClick(Sender: TObject);
begin
  Self.FillValues;
end;

end.
