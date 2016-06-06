-- PROCEDIMIENTO PARA LISTAR SOLICITUDES
CREATE PROCEDURE reservas.listarSolicitud(IN idSolicitud INTEGER)
BEGIN
	
    IF idSolicitud <1  THEN 
     SELECT * FROM tipo_solicitud;
    ELSE
     SELECT a.* FROM tipo_solicitud a where a.id_solicitud = idSolicitud;
    END IF;
END 

-- crear tipo de solicitudes 
CREATE PROCEDURE reservas.crearSolicitud(IN nombreSolicitud varchar(50),IN detalle varchar(50))
BEGIN
	DECLARE _error_rollback BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _error_rollback = 1;
    START TRANSACTION;
		 INSERT INTO tipo_solicitud(id_solicitud,nombre_solicitud,detalle)
	 	 VALUES(NULL,nombreSolicitud,detalle);
	 COMMIT;
	IF _error_rollback THEN
		SELECT '-1';
        ROLLBACK;
    ELSE
    	SELECT '0';
        COMMIT;
    END IF;
END 
-- eliminar tipo de solicitud 
CREATE PROCEDURE reservas.eliminarSolicitud(IN idSoliciud INT)
BEGIN
	DECLARE _error_rollback BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _error_rollback = 1;
    START TRANSACTION;
		 DELETE reservas.tipo_solicitud where id_solicitud=idSolicitud; 
	 COMMIT;
	IF _error_rollback THEN
		SELECT '-1';
        ROLLBACK;
    ELSE
    	SELECT '0';
        COMMIT;
    END IF;
END
   