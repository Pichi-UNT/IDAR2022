DROP PROCEDURE IF EXISTS `psp_borrar_plan`;
DELIMITER //

CREATE PROCEDURE `psp_borrar_plan`(pIdPlan smallint)
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite borrar un plan siempre y cuando no este asociado a un comercio.
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

    IF pIdPlan IS NULL THEN
        SELECT ('Error, el campo idPlan no puede ser nulo.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    IF NOT EXISTS(SELECT IdPlan FROM planes WHERE IdPlan =pIdPlan) THEN
        SELECT ('Error al intentar borrar el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF ;
    IF EXISTS(SELECT IdPlan FROM planescomercio WHERE IdPlan =pIdPlan) THEN
        SELECT ('Error al intentar borrar el plan.') AS Mensaje;
        LEAVE FINAL;
    END IF ;

    DELETE FROM planes WHERE IdPlan=pIdPlan;
    SELECT CONCAT('OK') AS Mensaje;

END //

DELIMITER ;