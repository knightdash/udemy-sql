CREATE DATABASE test_db;

CREATE TABLE test_db.department (
	`id` INT NOT NULL PRIMARY KEY,
    `name` varchar(40) NULL default 'noname'
);


CREATE TABLE test_db.employees (
	id INT NOT NULL PRIMARY KEY,
    firstname varchar(40) not null,
    age INT,
    city VARCHAR(255) DEFAULT NULL,
    department_id INT,
    CONSTRAINT `department_fk` foreign key (`department_id`) REFERENCES `test_db`.`department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION    
);


INSERT INTO test_db.department (id, name)
VALUES (1,'HR'), (2,'Marketing'), (3,'Development');

select * from test_db.department;

INSERT INTO test_db.employees (id, firstname, age, city, department_id)
VALUES (1,'Bilguun',30,'UB',3), (2,'John',18,'Kiev',3),(3,'Jane',17,null,2),(4,'uCrane',31,'Bucha',1);

INSERT INTO test_db.employees (id, firstname, age, city, department_id)
VALUES (5,'Bilguun',30,'UB',10);

Select * from test_db.employees;

select firstname, department_id from test_db.employees where id = 1;
select firstname, `name` from test_db.employees LEFT JOIN test_db.department ON employees.department_id = department.id;
select * from test_db.employees where id = 1 OR 1=1;

