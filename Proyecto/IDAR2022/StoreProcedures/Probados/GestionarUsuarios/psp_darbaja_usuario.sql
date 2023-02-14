DROP PROCEDURE IF EXISTS `psp_darbaja_usuario`;
DELIMITER //

CREATE PROCEDURE `psp_darbaja_usuario`(pIdUsuario INT)
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

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario) THEN
		SELECT 'No existe el usuario que quiere dar de baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'A') THEN
		SELECT 'El usuario ya está en estado Baja.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE usuarios
    SET EstadoUsuario = 'B'
    WHERE IdUsuario = pIdUsuario;
    SELECT 'OK' AS Mensaje;


END //