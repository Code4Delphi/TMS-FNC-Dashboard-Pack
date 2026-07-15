object WidgetMatrixLabelView: TWidgetMatrixLabelView
  Left = 0
  Top = 0
  Caption = 'TMS FNC Widget Matrix Label View Demo'
  ClientHeight = 441
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 441
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object TMSFNCWidgetMatrixLabel1: TTMSFNCWidgetMatrixLabel
      Left = 24
      Top = 200
      Width = 536
      Height = 30
      ParentDoubleBuffered = False
      Color = clBlack
      DoubleBuffered = False
      TabOrder = 0
      Fill.Color = clBlack
      Stroke.Kind = gskNone
      Text = ''
      Leds = 33
      Orientation = mloHorizontal
      Scroll.Interval = 200
    end
    object Panel2: TPanel
      Left = 0
      Top = 400
      Width = 595
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 495
      object btnScrollAuto: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 133
        Height = 35
        Align = alLeft
        Caption = 'Scroll Auto'
        TabOrder = 0
        OnClick = btnScrollAutoClick
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 33
      end
    end
  end
end
