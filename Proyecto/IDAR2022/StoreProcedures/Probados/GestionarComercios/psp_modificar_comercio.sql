DROP PROCEDURE IF EXISTS `psp_modificar_comercio`;
DELIMITER //

CREATE PROCEDURE `psp_modificar_comercio`(pIdComercio INT,
                                          pComercio VARCHAR(100),
                                          pTelefono VARCHAR(12),
                                          pDireccion VARCHAR(100),
                                          pLocalidad VARCHAR(100))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite modificar un comercio existente controlando que el nombre del mismo no exista ya.
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

    IF TRIM(pComercio) = '' OR pComercio IS NULL THEN
        SELECT ('Error, el nombre del comercio no puede ser nulo o estar vacio.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Comercio FROM comercios WHERE Comercio = pComercio AND IdComercio!=pIdComercio) THEN
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

    UPDATE comercios
    SET Comercio= pComercio,
        Telefono=pTelefono,
        Localidad= pLocalidad,
        Direccion=pDireccion
    WHERE IdComercio = pIdComercio;
    SELECT 'OK' AS Mensaje;


END //


DELIMITER ;