EXECUTE add_employee('Joe', 'Harris', 'JAHARRIS', p_deptid => 80)
SELECT first_name, last_name, email FROM employees WHERE first_name = 'Joe';
EXECUTE add_employee('Jane', 'Harris', 'JAHARRIS', p_deptid => 15)