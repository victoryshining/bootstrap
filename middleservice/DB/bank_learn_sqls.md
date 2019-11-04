## create view
create view full_customer as select account.account_number, depositor.customer_name, account.balance from account, depositor where account.account_number=depositor.account_number;

## union 
select customer_name from depositor union (select customer_name from borrower);

## 
