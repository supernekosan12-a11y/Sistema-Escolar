DELIMITER $$

CREATE PROCEDURE sp_alumnos_asignacion(
    IN p_idAsignacion INT
)
BEGIN
    SELECT 
        a.idAlumno,
        a.nombre AS NombreAlumno,
        a.matricula,
        g.nombreGrupo,
        g.grado,
        c.nombreCarrera
    FROM Inscripcion i
    JOIN Alumno a ON i.idAlumno = a.idAlumno
    JOIN Grupo g ON a.idGrupo = g.idGrupo
    JOIN Carrera c ON g.idCarrera = c.idCarrera
    WHERE i.idAsignacion = p_idAsignacion;
END$$

DELIMITER ;
