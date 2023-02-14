

CALL psp_buscar_comercios('a','S',0,5);
CALL psp_buscar_comercios('a','S',5,5);

SELECT * FROM comercios;
CALL psp_modificar_comercio(4,'Quam Vel Corp.','1234','Thames 2645','San miguel de Tucuman');
CALL psp_modificar_comercio(4,'Pichilandia','1234','Thames 2645','San miguel de Tucuman');

CALL psp_daralta_comercio(4);
CALL psp_daralta_comercio(4);
CALL psp_daralta_comercio(4000);
SELECT * FROM comercios WHERE IdComercio=4;

CALL psp_darbaja_comercio(4);
CALL psp_darbaja_comercio(4);
CALL psp_darbaja_comercio(4000);
SELECT * FROM comercios WHERE IdComercio=4;

CALL psp_crear_comercio('Pichino','4271657','Maipu 650','San miguel')


CALL psp_borrar_comercio(99);
SELECT * FROM comercios WHERE IdComercio=99;
CALL psp_darbaja_comercio(99);
CALL psp_borrar_comercio(99);

