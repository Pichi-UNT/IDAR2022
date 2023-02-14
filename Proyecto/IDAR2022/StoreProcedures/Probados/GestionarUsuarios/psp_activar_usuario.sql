DROP PROCEDURE IF EXISTS `psp_activar_usuario`;
DELIMITER $

CREATE PROCEDURE `psp_activar_usuario`(pIdUsuario INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite cambiar el estado de un usuario a A: Activo sin importar si este ya se encuentra activo. Devuelve OK en Mensaje.
    */
    -- Parametros

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario) THEN
		SELECT 'No existe el usuario que quiere activar.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'B') THEN
		SELECT 'El usuario ya está en estado activo.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE usuarios
    SET EstadoUsuario = 'A'
    WHERE IdUsuario = pIdUsuario;

    SELECT 'OK' AS Mensaje;


END $


DELIMITER ;