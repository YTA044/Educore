SELECT
    user_id,
    SUM(amount) AS total_spent
FROM payments
GROUP BY user_id;

SELECT
    u.nom,
    SUM(p.amount) AS total_spent
FROM users u
JOIN payments p ON u.id = p.user_id
GROUP BY u.id, u.nom
HAVING SUM(p.amount) >
(
    SELECT AVG(total_user_spent)
    FROM (
        SELECT SUM(amount) AS total_user_spent
        FROM payments
        GROUP BY user_id
    ) t
);

SELECT
    titre,
    prix
FROM courses
WHERE prix >
(
    SELECT AVG(prix)
    FROM courses
);

SELECT
    u.nom,
    COUNT(e.course_id) AS nb_courses
FROM users u
JOIN enrollments e ON u.id = e.user_id
GROUP BY u.id, u.nom
HAVING COUNT(e.course_id) >= 2;

SELECT DISTINCT
    c.titre
FROM courses c
JOIN enrollments e ON c.id = e.course_id
LEFT JOIN payments p ON e.user_id = p.user_id
WHERE p.id IS NULL;


