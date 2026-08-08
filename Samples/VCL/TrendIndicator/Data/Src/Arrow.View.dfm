object ArrowView: TArrowView
  Left = 0
  Top = 0
  Caption = 'TMS FNC Dashboard Pack - Arrow'
  ClientHeight = 567
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
    object btnIncrementValue: TButton
      Left = 8
      Top = 5
      Width = 169
      Height = 30
      Align = alLeft
      Caption = 'Incremente Value'
      TabOrder = 0
      OnClick = btnIncrementValueClick
    end
  end
  object TMSFNCWidgetArrow1: TTMSFNCWidgetArrow
    Left = 0
    Top = 40
    Width = 589
    Height = 527
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 1
    ArrowOptions.Border.Color = clDimgray
    ArrowOptions.Border.Width = 1.000000000000000000
    Border.Color = clDimgray
    Border.Width = 1.000000000000000000
    CaptionOptions.Text = 'Processando ...'
    CaptionOptions.Font.Charset = DEFAULT_CHARSET
    CaptionOptions.Font.Color = clGray
    CaptionOptions.Font.Height = -19
    CaptionOptions.Font.Name = 'Segoe UI'
    CaptionOptions.Font.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clGray
    ValueFont.Height = -19
    ValueFont.Name = 'Segoe UI'
    ValueFont.Style = []
    ValueText = '%g'
    ExplicitTop = 41
  end
end
