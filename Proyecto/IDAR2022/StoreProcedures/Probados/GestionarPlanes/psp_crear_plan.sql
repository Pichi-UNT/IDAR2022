DROP PROCEDURE IF EXISTS `psp_crear_plan`;
DELIMITER //

CREATE PROCEDURE `psp_crear_plan`(pIdMedioPago TINYINT,
                                  pCodigo VARCHAR(15),
                                  pNumCuotas TINYINT,
                                  pTNA DECIMAL(5, 2))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un plan siempre y cuando que el medio de pago exista, el código no se encuentre registrado,
    el número de cuotas sea mayor a cero y el TNA  se encuentre entre 0 y 100.
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

    IF NOT EXISTS(SELECT IdMedioPago FROM mediospago WHERE IdMedioPago = pIdMedioPago) THEN
        SELECT ('Error el medio de pago no existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Codigo FROM planes WHERE Codigo = pCodigo) THEN
        SELECT ('Error el codigo del plan ya existe') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pNumCuotas <= 0 THEN
        SELECT ('Error el numero de cuotas no puede ser negativo o cero') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pTNA < 0 OR pTNA>100 THEN
        SELECT ('Error el TNA debe estar entre 0 y  100') AS Mensaje;
        LEAVE FINAL;
    END IF;

    START TRANSACTION;
        INSERT INTO planes (idmediopago, codigo, numerocuotas, tna)
        VALUES (pIdMedioPago, pCodigo, pNumCuotas, pTNA);
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;


END //


DELIMITER ;