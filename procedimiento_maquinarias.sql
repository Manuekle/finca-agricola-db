-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_maquinarias(
    IN v_maqu_tipo VARCHAR(100),
    IN v_maqu_estado VARCHAR(50),
    IN v_maqu_fecha_adquisicion DATE,
    IN v_parc_id INT
)
BEGIN
    INSERT INTO maquinarias (maqu_tipo, maqu_estado, maqu_fecha_adquisicion, parc_id)
    VALUES (v_maqu_tipo, v_maqu_estado, v_maqu_fecha_adquisicion, v_parc_id);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_maquinarias(
    IN v_maqu_id INT,
    IN v_maqu_tipo VARCHAR(100),
    IN v_maqu_estado VARCHAR(50),
    IN v_maqu_fecha_adquisicion DATE,
    IN v_parc_id INT
)
BEGIN
    UPDATE maquinarias
    SET maqu_tipo = v_maqu_tipo, 
        maqu_estado = v_maqu_estado, 
        maqu_fecha_adquisicion = v_maqu_fecha_adquisicion,
        parc_id = v_parc_id
    WHERE maqu_id = v_maqu_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_maquinarias()
BEGIN
    SELECT maqu_id, maqu_tipo, maqu_estado, maqu_fecha_adquisicion, parc_id FROM maquinarias;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_maquinarias(
    IN v_maqu_id INT
)
BEGIN
    DELETE FROM maquinarias WHERE maqu_id = v_maqu_id;
END//
DELIMITER ;
