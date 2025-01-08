unit ClassGlobal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, cxCheckBox, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  cxImageList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, dxSkinsForm,
  cxContainer, dxBarCode, dxDBBarCode, Vcl.StdCtrls, cxDropDownEdit, cxGroupBox,
  cxDBLookupComboBox, cxTextEdit, Vcl.DBCtrls, dxPDFDocument, dxRibbonSkins,
  dxRibbonCustomizationForm, dxPDFViewerActions, dxBar, dxPrinting, dxRibbon,
  System.Actions, Vcl.ActnList, dxActions, dxCustomPreview, dxPDFDocumentViewer,
  dxPDFViewer, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus, cxButtons, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful, dxDateRanges,
  dxToggleSwitch, dxColorEdit, dxCore, dxGalleryControl, dxColorGallery,
  dxDBColorGallery, dxColorPicker, cxMaskEdit, dxDBColorEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Vcl.DBActns, DBAccess, Uni, MemDS, dxLayoutContainer,
  cxRadioGroup, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxCalendar,
  dxLayoutControl, cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView;

const
  // alphaN = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  // cnumber = '1234567890';
  // alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  // cnumber: array [0 .. 9] of string = ('0', '1', '1', '3', '4', '5', '6', '7',
  // '8', '9');
  // cletras: array [0 .. 25] of string = ('A', 'B', ' C', 'D', ' E', 'F', 'G',
  // 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
  // 'W', 'X', 'Y', 'Z');

  vDias: array [0 .. 6] of string = ('Lunes', 'Martes', 'Miércoles', 'Jueves',
    'Viernes', 'Sábado', 'Domingo');

type
  TParametroFuncion = function(const vCadena: string): string;
  // notar que solo se declara la "cabecera" de los metodos
function SoloLetras(const vCadena: string): string;
function generateOperacion(tamaño: Integer): string;
// procedure NombreDelMetodo(const Parametro1: string; const Parametro2: Boolean);
function SoloNumeros(const vCadena: string): string;
function LimpiarCaracteres(vCadena: string;
  vFuncion: TParametroFuncion): string;
function generateMerchantOpID(LengthN: Integer;
  number, letters: boolean): string;
procedure Alerta_AdvertenciaDelete(msg: string; tb: TUniQuery;
  dialog: TMsgDlgType);
procedure Alerta_AdvertenciaContabilizar(msg: string; tb: TUniQuery;
  field: string; dialog: TMsgDlgType);
procedure resetincrement(fieldsParams: Integer;
  tblastnumber, tbreset: TUniQuery; field: string);
procedure InsertData(sql: string; query: TUniQuery; idUsable: boolean;
  refresh: TProcedure);

implementation

procedure InsertData(sql: string; query: TUniQuery; idUsable: boolean;
  refresh: TProcedure);
var
  I: Integer;
begin

  //
  // query.sql.Add(sql);
  //
  // for I := 0 to query.ParamCount do
  // begin
  //
  // query.Params[I].DataType := edTipoProducto.Text;
  // q_InsertTypeProducto.Params[1].AsString :=
  // generateMerchantOpID(10, true, true);
  //
  // end;
  // q_InsertTypeProducto.Execute;
  //
  // RefreshTable;
  //
  // edTipoProducto.Clear
end;

function SoloLetras(const vCadena: string): string;
var
  I: Integer;
  vAux: string;
  vCadenaMinusculas: string;
begin
  // Inicializamos la variable Auxiliar, ya que si no hay resultados
  // nos puede devolver basula de memoria
  vAux := '';
  // Convertimos la cadena a minusculas para comparar con el rango de letras
  // de esta manera no tenemos que comparar mayúsculas y minúsculas
  vCadenaMinusculas := LowerCase(vCadena);
  // Recorremos cada uno de los caracteres de la vCadenaMinusculas
  for I := 0 to Length(vCadenaMinusculas) - 1 do
  begin
    // Si el caracter esta en el rango de letras o es un espacio en blanco,
    // lo guardamos en vAux
    // (utilizamos la vCadenaMinusculas que es igual a vCadena
    if vCadenaMinusculas[I] in ['a' .. 'z', ' '] then
      vAux := vAux + vCadena[I];
  end;
  // Retornamos la variable auxiliar con solo las letras
  Result := vAux;
end;

function SoloNumeros(const vCadena: string): string;
var
  I: Integer;
  vAux: string;
begin
  // Inicializamos la variable Auxiliar, ya que si no hay resultados
  // nos puede devolver basula de memoria
  vAux := '';
  // Recorremos cada uno de los caracteres de la vCadena
  for I := 0 to Length(vCadena) - 1 do
  begin
    // Si el caracter esta en el rango de los números, lo guardamos en vAux
    if vCadena[I] in ['0' .. '9'] then
      vAux := vAux + vCadena[I];
  end;
  // Retornamos la variable auxiliar con solo los números
  Result := vAux;
end;

function LimpiarCaracteres(vCadena: string;
  vFuncion: TParametroFuncion): string;
begin
  Result := vFuncion(vCadena);
end;

function generateOperacion(tamaño: Integer): string;
const
  content = 'ABCD9EF1GHIJ4KLNO7PQRS9TUVWZ23456M780';

var
  operation: string;
  I: Integer;
begin

  for I := 1 to tamaño do
  begin
    Randomize;
    operation := operation + content[1 + Random(Length(content))];
    Randomize;
  end;

  Result := operation;

end;

function generateMerchantOpID(LengthN: Integer;
  number, letters: boolean): string;
const
  alphaN = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  cnumber = '1234567890';
  alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  // aChar: Char;
  operation: string;
  I: Integer;
  // Var
  // number: array[0..9];

begin

  for I := 1 to LengthN do
  begin

    if number = true then
    BEGIN

      Randomize;
      operation := operation + cnumber[1 + Random(Length(cnumber))];;

      Result := operation;

    END;

    if letters = true then
    BEGIN

      Randomize;
      operation := operation + alpha[1 + Random(Length(alpha))];

      Result := operation;

    END;

    if (letters) and (number) = true then

    BEGIN

      Randomize;
      operation := operation + alphaN[1 + Random(Length(alphaN))];

      Result := operation;

    END;

  end;
end;

// Result := operation;
// if onlyNumber  then
//
//
//
//
//
// end
//
// else begin
// chars = array_merge(range('A', 'Z'), range(0, 9),range('a', 'z'));
// // $out = '';
// }
//
// for ($C = 0; $C < $ Length; $C + +) {
// $out .= $chars[mt_rand(0, count($chars) - 1)];
// }
// return $out;
// }


// ------------Alertas

procedure Alerta_AdvertenciaDelete(msg: string; tb: TUniQuery;
  dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then

    tb.Delete;

end;

procedure Alerta_AdvertenciaContabilizar(msg: string; tb: TUniQuery;
  field: string; dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then
    tb.edit;
  tb.FieldByName(field).Value := 1;
  tb.Post;
  tb.refresh;
end;

procedure resetincrement(fieldsParams: Integer;
  tblastnumber, tbreset: TUniQuery; field: string);

begin
  tblastnumber.Execute;

  tbreset.Params[fieldsParams].AsInteger :=
    tblastnumber.FieldByName(field).Value;
  tbreset.Execute;

end;

end.
