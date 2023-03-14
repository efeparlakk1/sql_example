alter table sales.items
drop foreign key items_ibfk_1;

alter table sales.items
add foreign key (company_id) references companies(company_id) on delete cascade;

alter table customers
add unique key (email_address);

alter table customers
add column gender enum("M","F") after last_name;

insert into customers (first_name, last_name, gender, email_address, number_of_complaints)
values ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

insert into customers (first_name, last_name, gender, email_address)
values ('Efe', 'Parlak', 'M', 'efe.parlak365careers.com');

select * from sales.customers;
