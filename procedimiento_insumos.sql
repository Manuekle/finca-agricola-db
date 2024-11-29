-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_insumos(
    IN v_insu_nombre VARCHAR(100),
    IN v_insu_cantidad INT,
    IN v_insu_fecha_entrada DATE,
    IN v_prov_id INT,
    IN v_parc_id INT
)
BEGIN
    INSERT INTO insumos (insu_nombre, insu_cantidad, insu_fecha_entrada, prov_id, parc_id)
    VALUES (v_insu_nombre, v_insu_cantidad, v_insu_fecha_entrada, v_prov_id, v_parc_id);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_insumos(
    IN v_insu_id INT,
    IN v_insu_nombre VARCHAR(100),
    IN v_insu_cantidad INT,
    IN v_insu_fecha_entrada DATE,
    IN v_prov_id INT,
    IN v_parc_id INT
)
BEGIN
    UPDATE insumos
    SET insu_nombre = v_insu_nombre, 
        insu_cantidad = v_insu_cantidad,
        insu_fecha_entrada = v_insu_fecha_entrada,
        prov_id = v_prov_id,
        parc_id = v_parc_id
    WHERE insu_id = v_insu_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_insumos()
BEGIN
    SELECT insu_id, insu_nombre, insu_cantidad, insu_fecha_entrada, prov_id, parc_id FROM insumos;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_insumos(
    IN v_insu_id INT
)
BEGIN
    DELETE FROM insumos WHERE insu_id = v_insu_id;
END//
DELIMITER ;

