DROP PROCEDURE IF EXISTS `psp_dame_usuario`;
DELIMITER //

CREATE PROCEDURE `psp_dame_usuario`(pIdUsuario int)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite obtener un usuario a partir de su Id. Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;
    
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    SELECT * FROM usuarios WHERE IdUsuario=pIdUsuario;
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END //


DELIMITER ;