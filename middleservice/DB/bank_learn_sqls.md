## create view
create view depoist_customer as select account.account_number, depositor.customer_name, account.balance from account, depositor where account.account_number=depositor.account_number;

作业：把customer的信息也加进去
create view full_customer as select account.account_number, depositor.customer_name, account.balance, customer.customer_street, customer.customer_city from account, depositor,customer where account.account_number=depositor.account_number and depositor.customer_name = customer.customer_name;

## union 
select customer_name from depositor union (select customer_name from borrower);

## 
