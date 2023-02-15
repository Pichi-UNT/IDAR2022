DROP PROCEDURE IF EXISTS `psp_crear_medio_pago`;
DELIMITER //

CREATE PROCEDURE `psp_crear_medio_pago`(pMedioPago VARCHAR(100),
                                        pTipoMedioPago CHAR(1),
                                        pBanco VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un medio de pago, controlando que el nombre del mismo no exista ya.
    El campo tipo medio de pago solo puede estar compuesto D(DEBITO),C(CREDITO) o P(Prepago).
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
    
    IF EXISTS(SELECT MedioPago FROM mediospago WHERE MedioPago =pMedioPago) THEN
        SELECT ('Error el nombre del medio de pago ya existe.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    IF pTipoMedioPago NOT IN ('C','D','P')THEN
        SELECT ('Error tipo de medio de pago incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    
    START TRANSACTION;
        INSERT INTO mediospago (mediopago, tipomediopago, banco)
        VALUES (pMedioPago,UPPER(pTipoMedioPago),pBanco);
        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;



END //


DELIMITER ;