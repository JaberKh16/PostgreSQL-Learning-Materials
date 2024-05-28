-- add a new column
ALTER TABLE table_name ADD col_name VARCHAR(12) NOT NULL;

-- modify column
ALTER TABLE table_name ALTER COLUMN col_name SET NULL;

-- rename the columns
ALTER TABLE table_name RENAME COLUMN col_name TO new_col_name;

-- drop a column
ALTER TABLE table_name DROP COLUMN col_name;

-- rename a table
ALTER TABLE table_name RENAME TO new_table_name;



