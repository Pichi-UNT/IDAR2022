DROP PROCEDURE IF EXISTS `psp_finalizar_venta`;
DELIMITER //

CREATE PROCEDURE `psp_finalizar_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de la venta a F: Finalizada siempre y cuando no esté finalizada ya,
    se encuentre en un estado P: Pendiente de pago y la solicitud del medio de pago devuelve un valor de confirmado.
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

    IF tEstadoVenta = ('F') THEN
        SELECT ('Error, la venta ya fue finalizada.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF tEstadoVenta != ('P') THEN
        SELECT ('Error, para finalizar la venta la misma debe estar en estado Pendiente.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE ventas SET EstadoVenta = 'F' WHERE IdVenta=pIdVenta;
    SELECT CONCAT('OK') AS Mensaje;
    
END //


DELIMITER ;