SET SERVEROUTPUT ON
DECLARE
    v_country_record countries%ROWTYPE;
    v_countryid varchar2(2):= 'CA';
BEGIN
    SELECT * INTO v_country_record FROM countries
    WHERE country_id = UPPER(v_countryid);
    DBMS_OUTPUT.PUT_LINE('Country Id: ' || v_country_record.country_id);
    DBMS_OUTPUT.PUT_LINE('Country Name: ' || v_country_record.country_name);
    DBMS_OUTPUT.PUT_LINE('Region: ' || v_country_record.region_id);
END;