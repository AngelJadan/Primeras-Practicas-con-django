-- Generado por Oracle SQL Developer Data Modeler 17.3.0.261.1529
--   en:        2020-07-29 14:13:46 COT
--   sitio:      Oracle Database 12c
--   tipo:      Oracle Database 12c



CREATE TABLE mensajes (
    salas_sal_id       NUMBER NOT NULL,
    usu_salas_usa_id   NUMBER NOT NULL,
    usa_mensaje        VARCHAR2(250) NOT NULL,
    usa_fecha_hora     DATE NOT NULL
);

CREATE TABLE salas (
    sal_id         NUMBER NOT NULL,
    salas_sal_id   NUMBER NOT NULL
);

ALTER TABLE salas ADD CONSTRAINT salas_pk PRIMARY KEY ( sal_id );

CREATE TABLE usu_salas (
    usa_id            NUMBER NOT NULL,
    usuarios_usu_id   NUMBER NOT NULL,
    salas_sal_id      NUMBER NOT NULL
);

ALTER TABLE usu_salas ADD CONSTRAINT usu_salas_pk PRIMARY KEY ( usa_id );

CREATE TABLE usuarios (
    usu_id         NUMBER NOT NULL,
    usu_nombre     VARCHAR2(250) NOT NULL,
    usu_apellido   VARCHAR2(250) NOT NULL,
    usu_usuario    VARCHAR2(250) NOT NULL,
    usu_pass       VARCHAR2(250) NOT NULL,
    usu_correo     VARCHAR2(250) NOT NULL
);

ALTER TABLE usuarios ADD CONSTRAINT usuarios_pk PRIMARY KEY ( usu_id );

ALTER TABLE mensajes
    ADD CONSTRAINT mensajes_salas_fk FOREIGN KEY ( salas_sal_id )
        REFERENCES salas ( sal_id );

ALTER TABLE mensajes
    ADD CONSTRAINT mensajes_usu_salas_fk FOREIGN KEY ( usu_salas_usa_id )
        REFERENCES usu_salas ( usa_id );

ALTER TABLE salas
    ADD CONSTRAINT salas_salas_fk FOREIGN KEY ( salas_sal_id )
        REFERENCES salas ( sal_id );

ALTER TABLE usu_salas
    ADD CONSTRAINT usu_salas_salas_fk FOREIGN KEY ( salas_sal_id )
        REFERENCES salas ( sal_id );

ALTER TABLE usu_salas
    ADD CONSTRAINT usu_salas_usuarios_fk FOREIGN KEY ( usuarios_usu_id )
        REFERENCES usuarios ( usu_id );



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
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
