create database college;
use college;
create table dept(dept_id int,dept_name varchar(200));
insert into dept(dept_id, dept_name)value
(1, "maths" );
SET SQL_SAFE_UPDATES = 0;
insert into dept(dept_id, dept_name)values
(2, "social" ),
(3, "coputer science" ),
(4, "english" );
UPDATE dept 
SET 
    dept_name = 'commerce'
WHERE
    dept_id = 2;


