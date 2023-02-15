DROP PROCEDURE IF EXISTS `psp_borrar_venta`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_venta`(pIdVenta INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar una venta, siempre y cuando la misma se encuentre en estado E: En edición.
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

    IF pIdVenta IS NULL THEN
        SELECT ('Error el campo IdVenta no puede ser vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    SET tEstadoVenta=(SELECT EstadoVenta FROM ventas WHERE  IdVenta=pIdVenta);
    IF tEstadoVenta IS NULL THEN
        SELECT ('Error al borrar la venta.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF tEstadoVenta !='E' THEN
        SELECT ('Error, solo se puede borrar ventas en estado edicion.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM ventas WHERE IdVenta=pIdVenta;

    SELECT CONCAT('OK') AS Mensaje;
END //


DELIMITER ;