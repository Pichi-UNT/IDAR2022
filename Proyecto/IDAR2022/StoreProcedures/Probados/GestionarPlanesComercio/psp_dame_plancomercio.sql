DROP PROCEDURE IF EXISTS `psp_dame_plancomercio`;
DELIMITER //

CREATE PROCEDURE `psp_dame_plancomercio`(pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un plan de comercio a partir de su Id.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM planescomercio WHERE IdPlanComercio=pIdPlanComercio;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END //


DELIMITER ;