CREATE TRIGGER `idar2022`.comercios_AFTER_INSERT
    AFTER INSERT
    ON `comercios`
    FOR EACH ROW
BEGIN
    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'I',
            NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END;

CREATE TRIGGER `idar2022`.`comercios_AFTER_DELETE`
    AFTER DELETE
    ON `comercios`
    FOR EACH ROW
BEGIN
    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'B',
            OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad, OLD.EstadoComercio);
END;

CREATE TRIGGER `idar2022`.`comercios_AFTER_UPDATE`
    AFTER UPDATE
    ON `comercios`
    FOR EACH ROW
BEGIN

    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'A',
            OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad, OLD.EstadoComercio);

    INSERT INTO aud_comercios
    VALUES (0, NOW(), SUBSTRING_INDEX(USER(), '@', 1), SUBSTRING_INDEX(USER(), '@', -1), NULL,
            SUBSTRING_INDEX(USER(), '@', -1), NULL, 'D',
            NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END;




