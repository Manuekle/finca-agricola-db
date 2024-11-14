-- INSERT (con finc_id)
DELIMITER //
CREATE PROCEDURE sp_insert_parcelas(
    IN v_par_tamano VARCHAR(255),
    IN v_par_ubicacion VARCHAR(255),
    IN v_finc_id INT
)
BEGIN
    INSERT INTO parcelas (parc_tamano, parc_ubicacion, finc_id)
    VALUES (v_par_tamano, v_par_ubicacion, v_finc_id);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_parcelas()
BEGIN
    SELECT * FROM parcelas;
END//
DELIMITER ;

-- Selecciona únicamente el id y la descripción de las parcelas
DELIMITER //
CREATE PROCEDURE sp_show_parcelas_ddl()
BEGIN
    SELECT parc_id, CONCAT(parc_tamano, ' ', parc_ubicacion) AS descripcion
    FROM parcelas;
END//
DELIMITER ;

-- UPDATE (con finc_id)
DELIMITER //
CREATE PROCEDURE sp_update_parcelas(
    IN v_par_id INT,
    IN v_par_tamano VARCHAR(255),
    IN v_par_ubicacion VARCHAR(255),
    IN v_finc_id INT
)
BEGIN
    UPDATE parcelas
    SET parc_tamano = v_par_tamano, 
        parc_ubicacion = v_par_ubicacion,
        finc_id = v_finc_id
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