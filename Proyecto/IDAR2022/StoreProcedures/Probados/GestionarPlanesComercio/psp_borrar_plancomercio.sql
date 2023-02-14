DROP PROCEDURE IF EXISTS `psp_borrar_plancomercio`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_plancomercio`(pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un plan de comercio siempre que no tenga ventas asociadas y este dado de baja.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlanComercio = pIdPlanComercio) THEN
        SELECT ('Error al borrar plan del comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;


    IF NOT EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlanComercio = pIdPlanComercio AND EstadoPComercio = 'B') THEN
        SELECT 'Error no puede borrar planes de comercio activos.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdPlanComercio FROM ventas WHERE IdPlanComercio = pIdPlanComercio) THEN
        SELECT ('Error, existen ventas asociadas a este plan del comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    DELETE FROM planescomercio WHERE IdPlanComercio=pIdPlanComercio;
    SELECT CONCAT('OK') AS Mensaje;
END //


DELIMITER ;