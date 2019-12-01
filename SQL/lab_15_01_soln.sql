BEGIN
    emp_pkg.get_employees(30);
    emp_pkg.show_employees;
    emp_pkg.get_employees(60);
    emp_pkg.show_employees;
END;