SELECT * FROM planes;
CALL psp_crear_plan(1,'jjjrweihhi',50,10.2);
CALL psp_crear_plan(1,'jj123213',-5,10.2);
CALL psp_crear_plan(1,'54seaew2',50,-101.2);
CALL psp_crear_plan(1,'54seaew2',50,100);
CALL psp_crear_plan(20,'54seaew2',50,100);
CALL psp_crear_plan(2,'asdsad',5,100);

CALL psp_listar_planes_del_mediopago(1);
CALL psp_listar_planes_del_mediopago(200);
CALL psp_listar_planes_del_mediopago(20);

CALL psp_borrar_plan(22);
CALL psp_borrar_plan(18);

CALL psp_dame_plan(24);
