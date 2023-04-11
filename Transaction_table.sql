create table transaction(
	transaction_id int primary key auto_increment,
    amount decimal(6,2),
    customer_id int,
    foreign key(customer_id) references customers(customer_id)
);

insert into transaction(amount,customer_id)
values(900.12,1),(23.9,3),(1223.2,4),(127.98,2);

commit;

delete from transaction where customer_id = 4;

select * from transaction;