unit UnControle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Buttons;

type
  TfrmControle = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btLocalizar: TButton;
    DBEData: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBESaldo: TDBEdit;
    DBENovosaldo: TDBEdit;
    RGVendas: TDBRadioGroup;
    QControle: TADOQuery;
    DSControle: TDataSource;
    EditCodVen: TMaskEdit;
    QRMvend: TADOQuery;
    DSRMVend: TDataSource;
    DBENomeven: TDBEdit;
    QRMvendCODCOLIGADA: TSmallintField;
    QRMvendCODVEN: TStringField;
    QRMvendNOME: TStringField;
    QRMvendCARGO: TStringField;
    QRMvendCODFILIAL: TSmallintField;
    QRMvendCODLOC: TStringField;
    QRMvendCOMISSAO1: TBCDField;
    QRMvendCOMISSAO2: TBCDField;
    QRMvendCOMISSAO3: TBCDField;
    QRMvendCODPESSOA: TIntegerField;
    QRMvendVENDECOMPRA: TSmallintField;
    QRMvendCODUSUARIO: TStringField;
    QRMvendSENHA: TStringField;
    QRMvendINATIVO: TSmallintField;
    QRMvendPFVENDEDOR: TSmallintField;
    QRMvendPFCAIXA: TSmallintField;
    QRMvendPFSUPERVISOR: TSmallintField;
    QRMvendPFGERENTE: TSmallintField;
    QRMvendIDFUNCIONARIO: TIntegerField;
    QRMvendCOMISSAO4: TBCDField;
    QRMvendDESCMAXIMO: TBCDField;
    QRMvendRECCREATEDBY: TStringField;
    QRMvendRECCREATEDON: TDateTimeField;
    QRMvendRECMODIFIEDBY: TStringField;
    QRMvendRECMODIFIEDON: TDateTimeField;
    QBonifica: TADOQuery;
    DSBonifica: TDataSource;
    QBonificaIDBONI: TAutoIncField;
    QBonificaIDPRDB: TIntegerField;
    QBonificaDESCPRODUTO: TStringField;
    QBonificaQUANTIDADEB: TIntegerField;
    QBonificaCODUNDB: TStringField;
    QBonificaVALORITEM1: TBCDField;
    QBonificaVALORITEM2: TBCDField;
    QBonificaVALORITEM3: TBCDField;
    QBonificaVALORITEM4: TBCDField;
    QBonificaVALORITEM5: TBCDField;
    QBonificaVALORITEMVEND: TBCDField;
    QBonificaCODCPGB: TStringField;
    QBonificaHISTORICOB: TStringField;
    QBonificaDATAVENDA: TStringField;
    QBonificaCODCFOB: TStringField;
    QBonificaCODVEN1B: TStringField;
    QBonificaVALORTOTAL: TStringField;
    QBonificaTIPOOPERACAO: TStringField;
    QBonificaSALDOANTERIOR: TStringField;
    QBonificaSALDOPOSTERIOR: TStringField;
    QBonificaNUMEROMOVB: TStringField;
    QBonificaSTATUSB: TStringField;
    QBonificaDATAEXTRA1B: TDateTimeField;
    QBonificaDATAEXTRA2B: TDateTimeField;
    QBonificaCOMISSAOREPRESB: TBCDField;
    QBonificaVALOROUTROSB: TBCDField;
    QBonificaVALORDESCB: TBCDField;
    QBonificaVALORDESPB: TBCDField;
    QBonificaVALOREXTRA2B: TBCDField;
    QBonificaCODTB1FATB: TStringField;
    QBonificaCODTB2FATB: TStringField;
    QBonificaCODTB3FATB: TStringField;
    QBonificaCODTB4FATB: TStringField;
    QBonificaCODTB5FATB: TStringField;
    QBonificaCODTB1FLXB: TStringField;
    QBonificaCODTB2FLXB: TStringField;
    QBonificaCODTB3FLXB: TStringField;
    QBonificaCODTB4FLXB: TStringField;
    QBonificaCODTB5FLXB: TStringField;
    QBonificaDATABASEMOVB: TDateTimeField;
    QBonificaDATAMOVIMENTOB: TDateTimeField;
    QBonificaCODUSUARIOB: TStringField;
    QBonificaCAMPOLIVRE1B: TStringField;
    QBonificaCAMPOLIVRE2B: TStringField;
    QBonificaCAMPOLIVRE3B: TStringField;
    QBonificaNUMEROEXTRA1: TIntegerField;
    QBonificaNUMEROEXTRA2: TIntegerField;
    QBonificaDATACRIACAOB: TDateTimeField;
    PanelSaldos: TPanel;
    SBSaldoNovo: TSpeedButton;
    SBSaldoEditar: TSpeedButton;
    SBSaldoSalvar: TSpeedButton;
    SBSaldoCancelar: TSpeedButton;
    SBSaldoSair: TSpeedButton;
    procedure btSalvarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBECodvenChange(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure EditCodVenChange(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure EditCodVenExit(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBSaldoNovoClick(Sender: TObject);
    procedure SBSaldoEditarClick(Sender: TObject);
    procedure SBSaldoSalvarClick(Sender: TObject);
    procedure SBSaldoCancelarClick(Sender: TObject);
    procedure SBSaldoSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControle: TfrmControle;

implementation

{$R *.dfm}

uses UnPrincipal;

procedure TfrmControle.btCancelarClick(Sender: TObject);
begin
EditCodVen.Enabled := True;
DBESaldo.Enabled := False;
EditCodVen.SetFocus;
EditCodVen.Clear;
DBENomeven.Clear;
DBESaldo.Clear;
DBEdit2.Clear;
SBSaldoEditar.Enabled := True;
SBSaldoSalvar.Enabled := False;
SBSaldoNovo.Enabled := True;
SBSaldoSair.Enabled := True;
end;

procedure TfrmControle.btEditarClick(Sender: TObject);
begin
EditCodVen.Enabled := False;
DBESaldo.Enabled := True;
SBSaldoSalvar.Enabled := True;
SBSaldoSair.Enabled := True;
SBSaldoSair.Enabled := False;
EditCodVen.SetFocus;
end;

procedure TfrmControle.btLocalizarClick(Sender: TObject);
begin
with QRMVend do
begin
  close;
  sql.clear;
  sql.Add('select * from TVEN where codven =:pCodVen');
  Parameters.ParamByName('pCodVen').Value := EditCodVen.Text;
  open;
  ExecSQL;
end;
end;

procedure TfrmControle.btNovoClick(Sender: TObject);
begin
EditCodVen.Enabled := True;
DBESaldo.Enabled := True;
EditCodVen.SetFocus;
SBSaldoSalvar.Enabled := True;
EditCodVen.Clear;
DBENomeven.Clear;
DBESaldo.Clear;
DBEdit2.Clear;
SBSaldoEditar.Enabled := False;
SBSaldoSair.Enabled := False;
SBSaldoNovo.Enabled := False;
end;

procedure TfrmControle.btSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmControle.btSalvarClick(Sender: TObject);
begin
If EditCodVen.text = ''  then
  begin showmessage('Codigo do Vendedor n�o pode ser nulo'); abort;
  end;
    begin
    If DBENomeven.text = ''  then
      begin showmessage('Nome do Vendedor n�o pode ser nulo'); abort;
      end;
        begin
        If DBENovosaldo.text = ''  then
          begin showmessage('Novo Saldo n�o pode ser nulo'); abort;
          end;
        end;
    end;
  end;
procedure TfrmControle.DBECodvenChange(Sender: TObject);
begin
//SQLDataSet.Close;
//ClientDataSet.Close;
//SQLDataSet.CommandText := 'SELECT * FROM GD_BONIFICACAO WHERE (Upper(CODVEN1B) Like :Nome';
//ClientDataSet.FetchParams;
//ClientDataSet.Params.ParamByName('NOME').AsString := UpperCase(DBECodven.Text)+'�';
//ClientDataSet.Open;
end;

procedure TfrmControle.EditCodVenChange(Sender: TObject);
begin
with QControle do
begin
  close;
  sql.clear;
  sql.Add(' select * from GD_BONIFICACAO where CODVEN1B like :pNome');
  Parameters.ParamByName('pNome').Value := '%' + EditCodVen.Text + '%';
  open;
end;
end;

procedure TfrmControle.EditCodVenExit(Sender: TObject);
begin
with QRMVend do
begin
  close;
  sql.clear;
  sql.Add('select * from TVEN where codven =:pCodVen');
  Parameters.ParamByName('pCodVen').Value := EditCodVen.Text;
  open;
  ExecSQL;
end;
with QBonifica do
begin
  close;
  sql.clear;
  sql.Add('select * from GD_BONIFICACAO where CODVEN1B =:pCodVenBoni');
  Parameters.ParamByName('pCodVenBoni').Value := EditCodVen.Text;
  open;
  ExecSQL;
end;
DBEData.text := formatdatetime('dd/mm/yyyy', now);

end;



procedure TfrmControle.FormCreate(Sender: TObject);
begin
EditCodVen.Enabled := True;
DBENomeven.Enabled := True;
DBESaldo.Enabled := False;
SBSaldoSalvar.Enabled := False;
SBSaldoSair.Enabled := True;
SBSaldoNovo.Enabled := True;

end;

procedure TfrmControle.FormShow(Sender: TObject);
begin
//DBEData.text := formatdatetime('dd/mm/yyyy', now);
end;

procedure TfrmControle.MaskEdit1Change(Sender: TObject);
begin
with QControle do
begin
  close;
  sql.clear;
  sql.Add(' select * from GD_BONIFICACAO where CODVEN1B like :pNome');
  Parameters.ParamByName('pNome').Value := '%' + EditCodVen.Text + '%';
  open;
end;
end;

procedure TfrmControle.SBSaldoCancelarClick(Sender: TObject);
begin
EditCodVen.Enabled := True;
DBESaldo.Enabled := False;
EditCodVen.SetFocus;
EditCodVen.Clear;
DBENomeven.Clear;
DBESaldo.Clear;
DBEdit2.Clear;
SBSaldoEditar.Enabled := False;
SBSaldoSalvar.Enabled := False;
SBSaldoNovo.Enabled := True;
SBSaldoSair.Enabled := True;
end;

procedure TfrmControle.SBSaldoEditarClick(Sender: TObject);
begin
EditCodVen.Enabled := False;
DBESaldo.Enabled := True;
SBSaldoSalvar.Enabled := True;
SBSaldoSair.Enabled := True;
SBSaldoNovo.Enabled := False;
DBENomeven.SetFocus;
end;

procedure TfrmControle.SBSaldoNovoClick(Sender: TObject);
begin
EditCodVen.Enabled := True;
DBESaldo.Enabled := True;
EditCodVen.SetFocus;
SBSaldoSalvar.Enabled := True;
EditCodVen.Clear;
DBENomeven.Clear;
DBESaldo.Clear;
DBEdit2.Clear;
SBSaldoEditar.Enabled := False;
SBSaldoSair.Enabled := False;
SBSaldoNovo.Enabled := False;
end;

procedure TfrmControle.SBSaldoSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmControle.SBSaldoSalvarClick(Sender: TObject);
begin
If EditCodVen.text = ''  then
  begin showmessage('Codigo do Vendedor n�o pode ser nulo'); abort;
  end;
    begin
    If DBENomeven.text = ''  then
      begin showmessage('Nome do Vendedor n�o pode ser nulo'); abort;
      end;
    end;
    Showmessage ('Atualiza��o Realizada com Sucesso');
end;

end.
