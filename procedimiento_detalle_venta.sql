-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_detalle_ventas(
    IN v_vent_id INT,
    IN v_prod_id INT,
    IN v_deta_cantidad INT
)
BEGIN
    INSERT INTO detalle_ventas (vent_id, prod_id, deta_cantidad)
    VALUES (v_vent_id, v_prod_id, v_deta_cantidad);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_detalle_ventas(
    IN v_vent_id INT,
    IN v_prod_id INT,
    IN v_deta_cantidad INT
)
BEGIN
    UPDATE detalle_ventas
    SET deta_cantidad = v_deta_cantidad
    WHERE vent_id = v_vent_id AND prod_id = v_prod_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_detalle_ventas()
BEGIN
    SELECT vent_id, prod_id, deta_cantidad FROM detalle_ventas;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_detalle_ventas(
    IN v_vent_id INT,
    IN v_prod_id INT
)
BEGIN
    DELETE FROM detalle_ventas WHERE vent_id = v_vent_id AND prod_id = v_prod_id;
END//
DELIMITER ;

