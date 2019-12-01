EXECUTE table_pkg.make('my_contacts', 'id number(4), name varchar2(40)')
DESCRIBE my_contacts
BEGIN
    table_pkg.add_row('my_contacts', '1, ''Lauran Serhal''', 'id, name');
    table_pkg.add_row('my_contacts', '2, ''Nancy''', 'id, name');
    table_pkg.add_row('my_contacts', '3, ''Sunitha Patel''' ,'id,name');
    table_pkg.add_row('my_contacts', '4, ''Valli Pataballa''' ,'id,name');
END;
/
SELECT * FROM my_contacts;
EXECUTE table_pkg.del_row('my_contacts', 'id=1')
EXECUTE table_pkg.upd_row('my_contacts','name=''Nancy Greenberg''','id=2')
SELECT * FROM my_contacts;
EXECUTE table_pkg.remove('my_contacts')
DESCRIBE my_contacts