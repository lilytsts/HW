-- 1.Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE
);

drop table employees;

drop table salary;

drop table employee_salary

drop table roles

drop table roles_employee


-- 2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values  
		('Alec'),
		('Alden'),
		('Alvin'),
		('Aidan'),
		('Archer'),
		('Arlen'),
		('Alton'),
		('Aloysius'),
		('Axel'),
		('Alaric'),
		('Basil'),
		('Bryce'),
		('Brendan'),
		('Bennett'),
		('Brayden'),
		('Beau'),
		('Blaise'),
		('Bram'),
		('Bjorn'),
		('Caden'),
		('Carter'),
		('Callum'),
		('Colin'),
		('Conrad'),
		('Cyrus'),
		('Cillian'),
		('Calvin'),
		('Camden'),
		('Cassius'),
		('Dante'),
		('Damian'),
		('Darian'),
		('Declan'),
		('Derrick'),
		('Darian'),
		('Dennis'),
		('Donovan'),
		('Darryl'),
		('Dawson'),
		('Darian'),
		('Ethan'),
		('Elias'),
		('Ezra'),
		('Emery'),
		('Everett'),
		('Enzo'),
		('Eamon'),
		('Eldon'),
		('Erick'),
		('Felix'),
		('Finn'),
		('Forrest'),
		('Franklin'),
		('Frederick'),
		('Gavin'),
		('Gage'),
		('Grayson'),
		('Grant'),
		('Graham'),
		('Gabriel'),
		('Garrison'),
		('Garrett'),
		('Gideon'),
		('Gerald'),
		('Harrison'),
		('Hudson'),
		('Hayden'),
		('Harlan'),
		('Holden'),
		('Henry');


select * from employees;	
	
-- 3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4.Наполнить таблицу salary 16 строками:
insert into salary (monthly_salary)
values  
		(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

select * from salary;
	
-- 5.Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null 
);

select * from employee_salary;

-- 6.Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values  
		(1, 15),
		(2, 14),
		(3, 13),
		(4, 12),
		(5, 11),
		(6, 10),
		(7, 9),
		(8, 8),
		(9, 7),
		(10, 6),
		(11, 5),
		(12, 4),
		(13, 3),
		(14, 2),
		(15, 1),
		(16, 15),
		(17, 14),
		(18, 13),
		(19, 12),
		(20, 11),
		(21, 10),
		(22, 9),
		(23, 8),
		(24, 7),
		(25, 6),
		(26, 5),
		(27, 4),
		(28, 3),
		(29, 2),
		(71, 1),
		(72, 15),
		(73, 14),
		(74, 13),
		(75, 12),
		(76, 11),
		(77, 10),
		(78, 9),
		(79, 8),
		(80, 7),
		(40, 6);
	
select * from employee_salary;

-- 7.Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- 8.Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar(30);

select * from roles;

-- 9.Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values  
		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Desinger'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;

-- 10.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
		references employees(id),
	role_id int not null,	
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- 11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values  (24, 1),
		(69, 2),
		(50, 11),
		(67, 4),
		(66, 6),
		(33, 14),
		(58, 7),
		(41, 8),
		(26, 9),
		(61, 10),
		(49, 11),
		(42, 2),
		(27, 13),
		(47, 14),
		(23, 5),
		(39, 16),
		(48, 17),
		(17, 3),
		(13, 4),
		(68, 20),
		(31, 1),
		(7, 12),
		(55, 3),
		(32, 4),
		(46, 5),
		(38, 16),
		(35, 7),
		(56, 8),
		(70, 19),
		(16, 10),
		(57, 11),
		(59, 12),
		(52, 13),
		(51, 1),
		(18, 5),
		(44, 16),
		(43, 17),
		(28, 18),
		(53, 2),
		(60, 3);
		
	select * from roles_employee;