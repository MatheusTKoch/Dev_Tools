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
    ActivePage = TabBase64
    Align = alClient
    TabOrder = 1
    object TabBase64: TTabSheet
      Caption = 'B64'
      TabVisible = False
      object lblTitleBase64: TLabel
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
      object lblInputBase64: TLabel
        AlignWithMargins = True
        Left = 40
        Top = 60
        Width = 31
        Height = 15
        Caption = 'Input:'
      end
      object lblOutputBase64: TLabel
        Left = 40
        Top = 230
        Width = 41
        Height = 15
        Caption = 'Output:'
      end
      object memoInputBase64: TMemo
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
      object memoOutputBase64: TMemo
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
      object btnEncodeBase64: TButton
        Left = 30
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Encode'
        TabOrder = 2
        OnClick = btnEncodeBase64Click
      end
      object btnDecodeBase64: TButton
        Left = 128
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Decode'
        TabOrder = 3
        OnClick = btnDecodeBase64Click
      end
      object btnCopyBase64: TButton
        Left = 224
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Copy'
        TabOrder = 4
        OnClick = btnCopyBase64Click
      end
      object btnClearBase64: TButton
        Left = 320
        Top = 190
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 5
        OnClick = btnClearBase64Click
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
      object lblHashTitleHash: TLabel
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
      object lblTypeSelectHash: TLabel
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
      object lblSelectHash: TLabel
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
      object lblAlgoritmHash: TLabel
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
      object btnTextHash: TButton
        Left = 60
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Texto'
        TabOrder = 0
        OnClick = btnTextHashClick
      end
      object btnFileHash: TButton
        Left = 160
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Arquivo'
        TabOrder = 1
        OnClick = btnFileHashClick
      end
      object memoTextInputHash: TMemo
        Left = 40
        Top = 103
        Width = 353
        Height = 66
        Lines.Strings = (
          'memoTextInput')
        TabOrder = 2
      end
      object btnGenerateHash: TButton
        Left = 60
        Top = 278
        Width = 141
        Height = 25
        Caption = 'Gerar Hash'
        TabOrder = 3
        OnClick = btnGenerateHashClick
      end
      object btnClearHash: TButton
        Left = 228
        Top = 278
        Width = 141
        Height = 25
        Caption = 'Clear'
        TabOrder = 4
        OnClick = btnClearHashClick
      end
      object memoTextOutputHash: TMemo
        Left = 40
        Top = 340
        Width = 353
        Height = 68
        Lines.Strings = (
          'memoTextOutput')
        TabOrder = 5
      end
      object btnCopyHash: TButton
        Left = 320
        Top = 340
        Width = 73
        Height = 24
        Caption = 'Copy'
        TabOrder = 6
        OnClick = btnCopyHashClick
      end
      object radTypeHash: TRadioGroup
        Left = 40
        Top = 198
        Width = 353
        Height = 60
        Columns = 3
        Items.Strings = (
          'MD5'
          'SHA-1'
          'SHA-256'
          'SHA-384'
          'SHA-512'
          'CRC32')
        ShowFrame = False
        TabOrder = 7
      end
    end
    object TabComp: TTabSheet
      Caption = 'Comp'
      ImageIndex = 3
      TabVisible = False
      object lblCompArquivos: TLabel
        Left = 2
        Top = 1
        Width = 172
        Height = 21
        Caption = 'Compressor de Arquivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblStatusArquivo: TLabel
        Left = 192
        Top = 84
        Width = 159
        Height = 15
        Caption = 'Nenhum arquivo selecionado!'
      end
      object lblStatusCompressao: TLabel
        Left = 192
        Top = 188
        Width = 147
        Height = 15
        Caption = 'Compress'#227'o n'#227'o concluida!'
      end
      object btnSelecionarArquivo: TButton
        Left = 64
        Top = 80
        Width = 110
        Height = 25
        Caption = 'Selecionar Pasta'
        TabOrder = 0
        OnClick = btnSelecionarArquivoClick
      end
      object Button1: TButton
        Left = 64
        Top = 184
        Width = 110
        Height = 25
        Caption = 'Salvar Arquivo'
        TabOrder = 1
      end
    end
  end
end
