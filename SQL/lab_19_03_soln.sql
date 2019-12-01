BEGIN
    $IF DBMS_DB_VERSION.VER_LE_10_1 $THEN
        $ERROR 'unsupported database release.'
    $END
    $ELSE
        DBMS_OUTPUT.PUT_LINE ('Release ' || DBMS_DB_VERSION.VERSION || '.' || DBMS_DB_VERSION.RELEASE || ' is supported.');
    $END
END;