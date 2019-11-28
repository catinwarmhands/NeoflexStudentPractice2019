CREATE OR REPLACE PROCEDURE employee_report(
    p_dir VARCHAR2,
    p_filename VARCHAR2) IS
    f UTL_FILE.FILE_TYPE;
BEGIN
    f := UTL_FILE.FOPEN(p_dir, p_filename, 'W');
    UTL_FILE.PUT_LINE(f, 'Employees who earn more than average salary: ');
    UTL_FILE.PUT_LINE(f, 'REPORT GENERATED ON ' || SYSDATE);
    UTL_FILE.NEW_LINE(f);
    FOR emp IN (SELECT last_name, department_id, salary FROM employees
    WHERE salary > (SELECT AVG(salary) FROM employees) ORDER BY department_id) LOOP
        UTL_FILE.PUT_LINE(f,
        RPAD(emp.last_name, 30) || ' ' ||
        LPAD(NVL(TO_CHAR(emp.department_id, '9999'), '-'), 5) || ' ' ||
        LPAD(TO_CHAR(emp.salary, '$99,999.00'), 12));
    END LOOP;
    UTL_FILE.NEW_LINE(f);
    UTL_FILE.PUT_LINE(f, '*** END OF REPORT ***');
    UTL_FILE.FCLOSE(f);
END employee_report;
/
CREATE OR REPLACE DIRECTORY DESKTOP_DIR AS 'D:\desktop';
EXECUTE employee_report('DESKTOP_DIR', 'salary.txt')