-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_clima(
    IN v_parc_id INT,
    IN v_clim_fecha DATE,
    IN v_clim_humedad DECIMAL(5,2),
    IN v_clim_temperatura DECIMAL(5,2)
)
BEGIN
    INSERT INTO clima (parc_id, clim_fecha, clim_humedad, clim_temperatura)
    VALUES (v_parc_id, v_clim_fecha, v_clim_humedad, v_clim_temperatura);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_clima(
    IN v_clim_id INT,
    IN v_parc_id INT,
    IN v_clim_fecha DATE,
    IN v_clim_humedad DECIMAL(5,2),
    IN v_clim_temperatura DECIMAL(5,2)
)
BEGIN
    UPDATE clima
    SET parc_id = v_parc_id, 
        clim_fecha = v_clim_fecha, 
        clim_humedad = v_clim_humedad,
        clim_temperatura = v_clim_temperatura
    WHERE clim_id = v_clim_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_clima()
BEGIN
    SELECT clim_id, parc_id, clim_fecha, clim_humedad, clim_temperatura FROM clima;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_clima(
    IN v_clim_id INT
)
BEGIN
    DELETE FROM clima WHERE clim_id = v_clim_id;
END//
DELIMITER ;
