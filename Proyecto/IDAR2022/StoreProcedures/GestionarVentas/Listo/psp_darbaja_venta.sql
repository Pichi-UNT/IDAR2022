DROP PROCEDURE IF EXISTS `psp_darbaja_venta`;
DELIMITER //

CREATE PROCEDURE `psp_darbaja_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de la venta a B: Baja siempre y cuando no esté dado de baja ya,
    la misma se encuente  en el estado P: Pendiente de pago
    y la solicitud del medio de pago devuelve un valor de cancelado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    DECLARE tEstadoVenta CHAR(1);
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET tEstadoVenta = (SELECT estadoVenta FROM ventas WHERE IdVenta = pIdVenta);

    IF tEstadoVenta IS NULL THEN
        SELECT ('Error la venta no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoVenta = ('B') THEN
        SELECT ('Error, la venta ya fue dada de baja.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoVenta != ('P') THEN
        SELECT ('Error, para dar de baja la venta debe estar en estado pendiente.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE ventas SET EstadoVenta = 'B' WHERE IdVenta=pIdVenta;
    SELECT CONCAT('OK') AS Mensaje;
    
END //


DELIMITER ;