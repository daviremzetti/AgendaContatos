program AgendaContatos;

uses
  Vcl.Forms,
  unitDB in 'unitDB.pas' {Form1},
  unitPrincipal in 'unitPrincipal.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
