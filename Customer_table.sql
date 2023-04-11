use mydb;
create table customers(
	customer_id int primary key auto_increment,
    customer_name varchar(30),
    customer_pno varchar(10)
);

insert into customers(customer_name,customer_pno)
values("Riya Goel","7404030898"),("Tanu","932871801"),("shubh singla","6263816389"),("triom kumar","9404382322");

commit;

select * from customers;