unit UFrmAtualizar;

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
  TFrmAtualizar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    TPanel2: TPanel;
    TPanel1: TPanel;
    TPanelPrincipal: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    BtnConfirmar: TcxButton;
    BtnCancelar: TcxButton;
    cxImageList1: TcxImageList;
    Edit3: TcxDBTextEdit;
    Edit2: TcxDBCurrencyEdit;
    FDQueryProdutos: TFDQuery;
    DSProdutos: TDataSource;
    Edit1: TEdit;
    BtnPesquisar: TcxButton;
    procedure BtnCancelarClick(Sender: TObject);
    procedure Click(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtualizar: TFrmAtualizar;

implementation

{$R *.dfm}

procedure TFrmAtualizar.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;


procedure TFrmAtualizar.BtnConfirmarClick(Sender: TObject);
begin
    FDQueryProdutos.Post;
    ShowMessage('Produto atualizado com sucesso!');
    Close;
end;

procedure TFrmAtualizar.Click(Sender: TObject);
begin
  try
    FDQueryProdutos.ParamByName('PID').AsInteger := StrToInt(Edit1.Text);
    FDQueryProdutos.Open;
    FDQueryProdutos.Edit;
    Edit2.Enabled := True;
    Edit3.Enabled := True;
    ShowMessage('Produto encontrado');
  except
    on E:Exception do
      ShowMessage('Produto não encontrado');
  end;
end;

end.
