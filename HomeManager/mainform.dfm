object MainWindow: TMainWindow
  Left = 151
  Top = 818
  Width = 672
  Height = 112
  Caption = 'MainWindow'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    object Fjl1: TMenuItem
      Caption = 'Fájl'
      object Kilps1: TMenuItem
        Caption = 'Kilépés'
        OnClick = Kilps1Click
      end
    end
    object TzsAdatok1: TMenuItem
      Caption = 'Funkciók'
      object Kiadsok1: TMenuItem
        Caption = 'Kiadások / Bevételek'
        OnClick = Kiadsok1Click
      end
    end
  end
end
