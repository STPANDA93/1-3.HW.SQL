--1.Создать таблицу employees
--id. serial,  primary key,
--employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--2. Наполнить таблицу employee 70 строками

insert into employees(employee_name)
values ('Richard Walton'),
       ('William Schultz'),
       ('Benjamin Cunningham'),
       ('Alfredo Sparks'),
       ('Claude Spencer'),
       ('Barbara Alexander'),
       ('Dawn Ramos'),
       ('Jonathan Burgess'),
       ('Marcia Atkins'),
       ('Zachary Brady'),
       ('Nancy Hamilton'),
       ('Susan Sullivan'),
       ('Sandra Wilson'),
       ('Kathleen Jackson'),
       ('Pamela Gibbs'),
       ('William Owens'),
       ('Thomas Henderson'),
       ('Tony Kelly'),
       ('Don Freeman'),
       ('Amanda Hayes'),
       ('Curtis May'),
       ('James Robinson'),
       ('Natalie Thomas'),
       ('Ruth Jenkins'),
       ('Vincent Turner'),
       ('Thomas Williams'),
       ('Christopher Moore'),
       ('Samuel Scott'),
       ('Anthony Moore'),
       ('Carole Price'),
       ('Tara Wilson'),
       ('Sharon Gonzalez'),
       ('Wayne Aguilar'),
       ('Mary Allen'),
       ('Ruth Taylor'),
       ('Victor Perez'),
       ('James Perry'),
       ('Christopher Briggs'),
       ('Heather Garcia'),
       ('Ellen Brown'),
       ('Robert Hawkins'),
       ('Cynthia Richardson'),
       ('Leslie Brown'),
       ('Cheryl Morgan'),
       ('Linda Weaver'),
       ('Linda Bass'),
       ('Maria Smith'),
       ('Daniel Byrd'),
       ('Janice Guzman'),
       ('Clinton Mitchell'),
       ('Carol White'),
       ('Kimberly Williams'),
       ('Jacqueline Bowen'),
       ('Rita Vasquez'),
       ('Rachel Jones'),
       ('Phyllis Taylor'),
       ('Karen Mack'),
       ('Robert Ortiz'),
       ('Richard Brown'),
       ('Ruth Howell'),
       ('Janet Woods'),
       ('Robert Lewis'),
       ('Lydia Reynolds'),
       ('Justin Guzman'),
       ('Jennifer Campbell'),
       ('Eduardo Turner'),
       ('Sharon Richardson'),
       ('Ruby Jones'),
       ('Eric Ballard'),
       ('Mark Parks');
       
select * from employees;

--3. Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);
	
--4. Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
values (1000),
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

--5. Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. Наполнить таблицу employee_salary 40 строками:
  - в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),       
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 21),
       (22, 22),
       (23, 23),
       (24, 24),
       (25, 25),
       (26, 26),
       (27, 27),
       (28, 28),
       (29, 29),
       (30, 30),
       (71, 31),
       (72, 32),
       (73, 33),
       (74, 34),
       (75, 35),
       (76, 36),
       (77, 37),
       (78, 38),
       (79, 39),
       (80, 40);
      
select * from employee_salary;

--7. Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique
       
create table roles(
	id serial primary key,
	role_name int not null unique
);

--8. Поменять тип столба role_name с int на varchar(30)

select * from roles;

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

--9. Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values ('Junior Python developer'),
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
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
      
--10. Создать таблицу roles_employee
  - id. Serial  primary key,
  - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
  - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
      
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
    foreign key(role_id)
    	references roles(id)
);  

select * from roles_employee;

--11. Наполнить таблицу roles_employee 40 строками.

insert into roles_employee(employee_id, role_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),       
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 1),
       (22, 2),
       (23, 3),
       (24, 4),
       (25, 5),
       (26, 6),
       (27, 7),
       (28, 8),
       (29, 9),
       (30, 10),
       (31, 11),
       (32, 12),
       (33, 13),
       (34, 14),
       (35, 15),
       (36, 16),
       (37, 17),
       (38, 18),
       (39, 19),
       (40, 20);
