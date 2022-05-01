-- As the image illustrates, your schema should contain the following three tables:

-- * `department`

--     * `id`: `INT PRIMARY KEY`

--     * `name`: `VARCHAR(30)` to hold department name

-- * `role`

--     * `id`: `INT PRIMARY KEY`

--     * `title`: `VARCHAR(30)` to hold role title

--     * `salary`: `DECIMAL` to hold role salary

--     * `department_id`: `INT` to hold reference to department role belongs to

-- * `employee`

--     * `id`: `INT PRIMARY KEY`

--     * `first_name`: `VARCHAR(30)` to hold employee first name

--     * `last_name`: `VARCHAR(30)` to hold employee last name

--     * `role_id`: `INT` to hold reference to employee role

--     * `manager_id`: `INT` to hold reference to another employee that is the manager of the current employee (`null` if the employee has no manager)
DROP DATABASE IF EXISTS emptracker_db;
CREATE DATABASE emptracker_db;

USE emptracker_db;

CREATE TABLE department (
  id INT NOT NULL  PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  role_id INT,
  manager_id INT NOT NULL
);

CREATE TABLE role (
  id INT PRIMARY KEY,
  title VARCHAR(30)
  salary DECIMAL
  department_id INT
);
