DROP PROCEDURE IF EXISTS `psp_modificar_medio_pago`;
DELIMITER //

CREATE PROCEDURE `psp_modificar_medio_pago`(pIdMedioPago INT,
                                            pMedioPago VARCHAR(100),
                                            pTipoMedioPago CHAR(1),
                                            pBanco VARCHAR(100)
)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite modificar un medio de pago ya existente, controlando que el nombre del mismo no exista ya.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF EXISTS(SELECT MedioPago FROM mediospago WHERE MedioPago = pMedioPago AND IdMedioPago != pIdMedioPago) THEN
        SELECT ('Error el nombre del medio de pago ya existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pTipoMedioPago NOT IN ('B', 'D', 'P') THEN
        SELECT ('Error tipo de medio de pago incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    UPDATE mediospago
    SET IdMedioPago  = pMedioPago,
        TipoMedioPago=pTipoMedioPago,
        Banco=pBanco
    WHERE IdMedioPago = pIdMedioPago;
    SELECT CONCAT('OK') AS Mensaje;

END //


DELIMITER ;