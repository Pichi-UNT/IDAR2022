DROP PROCEDURE IF EXISTS `psp_modificar_usuario`;
DELIMITER //

CREATE PROCEDURE `psp_modificar_usuario`(pIdUsuario INT, pApellidos VARCHAR(100), pNombres VARCHAR(100),
                                         pEmail VARCHAR(256), pTelefono VARCHAR(20), pDNI VARCHAR(10), pIdComercio INT)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite crear un usuario, controlando que el DNI y el email no se encuentren registrados.
    Se debe garantizar que el comercio exista. Los campos nombres, apellidos y telefonos no pueden estan vacios.
    Se crea en Estado:B. Devuelve OK + id o el mensaje de error en Mensaje.
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    IF pIdUsuario IS NULL THEN
        SELECT ('El campo IdUsuario no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pDNI) = '' OR pDNI IS NULL THEN
        SELECT ('El campo DNI no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pEmail) = '' OR pEmail IS NULL THEN
        SELECT ('El campo email no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pTelefono) = '' OR pTelefono IS NULL THEN
        SELECT ('El campo telefono no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pApellidos) = '' OR pApellidos IS NULL THEN
        SELECT ('El campo apellidp no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF TRIM(pNombres) = '' OR pNombres IS NULL THEN
        SELECT ('El campo nombre no puede estar vacio o ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF NOT EXISTS(SELECT IdUsuario FROM usuarios WHERE IdUsuario = pIdUsuario) THEN
        SELECT ('El usuario no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT DNI FROM usuarios WHERE DNI = pDNI AND IdUsuario != pIdUsuario) THEN
        SELECT ('El DNI ya se encuentra registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF pEmail NOT REGEXP
       "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$" THEN
        SELECT ('Formato de email incorrecto.') AS Mensaje;
        LEAVE FINAL;
    END IF;

    IF EXISTS(SELECT Email FROM usuarios WHERE Email = pEmail AND IdUsuario != pIdUsuario) THEN
        SELECT ('El correo electronico ya se encuentra registrado.') AS Mensaje;
        LEAVE FINAL;
    END IF;


    IF NOT EXISTS(SELECT IdComercio FROM comercios WHERE IdComercio = pIdComercio) THEN
        SELECT ('El comercio del usuario no existe.') AS Mensaje;
        LEAVE FINAL;
    END IF;


    UPDATE usuarios
    SET Apellidos= pApellidos,
        Nombres=pNombres,
        Email= pEmail,
        Telefono=pTelefono,
        DNI=pDNI,
        IdComercio=pIdComercio
    WHERE IdUsuario = pIdUsuario;
    SELECT 'OK' AS Mensaje;

    SELECT CONCAT('OK') AS Mensaje;

END //


DELIMITER ;