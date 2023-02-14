DROP PROCEDURE IF EXISTS `psp_crear_comercio`;
DELIMITER //

CREATE PROCEDURE `psp_crear_comercio`(pComercio VARCHAR(100), pTelefono VARCHAR(12),
                                      pDireccion VARCHAR(100), pLocalidad VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un comercio controlando siempre que el nombre del mismo no exista ya.
    Lo crea en estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF TRIM(pComercio) = '' OR pComercio IS NULL THEN
        SELECT ('Error, el nombre del comercio no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Comercio FROM comercios WHERE Comercio = pComercio) THEN
        SELECT ('Error, el nombre del comercio ya ha sido registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('Error, el numero de telefono no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDireccion) = '' OR pDireccion IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pLocalidad) = '' OR pLocalidad IS NULL THEN
        SELECT ('Error, la direccion no puede ser nula o estar vacia.') AS Mensaje;
        LEAVE FINAL;
    END IF;
    START TRANSACTION;
        INSERT INTO comercios (Comercio, Telefono, Direccion, Localidad, EstadoComercio)
        VALUES (pComercio, pTelefono, pDireccion, pLocalidad, 'A');

        SELECT CONCAT('OK ', 'ID:', LAST_INSERT_ID()) AS Mensaje;
    COMMIT;


END //


DELIMITER ;