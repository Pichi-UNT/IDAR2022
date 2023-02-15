SELECT * FROM mediospago;

CALL psp_buscar_medio_pago('visa',0,2);
CALL psp_buscar_medio_pago('visa',1,3);

CALL psp_crear_medio_pago('Uala','D',NULL);
CALL psp_crear_medio_pago('Uala','J',NULL);
CALL psp_crear_medio_pago('Uala2','z','Galicia');
CALL psp_crear_medio_pago('Uala2','c','Galicia');
CALL psp_crear_medio_pago('Uala5','d','Galicia');


CALL psp_dame_medio_pago(10);
CALL psp_dame_medio_pago(NULL);