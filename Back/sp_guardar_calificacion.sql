DELIMITER $$

CREATE PROCEDURE sp_guardar_calificacion(
    IN p_idInscripcion INT,
    IN p_parcial1 DECIMAL(4,2),
    IN p_parcial2 DECIMAL(4,2),
    IN p_parcial3 DECIMAL(4,2),
    IN p_asistencia DECIMAL(5,2)
)
BEGIN
    INSERT INTO Calificacion (
        idInscripcion,
        parcial1,
        parcial2,
        parcial3,
        asistencia
    )
    VALUES (
        p_idInscripcion,
        p_parcial1,
        p_parcial2,
        p_parcial3,
        p_asistencia
    )
    ON DUPLICATE KEY UPDATE
        parcial1 = p_parcial1,
        parcial2 = p_parcial2,
        parcial3 = p_parcial3,
        asistencia = p_asistencia,
        fechaRegistro = CURRENT_TIMESTAMP;
END$$

DELIMITER ;
