DELIMITER $$

CREATE PROCEDURE sp_info_docente_nombre(
    IN p_nombreDocente VARCHAR(100)
)
BEGIN
    SELECT
        a.idAsignacion,
        d.nombre AS docente,
        m.nombreMateria,
        c.nombreCarrera,
        g.grado,
        g.nombreGrupo,
        p.nombrePeriodo
    FROM Asignacion a
    JOIN Docente d ON a.idDocente = d.idDocente
    JOIN Materia m ON a.idMateria = m.idMateria
    JOIN Grupo g ON a.idGrupo = g.idGrupo
    JOIN Carrera c ON g.idCarrera = c.idCarrera
    JOIN Periodo p ON a.idPeriodo = p.idPeriodo
    WHERE d.nombre = p_nombreDocente;
END$$

DELIMITER ;
