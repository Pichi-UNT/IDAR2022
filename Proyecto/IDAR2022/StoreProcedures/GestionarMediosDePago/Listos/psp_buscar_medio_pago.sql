DROP PROCEDURE IF EXISTS `psp_buscar_medio_pago`;
DELIMITER //

CREATE PROCEDURE `psp_buscar_medio_pago`(pCadena VARCHAR(100),
                                         pOffset INT,
                                         pRowCount INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite buscar los medios de pago a partir de una una cadena que contenga una parte del nombre del medio de pago.
    Ordena de forma descendente.  Para listar todos pCadena debe estar vacio. Pagina.
    */
    -- Declaraciones
    DECLARE pTotalRows INT;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DROP TEMPORARY TABLE IF EXISTS tmp_medioPago;

    CREATE TEMPORARY TABLE tmp_medioPago ENGINE = MEMORY AS
    SELECT idmediopago, mediopago, tipomediopago, banco
    FROM mediospago
    WHERE ((mediopago LIKE CONCAT(pCadena, '%') OR
            mediopago IS NULL))
    ORDER BY mediopago;

    SET pTotalRows = (SELECT COUNT(*) FROM tmp_medioPago);

    SELECT *, pTotalRows TotalRows FROM tmp_medioPago LIMIT pOffset, pRowCount; -- comienzo y longitud

    DROP TEMPORARY TABLE IF EXISTS tmp_medioPago;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END //


DELIMITER ;