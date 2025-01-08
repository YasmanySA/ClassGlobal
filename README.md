# ClassGlobal

`ClassGlobal` es una unidad de Delphi que proporciona varias funciones y procedimientos de utilidad para la manipulación de cadenas, mensajes de alerta y operaciones con bases de datos.

## Tabla de Contenidos

- [Instalación](#instalación)
- [Uso](#uso)
- [Funciones](#funciones)
- [Procedimientos](#procedimientos)
- [Constantes](#constantes)

## Instalación

Para utilizar `ClassGlobal` en tu proyecto Delphi, inclúyelo en la cláusula uses:

```pascal
uses
  ClassGlobal;

## Uso
Aquí hay un ejemplo de cómo utilizar `ClassGlobal` para manipular cadenas:

```pascal
uses
  ClassGlobal;

var
  result: string;
begin
  result := TrimAndUppercase('  hola mundo  ');
  ShowMessage(result); // Muestra 'HOLA MUNDO'
end;
