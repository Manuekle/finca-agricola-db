USE `finca-agricola`;

--  INSERT
DELIMITER //
CREATE PROCEDURE sp_insert_finca(
    IN v_finc_nombre VARCHAR(100),
    IN v_finc_ubicacion VARCHAR(255),
    IN v_finc_tamano VARCHAR(255)
)
BEGIN
    INSERT INTO finca (finc_nombre, finc_ubicacion, finc_tamano)
    VALUES (v_finc_nombre, v_finc_ubicacion, v_finc_tamano);
END//
DELIMITER ;

--  UPDATE
DELIMITER //
CREATE PROCEDURE sp_update_finca(
    IN v_finc_id INT,
    IN v_finc_nombre VARCHAR(100),
    IN v_finc_ubicacion VARCHAR(255),
    IN v_finc_tamano VARCHAR(255)
)
BEGIN
    UPDATE finca
    SET finc_nombre = v_finc_nombre, 
        finc_ubicacion = v_finc_ubicacion,
        finc_tamano = v_finc_tamano
    WHERE finc_id = v_finc_id;
END//
DELIMITER ;

--  SHOW
DELIMITER //
CREATE PROCEDURE sp_show_finca()
BEGIN
    SELECT finc_id, finc_nombre, finc_ubicacion, finc_tamano FROM finca;
END//
DELIMITER ;

--  DELETE
DELIMITER //
CREATE PROCEDURE sp_delete_finca(
    IN v_finc_id INT
)
BEGIN
    DELETE FROM finca WHERE finc_id = v_finc_id;
END//
DELIMITER ;
