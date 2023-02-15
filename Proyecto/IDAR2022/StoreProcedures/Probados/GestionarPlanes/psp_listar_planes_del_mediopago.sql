DROP PROCEDURE IF EXISTS `psp_listar_planes_del_mediopago`;
DELIMITER //

CREATE PROCEDURE `psp_listar_planes_del_mediopago`(pIdMedioPago SMALLINT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite listar los planes de un medio de pago. Ordena por Numero de cuotas de forma Ascendente.
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

    SELECT *
    FROM planes
    WHERE IdMedioPago = pIdMedioPago
    ORDER BY NumeroCuotas ASC;

    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END //


DELIMITER ;