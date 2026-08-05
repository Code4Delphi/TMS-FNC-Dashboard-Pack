object MultiProgressView: TMultiProgressView
  Left = 0
  Top = 0
  Caption = 'TMS FNC Dashboard Pack - Widget Multi Progress'
  ClientHeight = 664
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
    TabOrder = 0
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
    object btnIncrement: TButton
      Left = 8
      Top = 5
      Width = 99
      Height = 30
      Align = alLeft
      Caption = 'Increment'
      TabOrder = 0
      OnClick = btnIncrementClick
    end
    object cBoxLegendPosition: TComboBox
      Left = 432
      Top = 11
      Width = 145
      Height = 23
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemIndex = 3
      TabOrder = 1
      Text = 'Bottom Left'
      OnChange = cBoxLegendPositionChange
      Items.Strings = (
        'None'
        'Top Left'
        'Top Right'
        'Bottom Left'
        'Bottom Right'
        'On Circle')
    end
    object btnClear: TButton
      Left = 107
      Top = 5
      Width = 99
      Height = 30
      Align = alLeft
      Caption = 'Clear'
      TabOrder = 2
      OnClick = btnClearClick
    end
  end
  object MultiProgress: TTMSFNCWidgetMultiProgress
    Left = 0
    Top = 40
    Width = 589
    Height = 624
    Margins.Left = 0
    Align = alClient
    ParentDoubleBuffered = False
    Color = 1511693
    DoubleBuffered = True
    TabOrder = 1
    CircleOptions.Margin = 30
    CircleItems = <
      item
        Fill.Orientation = gfoVertical
        Fill.ColorTo = clSilver
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = 1511693
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 1'
      end
      item
        Fill.Orientation = gfoVertical
        Fill.ColorTo = clSilver
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = 1511693
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 2'
      end
      item
        Fill.Orientation = gfoVertical
        Fill.ColorTo = clSilver
        Fill.TextureMode = gtmStretch
        UnfinishedFill.Orientation = gfoVertical
        UnfinishedFill.Color = 1511693
        UnfinishedFill.TextureMode = gtmStretch
        Value = 50.000000000000000000
        Caption = 'Item 3'
      end>
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -16
    Legend.Font.Name = 'Segoe UI'
    Legend.Font.Style = []
    Legend.Position = lpBottomLeft
    Legend.Border.Kind = gskDash
    Legend.Border.Width = 1.000000000000000000
    Legend.Margin = 10
    Legend.Fill.Orientation = gfoVertical
    Legend.Fill.Color = 16510691
    Legend.Fill.TextureMode = gtmStretch
    Border.Kind = gskNone
    Border.Color = clDimgray
    Border.Width = 1.000000000000000000
    CaptionOptions.Text = 'Inscritos'
    CaptionOptions.Font.Charset = DEFAULT_CHARSET
    CaptionOptions.Font.Color = clWhite
    CaptionOptions.Font.Height = -19
    CaptionOptions.Font.Name = 'Segoe UI'
    CaptionOptions.Font.Style = [fsBold]
    CaptionOptions.Position = cpTop
    ValueFont.Charset = ANSI_CHARSET
    ValueFont.Color = clWhite
    ValueFont.Height = -16
    ValueFont.Name = 'Segoe UI'
    ValueFont.Style = [fsBold]
    ValueFormat = '%g%%'
  end
end
