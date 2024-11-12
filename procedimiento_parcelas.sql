-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_parcelas(
    IN v_fin_id INT,
    IN v_par_ubicacion VARCHAR(255),
    IN v_par_tamano DECIMAL(10,2),
    IN v_par_fecha_revision DATE,
    IN v_par_estado VARCHAR(50)
)
BEGIN
    INSERT INTO parcelas (fin_id, parc_ubicacion, parc_tamano, parc_fecha_revision, parc_estado)
    VALUES (v_fin_id, v_par_ubicacion, v_par_tamano, v_par_fecha_revision, v_par_estado);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_parcelas()
BEGIN
    SELECT * FROM parcelas;
END//
DELIMITER ;

-- Selecciona unicamente el id y el nombre de los provedores
DELIMITER //
CREATE PROCEDURE sp_show_parcelas_ddl()
BEGIN
	select parc_id, concat(parc_tamano,' ',parc_ubicacion) as descripcion
    from parcelas;
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_parcelas(
    IN v_par_id INT,
    IN v_fin_id INT,
    IN v_par_ubicacion VARCHAR(255),
    IN v_par_tamano DECIMAL(10,2),
    IN v_par_fecha_revision DATE,
    IN v_par_estado VARCHAR(50)
)
BEGIN
    UPDATE parcelas
    SET fin_id = v_fin_id, 
        parc_ubicacion = v_par_ubicacion,
        parc_tamano = v_par_tamano,
        parc_fecha_revision = v_par_fecha_revision,
        parc_estado = v_par_estado
    WHERE parc_id = v_par_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_parcelas(
    IN v_par_id INT
)
BEGIN
    DELETE FROM parcelas WHERE parc_id = v_par_id;
END//
DELIMITER ;
