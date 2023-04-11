create table products(
	product_id int,
    product_name varchar(25),
    price decimal(4,2)
);
alter table products
add constraint 
unique(product_name);

insert into products
values(01,"Rice",29.90),(02,"Rajma",89.99),(03,"Maggie",09.89);

commit;
alter table products
modify price decimal(4,2) not null;

alter table products 
add constraint chk_price check(price>=5.00);

alter table products 
drop check chk_price;

insert into products
values(04,"tea",05.15);

insert into products
values(05,"Coffie",03.15);

alter table products
alter price set default 0; 


insert into products(product_id,product_name)
values(06,"water");

alter table products 
add column date datetime;

alter table products 
drop column date;

alter table products
add column date datetime default now(); 

alter table products
add constraint primary key(product_id);

insert into products(product_id,product_name,price)
values(7,"juice",10);

select * from products;