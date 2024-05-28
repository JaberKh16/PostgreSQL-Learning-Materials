-- create custom data - Type
CREATE TYPE type_name as enum
('Male', 'Female')

-- assign to some column
ALTER TABLE table_name
ALTER COLUMN col_name TYPE type_name USING
col_name::type_name;
