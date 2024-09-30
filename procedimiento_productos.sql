-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_productos()
BEGIN
    SELECT prod_id, prod_nombre, prod_descripcion, prod_precio, parc_id
    FROM productos;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_productos(
    IN v_prod_id INT
)
BEGIN
    DELETE FROM productos
    WHERE prod_id = v_prod_id;
END//
DELIMITER ;