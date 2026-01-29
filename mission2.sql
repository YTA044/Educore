INSERT INTO users (nom, email) VALUES
('Ahmed Benali', 'ahmed@educore.ma'),
('Sara El Idrissi', 'sara@educore.ma'),
('Omar Lakhdar', 'omar@educore.ma'),
('Nadia Amrani', 'nadia@educore.ma'),
('Youssef Karimi', 'youssef@educore.ma'),
('Khadija Zahra', 'khadija@educore.ma'),
('Mehdi Rahmani', 'mehdi@educore.ma'),
('Salma Bennis', 'salma@educore.ma'),
('Anas Fassi', 'anas@educore.ma'),
('Imane Alaoui', 'imane@educore.ma');

INSERT INTO courses (titre, prix) VALUES
('Introduction à Python', 49.99),
('SQL & Bases de données', 59.00),
('Machine Learning', 99.99),
('Data Analysis avec Python', 79.00),
('Développement Web', 129.99),
('IA pour débutants', 89.00);

INSERT INTO enrollments (user_id, course_id, progress) VALUES
(1, 1, 20),
(1, 2, 50),
(2, 1, 80),
(2, 3, 40),
(3, 4, 60),
(3, 2, 100),
(4, 5, 10),
(5, 6, 0),
(6, 3, 30),
(7, 1, 90),
(8, 4, 45),
(9, 5, 70),
(10, 6, 15),
(4, 2, 55),
(6, 1, 25);

INSERT INTO payments (user_id, amount) VALUES
(1, 49.99),
(1, 59.00),
(2, 99.99),
(3, 79.00),
(4, 129.99),
(5, 89.00),
(6, 99.99),
(7, 49.99),
(8, 79.00),
(9, 129.99),
(10, 89.00);


SELECT 'users' AS table_name, COUNT(*) AS total FROM users
UNION
SELECT 'courses', COUNT(*) FROM courses
UNION
SELECT 'enrollments', COUNT(*) FROM enrollments
UNION
SELECT 'payments', COUNT(*) FROM payments;

SELECT *
FROM enrollments
WHERE progress < 0 OR progress > 100;

SELECT *
FROM payments
WHERE amount <= 0;

SELECT e.*
FROM enrollments e
LEFT JOIN users u ON e.user_id = u.id
LEFT JOIN courses c ON e.course_id = c.id
WHERE u.id IS NULL OR c.id IS NULL;
