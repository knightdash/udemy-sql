CREATE TABLE test_db.table_a (
		`id` INT NOT NULL,
        `name` VARCHAR(40) NULL DEFAULT 'Bilguun',
        PRIMARY KEY (`id`)
);

select * from new_schema.new_table;
select * from new_schema.new_table where id=1;
select `name` from new_schema.new_table where id=1;

INSERT INTO `new_schema`.`new_table` (`id`, `name`) VALUES ('3', 'test');

UPDATE `new_schema`.`new_table` SET `name` = 'abc' WHERE (`id` = '1');
UPDATE `new_schema`.`new_table` SET `name` = 'BUGD';

DELETE FROM `new_schema`.`new_table` WHERE (`id` = '3');

