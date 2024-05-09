-- Meto segundos en el campo de tipo SMALLDATETIME para ver que realmente los segundos son siempre cero.
INSERT INTO test
(Code, 
charcol, varcharcol, textcol, ncharcol, nvarcharcol, ntextcol, 
datecol, timecol, smalldatetimecol, datetimecol, datetimeoffsetcol, datetime2col, 
numericcol, bitcol, tinyintcol, smallintcol, intcol, bigintcol, floatcol, decimalcol, smallmoneycol, moneycol, 
rowversioncol, hierarchyidcol, uniqueidentifiercol, sql_variantcol, 
xmlcol)
VALUES (
'A000',
'Datos de prueba', 'Este es el tipo varchar', 'Este es el tipo Text, que se va a quedar obsoleto en breve', 'Y aquí tenemos un nchar', 'Y un nvarchar', 'A este le pasa como al Text',
'1900-12-12', '14:00:00.125', '18:35:46', '2000-06-06 14:23:45.123', '2000-06-06 14:23:45.123456', '2000-06-06 14:23:45.123456',
45354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
null, null, null, null,
'')

-- delete from test where code = 'dt005'
SELECT * FROM test
INSERT INTO test (Code, varcharcol, datecol) values ('DT001', 'Prueba para insertar una columna de tipo DATE', '19001212')
INSERT INTO test (Code, varcharcol, timecol) values ('DT002', 'Prueba para insertar una columna de tipo TIME', '14:00:00.125')
INSERT INTO test (Code, varcharcol, smalldatetimecol) values ('DT003', 'Prueba para insertar una columna de tipo SMALLDATETIME. Le pongo 46 segundos para comprobar que los deja a cero.', '18:35:46')
INSERT INTO test (Code, varcharcol, datetimecol) values ('DT004', 'Prueba para insertar una columna de tipo DATETIME.', '20000606 14:23:45.123')
INSERT INTO test (Code, varcharcol, datetimeoffsetcol) values ('DT005', 'Prueba para insertar una columna de tipo DATETIMEOFFSET.', '20000606 14:23:45.1234567 +08:30')
INSERT INTO test (Code, varcharcol, datetime2col) values ('DT006', 'Prueba para insertar una columna de tipo DATETIME2.', '14:23:45.1234567 +08:30')

INSERT INTO test (Code, varcharcol, numericcol) values ('NU001', 'Prueba para insertar una columna de tipo NUMERIC.', '123456789')
INSERT INTO test (Code, varcharcol, bitcol) values ('NU002', 'Prueba para insertar una columna de tipo BIT.', '1')
INSERT INTO test (Code, varcharcol, tinyintcol) values ('NU003', 'Prueba para insertar una columna de tipo TINYINT.', '125')
INSERT INTO test (Code, varcharcol, smallintcol) values ('NU004', 'Prueba para insertar una columna de tipo SMALLINT.', '1492')
INSERT INTO test (Code, varcharcol, intcol) values ('NU005', 'Prueba para insertar una columna de tipo INT.', '125936')
INSERT INTO test (Code, varcharcol, bigintcol) values ('NU006', 'Prueba para insertar una columna de tipo BIGINT.', '167943285')
INSERT INTO test (Code, varcharcol, floatcol) values ('NU007', 'Prueba para insertar una columna de tipo FLOAT.', '12.45')
INSERT INTO test (Code, varcharcol, decimalcol) values ('NU008', 'Prueba para insertar una columna de tipo DECIMAL.', '12.45')
INSERT INTO test (Code, varcharcol, smallmoneycol) values ('NU009', 'Prueba para insertar una columna de tipo SMALLMONEY.', '12.45')
INSERT INTO test (Code, varcharcol, moneycol) values ('NU010', 'Prueba para insertar una columna de tipo MONEY.', '12.45')

INSERT INTO test (Code, varcharcol, hierarchyidcol) values ('NU011', 'Prueba para insertar una columna de tipo HIERACHYID.', '/1/34/')
INSERT INTO test (Code, varcharcol, uniqueidentifiercol) values ('NU012', 'Prueba para insertar una columna de tipo UNIQUEIDENTIFIER.', 1)
INSERT INTO test (Code, varcharcol, sql_variantcol) values ('NU013', 'Prueba para insertar una columna de tipo SQL_VARIANT.', 12.45)
INSERT INTO test (Code, varcharcol, xmlcol) values ('NU014', 'Prueba para insertar una columna de tipo XML.', '<?xml version="1.0"?><doc><assembly><name>Semicrol.Entorno</name></assembly></doc>')

INSERT INTO [dbo].[Test]
(Code, 
charcol, varcharcol, textcol, ncharcol, nvarcharcol, ntextcol, 
datecol, timecol, smalldatetimecol, datetimecol, datetimeoffsetcol, datetime2col, 
numericcol, bitcol, tinyintcol, smallintcol, intcol, bigintcol, floatcol, decimalcol, smallmoneycol, moneycol, 
[binarycol], [varbinarycol], [imagecol], 
hierarchyidcol, uniqueidentifiercol, sql_variantcol, 
xmlcol)
SELECT
CAST(RAND() AS CHAR(20)), 
'Char Value 3', 'Varchar Value 3', 'Text Value 3', N'NChar Value 3', N'NVarchar Value 3', N'NText Value 3',
'20240511', '08:15:30.1234567', '2024-05-11 08:15:00', '2024-05-11 08:15:30', '2024-05-11 08:15:30.1234567 +05:30', '2024-05-11 08:15:30.1234567', 
RAND()*1000, RAND(), RAND(), RAND(), RAND(), RAND(), RAND(), RAND(), RAND(), RAND(), 
0x01, 0x01, 0x01,
'/3/', 'E5626A2A-7C99-4B3F-A825-E0CFB7EBDB44', CAST('SQL Variant Value 3' AS SQL_VARIANT), 
'<root><node>XML Value 3</node></root>'