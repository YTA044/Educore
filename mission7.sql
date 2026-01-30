EXPLAIN
SELECT *
FROM users
WHERE email = 'ahmed@educore.ma';


EXPLAIN
SELECT *
FROM enrollments
WHERE course_id = 3;

CREATE INDEX idx_users_email
ON users(email)

CREATE INDEX idx_payments_paid_at
ON payments(paid_at);

CREATE INDEX idx_enrollments_course_user
ON enrollments(course_id, user_id);

EXPLAIN
SELECT *
FROM users
WHERE email = 'ahmed@educore.ma';
