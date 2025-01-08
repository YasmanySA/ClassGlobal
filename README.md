# ClassGlobal Unit

La unidad `ClassGlobal` proporciona una serie de funciones y procedimientos útiles para diversas operaciones, incluyendo la manipulación de cadenas, generación de identificadores, y gestión de datos en consultas.

## Dependencias

Esta unidad utiliza varias bibliotecas y componentes de Delphi. Asegúrate de tener las siguientes bibliotecas disponibles en tu entorno de desarrollo:

- Winapi.Windows
- Winapi.Messages
- System.SysUtils
- System.Variants
- Vcl.Graphics
- Vcl.Controls
- Vcl.Forms
- Vcl.Dialogs
- cxGraphics
- cxControls
- cxLookAndFeels
- ...

(La lista completa de dependencias se encuentra en la sección `uses` de la unidad).

## Constantes

La unidad define las siguientes constantes:

- `vDias`: Un arreglo de strings que contiene los días de la semana.

## Tipos

La unidad define el siguiente tipo:

- `TParametroFuncion`: Un tipo de función que toma una cadena como parámetro y devuelve una cadena.

## Funciones

### `function SoloLetras(const vCadena: string): string;`

Devuelve una cadena que contiene solo las letras de la cadena de entrada.

### `function SoloNumeros(const vCadena: string): string;`

Devuelve una cadena que contiene solo los números de la cadena de entrada.

### `function LimpiarCaracteres(vCadena: string; vFuncion: TParametroFuncion): string;`

Limpia los caracteres de la cadena de entrada utilizando la función proporcionada.

### `function generateOperacion(tamaño: Integer): string;`

Genera una cadena de operación aleatoria de la longitud especificada.

### `function generateMerchantOpID(LengthN: Integer; number, letters: boolean): string;`

Genera un identificador de operación de comerciante de la longitud especificada, utilizando números y/o letras según lo especificado.

## Procedimientos

### `procedure Alerta_AdvertenciaDelete(msg: string; tb: TUniQuery; dialog: TMsgDlgType);`

Muestra un cuadro de diálogo de advertencia y elimina el registro de la tabla si el usuario confirma.

### `procedure Alerta_AdvertenciaContabilizar(msg: string; tb: TUniQuery; field: string; dialog: TMsgDlgType);`

Muestra un cuadro de diálogo de advertencia y marca el campo especificado en la tabla si el usuario confirma.

### `procedure resetincrement(fieldsParams: Integer; tblastnumber, tbreset: TUniQuery; field: string);`

Restablece el incremento de un campo en la tabla basada en el último número de un registro.

### `procedure InsertData(sql: string; query: TUniQuery; idUsable: boolean; refresh: TProcedure);`

Inserta datos en una tabla usando la consulta SQL proporcionada y ejecuta un procedimiento de actualización.

## Notas

Asegúrate de revisar las implementaciones detalladas de cada función y procedimiento para entender completamente cómo funcionan y cómo pueden ser utilizados en tu proyecto.

---

Espero que esto te sea de ayuda. Si necesitas más detalles o algo más específico, ¡déjamelo saber! 🚀
