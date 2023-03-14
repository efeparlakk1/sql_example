use Sales;

drop table sales;
drop table items;
drop table companies;
drop table customers;

create table customers
(
	customer_id int auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
primary key (customer_id)
);

alter table customers
change column number_of_complaints number_of_complaints int default 0;

create table companies
(
	company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number int(12),
primary key (company_id)
);

create table items
(
	item_code varchar(255),
    item varchar(255),
    unit_price numeric(10, 2),
    company_id varchar(255),
primary key (item_code),
foreign key (company_id) references companies(company_id) on delete cascade
);

create table sales
(
	purchase_number int,
    date_of_purchase date,
    customer_id int,
    item_code varchar(10),
primary key (purchase_number),
foreign key (item_code) references items(item_code) on delete cascade,
foreign key (customer_id) references customers(customer_id) on delete cascade
);







    
    