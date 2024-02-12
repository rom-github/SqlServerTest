
CREATE DATABASE smcdb1 COLLATE Modern_spanish_ci_ai

/*
OPCIONES DE INTERCALACIÓN

 BIN	Orden binario.
 BIN2	Ordenación punto de código binario.
 CI		No distingue entre mayúsculas y minúsculas.
 CS		Sí distingue entre mayúsculas y minúsculas.
 AI		No distingue acentos.
 AS		Sí distingue acentos.
 KS		Sí distingue Kana.
 WS		Sí distingue ancho.

 En el caso de KS y WS, su ausencia indica que no distingue Kana ni ancho respectivamente.
 https://learn.microsoft.com/es-es/sql/relational-databases/collations/collation-and-unicode-support?view=sql-server-ver16#SQL-collations
*/

-- No es posible crear una tabla si no se especifica al menos una columna. No creo la tabla 'Test'.

CREATE DATABASE smcdb2 COLLATE Latin1_general_cs_as


