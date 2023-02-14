CREATE TABLE `idar2022`.`aud_comercios`
(
    `Id`             BIGINT       NOT NULL AUTO_INCREMENT,
    `FechaAud`       DATETIME     NOT NULL,
    `UsuarioAud`     VARCHAR(30)  NOT NULL,
    `IP`             VARCHAR(40)  NOT NULL,
    `UserAgent`      VARCHAR(255) NULL,
    `Aplicacion`     VARCHAR(50)  NOT NULL,
    `Motivo`         VARCHAR(100) NULL,
    `TipoAud`        CHAR(1)      NOT NULL,
    `IdComercio`     INT          NOT NULL,
    `Comercio`       VARCHAR(100) NOT NULL,
    `Telefono`       VARCHAR(12)  NOT NULL,
    `Direccion`      VARCHAR(150) NOT NULL,
    `Localidad`      VARCHAR(100) NOT NULL,
    `EstadoComercio` CHAR(1)      NOT NULL,
    PRIMARY KEY (`Id`),
    INDEX `IX_FechaAud` (`FechaAud` ASC),
    INDEX `IX_Usuario` (`UsuarioAud` ASC),
    INDEX `IX_IP` (`IP` ASC),
    INDEX `IX_Aplicacion` (`Aplicacion` ASC),
    INDEX `IX_IdComercio` (`IdComercio` ASC)
) ENGINE = InnoDB
  AUTO_INCREMENT = 0
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci COMMENT ='Tabla que almacena la auditoria de los comercios del sistema.';

