unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    nome: TDBEdit;
    Label3: TLabel;
    telefone: TDBEdit;
    Bloqueado: TDBCheckBox;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    dataHora: TDBText;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label2: TLabel;
    Label6: TLabel;
    procedure txtBuscaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDB;

procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  DM.TabelaContatos.Locate('nome',txtBusca.Text, [loPartialKey]);
end;

end.
