SELECT * from planes where IdPlan=1;
SELECT * FROM planescomercio WHERE IdPlan=1;
DELETE
FROM planescomercio
WHERE IdPlan=1;
CALL psp_modificar_plan(1,1,'3564',1,100);

CALL psp_crear_plan(2,'56547',12,12.5);
CALL psp_modificar_plan(19,3,'1234',24,12.5);