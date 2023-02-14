DROP PROCEDURE IF EXISTS `psp_buscar_comercios`;
DELIMITER //

CREATE PROCEDURE `psp_buscar_comercios`(pCadena VARCHAR(100),
                                        pIncluyeBajas CHAR(1),
                                        pOffset INT,
                                        pRowCount INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite buscar los comercios por nombre dado una cadena que contenga una parte del nombre.
    Puede o no incluir los comercios dados de baja según pIncluyeBajas (S: Si - N: No).
    Ordena por nombre del comercio en forma descendente. Para listar todos, cadena vacía. Pagina.
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

    DROP TEMPORARY TABLE IF EXISTS tmp_comercios;

    CREATE TEMPORARY TABLE tmp_comercios ENGINE = MEMORY AS
    SELECT idcomercio, comercio, telefono, direccion, localidad, estadocomercio FROM comercios
    WHERE ((Comercio LIKE CONCAT(pCadena, '%') OR
            Comercio IS NULL)
        AND (pIncluyeBajas = 'S' OR EstadoComercio = 'A')) ORDER BY comercio;

    SET pTotalRows = (SELECT COUNT(*) FROM tmp_comercios);

    -- CONSULTA FINAL
    SELECT *, pTotalRows TotalRows FROM tmp_comercios LIMIT pOffset, pRowCount; -- comienzo y longitud

    DROP TEMPORARY TABLE IF EXISTS tmp_comercios;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;


END //


DELIMITER ;