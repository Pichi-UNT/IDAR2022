DROP PROCEDURE IF EXISTS `psp_crear_plancomercio`;
DELIMITER //

CREATE PROCEDURE `psp_crear_plancomercio`(pIdPlan SMALLINT,
                                          pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un plan de comercio controlando que no exista para un mismo comercio el mismo plan de pago.
    Lo crea con estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tIdMedioPago SMALLINT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    SELECT IdMedioPago INTO tIdMedioPago FROM planes WHERE IdPlan = pIdPlan;
    IF tIdMedioPago IS NULL THEN
        SELECT ('Error, no existe el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('Error, no existe el comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdPlanComercio FROM planescomercio WHERE IdPlan = pIdPlan AND IdComercio = pIdComercio) THEN
        SELECT ('Error, este plan ya fue asociado al comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        INSERT INTO planescomercio (IdComercio, IdPlan, IdMedioPago, EstadoPComercio)
        VALUES (pIdComercio, pIdPlan, tIdMedioPago, 'A');
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;

END //


DELIMITER ;