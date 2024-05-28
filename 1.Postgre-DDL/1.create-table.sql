-- create table
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    department VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE,
    state CHAR(2) NOT NULL DEFAULT('BN'),
    join_date DATE NULL,
    sex_type CHAR(1) NOT NULL,
    data_inserted TIMESTAMP NOT NULL,
);


-- create table with references
CREATE TABLE department(
    dept_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    worked_emp_id INTEGER REFERENCES emp_type(id)
);


-- create custom data type - Type
CREATE TYPE type_name as enum 
('val_1', 'val_2');


-- create index 
CREATE INDEX col_name ON table_name(col_name);


