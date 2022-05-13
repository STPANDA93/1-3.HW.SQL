# SQL HomeWork2
## SQL_DDL операции

`Таблица employees`

1. Создать таблицу employees
  - id. serial,  primary key,
  - employee_name. Varchar(50), not null

2. Наполнить таблицу employee 70 строками.


`Таблица salary`

3. Создать таблицу salary
  - id. Serial  primary key,
  - monthly_salary. Int, not null

4. Наполнить таблицу salary 15 строками:
  - 1000
  - 1100
  - 1200
  - 1300
  - 1400
  - 1500
  - 1600
  - 1700
  - 1800
  - 1900
  - 2000
  - 2100
  - 2200
  - 2300
  - 2400
  - 2500


`Таблица employee_salary`

5. Создать таблицу employee_salary
  - id. Serial  primary key,
  - employee_id. Int, not null, unique
  - salary_id. Int, not null

6. Наполнить таблицу employee_salary 40 строками:
  - в 10 строк из 40 вставить несуществующие employee_id

`Таблица roles`

7. Создать таблицу roles
  - id. Serial  primary key,
  - role_name. int, not null, unique

8. Поменять тип столба role_name с int на varchar(30)

9. Наполнить таблицу roles 20 строками:
  - Junior Python developer
  - Middle Python developer
  - Senior Python developer
  - Junior Java developer
  - Middle Java developer
  - Senior Java developer
  - Junior JavaScript developer
  - Middle JavaScript developer
  - Senior JavaScript developer
  - Junior Manual QA engineer
  - Middle Manual QA engineer
  - Senior Manual QA engineer
  - Project Manager
  - Designer
  - HR
  - CEO
  - Sales manager
  - Junior Automation QA engineer
  - Middle Automation QA engineer
  - Senior Automation QA engineer


`Таблица roles_employee`

10. Создать таблицу roles_employee
  - id. Serial  primary key,
  - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
  - role_id. Int, not null (внешний ключ для таблицы roles, поле id)

11. Наполнить таблицу roles_employee 40 строками.


