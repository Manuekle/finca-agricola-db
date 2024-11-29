-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_ventas(
    IN v_clie_id INT,
    IN v_vent_fecha DATE,
    IN v_vent_monto DECIMAL(10,2)
)
BEGIN
    INSERT INTO ventas (clie_id, vent_fecha, vent_monto)
    VALUES (v_clie_id, v_vent_fecha, v_vent_monto);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_ventas(
    IN v_vent_id INT,
    IN v_clie_id INT,
    IN v_vent_fecha DATE,
    IN v_vent_monto DECIMAL(10,2)
)
BEGIN
    UPDATE ventas
    SET clie_id = v_clie_id, 
        vent_fecha = v_vent_fecha, 
        vent_monto = v_vent_monto
    WHERE vent_id = v_vent_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_ventas()
BEGIN
    SELECT vent_id, clie_id, vent_fecha, vent_monto FROM ventas;
END//
DELIMITER ;

-- SHOW DDL
DELIMITER //
CREATE PROCEDURE sp_show_ventas_ddl()
BEGIN
    SELECT vent_id, vent_monto FROM ventas;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_ventas(
    IN v_vent_id INT
)
BEGIN
    DELETE FROM ventas WHERE vent_id = v_vent_id;
END//
DELIMITER ;
