SELECT *FROM ventas where EstadoVenta='E';

CALL psp_dame_venta(1);
CALL psp_dame_venta(NULL);
CALL psp_dame_venta(10000);

CALL psp_borrar_venta(3);
CALL psp_borrar_venta(10000);
CALL psp_borrar_venta(1);

CALL psp_darbaja_venta(11);
CALL psp_darbaja_venta(15);
CALL psp_darbaja_venta(1100);


CALL psp_listar_planescomercios(65,'S');
SELECT * from ventas where IdVenta=3;
CALL psp_asignar_plan_comercio(3,21);
CALL psp_asignar_plan_comercio(3,34);