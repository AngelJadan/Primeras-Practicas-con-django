-- Generado por Oracle SQL Developer Data Modeler 17.3.0.261.1529
--   en:        2020-07-29 14:09:09 COT
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE Mensajes 
    (
     SALAS_sal_id NUMERIC NOT NULL , 
     USU_SALAS_usa_id NUMERIC NOT NULL , 
     usa_mensaje VARCHAR (250) NOT NULL , 
     usa_fecha_hora DATETIME NOT NULL 
    )
    ON "default"
GO

CREATE TABLE SALAS 
    (
     sal_id NUMERIC NOT NULL , 
     SALAS_sal_id NUMERIC NOT NULL 
    )
    ON "default"
GO

ALTER TABLE SALAS ADD CONSTRAINT SALAS_PK PRIMARY KEY CLUSTERED (sal_id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 
    GO

CREATE TABLE USU_SALAS 
    (
     usa_id NUMERIC NOT NULL , 
     USUARIOS_usu_id NUMERIC NOT NULL , 
     SALAS_sal_id NUMERIC NOT NULL 
    )
    ON "default"
GO

ALTER TABLE USU_SALAS ADD CONSTRAINT USU_SALAS_PK PRIMARY KEY CLUSTERED (usa_id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 
    GO

CREATE TABLE USUARIOS 
    (
     usu_id NUMERIC NOT NULL , 
     usu_nombre VARCHAR (250) NOT NULL , 
     usu_apellido VARCHAR (250) NOT NULL , 
     usu_usuario VARCHAR (250) NOT NULL , 
     usu_pass VARCHAR (250) NOT NULL , 
     usu_correo VARCHAR (250) NOT NULL 
    )
    ON "default"
GO

ALTER TABLE USUARIOS ADD CONSTRAINT USUARIOS_PK PRIMARY KEY CLUSTERED (usu_id)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 
    GO

ALTER TABLE Mensajes 
    ADD CONSTRAINT Mensajes_SALAS_FK FOREIGN KEY 
    ( 
     SALAS_sal_id
    ) 
    REFERENCES SALAS 
    ( 
     sal_id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE Mensajes 
    ADD CONSTRAINT Mensajes_USU_SALAS_FK FOREIGN KEY 
    ( 
     USU_SALAS_usa_id
    ) 
    REFERENCES USU_SALAS 
    ( 
     usa_id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE SALAS 
    ADD CONSTRAINT SALAS_SALAS_FK FOREIGN KEY 
    ( 
     SALAS_sal_id
    ) 
    REFERENCES SALAS 
    ( 
     sal_id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE USU_SALAS 
    ADD CONSTRAINT USU_SALAS_SALAS_FK FOREIGN KEY 
    ( 
     SALAS_sal_id
    ) 
    REFERENCES SALAS 
    ( 
     sal_id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO

ALTER TABLE USU_SALAS 
    ADD CONSTRAINT USU_SALAS_USUARIOS_FK FOREIGN KEY 
    ( 
     USUARIOS_usu_id
    ) 
    REFERENCES USUARIOS 
    ( 
     usu_id 
    ) 
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION 
GO



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              8
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
