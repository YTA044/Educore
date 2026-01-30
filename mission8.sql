START TRANSACTION;
START TRANSACTION;

INSERT INTO payments (user_id, amount)
VALUES (1, 59.00);

UPDATE users
SET nom = CONCAT(nom, ' (client)')
WHERE id = 1;

COMMIT;

START TRANSACTION;

INSERT INTO payments (user_id, amount)
VALUES (2, 99.00);


INSERT INTO users (nom, email)
VALUES ('Test Error', 'ahmed@educore.ma');

ROLLBACK TO before_error;

COMMIT;





