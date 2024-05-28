-- normal selecttion all
SELECT * FROM table_name;


-- specific columns selection
SELECT col1, col3 FROM table_name;


-- order selecttion
SELECT * FROM table_name 
ORDER BY col_name ASC|DESC


-- limit selection
SELECT * FROM table_name
WHERE col1 > 12 AND col2 < 20
LIMIT 5

-- aliases 
SELECt CONCAT(col1, '', col2) AS alias_name, col3, col4
FROM table_name
WHERE col_name = 'value';

-- group by selection
SELECT col1, SUM(col2) AS alias_name
FROM table_name
WHERE col1 = value
GROUP BY col1;


-- distince selection
SELECT DISTINCT col_name 
FROM table_name
WHERE col_name != 'value'
ORDER By col_name;


