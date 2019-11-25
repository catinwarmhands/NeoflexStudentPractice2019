SET SERVEROUTPUT ON
DECLARE
    v_max_deptno NUMBER;
    v_dept_name departments.department_name%TYPE := 'Education';
    v_dept_id NUMBER;
BEGIN
    SELECT MAX(department_id) INTO v_max_deptno FROM departments;
    v_dept_id := v_max_deptno;
    UPDATE departments SET location_id=3000 WHERE department_id=v_dept_id;
END;
/
SELECT * FROM departments where department_name = 'Education';
DELETE FROM departments where department_name = 'Education';