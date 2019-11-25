SET SERVEROUTPUT ON
--VARIABLE b_basic_percent NUMBER
--VARIABLE b_pf_percent NUMBER
DECLARE
    v_basic_percent NUMBER := 45;
    v_pf_percent NUMBER := 12;
    v_fname VARCHAR2(15);
    v_emp_sal NUMBER(10);
BEGIN
    SELECT first_name, salary INTO v_fname, v_emp_sal
    FROM employees WHERE employee_id=110;
    DBMS_OUTPUT.PUT_LINE('Hello '|| v_fname);
    DBMS_OUTPUT.PUT_LINE('Salary : '||v_emp_sal);
    DBMS_OUTPUT.PUT_LINE('Pf: ' ||v_emp_sal*v_basic_percent/100*v_pf_percent/100);
    /*
    :b_basic_percent := 45;
    :b_pf_percent := 12;
    */
END;