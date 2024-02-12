
CREATE DATABASE smcdb1 COLLATE Modern_spanish_ci_ai

/*
OPCIONES DE INTERCALACI�N

 BIN	Orden binario.
 BIN2	Ordenaci�n punto de c�digo binario.
 CI		No distingue entre may�sculas y min�sculas.
 CS		S� distingue entre may�sculas y min�sculas.
 AI		No distingue acentos.
 AS		S� distingue acentos.
 KS		S� distingue Kana.
 WS		S� distingue ancho.

 En el caso de KS y WS, su ausencia indica que no distingue Kana ni ancho respectivamente.
 https://learn.microsoft.com/es-es/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver16#SQL-collations
*/

-- No es posible crear una tabla si no se especifica al menos una columna. No creo la tabla 'Test'.

CREATE DATABASE smcdb2 COLLATE Latin1_general_cs_as


