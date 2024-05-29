-- SQL Function
CREATE OR REPLACE FUNCTION function_name()
RETURNN return_type as 
$$
    SQL DML
$$
LANGUAGE SQL



ex -

CREATE OR REPLACE FUNCTION fn_add_ints(int, int) 
RETURNS int as
$$
	SELECT $1 + $2
$$
LANGUAGE SQL;


-- Perform DML Query

SELECT fn_add_ints(4, 5);


-- with parameter
CREATE OR REPLACE FUNCTION func_name(para1 data_type, para2 data_type)
RETURN SETOF return_type AS
$$
    SQL QUERY
$$
LANGUAGE SQL


ex-
CREATE OR REPLACE FUNCTION fn_get_person_info(cus_fname varchar, cus_lname varchar)
RETURNS SETOF actor AS
$$
	SELECT * 
	FROM actor
	WHERE first_name LIKE '%' || cus_fname || '%' 
	  AND last_name LIKE '%' || cus_lname || '%'
$$
LANGUAGE SQL;

SELECT fn_get_person_info('Ma', 'L');


-- return type possible values
1. any sql datatype
2. table type 
3. row return - called composite

-- to get row in table format
SELECT (func_name()).*;

-- to get multiple rows 
use keyword -> SETOF
