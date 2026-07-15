object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TMS FNC Widget LED Bar Demo '
  ClientHeight = 378
  ClientWidth = 596
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
    Width = 596
    Height = 378
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object TMSFNCWidgetLEDBar1: TTMSFNCWidgetLEDBar
      Left = 107
      Top = 160
      Width = 358
      Height = 40
      ParentDoubleBuffered = False
      Color = clBtnFace
      DoubleBuffered = True
      TabOrder = 0
      Leds = <
        item
        end
        item
        end
        item
          OnColor = clOlive
          OffColor = 16448
          BaseColor = clOlive
        end
        item
          OnColor = clYellow
          OffColor = clOlive
          BaseColor = clYellow
        end
        item
          OnColor = clYellow
          OffColor = clOlive
          BaseColor = clYellow
        end
        item
          OnColor = clGreen
          OffColor = 16384
          BaseColor = clGreen
        end
        item
          OnColor = clLime
          OffColor = clGreen
          BaseColor = clLime
        end
        item
          OnColor = clLime
          OffColor = clGreen
          BaseColor = clLime
        end>
      Fill.Kind = gfkNone
      Stroke.Kind = gskNone
    end
    object Panel2: TPanel
      Left = 0
      Top = 336
      Width = 596
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object Button1: TButton
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 75
        Height = 32
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        AlignWithMargins = True
        Left = 83
        Top = 5
        Width = 75
        Height = 32
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alLeft
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
end
