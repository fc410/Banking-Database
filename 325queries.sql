/*
Fernando Crespo
CS 325 - Fall 2020
December 10th, 2020
*/
spool 325query-results.txt;

SET LINESIZE 1000;


PROMPT How much time is everyone taking for each transaction or visit;
SELECT (closedDate - openDate) AS Duration
FROM depositAccount;

PROMPT What is the name of the officer that created accNum 1;
SELECT officerName
FROM Officer
WHERE empl_ID = 
	(SELECT officerID 
	 FROM Account
	 WHERE accNum = 1);

PROMPT Which Accounts has more that $50000 in their account;
SELECT AccNum, custID, accType
FROM Account
WHERE Balance > 50000;

PROMPT Which customers make than $50000 salary and is a female;
SELECT cust_ID, name, contact
FROM Customer
WHERE salary > 50000 AND gender = 'Female';

PROMPT Who is the officer for each manager;
SELECT managerName, officerName
FROM Manager
INNER JOIN Officer
ON Manager.officerID = Officer.empl_ID;

PROMPT What is the average salary from the customers;
SELECT AVG(salary)
FROM Customer;

PROMPT Checking to see if anyone is below the age of 18;
SELECT * 
FROM Customer
WHERE DOB > '01-JAN-2002';

PROMPT Which customer is good on their monthly loan payments;
SELECT acc_num, totalAmount
FROM LoanAccount
WHERE status = 'Good';

spool off;
