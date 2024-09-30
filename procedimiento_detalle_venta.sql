-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_detalle_venta(
    IN v_ven_id INT,
    IN v_prod_id INT,
    IN v_det_cantidad DECIMAL(10,2),
    IN v_det_precio DECIMAL(10,2)
)
BEGIN
    INSERT INTO detalle_venta (ven_id, prod_id, det_cantidad, det_precio)
    VALUES (v_ven_id, v_prod_id, v_det_cantidad, v_det_precio);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_detalle_venta()
BEGIN
    SELECT * FROM detalle_venta;
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_detalle_venta(
    IN v_det_id INT,
    IN v_ven_id INT,
    IN v_prod_id INT,
    IN v_det_cantidad DECIMAL(10,2),
    IN v_det_precio DECIMAL(10,2)
)
BEGIN
    UPDATE detalle_venta
    SET ven_id = v_ven_id,
        prod_id = v_prod_id,
        det_cantidad = v_det_cantidad,
        det_precio = v_det_precio
    WHERE det_id = v_det_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_detalle_venta(
    IN v_det_id INT
)
BEGIN
    DELETE FROM detalle_venta WHERE det_id = v_det_id;
END//
DELIMITER ;