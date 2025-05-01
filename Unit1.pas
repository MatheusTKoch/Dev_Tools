unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainPanel: TPanel;
    MainClient: TPageControl;
    Base64Button: TButton;
    CalcButton: TButton;
    HashButton: TButton;
    CompButton: TButton;
    TabBase64: TTabSheet;
    TabCalc: TTabSheet;
    TabHash: TTabSheet;
    TabComp: TTabSheet;
    lblBase64Title: TLabel;
    lblInput: TLabel;
    lblOutput: TLabel;
    memoOutput: TMemo;
    btnEncode: TButton;
    btnDecode: TButton;
    btnCopy: TButton;
    btnClear: TButton;
    memoInput: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure HighlightActiveButton(Button: TButton);
    procedure Base64ButtonClick(Sender: TObject);
    procedure CalcButtonClick(Sender: TObject);
    procedure HashButtonClick(Sender: TObject);
    procedure CompButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

procedure TForm1.HighlightActiveButton(Button: TButton);
var
  AllButtons: array of TButton;
  i: Integer;
begin
  AllButtons := [Base64Button, CalcButton, HashButton, CompButton];

  for i := 0 to Length(AllButtons) - 1 do
  begin
    AllButtons[i].Font.Style := [];
    AllButtons[i].Font.Color := clWindowText;
  end;

  Button.Font.Style := [fsBold];
  Button.Font.Color := clBlue;
end;

procedure TForm1.Base64ButtonClick(Sender: TObject);
begin
  MainClient.ActivePage := TabBase64;
  HighlightActiveButton(Base64Button);
end;

procedure TForm1.CalcButtonClick(Sender: TObject);
begin
  MainClient.ActivePage := TabCalc;
  HighlightActiveButton(CalcButton);
end;

procedure TForm1.CompButtonClick(Sender: TObject);
begin
  MainClient.ActivePage := TabComp;
  HighlightActiveButton(CompButton);
end;

procedure TForm1.HashButtonClick(Sender: TObject);
begin
  MainClient.ActivePage := TabHash;
  HighlightActiveButton(HashButton);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MainClient.Style := tsFlatButtons;

  MainPanel.Width := 150;
  MainPanel.Align := alLeft;
  MainPanel.BevelOuter := bvNone;

  Base64Button.Align := alTop;
  Base64Button.Height := 40;
  Base64Button.AlignWithMargins := True;
  Base64Button.Margins.Top := 5;
  Base64Button.Margins.Left := 5;
  Base64Button.Margins.Right := 5;

  CalcButton.Align := alTop;
  CalcButton.Height := 40;
  CalcButton.AlignWithMargins := True;
  CalcButton.Margins.Top := 5;
  CalcButton.Margins.Left := 5;
  CalcButton.Margins.Right := 5;

  HashButton.Align := alTop;
  HashButton.Height := 40;
  HashButton.AlignWithMargins := True;
  HashButton.Margins.Top := 5;
  HashButton.Margins.Left := 5;
  HashButton.Margins.Right := 5;

  CompButton.Align := alTop;
  CompButton.Height := 40;
  CompButton.AlignWithMargins := True;
  CompButton.Margins.Top := 5;
  CompButton.Margins.Left := 5;
  CompButton.Margins.Right := 5;

  MainClient.ActivePageIndex := 0;
  HighlightActiveButton(Base64Button);
end;



{$R *.dfm}

end.
