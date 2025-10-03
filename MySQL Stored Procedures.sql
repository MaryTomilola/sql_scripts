-- Stored Procedures

SELECT*
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salary()
SELECT*
FROM employee_salary
WHERE salary >= 50000;

CALL large_salary();

-- DILIMITER
DELIMITER $$
CREATE PROCEDURE large_salary3()
BEGIN
	SELECT*
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT*
	FROM employee_salary
	WHERE salary >= 50000;
END $$
DELIMITER ;

CALL large_salary3();


DELIMITER $$
CREATE PROCEDURE large_salaries4(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id
	;
END $$
DELIMITER ;

CALL large_salaries4(1)
