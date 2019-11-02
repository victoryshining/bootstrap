/*create database if not exists bank;
use bank;
*/

create table if not exists account
(
account_number char(5) not null primary key,
branch_name varchar(10),
balance double
);

create table if not exists branch
(
branch_name varchar(10) not null primary key,
branch_city varchar(10),
assets double
);

create table if not exists customer
(
customer_name varchar(20) not null primary key,
customer_street varchar(20),
customer_city varchar(10)
);

create table if not exists loan
(
loan_number varchar(5) not null primary key,
branch_name varchar(10),
amount double
);

create table if not exists borrower
(
customer_name varchar(20) not null,
loan_number varchar(5) not null,
primary key(customer_name, loan_number)
);


create table if not exists depositor
(
customer_name varchar(20) not null,
account_number char(5) not null,
primary key(customer_name, account_number)
);


create table if not exists employee
(
employee_name varchar(20) not null,
branch_name varchar(10) not null,
salary double,
primary key(employee_name,branch_name)
);
