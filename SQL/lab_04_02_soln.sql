SET SERVEROUTPUT ON
DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.department_name%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
    SELECT MAX(department_id) INTO v_max_deptno FROM departments;
    v_dept_id := v_max_deptno + 10;
    INSERT INTO departments(department_name, department_id, location_id)
    VALUES (v_dept_name, v_dept_id, NULL);
    DBMS_OUTPUT.PUT_LINE('Rows inserted: ' || SQL%ROWCOUNT);
END;
/
SELECT * FROM departments where department_name = 'Education';