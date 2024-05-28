-- logical operator with sql

1. OR
2. AND
3. NOT

-- arithmetic operators with sql

1. >, <
2. >= , <=
3. !=
4. =
5. ==

-- other types comparsion

1. SIMILAR TO
2. LIKE



-- regex type comparision
SELECT * FROM table_name
WHERE col_name ~ 'regex_expression';




Example:

1.
  SELECT CONCAT(first_name, '', last_name) AS fullname, last_update
  FROM actor
  WHERE last_update >= '2013-05-22' OR last_update <='2013-05-24'
  ORDER BY actor_id DESC;

