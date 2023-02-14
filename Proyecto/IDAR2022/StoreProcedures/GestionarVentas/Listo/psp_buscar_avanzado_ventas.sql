DROP PROCEDURE IF EXISTS `psp_buscar_avanzado_ventas`;
DELIMITER //

CREATE PROCEDURE `psp_buscar_avanzado_ventas`(pFechaInicio DATE,
                                              pFechaFin DATE,
                                              pIdComercio INT,
                                              pDniCliente VARCHAR(10),
                                              pEstado CHAR(1),
                                              pOffset INT,
                                              pRowCount INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite buscar las ventas entre dos fechas, filtrando por comercio (pIdComercio = 0 para todas),
    por estado (pEstado = E(EDICION) | P: (PENDIENTE) | B: (BAJA) | F: (FINALIZADO))
    y por DNI del cliente(pIdCliente = 0 para todas).
    Ordena por Fecha de alta, en orden descendente. Pagina.
    */
    -- Declaraciones
    DECLARE pTotalRows INT;
    DECLARE pAux DATE;
    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    IF pFechaInicio > pFechaFin THEN
        SET pAux = pFechaInicio;
        SET pFechaInicio = pFechaFin;
        SET pFechaFin = pAux;
    END IF;

    IF pEstado NOT IN ('E', 'P', 'B', 'F') THEN
        SET pEstado = NULL;
    END IF;

    IF pDniCliente IS NULL THEN
        SET pDniCliente = 0;
    END IF;

    IF pIdComercio IS NULL THEN
        SET pIdComercio = 0;
    END IF;

    DROP TEMPORARY TABLE IF EXISTS tmp_ventas;

    CREATE TEMPORARY TABLE tmp_ventas ENGINE = MEMORY AS
    SELECT c.Comercio,
           c.Direccion AS DireccionComercio,
           v.idventa,
           fechaalta,
           nombrescliente,
           ApellidosCliente,
           dnicliente,
           direccioncliente,
           monto,
           detalles,
           numerotarjeta,
           observaciones,
           estadoventa,
           m.MedioPago,
           p.NumeroCuotas,
           p.TNA
    FROM ventas AS v
             JOIN comercios c ON c.IdComercio = v.IdComercio
             JOIN planes p ON v.IdPlan = p.IdPlan
             JOIN mediospago m ON m.IdMedioPago = p.IdMedioPago
    WHERE ((DNICliente = pDniCliente OR pDniCliente = 0)
        AND (FechaAlta BETWEEN CONCAT(pFechaInicio, '23:59:59') AND CONCAT(pFechaFin, '23:59:59'))
        AND (EstadoVenta = pEstado OR pEstado IS NULL)
        AND (c.IdComercio = pIdComercio OR pIdComercio = 0))
    ORDER BY FechaAlta DESC;

    SET pTotalRows = (SELECT COUNT(*) FROM tmp_ventas);

    -- CONSULTA FINAL
    SELECT *, pTotalRows TotalRows FROM tmp_ventas LIMIT pOffset, pRowCount; -- comienzo y longitud

    DROP TEMPORARY TABLE IF EXISTS tmp_ventas;

    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

END //

DELIMITER ;