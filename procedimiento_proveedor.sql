-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_proveedores(
    IN v_prov_nombre VARCHAR(100),
    IN v_prov_producto VARCHAR(255),
    IN v_prov_telefono VARCHAR(100)
)
BEGIN
    INSERT INTO proveedores (prov_nombre, prov_producto, prov_telefono)
    VALUES (v_prov_nombre, v_prov_producto, v_prov_telefono);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_proveedores()
BEGIN
    SELECT * FROM proveedores;
END//
DELIMITER ;

-- SHOW DLL
DELIMITER //
CREATE PROCEDURE sp_show_proveedores_ddl()
BEGIN
    SELECT prov_id, prov_nombre from proveedores;
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_proveedores(
    IN v_prov_id INT,
    IN v_prov_nombre VARCHAR(100),
    IN v_prov_producto VARCHAR(255),
    IN v_prov_telefono VARCHAR(100)
)
BEGIN
    UPDATE proveedores
    SET prov_nombre = v_prov_nombre, 
        prov_producto = v_prov_producto,
        prov_telefono = v_prov_telefono
    WHERE prov_id = v_prov_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_proveedores(
    IN v_prov_id INT
)
BEGIN
    DELETE FROM proveedores WHERE prov_id = v_prov_id;
END//
DELIMITER ;