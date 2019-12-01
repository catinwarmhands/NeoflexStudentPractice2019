SELECT employee_id, first_name, last_name, salary FROM employees WHERE job_id = 'IT_PROG';
UPDATE jobs SET min_salary = min_salary + 1000 WHERE job_id = 'IT_PROG';