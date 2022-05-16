select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;


--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name , salary.monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id;

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.monthly_salary from employee_salary
join employees on employees.id = employee_salary.employee_id
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary, employees.employee_name from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select salary.monthly_salary, employees.employee_name from salary
join employee_salary on salary.id = employee_salary.salary_id
left join employees on employee_salary.employee_id = employees.id
where employee_name is null and monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.monthly_salary from salary
join employee_salary on employee_salary.employee_id = salary.id
right join employees on employee_salary.employee_id = employees.id
where monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

--7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java d%';

--8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%M%QA%';

--11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%A%QA%';

--12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Ju%';

--13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Mi%';

--14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Se%';

--15. ������� �������� Java �������������
select roles.role_name, salary.monthly_salary from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java d%';

--16. ������� �������� Python �������������
select roles.role_name, salary.monthly_salary from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior P%';

-- 18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle JavaS%';

-- 19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior Java d%';

--20. ������� �������� Junior QA ���������
select roles.role_name, salary.monthly_salary from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%QA%';

--21. ������� ������� �������� ���� Junior ������������
select avg(salary.monthly_salary) from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

--22. ������� ����� ������� JS �������������
select sum(salary.monthly_salary) from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaS%';

--23. ������� ����������� �� QA ���������
select min(salary.monthly_salary) from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--24. ������� ������������ �� QA ���������
select max(salary.monthly_salary) from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--25. ������� ���������� QA ���������
select count(employees.id) from roles   
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.role_id = employees.id
where roles.role_name like '%QA%';

-- 26. ������� ���������� Middle ������������
select count(employees.id) from roles   
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.role_id = employees.id
where roles.role_name like '%Mi%';

-- 27. ������� ���������� �������������
select count(employees.id) from roles   
join roles_employee on roles_employee.role_id = roles.id
join employees on roles_employee.role_id = employees.id
where roles.role_name like '%developer';

--28. ������� ���� (�����) �������� �������������.
select sum(salary.monthly_salary) from employees  
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
order by monthly_salary asc;

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id 
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;





