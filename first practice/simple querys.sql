CREATE DATABASE test_db;
DROP DATABASE test_db;

CREATE TABLE test_db.table_a (
		id INT PRIMARY KEY,
        firstname VARCHAR(40) NOT NULL,
        age INT,
        city varchar(40) DEFAULT NULL        
);

truncate table test_db.table_a;
drop table test_db.table_a;

INSERT INTO test_db.table_a (id, firstname, age, city)
VALUES (1,'Bilguun',30,'UB'), (2,'John',18,'Kiev') , (3,'Jane',17,null), (4,'uCrane',31,'Bucha');

SELECT * FROM test_db.table_a;
SELECT id,age FROM test_db.table_a;
SELECT id,age FROM test_db.table_a order by age ASC;
SELECT id,age FROM test_db.table_a order by age DESC;
SELECT id, firstname FROM test_db.table_a where id=1 ;
SELECT firstname, city FROM test_db.table_a where city is NOT NULL;
SELECT id, firstname, age FROM test_db.table_a where age BETWEEN 18 and 30;

UPDATE test_db.table_a SET city = 'update city' where id = 3;

DELETE FROM test_db.table_a where id = 3;

INSERT INTO test_db.table_a (id, firstname, age, city)
VALUES (3,'Jane',17,null);
