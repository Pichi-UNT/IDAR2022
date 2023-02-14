--
-- ER/Studio Data Architect SQL Code Generation
-- Project :      IDAR2022.DM1
--
-- Date Created : Sunday, December 25, 2022 18:43:22
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Comercios 
--

CREATE TABLE Comercios(
    IdComercio        INT             AUTO_INCREMENT,
    Comercio          VARCHAR(100)    NOT NULL,
    Telefono          VARCHAR(12)     NOT NULL,
    Direccion         VARCHAR(150)    NOT NULL,
    Localidad         VARCHAR(100)    NOT NULL,
    EstadoComercio    CHAR(1)         NOT NULL,
    PRIMARY KEY (IdComercio)
)ENGINE=INNODB
;



-- 
-- TABLE: MediosPago 
--

CREATE TABLE MediosPago(
    IdMedioPago      SMALLINT        AUTO_INCREMENT,
    MedioPago        VARCHAR(100)    NOT NULL,
    TipoMedioPago    CHAR(1)         NOT NULL,
    Banco            VARCHAR(100),
    PRIMARY KEY (IdMedioPago)
)ENGINE=INNODB
;



-- 
-- TABLE: Planes 
--

CREATE TABLE Planes(
    IdPlan          SMALLINT         AUTO_INCREMENT,
    IdMedioPago     SMALLINT         NOT NULL,
    Codigo          VARCHAR(15)      NOT NULL,
    NumeroCuotas    TINYINT          NOT NULL,
    TNA             DECIMAL(5, 2)    NOT NULL,
    PRIMARY KEY (IdPlan, IdMedioPago)
)ENGINE=INNODB
;



-- 
-- TABLE: PlanesComercio 
--

