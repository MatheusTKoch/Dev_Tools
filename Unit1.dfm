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
    ActivePage = TabCalc
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
    end
    object TabComp: TTabSheet
      Caption = 'Comp'
      ImageIndex = 3
      TabVisible = False
    end
  end
end
