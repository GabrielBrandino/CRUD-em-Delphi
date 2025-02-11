unit UFrmNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons, System.ImageList,
  Vcl.ImgList, cxImageList, cxControls, cxContainer, cxEdit, cxCurrencyEdit,
  cxDBEdit, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmNovo = class(TForm)
    PnlNovo: TPanel;
    PnlInfoLogin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BtnCadastrar: TcxButton;
    BtnCancelar: TcxButton;
    ImgNovo: TcxImageList;
    Edit1: TcxDBTextEdit;
    Edit2: TcxDBTextEdit;
    Edit4: TcxDBTextEdit;
    Edit3: TcxDBCurrencyEdit;
    FDQueryProdutos: TFDQuery;
    DSProdutos: TDataSource;
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNovo: TFrmNovo;

implementation

{$R *.dfm}

procedure TFrmNovo.BtnCadastrarClick(Sender: TObject);
begin
  try 
    FDQueryProdutos.Post;
    ShowMessage('Produto cadastrado com sucesso!');
    Close;
  except
    on E:Exception do
      ShowMessage('ID já cadastrado previamente');
  end;
end;

procedure TFrmNovo.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmNovo.FormCreate(Sender: TObject);
begin
  FDQueryProdutos.Open;
  FDQueryProdutos.Insert;
end;

end.
