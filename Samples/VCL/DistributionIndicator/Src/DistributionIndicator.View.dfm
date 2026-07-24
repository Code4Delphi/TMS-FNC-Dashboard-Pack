object DistributionIndicatorView: TDistributionIndicatorView
  Left = 0
  Top = 0
  Caption = 'TMS FNC Dashboard Pack - Widget Distribution Indicator'
  ClientHeight = 713
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object DistributionIndicator1: TTMSFNCWidgetDistributionIndicator
    Left = 0
    Top = 41
    Width = 595
    Height = 672
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Border.Color = clDimgray
    Border.Width = 1.000000000000000000
    DonutThickness = 0.250000000000000000
    BarWidth = 0.300000011920929000
    BarLength = 0.899999976158142100
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clDarkslategray
    ValueFont.Height = -16
    ValueFont.Name = 'Segoe UI'
    ValueFont.Style = []
    ValueType = vtPercentage
    ValueFormatPercentage = '%.0n%%'
    ValueFormatAbsolute = '%.0n'
    Values = <
      item
        Value = 22.000000000000000000
        Text = 'Item 0'
        Fill.Orientation = gfoVertical
        Fill.Color = clDarkturquoise
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end
      item
        Value = 10.000000000000000000
        Text = 'Item 1'
        Fill.Orientation = gfoVertical
        Fill.Color = clOrange
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end
      item
        Value = 21.000000000000000000
        Text = 'Item 2'
        Fill.Orientation = gfoVertical
        Fill.Color = clLimegreen
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end
      item
        Value = 25.000000000000000000
        Text = 'Item 3'
        Fill.Orientation = gfoVertical
        Fill.Color = clViolet
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end
      item
        Value = 16.000000000000000000
        Text = 'Item 4'
        Fill.Orientation = gfoVertical
        Fill.Color = clYellow
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end
      item
        Value = 6.000000000000000000
        Text = 'Item 5'
        Fill.Orientation = gfoVertical
        Fill.Color = clOrangered
        Fill.TextureMode = gtmStretch
        Stroke.Color = clDimgray
        Stroke.Width = 1.000000000000000000
      end>
    Header.Text = 'Vendas mensais'
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -19
    Header.Font.Name = 'Segoe UI'
    Header.Font.Style = []
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clGray
    Footer.Font.Height = -19
    Footer.Font.Name = 'Segoe UI'
    Footer.Font.Style = []
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clGray
    Legend.Font.Height = -16
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = []
    Legend.Position = lpBottom
    Funnel.WidthTop = 0.600000023841857900
    Funnel.WidthBottom = 0.330000013113021900
    Funnel.Gap = 0.019999999552965160
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 15
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 0
      Width = 96
      Height = 41
      Align = alLeft
      Caption = 'Distribution Type: '
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Label2: TLabel
      Left = 290
      Top = 0
      Width = 62
      Height = 41
      Align = alLeft
      Caption = 'Value Type: '
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object cBoxType: TComboBox
      AlignWithMargins = True
      Left = 111
      Top = 10
      Width = 169
      Height = 23
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alLeft
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Donut'
      OnChange = cBoxTypeChange
      Items.Strings = (
        'Donut'
        'Pie'
        'Funnel'
        'Horizontal Bar'
        'Vertical Bar')
    end
    object cBoxValueType: TComboBox
      AlignWithMargins = True
      Left = 352
      Top = 10
      Width = 169
      Height = 23
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Show Percentages'
      OnChange = cBoxValueTypeChange
      Items.Strings = (
        'Show Percentages'
        'Show Absolute Values')
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Code4D\Cursos\TMS\TMS-FNC-Dashboard-Pack\Samples\VCL' +
        '\DistributionIndicator\Data\code4delphi.db'
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    FetchOptions.CursorKind = ckForwardOnly
    LoginPrompt = False
    Left = 512
    Top = 54
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      'id_mes,'
      'mes,'
      'sum(valor) as Total '
      'from vendas'
      'group by id_mes')
    Left = 512
    Top = 110
    object FDQuery1id_mes: TIntegerField
      FieldName = 'id_mes'
      Origin = 'id_mes'
      Required = True
    end
    object FDQuery1mes: TWideMemoField
      FieldName = 'mes'
      Origin = 'mes'
      Required = True
      BlobType = ftWideMemo
    end
    object FDQuery1Total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',,0.00'
    end
  end
end
