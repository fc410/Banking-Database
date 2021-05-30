/*
Fernando Crespo
12/01/2020
*/
spool 325results-contents.txt;

SET LINESIZE 1000e;

SELECT Accnum, accType, Balance, accType
FROM Account;

SELECT AccNum, cust_ID, depositAccType, currBalance
FROM DepositAccount;

SELECT Cust_ID, salary, name, email
FROM Customer;

SELECT transactionID, acc_num, totalBalance
FROM Transaction;

SELECT empl_ID, email, name
FROM Officer;

SELECT acc_num, loan_ID, duration, status
FROM LoanAccount;

SELECT empl_ID, email, name, salary
FROM Manager;

SELECT *
FROM Interest;

spool off;
