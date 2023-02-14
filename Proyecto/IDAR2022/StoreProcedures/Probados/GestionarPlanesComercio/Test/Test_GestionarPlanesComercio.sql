SELECT * from planescomercio where EstadoPComercio='B' ORDER BY IdComercio;

CALL psp_listar_planescomercios(4,'S');
CALL psp_listar_planescomercios(3,'N');
CALL psp_listar_planescomercios(26,'N');
CALL psp_listar_planescomercios(26,'S');

CALL psp_dame_plancomercio(4);

SELECT * from planescomercio where IdComercio=1;
SELECT * from planes;
SELECT *
FROM comercios;
CALL psp_crear_plancomercio(2,1);
SELECT * from planescomercio where IdPlanComercio=51;
CALL psp_crear_plancomercio(-2000,1);
CALL psp_crear_plancomercio(2,-100);

select * from ventas;
SELECT * from planescomercio where IdPlanComercio=7;
CALL psp_borrar_plancomercio(7);
CALL psp_borrar_plancomercio(7);
CALL psp_borrar_plancomercio(-7);
CALL psp_borrar_plancomercio(50);
CALL psp_borrar_plancomercio(2);