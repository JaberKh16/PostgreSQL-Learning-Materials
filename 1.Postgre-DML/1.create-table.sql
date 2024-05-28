-- create table
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    department VARCHAR(20) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE
);

