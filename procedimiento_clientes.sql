-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_clientes(
    IN v_clie_nombre VARCHAR(100),
    IN v_clie_telefono VARCHAR(15),
    IN v_clie_direccion VARCHAR(255)
)
BEGIN
    INSERT INTO clientes (clie_nombre, clie_telefono, clie_direccion)
    VALUES (v_clie_nombre, v_clie_telefono, v_clie_direccion);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_clientes(
    IN v_clie_id INT,
    IN v_clie_nombre VARCHAR(100),
    IN v_clie_telefono VARCHAR(15),
    IN v_clie_direccion VARCHAR(255)
)
BEGIN
    UPDATE clientes
    SET clie_nombre = v_clie_nombre, 
        clie_telefono = v_clie_telefono, 
        clie_direccion = v_clie_direccion
    WHERE clie_id = v_clie_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_clientes()
BEGIN
    SELECT clie_id, clie_nombre, clie_telefono, clie_direccion FROM clientes;
END//
DELIMITER ;

-- SHOW DDL
DELIMITER //
CREATE PROCEDURE sp_show_clientes_ddl()
BEGIN
	select clie_id, clie_nombre
    from clientes;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_clientes(
    IN v_clie_id INT
)
BEGIN
    DELETE FROM clientes WHERE clie_id = v_clie_id;
END//
DELIMITER ;
