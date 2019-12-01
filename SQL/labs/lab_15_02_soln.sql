EXECUTE emp_pkg.add_employee('Max', 'Smart', 20)
EXECUTE emp_pkg.add_employee('Clark', 'Kent', 10)
ROLLBACK;
SELECT * FROM employees WHERE last_name IN ('Kent', 'Smart');
SELECT * FROM log_newemp;