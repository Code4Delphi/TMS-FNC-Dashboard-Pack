object TrendIndicatorView: TTrendIndicatorView
  Left = 0
  Top = 0
  Caption = 
    'TMS FNC Dashboard Pack - Indicador de Tend'#234'ncia (Trend Indicator' +
    ')'
  ClientHeight = 548
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object TMSFNCWidgetTrendIndicator1: TTMSFNCWidgetTrendIndicator
    Left = 0
    Top = 40
    Width = 589
    Height = 508
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 0
    Border.Color = clDimgray
    Border.Width = 1.000000000000000000
    Value = 5923.000000000000000000
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clGray
    ValueFont.Height = -19
    ValueFont.Name = 'Segoe UI'
    ValueFont.Style = []
    ValueFormat = '%.0n'
    DescriptionFont.Charset = DEFAULT_CHARSET
    DescriptionFont.Color = clDarkslategray
    DescriptionFont.Height = -16
    DescriptionFont.Name = 'Segoe UI'
    DescriptionFont.Style = []
    DescriptionText = 'Indicador de vendas do ano'
    GraphColor.Width = 2.000000000000000000
    GraphFill.Orientation = gfoVertical
    GraphFill.TextureMode = gtmStretch
    Values = <
      item
        Value = 3479.000000000000000000
      end
      item
        Value = 5634.000000000000000000
      end
      item
        Value = 5942.000000000000000000
      end
      item
        Value = 5283.000000000000000000
      end
      item
        Value = 6138.000000000000000000
      end
      item
        Value = 5838.000000000000000000
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 8
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    DesignSize = (
      589
      40)
    object Label1: TLabel
      Left = 336
      Top = 14
      Width = 91
      Height = 15
      Alignment = taRightJustify
      Caption = 'Legend Position: '
    end
    object btnFill: TButton
      Left = 8
      Top = 5
      Width = 169
      Height = 30
      Align = alLeft
      Caption = 'Fill with database'
      TabOrder = 0
      OnClick = btnFillClick
    end
    object cBoxGraphType: TComboBox
      Left = 432
      Top = 11
      Width = 145
      Height = 23
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 1
      Text = 'Line'
      OnChange = cBoxGraphTypeChange
      Items.Strings = (
        'Line'
        'Bar')
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Code4D\Cursos\TMS\TMS-FNC-Dashboard-Pack\Samples\VCL' +
        '\TrendIndicator\Data\code4delphi.db'
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
