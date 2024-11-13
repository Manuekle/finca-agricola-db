-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_empleados(
    IN v_empl_nombre VARCHAR(100),
    IN v_empl_rol VARCHAR(50),
    IN v_empl_fecha_contratacion DATE,
    IN v_parc_id INT
)
BEGIN
    INSERT INTO empleados (empl_nombre, empl_rol, empl_fecha_contratacion, parc_id)
    VALUES (v_empl_nombre, v_empl_rol, v_empl_fecha_contratacion, v_parc_id);
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_empleados(
    IN v_empl_id INT,
    IN v_empl_nombre VARCHAR(100),
    IN v_empl_rol VARCHAR(50),
    IN v_empl_fecha_contratacion DATE,
    IN v_parc_id INT
)
BEGIN
    UPDATE empleados
    SET empl_nombre = v_empl_nombre, 
        empl_rol = v_empl_rol, 
        empl_fecha_contratacion = v_empl_fecha_contratacion,
        parc_id = v_parc_id
    WHERE empl_id = v_empl_id;
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_empleados()
BEGIN
    SELECT empl_id, empl_nombre, empl_rol, empl_fecha_contratacion, parc_id FROM empleados;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_empleados(
    IN v_empl_id INT
)
BEGIN
    DELETE FROM empleados WHERE empl_id = v_empl_id;
END//
DELIMITER ;

