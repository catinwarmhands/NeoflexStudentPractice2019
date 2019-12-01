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