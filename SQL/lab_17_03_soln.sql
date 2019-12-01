--EXECUTE emp_pkg.add_employee('Steve', 'Morse', 'SMORSE', p_sal => 6500)
SELECT * FROM employees WHERE last_name = 'Morse';