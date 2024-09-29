-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_cultivos(
    IN v_cult_nombre VARCHAR(100),
    IN v_cult_fecha_siembra DATE,
    IN v_cult_estado VARCHAR(50),
    IN v_parc_id INT
)
BEGIN
    INSERT INTO cultivos (cult_nombre, cult_fecha_siembra, cult_estado, parc_id)
    VALUES (v_cult_nombre, v_cult_fecha_siembra, v_cult_estado, v_parc_id);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_cultivos(
    IN v_cult_id INT,
    IN v_cult_nombre VARCHAR(100),
    IN v_cult_fecha_siembra DATE,
    IN v_cult_estado VARCHAR(50),
    IN v_parc_id INT
)
BEGIN
    UPDATE cultivos
    SET cult_nombre = v_cult_nombre, 
        cult_fecha_siembra = v_cult_fecha_siembra, 
        cult_estado = v_cult_estado, 
        parc_id = v_parc_id
    WHERE cult_id = v_cult_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_cultivos()
BEGIN
    SELECT cult_id, cult_nombre, cult_fecha_siembra, cult_estado, parc_id FROM cultivos;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_cultivos(
    IN v_cult_id INT
)
BEGIN
    DELETE FROM cultivos WHERE cult_id = v_cult_id;
END//
DELIMITER ;

