DROP PROCEDURE IF EXISTS `psp_borrar_comercio`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un comercio siempre que este en estado B.
    Elimina los usuarios y ventas asociadas al comercio. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdComercio IS NULL THEN
        SELECT ('Error el campo idComercio no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('Error al borrar comercio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio AND EstadoComercio = 'B') THEN
        SELECT ('Error no puede borrar comercios activos.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        DELETE FROM ventas WHERE IdComercio = pIdComercio;
        DELETE FROM usuarios WHERE IdComercio = pIdComercio;
        DELETE FROM comercios WHERE IdComercio = pIdComercio;
    COMMIT;
    SELECT CONCAT('OK') AS Mensaje;
END //


DELIMITER ;