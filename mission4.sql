SELECT
    c.titre,
    AVG(e.progress) AS avg_progress
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.titre;

SELECT
    u.nom,
    c.titre,
    e.progress
FROM enrollments e
JOIN users u ON e.user_id = u.id
JOIN courses c ON e.course_id = c.id
WHERE e.progress < 25;

SELECT
    c.titre,
    AVG(e.progress) AS avg_progress,
    COUNT(e.id) AS nb_inscrits
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.titre
HAVING AVG(e.progress) < 50
   AND COUNT(e.id) >= 3;


