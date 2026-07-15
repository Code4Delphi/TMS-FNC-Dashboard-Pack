object WidgetLEDScopeView: TWidgetLEDScopeView
  Left = 0
  Top = 0
  Caption = 'TMS FNC Widget LED Scope Demo'
  ClientHeight = 536
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 495
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 72
    object TMSFNCWidgetLEDScope1: TTMSFNCWidgetLEDScope
      Left = 16
      Top = 16
      Width = 553
      Height = 449
      Ctl3D = True
      ParentCtl3D = False
      ParentDoubleBuffered = False
      DoubleBuffered = True
      TabOrder = 0
      Channels = <
        item
          PeakColor = clBtnFace
          PeakValue = 28
          Value = 28
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 41
          Value = 41
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 18
          Value = 18
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 30
          Value = 30
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 17
          Value = 17
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 20
          Value = 20
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 48
          Value = 48
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 24
          Value = 24
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 44
          Value = 44
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 6
          Value = 6
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 49
          Value = 49
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 23
          Value = 23
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 26
          Value = 26
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 13
          Value = 13
          ShowPeak = True
          Stroke.Color = clGray
        end
        item
          PeakValue = 42
          Value = 42
          ShowPeak = True
          Stroke.Color = clGray
        end>
      DefaultChannel.ShowPeak = True
      DefaultChannel.Stroke.Kind = gskNone
      DefaultChannel.Stroke.Color = clBlack
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 495
    Width = 595
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 176
    ExplicitWidth = 185
    object Button1: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 133
      Height = 33
      Align = alLeft
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
