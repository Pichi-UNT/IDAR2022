DROP PROCEDURE IF EXISTS `psp_borrar_medio_pago`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_medio_pago`(pIdMedioPago INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un medio de pago siempre que no tenga planes asociados. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdMedioPago IS NULL THEN
        SELECT ('Error el campo idMedioPago no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF NOT EXISTS(SELECT IdMedioPago FROM mediospago WHERE IdMedioPago = pIdMedioPago) THEN
        SELECT ('Error al borrar el medio de pago') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdMedioPago FROM planes WHERE IdMedioPago = pIdMedioPago) THEN
        SELECT ('Error al borrar el medio de pago ya que tiene planes asociados') AS Mensaje;
        LEAVE FINAL;
    END IF;

    DELETE FROM mediospago WHERE IdMedioPago=pIdMedioPago;

    SELECT CONCAT('OK') AS Mensaje;
END //


DELIMITER ;