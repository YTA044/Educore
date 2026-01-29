SELECT 
    c.titre,
    COUNT(e.id) AS nb_inscrits
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.titre
ORDER BY nb_inscrits DESC;

SELECT
    c.titre,
    SUM(p.amount) AS revenu_total
FROM courses c
JOIN enrollments e ON c.id = e.course_id
JOIN payments p ON e.user_id = p.user_id
GROUP BY c.id, c.titre
ORDER BY revenu_total DESC;

SELECT
    u.nom,
    COUNT(p.id) AS nb_paiements
FROM users u
JOIN payments p ON u.id = p.user_id
GROUP BY u.id, u.nom
HAVING COUNT(p.id) >= 2;

SELECT
    u.nom
FROM users u
LEFT JOIN payments p ON u.id = p.user_id
WHERE p.id IS NULL;


