DELIMITER $$

CREATE PROCEDURE sp_calificaciones_existentes(
    IN p_idAsignacion INT
)
BEGIN
    SELECT 
        a.idAlumno,
        a.nombre AS NombreAlumno,
        cal.parcial1,
        cal.parcial2,
        cal.parcial3,
        cal.asistencia,
        cal.fechaRegistro
    FROM Inscripcion i
    JOIN Alumno a ON i.idAlumno = a.idAlumno
    JOIN Calificacion cal ON i.idInscripcion = cal.idInscripcion
    WHERE i.idAsignacion = p_idAsignacion;
END$$

DELIMITER ;
