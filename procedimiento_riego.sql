-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_riego(
    IN v_ri_id_parcela INT,
    IN v_ri_fecha DATE,
    IN v_ri_duracion DECIMAL(5,2),
    IN v_ri_cantidad DECIMAL(10,2)
)
BEGIN
    INSERT INTO riego (ri_id_parcela, ri_fecha, ri_duracion, ri_cantidad)
    VALUES (v_ri_id_parcela, v_ri_fecha, v_ri_duracion, v_ri_cantidad);
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
    IN v_ri_id INT,
    IN v_ri_id_parcela INT,
    IN v_ri_fecha DATE,
    IN v_ri_duracion DECIMAL(5,2),
    IN v_ri_cantidad DECIMAL(10,2)
)
BEGIN
    UPDATE riego
    SET ri_id_parcela = v_ri_id_parcela,
        ri_fecha = v_ri_fecha,
        ri_duracion = v_ri_duracion,
        ri_cantidad = v_ri_cantidad
    WHERE ri_id = v_ri_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_riego(
    IN v_ri_id INT
)
BEGIN
    DELETE FROM riego WHERE ri_id = v_ri_id;
END//
DELIMITER ;