DROP PROCEDURE IF EXISTS `psp_listar_planescomercios`;
DELIMITER //

CREATE PROCEDURE `psp_listar_planescomercios`(pIdComercio INT,
                                              pIncluyeBajas CHAR(1))
FINAL:
BEGIN
    -- Descripcion
    /*
    Permite listar todos los planes de comercio de un comercio dado.
    Puede o no incluir los planes de comercios dados de baja según pIncluyeBajas (S: Si - N: No).
    */
    -- Declaraciones

    -- Exception handler
    DECLARE EXIT HANDLER FOR SQLEXCEPTION -- lo puedo cambiar por el numero de la exception
        BEGIN
            SHOW ERRORS;
            SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
            ROLLBACK;
        END;

    SELECT pc.IdPlanComercio,pc.IdComercio,p.IdPlan,m.MedioPago, m.Banco, m.TipoMedioPago, p.Codigo, p.NumeroCuotas, p.TNA, pc.EstadoPComercio
    FROM planescomercio AS pc
             JOIN planes p ON p.IdPlan = pc.IdPlan
             JOIN mediospago m ON m.IdMedioPago = p.IdMedioPago
    WHERE (pIncluyeBajas = 'S' OR EstadoPComercio = 'A') AND pc.IdComercio=pIdComercio;

END //


DELIMITER ;