DROP PROCEDURE IF EXISTS `psp_crear_venta`;
DELIMITER //

CREATE PROCEDURE `psp_crear_venta`(pMontoCompra DECIMAL(12, 2),
                                   pDetallesCompra JSON,
                                   pNombreCliente VARCHAR(100),
                                   pApellidoCliente VARCHAR(100),
                                   pDireccionCliente VARCHAR(150),
                                   pDniCliente VARCHAR(10),
                                   pNumeroTarjetaCliente VARCHAR(16),
                                   pObservaciones TEXT,
                                   pIdUsuario INT,
                                   pIdComercio INT
)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear una nueva venta en Estado P siempre y cuando que el usuario exista y se encuentre en Estado A.
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;



    INSERT INTO ventas (fechaalta, nombrescliente, apellidos, dnicliente,
                        direccioncliente, monto, detalles, numerotarjeta,
                        observaciones, estadoventa, idusuario, idcomercio,
                        idplancomercio, idplan, idmediopago)
    VALUES (NOW(),pNombreCliente,pApellidoCliente,pDniCliente,
            pDireccionCliente,pMontoCompra,pDetallesCompra,pNumeroTarjetaCliente,
            pObservaciones,'P',pIdUsuario,pIdComercio);

END //


DELIMITER ;