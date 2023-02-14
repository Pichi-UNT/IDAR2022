DROP PROCEDURE IF EXISTS `psp_modificar_plan`;
DELIMITER //

CREATE PROCEDURE `psp_modificar_plan`(pIdPlan SMALLINT,
                                      pIdMedioPago TINYINT,
                                      pCodigo VARCHAR(15),
                                      pNumCuotas TINYINT,
                                      pTNA DECIMAL(5, 2))
FINAL:
BEGIN
    -- Descripcion --Preguntar si solo deberia ser como venta
    /*
    Permite modificar un plan existente controlando que el código no exista ya,
    el número de cuotas sea mayor a cero y el TNA este entre 0 y 100.
    El medio de pago se puede alterar siempre y cuando este aun no este asociado a un comercio.
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

    IF NOT EXISTS(SELECT IdMedioPago FROM mediospago WHERE IdMedioPago = pIdMedioPago) THEN
        SELECT ('Error el medio de pago no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdPlan FROM planescomercio WHERE IdPlan = pIdPlan AND IdMedioPago != pIdMedioPago) THEN
        SELECT ('Error no se puede modificar el medio de pago si tiene un plan de comercio asociado') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Codigo FROM planes WHERE Codigo = pCodigo AND IdPlan != pIdPlan) THEN
        SELECT ('Error el codigo del plan ya existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pNumCuotas <= 0 THEN
        SELECT ('Error el numero de cuotas no puede ser negativo o cero') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pTNA < 0 OR pTNA>100 THEN
        SELECT ('Error el TNA debe estar entre 0 y  100') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE planes
    SET IdMedioPago = pIdMedioPago,
        Codigo=pCodigo,
        NumeroCuotas=pNumCuotas,
        TNA=pTNA
    WHERE IdPlan = pIdPlan;
    SELECT CONCAT('OK') AS Mensaje;



END //


DELIMITER ;