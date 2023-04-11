create database mydb;
use mydb;
create table employees(
	employee_ID int,
    first_name varchar(20),
	last_name varchar(20),
    hourly_pay decimal(5,2),
    hire_date date
);
select * from employees;
alter table employees
add phone_number varchar(10);
alter table employees
add email varchar(20)
after last_name;

alter table employees
drop column email;

insert into employees
values(1,"manpreet","singh",10.50,"2021-01-01","9872927091"),(2,"himanshi","upadhya",20.50,"2021-09-02","6284719738"),(3,"triom","kumar",19.50,"2020-10-01","6872923090"),(4,"karan","singh",15.52,"2021-02-01","9873628198");
select * from employees;


insert into employees (employee_ID,first_name,last_name,phone_number)
values(5,"saurabh","sharma","8289419483");

insert into employees(hourly_pay,hire_date)values(30.12,"2023-02-01");

select employee_Id , first_name from employees;
select * from employees where hourly_pay > 15;

UPDATE employees
set hourly_pay = 30.78,hire_date = "2023-03-01"
where employee_ID = 5;

delete from employees
where employee_ID is null;

set autocommit = off;
commit;
delete from employees;
rollback;

select * from employees;

insert into employees
value(6,"sourav","kaushal",19.98,current_date(),"7288299123");
