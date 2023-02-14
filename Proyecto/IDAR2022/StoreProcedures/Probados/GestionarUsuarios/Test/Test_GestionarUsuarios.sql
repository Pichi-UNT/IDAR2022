CALL psp_dame_usuario(1);

CALL psp_darbaja_usuario(1);
CALL psp_darbaja_usuario(1);
CALL psp_darbaja_usuario(-1);

CALL psp_activar_usuario(1);
CALL psp_activar_usuario(1);
CALL psp_activar_usuario(-1);

CALL psp_crear_usuario('Pichi ',' Pichino   ','a43@a.com','1232343244','143423445',2);

SELECT * from usuarios where IdUsuario=1;
CALL psp_borrar_usuario(58);


CALL psp_modificar_usuario(1,'Cambiado','dfsdf','qweqw@a.oc',' 1232 ','123245',2);
SELECT * from usuarios where Email='Cambiado@a.com';