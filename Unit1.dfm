object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'DevTools'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 193
    Height = 441
    Align = alLeft
    TabOrder = 0
    object Base64Button: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 185
      Height = 33
      Align = alTop
      Caption = 'Base64 Converter'
      TabOrder = 0
      OnClick = Base64ButtonClick
    end
    object CalcButton: TButton
      AlignWithMargins = True
      Left = 4
      Top = 43
      Width = 185
      Height = 33
      Align = alTop
      Caption = 'Calculadora'
      TabOrder = 1
      OnClick = CalcButtonClick
    end
    object HashButton: TButton
      AlignWithMargins = True
      Left = 4
      Top = 82
      Width = 185
      Height = 33
      Align = alTop
      Caption = 'Hash'
      TabOrder = 2
      OnClick = HashButtonClick
    end
    object CompButton: TButton
      AlignWithMargins = True
      Left = 4
      Top = 121
      Width = 185
      Height = 33
      Align = alTop
      Caption = 'Comprimir Arquivos'
      TabOrder = 3
      OnClick = CompButtonClick
    end
  end
  object MainClient: TPageControl
    Left = 193
    Top = 0
    Width = 431
    Height = 441
    ActivePage = TabHash
    Align = alClient
    TabOrder = 1
    object TabBase64: TTabSheet
      Caption = 'B64'
      TabVisible = False
      object lblBase64Title: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 151
        Height = 30
        AutoSize = False
        Caption = 'Conversor de Base 64'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblInput: TLabel
        AlignWithMargins = True
        Left = 40
        Top = 60
        Width = 31
        Height = 15
        Caption = 'Input:'
      end
      object lblOutput: TLabel
        Left = 40
        Top = 230
        Width = 41
        Height = 15
        Caption = 'Output:'
      end
      object memoInput: TMemo
        AlignWithMargins = True
        Left = 30
        Top = 80
        Width = 370
        Height = 90
        Hint = 'Adicione o texto para converter'
        Ctl3D = True
        Lines.Strings = (
          'memoInput')
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object memoOutput: TMemo
        Left = 30
        Top = 250
        Width = 370
        Height = 90
        Lines.Strings = (
          'memoOutput')
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
      end
      object btnEncode: TButton
        Left = 30
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Encode'
        TabOrder = 2
        OnClick = btnEncodeClick
      end
      object btnDecode: TButton
        Left = 128
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Decode'
        TabOrder = 3
        OnClick = btnDecodeClick
      end
      object btnCopy: TButton
        Left = 224
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Copy'
        TabOrder = 4
        OnClick = btnCopyClick
      end
      object btnClear: TButton
        Left = 320
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 5
        OnClick = btnClearClick
      end
    end
    object TabCalc: TTabSheet
      Caption = 'Calc'
      ImageIndex = 1
      TabVisible = False
    end
    object TabHash: TTabSheet
      Caption = 'Hash'
      ImageIndex = 2
      TabVisible = False
      object lblHashTitle: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 132
        Height = 21
        Caption = 'Conversor de Hash'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblTypeSelect: TLabel
        Left = 40
        Top = 30
        Width = 97
        Height = 17
        Caption = 'Tipo de Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblSelect: TLabel
        Left = 40
        Top = 80
        Width = 48
        Height = 17
        Caption = 'Entrada:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 40
        Top = 175
        Width = 61
        Height = 17
        Caption = 'Algoritmo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblResultHash: TLabel
        Left = 40
        Top = 315
        Width = 61
        Height = 17
        Caption = 'Resultado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object btnText: TButton
        Left = 60
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Texto'
        TabOrder = 0
      end
      object btnFile: TButton
        Left = 160
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Arquivo'
        TabOrder = 1
        OnClick = btnFileClick
      end
      object memoTextInput: TMemo
        Left = 40
        Top = 103
        Width = 353
        Height = 66
        Lines.Strings = (
          'memoTextInput')
        TabOrder = 2
      end
      object btnMd5: TButton
        Left = 60
        Top = 198
        Width = 75
        Height = 25
        Caption = 'MD5'
        TabOrder = 3
        OnClick = btnMd5Click
      end
      object btnSha1: TButton
        Left = 160
        Top = 198
        Width = 75
        Height = 25
        Caption = 'SHA-1'
        TabOrder = 4
        OnClick = btnSha1Click
      end
      object btnSha256: TButton
        Left = 264
        Top = 198
        Width = 75
        Height = 25
        Caption = 'SHA-256'
        TabOrder = 5
        OnClick = btnSha256Click
      end
      object btnSha384: TButton
        Left = 60
        Top = 238
        Width = 75
        Height = 25
        Caption = 'SHA-384'
        TabOrder = 6
        OnClick = btnSha384Click
      end
      object btnSha512: TButton
        Left = 160
        Top = 238
        Width = 75
        Height = 25
        Caption = 'SHA-512'
        TabOrder = 7
        OnClick = btnSha512Click
      end
      object btnCrc32: TButton
        Left = 264
        Top = 238
        Width = 75
        Height = 25
        Caption = 'CRC32'
        TabOrder = 8
        OnClick = btnCrc32Click
      end
      object btnHashGenerate: TButton
        Left = 60
        Top = 278
        Width = 141
        Height = 25
        Caption = 'Gerar Hash'
        TabOrder = 9
      end
      object Button1: TButton
        Left = 228
        Top = 278
        Width = 141
        Height = 25
        Caption = 'Clear'
        TabOrder = 10
        OnClick = Button1Click
      end
      object memoTextOutput: TMemo
        Left = 40
        Top = 340
        Width = 353
        Height = 68
        Lines.Strings = (
          'memoTextOutput')
        TabOrder = 11
      end
      object btnCopyHash: TButton
        Left = 320
        Top = 340
        Width = 73
        Height = 24
        Caption = 'Copy'
        TabOrder = 12
        OnClick = btnCopyHashClick
      end
    end
    object TabComp: TTabSheet
      Caption = 'Comp'
      ImageIndex = 3
      TabVisible = False
    end
  end
end
