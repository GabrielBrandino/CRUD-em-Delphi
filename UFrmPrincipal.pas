unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, cxImageList,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Phys.MSAccDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc, cxContainer, cxTextEdit, cxDBEdit;

type
  TFrmPrincipal = class(TForm)
    ImgPrincipal: TcxImageList;
    PnlPrincipal: TPanel;
    PnlOpcoes: TPanel;
    BtnNovo: TcxButton;
    BtnApagar: TcxButton;
    BtnUpdate: TcxButton;
    PnlGrid: TPanel;
    GridCRUDDBTableView1: TcxGridDBTableView;
    GridCRUDLevel1: TcxGridLevel;
    GridCRUD: TcxGrid;
    DataSourceProdutos: TDataSource;
    FDQueryProdutos: TFDQuery;
    Label1: TLabel;
    SQLDriverProdutos: TFDPhysMySQLDriverLink;
    FDConProdutos: TFDConnection;
    GirdColunaID: TcxGridDBColumn;
    GridColunaNomeProduto: TcxGridDBColumn;
    GridColunaQuantidadeEstoque: TcxGridDBColumn;
    GridColunaValorUnitario: TcxGridDBColumn;
    BtnPesquisar: TcxButton;
    Edit1: TcxTextEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UFrmNovo, UFrmApagar, UFrmAtualizar;

procedure TFrmPrincipal.BtnApagarClick(Sender: TObject);
begin
  Application.CreateForm(TFrmApagar, FrmApagar);
  FrmApagar.Show;
end;

procedure TFrmPrincipal.BtnNovoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmNovo, FrmNovo);
  FrmNovo.Show;
end;

procedure TFrmPrincipal.BtnPesquisarClick(Sender: TObject);
var
  CampoProcurado: string;
begin
  Edit1.Text := Trim(Edit1.Text);
  Edit1.Text := LowerCase(Edit1.Text);
  CampoProcurado := Edit1.Text;
  if CampoProcurado <> '' then
  begin
    FDQueryProdutos.Filter := 'LOWER(Nome_Produto) LIKE ''%' + CampoProcurado + '%''';
    FDQueryProdutos.Filtered := True;
  end
  else
    FDQueryProdutos.Filtered := False;
end;

procedure TFrmPrincipal.BtnUpdateClick(Sender: TObject);
begin
  Application.CreateForm(TFrmAtualizar, FrmAtualizar);
  FrmAtualizar.Show;
end;

procedure TFrmPrincipal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    BtnPesquisarClick(Sender);
    Key := #0;
  end;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  if FDQueryProdutos.CanRefresh then
    FDQueryProdutos.Refresh
  else
  begin
    FDQueryProdutos.Close;
    FDQueryProdutos.Open;
  end;

end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  FDQueryProdutos.Open
end;

end.
