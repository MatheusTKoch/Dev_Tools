unit uBase64;

interface

uses

  System.SysUtils;

  function EncodeBase64(Text: string): String;
  function DecodeBase64(Text: string): String;

implementation

uses
  System.NetEncoding, Vcl.Dialogs;

function EncodeBase64(Text: string): String;
begin
  Result := '';
  if Text <> '' then
  begin
    try
      Result := TNetEncoding.Base64.Encode(Text);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao encodificar, verifique!');
        Result := '';
      end;
    end;
  end;
end;

function DecodeBase64(Text: string): String;
begin
  Result := '';
  if Text <> '' then
    try
      Result := TNetEncoding.Base64.Decode(Text);
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao decodificar, verifique!');
        Result := '';
      end;
    end;
end;

end.
