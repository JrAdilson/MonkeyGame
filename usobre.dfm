object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 499
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 497
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 312
      Top = 431
      Width = 249
      Height = 13
      Caption = 'Desenvolvido por: Adilson Junior e Leandro Canello.'
    end
    object Label2: TLabel
      Left = 391
      Top = 466
      Width = 98
      Height = 13
      Caption = 'Delphi, Horus - 2022'
    end
    object Label3: TLabel
      Left = 367
      Top = 447
      Width = 149
      Height = 13
      Caption = 'Ministrado por: Renan Borgheti'
    end
    object Sobre: TLabel
      Left = 355
      Top = 18
      Width = 134
      Height = 23
      Caption = 'Horus Arcade '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object ScrollBox1: TScrollBox
      Left = 88
      Top = 64
      Width = 657
      Height = 361
      TabOrder = 0
      object Label4: TLabel
        Left = 277
        Top = 24
        Width = 121
        Height = 19
        Caption = 'Sobre os Jogos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 72
        Width = 94
        Height = 16
        Caption = 'Macaco Velho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 94
        Width = 520
        Height = 13
        Caption = 
          'Este jogo consiste em um jogo da Velha cl'#225'ssico, onde ter'#225' dois ' +
          'macacos, um branco e um preto disputando.'
      end
      object Label7: TLabel
        Left = 24
        Top = 160
        Width = 128
        Height = 16
        Caption = 'Encontre o Macaco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 24
        Top = 182
        Width = 602
        Height = 13
        Caption = 
          'Este jogo consiste em um jogo da Mem'#243'ria cl'#225'ssico, onde ter'#225' v'#225'r' +
          'ias figuras de macados e seu objetivo '#233' encontrar os pares.'
      end
      object Label8: TLabel
        Left = 24
        Top = 240
        Width = 128
        Height = 16
        Caption = 'Enforque o Macaco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 24
        Top = 262
        Width = 599
        Height = 13
        Caption = 
          'Este jogo consiste em um jogo da Forca cl'#225'ssico, onde o primeiro' +
          ' jogador informar'#225' uma palavra e uma dica para que o outro'
      end
      object Label10: TLabel
        Left = 24
        Top = 281
        Width = 117
        Height = 13
        Caption = 'jogador tente adivinhar.'
      end
    end
    object Button1: TButton
      Left = 736
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
