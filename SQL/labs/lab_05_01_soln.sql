SET SERVEROUTPUT ON
BEGIN
    FOR i in 1..10 LOOP
        IF i NOT IN (6, 8) THEN
            INSERT INTO messages VALUES (i);
        END IF;
    END LOOP;
    COMMIT;
END;
/
SELECT * FROM messages;