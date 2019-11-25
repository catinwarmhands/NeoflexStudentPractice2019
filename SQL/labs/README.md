# Решения лаб по PLSQL

## Лаба 1

1. г
2. ```sql
  SET SERVEROUTPUT ON
  BEGIN
  	DBMS_OUTPUT.PUT_LINE('Hello World');
  END;
  ```
![lab1](lab1.jpg)

## Лаба 2

1. Правильные: а,б,д,ж,з. Неправильные: в,г,е
2. б,в
3. б
4. ```sql
  SET SERVEROUTPUT ON
  DECLARE
    v_today DATE := SYSDATE;
    v_tomorrow v_today%TYPE;
  BEGIN
    v_tomorrow := v_today + 1;
    DBMS_OUTPUT.PUT_LINE('Hello World');
    DBMS_OUTPUT.PUT_LINE('Today: ' || v_today);
    DBMS_OUTPUT.PUT_LINE('Tomorrow: ' || v_tomorrow);
  END;
  ```
![lab2_1](lab2_1.jpg)
5. ```sql
  SET SERVEROUTPUT ON
  VARIABLE b_basic_percent NUMBER
  VARIABLE b_pf_percent NUMBER
  DECLARE
    v_today DATE := SYSDATE;
    v_tomorrow v_today%TYPE;
  BEGIN
    v_tomorrow := v_today + 1;
    DBMS_OUTPUT.PUT_LINE('Hello World');
    DBMS_OUTPUT.PUT_LINE('Today: ' || v_today);
    DBMS_OUTPUT.PUT_LINE('Tomorrow: ' || v_tomorrow);
    :b_basic_percent := 45;
    :b_pf_percent := 12;
  END;
  /
  PRINT b_basic_percent
  PRINT b_pf_percent
  ```
![lab2_2](lab2_2.jpg)

## Лаба 3

1. ```
а. v_weight == 2 (NUMBER)
б. v_new_locn == 'Western Europe' (VARCHAR2)
в. v_weight == 601 (NUMBER)
г. v_message == 'Product 10012 is in stock' (VARCHAR2)
д. v_new_locn вне зоны видимости
  ```
2. ```
а. customer == 201 (NUMBER)
б. name == 'Unisports' (VARCHAR2)
в. credit_rating == 'GOOD' (VARCHAR2)
г. customer == 'Womansport' (VARCHAR2)
д. name вне зоны видимости
  е. credit_rating == 'GOOD' (VARCHAR2)
  ```
3. ```sql
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
  ```
![lab3](lab3.jpg)