-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_riego(
    IN v_parc_id INT,
    IN v_rieg_fecha DATE
)
BEGIN
    INSERT INTO riego (parc_id, rieg_fecha)
    VALUES (v_parc_id, v_rieg_fecha);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_riego()
BEGIN
    SELECT * FROM riego;
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_riego(
    IN v_rieg_id INT,
    IN v_parc_id INT,
    IN v_rieg_fecha DATE
)
BEGIN
    UPDATE riego
    SET parc_id = v_parc_id,
        rieg_fecha = v_rieg_fecha
    WHERE rieg_id = v_rieg_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_riego(
    IN v_rieg_id INT
)
BEGIN
    DELETE FROM riego WHERE rieg_id = v_rieg_id;
END//
DELIMITER ;
