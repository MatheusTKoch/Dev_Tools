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
    lblTitleBase64: TLabel;
    lblInputBase64: TLabel;
    lblOutputBase64: TLabel;
    btnEncodeBase64: TButton;
    btnDecodeBase64: TButton;
    btnCopyBase64: TButton;
    btnClearBase64: TButton;
    memoOutputBase64: TMemo;
    memoInputBase64: TMemo;
    lblHashTitleHash: TLabel;
    lblTypeSelectHash: TLabel;
    btnTextHash: TButton;
    btnFileHash: TButton;
    lblSelectHash: TLabel;
    memoTextInputHash: TMemo;
    lblAlgoritmHash: TLabel;
    btnMd5Hash: TButton;
    btnSha1Hash: TButton;
    btnSha256Hash: TButton;
    btnSha384Hash: TButton;
    btnSha512Hash: TButton;
    btnCrc32Hash: TButton;
    btnGenerateHash: TButton;
    btnClearHash: TButton;
    memoTextOutputHash: TMemo;
    lblResultHash: TLabel;
    btnCopyHash: TButton;
    procedure FormCreate(Sender: TObject);
    procedure HighlightActiveButton(Button: TButton);
    procedure Base64ButtonClick(Sender: TObject);
    procedure CalcButtonClick(Sender: TObject);
    procedure HashButtonClick(Sender: TObject);
    procedure CompButtonClick(Sender: TObject);
    procedure btnClearBase64Click(Sender: TObject);
    procedure btnCopyBase64Click(Sender: TObject);
    procedure btnEncodeBase64Click(Sender: TObject);
    procedure btnDecodeBase64Click(Sender: TObject);
    procedure ErrorTreatment(const Operation: string; E: exception);
    procedure btnClearHashClick(Sender: TObject);
    procedure btnCopyHashClick(Sender: TObject);
    procedure btnFileHashClick(Sender: TObject);
    procedure btnMd5HashClick(Sender: TObject);
    procedure btnSha1HashClick(Sender: TObject);
    procedure btnSha256HashClick(Sender: TObject);
    procedure btnSha384HashClick(Sender: TObject);
    procedure btnSha512HashClick(Sender: TObject);
    procedure btnCrc32HashClick(Sender: TObject);
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
  memoInputBase64.Text := '';
  memoOutputBase64.Text := '';
end;

procedure TForm1.btnClearBase64Click(Sender: TObject);
begin
  memoInputBase64.Text := '';
  memoOutputBase64.Text := '';
end;

procedure TForm1.btnCopyBase64Click(Sender: TObject);
begin
  memoOutputBase64.SelectAll;
  memoOutputBase64.CopyToClipboard;
  memoOutputBase64.HideSelection := true;
end;

procedure TForm1.btnCopyHashClick(Sender: TObject);
begin
  memoTextOutputHash.SelectAll;
  memoTextOutputHash.CopyToClipboard;
  memoTextOutputHash.HideSelection := true;
end;

procedure TForm1.btnCrc32HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnCrc32Hash);
end;

procedure TForm1.btnDecodeBase64Click(Sender: TObject);
begin
  try
    memoInputBase64.text := TNetEncoding.Base64.Decode(memoOutputBase64.Text);
  except
  on E: Exception do
    ErrorTreatment('decodificação', E);
  end;
end;

procedure TForm1.btnEncodeBase64Click(Sender: TObject);
begin
  try
    memoOutputBase64.Text := TNetEncoding.Base64.Encode(memoInputBase64.Text);
  except
  on E: Exception do
      ErrorTreatment('codificação', E);
  end;
end;

procedure TForm1.btnFileHashClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  FileStream: TFileStream;
  Buffer: TBytes;
  FileSize: Int64;
begin
  btnTextHash.Font.Style := [];
  btnTextHash.Font.Color := clWindowText;
  HighlightActiveButton(btnFileHash);
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
          memoTextInputHash.Lines.LoadFromFile(OpenDialog.FileName);

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


procedure TForm1.btnMd5HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnMd5Hash);
end;

procedure TForm1.btnSha1HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnSha1Hash);
end;

procedure TForm1.btnSha256HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnSha256Hash);
end;

procedure TForm1.btnSha384HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnSha384Hash);
end;

procedure TForm1.btnSha512HashClick(Sender: TObject);
begin
  HighlightActiveButton(btnSha512Hash);
end;

procedure TForm1.btnClearHashClick(Sender: TObject);
begin
  memoTextInputHash.Text := '';
  memoTextOutputHash.Text := '';
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
  HighlightActiveButton(btnTextHash);
  memoTextInputHash.Text := '';
  memoTextOutputHash.Text := '';
  memoTextInputHash.SetFocus;
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
