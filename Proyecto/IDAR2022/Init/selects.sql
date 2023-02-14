DELETE FROM ventas;
DELETE FROM planescomercio;
DELETE FROM usuarios;
DELETE FROM comercios;
DELETE FROM planes;
DELETE FROM mediospago;

ALTER TABLE comercios AUTO_INCREMENT = 1;
ALTER TABLE usuarios AUTO_INCREMENT = 1;
ALTER TABLE mediospago AUTO_INCREMENT = 1;
ALTER TABLE planes AUTO_INCREMENT = 1;
ALTER TABLE planescomercio AUTO_INCREMENT = 1;
ALTER TABLE ventas AUTO_INCREMENT = 1;

SELECT * FROM Comercios;
SELECT * FROM usuarios;
SELECT * FROM mediospago;
SELECT * FROM planes;
SELECT * FROM planescomercio;
SELECT * from ventas;

SELECT * from planes;

SELECT * FROM planes WHERE IdMedioPago=5;
SELECT * FROM planescomercio where IdComercio=46;

INSERT INTO planescomercio (`IdComercio`, `IdPlan`, `IdMedioPago`, `EstadoPComercio`)
VALUES (21, 9, 4, 'A');

UPDATE usuarios
SET EstadoUsuario = 'B'
WHERE IdUsuario='';

SELECT * from aud_comercios;
