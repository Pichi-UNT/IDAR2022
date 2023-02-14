DROP PROCEDURE IF EXISTS `psp_asignar_plan_comercio`;
DELIMITER //

CREATE PROCEDURE `psp_asignar_plan_comercio`(pIdVenta INT,
                                             pIdPlanComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite asignar un plan de comercio a la venta, siempre que la venta se encuentre en un estado de edición.
    Transiciona al estado P: Pendiente de Pago.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tEstadoVenta INT;
    DECLARE tIdComercio_venta INT;
    DECLARE tIdComercio_planescomercio INT;
    DECLARE tIdPlan SMALLINT;
    DECLARE tIdMedioPago INT;
    DECLARE tEstadoPComercio INT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    SELECT IdComercio, EstadoVenta INTO tIdComercio_venta,tEstadoVenta FROM ventas WHERE IdVenta = pIdVenta;
    IF tEstadoVenta IS NULL THEN
        SELECT ('Error, la venta no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;
    IF tEstadoVenta != 'E' THEN
        SELECT ('Error, la venta debe estar en estado de Edicion.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    SELECT IdPlan, IdMedioPago, EstadoPComercio, IdComercio
    INTO tIdPlan,tIdMedioPago,tEstadoPComercio,tIdComercio_planescomercio
    FROM planescomercio
    WHERE IdPlanComercio = pIdPlanComercio;

    IF tEstadoPComercio IS NULL THEN
        SELECT ('Error, campo IdPlanComercio incorrecto. Plan inexistente') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tIdComercio_planescomercio != tIdComercio_venta THEN
        SELECT ('Error, campo IdPlanComercio incorrecto. El plan no esta asociado al comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoPComercio = 'B' THEN
        SELECT ('Error, el plan elegido esta dado de baja para el comercio') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE ventas
    SET IdPlanComercio = pIdPlanComercio,
        IdPlan=tIdPlan,
        IdMedioPago=tIdMedioPago,
        EstadoVenta='P'
    WHERE IdVenta = pIdVenta;

    SELECT CONCAT('OK') AS Mensaje;
END //


DELIMITER ;