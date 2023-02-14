DROP PROCEDURE IF EXISTS `psp_borrar_usuario`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_usuario`(pIdUsuario int)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un usuario siempre que este en estado B y
    no tenga ventas asociadas. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE IdUsuario = pIdUsuario) THEN
        SELECT ('Error al borrar usuario.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pIdUsuario IS NULL THEN
        SELECT ('El campo id usuario no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE
				IdUsuario = pIdUsuario AND EstadoUsuario = 'B') THEN
		SELECT 'Error no puede borrar usuarios activos.' AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT IdUsuario FROM ventas WHERE IdUsuario =pIdUsuario) THEN
        SELECT ('Error al borrar usuario. Tiene ventas asociadas.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM usuarios WHERE IdUsuario=pIdUsuario;

    SELECT 'OK' as Mensaje;

END //


DELIMITER ;