CREATE TABLE PlanesComercio(
    IdPlanComercio     INT         AUTO_INCREMENT,
    IdComercio         INT         NOT NULL,
    IdPlan             SMALLINT    NOT NULL,
    IdMedioPago        SMALLINT    NOT NULL,
    EstadoPComercio    CHAR(1)     NOT NULL,
    PRIMARY KEY (IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
)ENGINE=INNODB
;



-- 
-- TABLE: Usuarios 
--

CREATE TABLE Usuarios(
    IdUsuario        INT             AUTO_INCREMENT,
    IdComercio       INT             NOT NULL,
    Nombres          VARCHAR(100)    NOT NULL,
    Apellidos        VARCHAR(100)    NOT NULL,
    Telefono         VARCHAR(20)     NOT NULL,
    Email            VARCHAR(256)    NOT NULL,
    DNI              VARCHAR(10)     NOT NULL,
    EstadoUsuario    CHAR(1)         NOT NULL,
    PRIMARY KEY (IdUsuario, IdComercio)
)ENGINE=INNODB
;



-- 
-- TABLE: Ventas 
--

CREATE TABLE Ventas(
    IdVenta             INT               AUTO_INCREMENT,
    FechaAlta           DATETIME          NOT NULL,
    NombresCliente      VARCHAR(100)      NOT NULL,
    ApellidosCliente    VARCHAR(60)       NOT NULL,
    DNICliente          VARCHAR(10)       NOT NULL,
    DireccionCliente    VARCHAR(150)      NOT NULL,
    Monto               DECIMAL(12, 2)    NOT NULL,
    Detalles            JSON              NOT NULL,
    NumeroTarjeta       VARCHAR(18)       NOT NULL,
    Observaciones       TEXT,
    EstadoVenta         CHAR(1)           NOT NULL,
    IdUsuario           INT               NOT NULL,
    IdComercio          INT               NOT NULL,
    IdPlanComercio      INT,
    IdPlan              SMALLINT,
    IdMedioPago         SMALLINT,
    PRIMARY KEY (IdVenta)
)ENGINE=INNODB
;



-- 
-- INDEX: UI_Comercio 
--

CREATE UNIQUE INDEX UI_Comercio ON Comercios(Comercio)
;
-- 
-- INDEX: UI_MedioPago 
--

CREATE UNIQUE INDEX UI_MedioPago ON MediosPago(MedioPago)
;
-- 
-- INDEX: UI_IdPlan 
--

CREATE UNIQUE INDEX UI_IdPlan ON Planes(IdPlan)
;
-- 
-- INDEX: IX_Codigo 
--

CREATE INDEX IX_Codigo ON Planes(Codigo)
;
-- 
-- INDEX: Ref65 
--

CREATE INDEX Ref65 ON Planes(IdMedioPago)
;
-- 
-- INDEX: UI_IdPlanComercio 
--

CREATE UNIQUE INDEX UI_IdPlanComercio ON PlanesComercio(IdPlanComercio)
;
-- 
-- INDEX: UI_IdComercioIdPlan 
--

CREATE UNIQUE INDEX UI_IdComercioIdPlan ON PlanesComercio(IdComercio, IdPlan)
;
-- 
-- INDEX: Ref32 
--

CREATE INDEX Ref32 ON PlanesComercio(IdComercio)
;
-- 
-- INDEX: Ref53 
--

CREATE INDEX Ref53 ON PlanesComercio(IdPlan, IdMedioPago)
;
-- 
-- INDEX: UI_IdUsuario 
--

CREATE UNIQUE INDEX UI_IdUsuario ON Usuarios(IdUsuario)
;
-- 
-- INDEX: IX_NombreApellido 
--

CREATE INDEX IX_NombreApellido ON Usuarios(Nombres, Apellidos)
;
-- 
-- INDEX: UI_Email 
--

CREATE UNIQUE INDEX UI_Email ON Usuarios(Email)
;
-- 
-- INDEX: UI_DNI 
--

CREATE UNIQUE INDEX UI_DNI ON Usuarios(DNI)
;
-- 
-- INDEX: Ref31 
--

CREATE INDEX Ref31 ON Usuarios(IdComercio)
;
-- 
-- INDEX: IX_FechaAlta 
--

CREATE INDEX IX_FechaAlta ON Ventas(FechaAlta)
;
-- 
-- INDEX: IX_DNICliente 
--

CREATE INDEX IX_DNICliente ON Ventas(DNICliente)
;
-- 
-- INDEX: Ref26 
--

CREATE INDEX Ref26 ON Ventas(IdComercio, IdUsuario)
;
-- 
-- INDEX: Ref17 
--

CREATE INDEX Ref17 ON Ventas(IdPlanComercio, IdMedioPago, IdPlan, IdComercio)
;
-- 
-- TABLE: Planes 
--

ALTER TABLE Planes ADD CONSTRAINT RefMediosPago5 
    FOREIGN KEY (IdMedioPago)
    REFERENCES MediosPago(IdMedioPago)
;


-- 
-- TABLE: PlanesComercio 
--

ALTER TABLE PlanesComercio ADD CONSTRAINT RefComercios2 
    FOREIGN KEY (IdComercio)
    REFERENCES Comercios(IdComercio)
;

ALTER TABLE PlanesComercio ADD CONSTRAINT RefPlanes3 
    FOREIGN KEY (IdPlan, IdMedioPago)
    REFERENCES Planes(IdPlan, IdMedioPago)
;


-- 
-- TABLE: Usuarios 
--

ALTER TABLE Usuarios ADD CONSTRAINT RefComercios1 
    FOREIGN KEY (IdComercio)
    REFERENCES Comercios(IdComercio)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefUsuarios6 
    FOREIGN KEY (IdUsuario, IdComercio)
    REFERENCES Usuarios(IdUsuario, IdComercio)
;

ALTER TABLE Ventas ADD CONSTRAINT RefPlanesComercio7 
    FOREIGN KEY (IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
    REFERENCES PlanesComercio(IdPlanComercio, IdComercio, IdPlan, IdMedioPago)
;


