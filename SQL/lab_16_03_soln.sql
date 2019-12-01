EXECUTE emp_pkg.add_employee('Eleanor', 'Beh', 'EBEH', p_job => 'IT_PROG', p_sal => 5000);
UPDATE employees SET salary = salary + 2000 WHERE job_id = 'IT_PROG';
UPDATE employees SET salary = 9000 WHERE employee_id = (SELECT employee_id FROM employees WHERE last_name = 'Beh');
UPDATE employees SET job_id = 'ST_MAN' WHERE employee_id = (SELECT employee_id FROM employees WHERE last_name = 'Beh');