object Form1: TForm1
  Left = 219
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '21 '#1054#1095#1082#1086
  ClientHeight = 372
  ClientWidth = 905
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 761
    Top = 26
    Width = 3
    Height = 16
  end
  object Label2: TLabel
    Left = 758
    Top = 46
    Width = 3
    Height = 16
  end
  object Label4: TLabel
    Left = 148
    Top = 16
    Width = 41
    Height = 16
    Caption = 'Label4'
  end
  object Label6: TLabel
    Left = 148
    Top = 174
    Width = 41
    Height = 16
    Caption = 'Label6'
  end
  object Image1: TImage
    Left = 10
    Top = 36
    Width = 90
    Height = 129
  end
  object Image2: TImage
    Left = 108
    Top = 36
    Width = 90
    Height = 129
  end
  object Image3: TImage
    Left = 207
    Top = 36
    Width = 90
    Height = 129
  end
  object Image4: TImage
    Left = 305
    Top = 36
    Width = 90
    Height = 129
  end
  object Image5: TImage
    Left = 404
    Top = 36
    Width = 90
    Height = 129
  end
  object Image6: TImage
    Left = 502
    Top = 36
    Width = 90
    Height = 129
  end
  object Image7: TImage
    Left = 601
    Top = 36
    Width = 89
    Height = 129
  end
  object Image8: TImage
    Left = 699
    Top = 36
    Width = 90
    Height = 129
  end
  object Image9: TImage
    Left = 748
    Top = 90
    Width = 90
    Height = 130
    Visible = False
  end
  object Image10: TImage
    Left = 798
    Top = 36
    Width = 89
    Height = 129
  end
  object Image11: TImage
    Left = 10
    Top = 193
    Width = 90
    Height = 129
  end
  object Image12: TImage
    Left = 108
    Top = 193
    Width = 90
    Height = 129
  end
  object Image13: TImage
    Left = 207
    Top = 193
    Width = 90
    Height = 129
  end
  object Image14: TImage
    Left = 305
    Top = 193
    Width = 90
    Height = 129
  end
  object Image15: TImage
    Left = 404
    Top = 193
    Width = 90
    Height = 129
  end
  object Image16: TImage
    Left = 502
    Top = 193
    Width = 90
    Height = 129
  end
  object Image17: TImage
    Left = 601
    Top = 193
    Width = 89
    Height = 129
  end
  object Image18: TImage
    Left = 699
    Top = 193
    Width = 90
    Height = 129
  end
  object Image19: TImage
    Left = 798
    Top = 193
    Width = 89
    Height = 129
  end
  object Image20: TImage
    Left = 748
    Top = 228
    Width = 90
    Height = 130
    Visible = False
  end
  object Label7: TLabel
    Left = 10
    Top = 16
    Width = 22
    Height = 16
    Caption = #1042#1099':'
  end
  object Label8: TLabel
    Left = 10
    Top = 174
    Width = 79
    Height = 16
    Caption = #1055#1088#1086#1090#1080#1074#1085#1080#1082':'
  end
  object Label9: TLabel
    Left = 108
    Top = 16
    Width = 37
    Height = 16
    Caption = #1057#1095#1077#1090':'
  end
  object Label10: TLabel
    Left = 108
    Top = 174
    Width = 37
    Height = 16
    Caption = #1057#1095#1077#1090':'
  end
  object Label3: TLabel
    Left = 650
    Top = 333
    Width = 6
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 108
    Top = 335
    Width = 93
    Height = 31
    Caption = #1045#1097#1077
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 207
    Top = 335
    Width = 92
    Height = 31
    Caption = #1061#1074#1072#1090#1080#1090
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 10
    Top = 335
    Width = 92
    Height = 31
    Caption = #1048#1075#1088#1072
    TabOrder = 2
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 552
    Top = 24
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer2Timer
    Left = 520
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 24
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
end
