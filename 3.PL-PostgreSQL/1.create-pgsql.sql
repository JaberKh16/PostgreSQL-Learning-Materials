-- PL/pgsql syntax
CREATE OR REPLACE FUNCTION func_name(para1 data_type, para2 data_type)
RETURNS retunr_type AS
$$
BEGIN
	SQL DML
END
$$
LANGUAGE plpgsql


ex- 
CREATE OR REPLACE FUNCTION fn_get_person_info(cus_fname varchar, cus_lname varchar)
RETURNS SETOF actor AS
$$
DECLARE
    -- declare variables
    search_fname actor.first_name%TYPE;
    search_lname actor.last_name%TYPE;
BEGIN
    -- assign values to variable
    search_fname := '%' || cus_fname || '%';
    search_lname := '%' || cus_lname || '%';
    
    RETURN QUERY
    SELECT * 
    FROM actor
    WHERE first_name LIKE search_fname AND last_name LIKE search_lname;
END;
$$
LANGUAGE plpgsql;


SELECT (fn_get_person_info('Ma', 'L')).


