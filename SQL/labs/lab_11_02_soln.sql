EXECUTE emp_pkg.add_employee('Jane', 'Harris','JAHARRIS', p_deptid => 15)
EXECUTE emp_pkg.add_employee('David', 'Smith','DASMITH', p_deptid => 80)
SELECT * FROM employees WHERE last_name = 'Smith';