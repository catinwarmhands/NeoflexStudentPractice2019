SET SERVEROUTPUT ON
BEGIN
    DBMS_OUTPUT.PUT_LINE(DBMS_WARNING.GET_CATEGORY(5050));
    DBMS_OUTPUT.PUT_LINE(DBMS_WARNING.GET_CATEGORY(6075));
    DBMS_OUTPUT.PUT_LINE(DBMS_WARNING.GET_CATEGORY(7100));
END;