CREATE Table users2 (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(30),
    user_email VARCHAR(50)
);
DROP TABLE users2;
INSERT INTO users2(user_id,user_name,user_email) VALUES(01,'kawsar','kawsar@gmail.com'),(02,'hasan','hasan@gmail.com')

SELECT * FROM users2;

CREATE Table "save_deleted_user" (
    user_email VARCHAR(50),
    deletedAt TIMESTAMP
)

SELECT * FROM save_deleted_user;


CREATE OR REPLACE FUNCTION check_salary()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO save_deleted_user VALUES(OLD.user_email, now());
RAISE NOTICE 'user save successful';
RETURN OLD;
END
$$;


CREATE TRIGGER before_insert_salary
BEFORE DELETE ON users2
FOR EACH ROW
EXECUTE FUNCTION check_salary();

DELETE FROM users2 WHERE user_id = 02;









