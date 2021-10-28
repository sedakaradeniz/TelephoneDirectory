program TelefonRehber;

uses
  Vcl.Forms,
  untTelefonRehber1 in 'untTelefonRehber1.pas' {TelefonRehberi};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelefonRehberi, TelefonRehberi);
  Application.Run;
end.
