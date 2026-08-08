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
    ArrowOptions.Margin = 70
    ArrowOptions.Width = 30
    ArrowOptions.HeadWidth = 60
    ArrowOptions.HeadLength = 60
    Border.Color = clDimgray
    Border.Width = 1.000000000000000000
    CaptionOptions.Text = 'Processando ...'
    CaptionOptions.Font.Charset = DEFAULT_CHARSET
    CaptionOptions.Font.Color = 12615680
    CaptionOptions.Font.Height = -19
    CaptionOptions.Font.Name = 'Segoe UI'
    CaptionOptions.Font.Style = [fsBold]
    Value = 90
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = 12615680
    ValueFont.Height = -19
    ValueFont.Name = 'Segoe UI'
    ValueFont.Style = [fsBold]
    ValueText = '%g'
    ExplicitTop = 41
    object Label1: TLabel
      Left = 271
      Top = 436
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 384
      Top = 407
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 456
      Top = 336
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 483
      Top = 241
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 455
      Top = 143
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 388
      Top = 72
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 271
      Top = 47
      Width = 49
      Height = 20
      Caption = 'N'#237'vel 7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4210752
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
