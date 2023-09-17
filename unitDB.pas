unit unitDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    DriveConexao: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TabelaContatos: TFDTable;
    DadosContatos: TDataSource;
    TabelaContatosid: TFDAutoIncField;
    TabelaContatosnome: TStringField;
    TabelaContatostelefone: TStringField;
    TabelaContatosbloqueado: TBooleanField;
    TabelaContatosobervacoes: TMemoField;
    TabelaContatosdataCadastro: TDateTimeField;
    procedure TabelaContatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TabelaContatosAfterInsert(DataSet: TDataSet);
begin
  TabelaContatosdataCadastro.Value := Now();
end;

end.
