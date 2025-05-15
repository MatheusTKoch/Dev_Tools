unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.NetEncoding, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, IdBaseComponent, IdNetworkCalculator;

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
    btnEncode: TButton;
    btnDecode: TButton;
    btnCopy: TButton;
    btnClear: TButton;
    memoOutput: TMemo;
    memoInput: TMemo;
    lblHashTitle: TLabel;
    lblTypeSelect: TLabel;
    btnText: TButton;
    btnFile: TButton;
    lblSelect: TLabel;
    memoTextInput: TMemo;
    Label1: TLabel;
    btnMd5: TButton;
    btnSha1: TButton;
    btnSha256: TButton;
    btnSha384: TButton;
    btnSha512: TButton;
    btnCrc32: TButton;
    btnHashGenerate: TButton;
    Button1: TButton;
    memoTextOutput: TMemo;
    lblResultHash: TLabel;
    btnCopyHash: TButton;
    procedure FormCreate(Sender: TObject);
    procedure HighlightActiveButton(Button: TButton);
    procedure Base64ButtonClick(Sender: TObject);
    procedure CalcButtonClick(Sender: TObject);
    procedure HashButtonClick(Sender: TObject);
    procedure CompButtonClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnEncodeClick(Sender: TObject);
    procedure btnDecodeClick(Sender: TObject);
    procedure ErrorTreatment(const Operation: string; E: exception);
    procedure Button1Click(Sender: TObject);
    procedure btnCopyHashClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
    procedure btnMd5Click(Sender: TObject);
    procedure btnSha1Click(Sender: TObject);
    procedure btnSha256Click(Sender: TObject);
    procedure btnSha384Click(Sender: TObject);
    procedure btnSha512Click(Sender: TObject);
    procedure btnCrc32Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

procedure TForm1.ErrorTreatment(const Operation: string; E: exception);
begin
  MessageDlg('Erro durante a operação de ' + Operation + ': '
  + E.Message, mtError, [mbOK], 0);
end;

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

  Button.Font.Color := clBlue;
end;

procedure TForm1.Base64ButtonClick(Sender: TObject);
begin
  MainClient.ActivePage := TabBase64;
  HighlightActiveButton(Base64Button);
  memoInput.Text := '';
  memoOutput.Text := '';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  memoInput.Text := '';
  memoOutput.Text := '';
end;

procedure TForm1.btnCopyClick(Sender: TObject);
begin
  memoOutput.SelectAll;
  memoOutput.CopyToClipboard;
  memoOutput.HideSelection := true;
end;

procedure TForm1.btnCopyHashClick(Sender: TObject);
begin
  memoTextOutput.SelectAll;
  memoTextOutput.CopyToClipboard;
  memoTextOutput.HideSelection := true;
end;

procedure TForm1.btnCrc32Click(Sender: TObject);
begin
  HighlightActiveButton(btnCrc32);
end;

procedure TForm1.btnDecodeClick(Sender: TObject);
begin
  try
    memoInput.text := TNetEncoding.Base64.Decode(memoOutput.Text);
  except
  on E: Exception do
    ErrorTreatment('decodificação', E);
  end;
end;

procedure TForm1.btnEncodeClick(Sender: TObject);
begin
  try
    memoOutput.Text := TNetEncoding.Base64.Encode(memoInput.Text);
  except
  on E: Exception do
      ErrorTreatment('codificação', E);
  end;
end;

procedure TForm1.btnFileClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  FileStream: TFileStream;
  Buffer: TBytes;
  FileSize: Int64;
begin
  btnText.Font.Style := [];
  btnText.Font.Color := clWindowText;
  HighlightActiveButton(btnFile);
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Title := 'Select file';
    OpenDialog.Filter := 'Select all files (*.*)|*.*';

    if OpenDialog.Execute then
    begin
      try
        FileStream := TFileStream.Create(OpenDialog.FileName, fmOpenRead or fmShareDenyNone);
        try
          FileSize := FileStream.Size;

          if FileSize > 10 * 1024 * 1024 then
          begin
            ShowMessage('File selected is too big.');
            Exit;
          end;

          SetLength(Buffer, FileSize);
          FileStream.ReadBuffer(Buffer[0], FileSize);
          memoTextInput.Lines.LoadFromFile(OpenDialog.FileName);

        finally
          FileStream.Free;
        end;
      except
        on E: Exception do
          ShowMessage('Error reading file: ' + E.Message);
      end;
    end;
  finally
    OpenDialog.Free;
  end;
end;


procedure TForm1.btnMd5Click(Sender: TObject);
begin
  HighlightActiveButton(btnMd5);
end;

procedure TForm1.btnSha1Click(Sender: TObject);
begin
  HighlightActiveButton(btnSha1);
end;

procedure TForm1.btnSha256Click(Sender: TObject);
begin
  HighlightActiveButton(btnSha256);
end;

procedure TForm1.btnSha384Click(Sender: TObject);
begin
  HighlightActiveButton(btnSha384);
end;

procedure TForm1.btnSha512Click(Sender: TObject);
begin
  HighlightActiveButton(btnSha512);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  memoTextInput.Text := '';
  memoTextOutput.Text := '';
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
  HighlightActiveButton(btnText);
  memoTextInput.Text := '';
  memoTextOutput.Text := '';
  memoTextInput.SetFocus;
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
