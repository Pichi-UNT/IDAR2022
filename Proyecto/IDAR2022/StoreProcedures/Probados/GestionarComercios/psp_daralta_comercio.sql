DROP PROCEDURE IF EXISTS `psp_daralta_comercio`;
DELIMITER //

CREATE PROCEDURE `psp_daralta_comercio`(pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a B: Baja siempre y cuando no se encuentre  ya en este estado.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio) THEN
		SELECT 'No existe el comercio que quiere dar de alta.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE
				IdComercio = pIdComercio AND EstadoComercio = 'B') THEN
		SELECT 'El comercio ya está en estado activo.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE comercios
    SET EstadoComercio = 'A'
    WHERE IdComercio = pIdComercio;
    SELECT 'OK' AS Mensaje;


END //


DELIMITER ;