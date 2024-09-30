-- INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_empleados(
    IN v_emp_nombre VARCHAR(100),
    IN v_emp_cargo VARCHAR(100),
    IN v_emp_contacto VARCHAR(255),
    IN v_par_id INT
)
BEGIN
    INSERT INTO empleados (emp_nombre, emp_cargo, emp_contacto, par_id)
    VALUES (v_emp_nombre, v_emp_cargo, v_emp_contacto, v_par_id);
END//
DELIMITER ;

-- SHOW
DELIMITER //
CREATE PROCEDURE sp_show_empleados()
BEGIN
    SELECT * FROM empleados;
END//
DELIMITER ;

-- UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_empleados(
    IN v_emp_id INT,
    IN v_emp_nombre VARCHAR(100),
    IN v_emp_cargo VARCHAR(100),
    IN v_emp_contacto VARCHAR(255),
    IN v_par_id INT
)
BEGIN
    UPDATE empleados
    SET emp_nombre = v_emp_nombre, 
        emp_cargo = v_emp_cargo,
        emp_contacto = v_emp_contacto,
        par_id = v_par_id
    WHERE emp_id = v_emp_id;
END//
DELIMITER ;

-- DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_empleados(
    IN v_emp_id INT
)
BEGIN
    DELETE FROM empleados WHERE emp_id = v_emp_id;
END//
DELIMITER ;