CREATE VIEW v_active_users AS
SELECT DISTINCT
    u.id,
    u.nom,
    u.email
FROM users u
JOIN enrollments e ON u.id = e.user_id;

CREATE VIEW v_monthly_revenue AS
SELECT
    DATE_FORMAT(p.paid_at, '%Y-%m') AS month,
    SUM(p.amount) AS monthly_revenue
FROM payments p
GROUP BY DATE_FORMAT(p.paid_at, '%Y-%m');

CREATE VIEW v_popular_courses AS
SELECT
    c.id,
    c.titre,
    COUNT(e.id) AS nb_inscriptions
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.id, c.titre
ORDER BY nb_inscriptions DESC;

