-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_proveedores(
    IN v_pro_nombre VARCHAR(100),
    IN v_pro_contacto VARCHAR(255),
    IN v_pro_tipo_insumo VARCHAR(100)
)
BEGIN
    INSERT INTO proveedores (pro_nombre, pro_contacto, pro_tipo_insumo)
    VALUES (v_pro_nombre, v_pro_contacto, v_pro_tipo_insumo);
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
    IN v_pro_id INT,
    IN v_pro_nombre VARCHAR(100),
    IN v_pro_contacto VARCHAR(255),
    IN v_pro_tipo_insumo VARCHAR(100)
)
BEGIN
    UPDATE proveedores
    SET pro_nombre = v_pro_nombre, 
        pro_contacto = v_pro_contacto,
        pro_tipo_insumo = v_pro_tipo_insumo
    WHERE pro_id = v_pro_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_proveedores(
    IN v_pro_id INT
)
BEGIN
    DELETE FROM proveedores WHERE pro_id = v_pro_id;
END//
DELIMITER ;