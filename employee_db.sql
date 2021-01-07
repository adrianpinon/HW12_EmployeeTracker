DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
  id int NOT NULL AUTO_INCREMENT,
  dptname VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee_role (
  id int NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  dpt_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id int NOT NULL AUTO_INCREMENT,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (id)
);

INSERT INTO department (dptname)
VALUES ('Sales'),
       ('Engineering'),
       ('Financial'),
       ('Legal');
       
INSERT INTO employee_role (title, salary, dpt_id)
VALUES ('Sales Lead', '115000', 1),
	   ('Salesperson', '100000', 1),
       ('Lead Engineer', '145000', 2),
       ('Software Engineer', '125000', 2),
       ('Accountant', '110000', 3),
       ('Legal Team Lead', '190000', 4),
       ('Lawyer', '160000', 4);
       
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Susan', 'Yancura', 1, 3),
		('Dan', 'Rather', 2, 1),
        ('Bobbi', 'Brown', 3, null),
        ('Denver', 'Oliver', 4, 3),
        ('Anthony', 'Valconi', 5, null),
        ('Bridgette', 'Point', 6, null),
        ('Ruby', 'Nancy', 7, 7),
        ('Michael', 'Doogen', 4, 6);