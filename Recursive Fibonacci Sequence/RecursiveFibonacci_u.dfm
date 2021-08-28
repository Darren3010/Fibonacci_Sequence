object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Recursive Function'
  ClientHeight = 185
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 270
    Height = 33
    Caption = 'Fibonacci Sequence'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 47
    Width = 88
    Height = 17
    Caption = 'Start position:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 78
    Width = 83
    Height = 17
    Caption = 'End position:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
  end
  object EdtStartPos: TEdit
    Left = 102
    Top = 47
    Width = 91
    Height = 18
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object EdtEndPos: TEdit
    Left = 102
    Top = 76
    Width = 91
    Height = 18
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object BtnGenerate: TButton
    Left = 199
    Top = 47
    Width = 75
    Height = 48
    Caption = 'Generate'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Century Gothic'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnGenerateClick
  end
  object RedOutput: TRichEdit
    Left = 8
    Top = 101
    Width = 266
    Height = 78
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
