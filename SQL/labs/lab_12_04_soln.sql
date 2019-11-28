EXECUTE emp_pkg.add_employee('James', 'Bond', 15)
INSERT INTO departments (department_id, department_name) VALUES (15, 'Security');
COMMIT;
EXECUTE emp_pkg.add_employee('James', 'Bond', 15)
EXECUTE EMP_PKG.INIT_DEPARTMENTS
EXECUTE emp_pkg.add_employee('James', 'Bond', 15)