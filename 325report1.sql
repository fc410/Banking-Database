/*
Fernando Crespo
CS 325 - Fall 2020
December 11th, 2020
*/
spool 325reports1-results.txt;

SET LINESIZE 250;
SET PAGESIZE 20;
TTITLE LEFT 'Banking Analysis' CENTER 12 DEC 2020 -
RIGHT 'Page:' FORMAT 999 SQL.PNO SKIP;
BTITLE CENTER 'Analysis End';

PROMPT Analysis 1:;
PROMPT I want to know all the account numbers that are late on their;
PROMPT monthly loan payments;
SELECT acc_Num AS "Account Number", totalAmount AS "Dept Owed", status
FROM LoanAccount
WHERE status = 'Late';

SET LINESIZE 250;
PROMPT Analysis 2:;
PROMPT Give me the officer that oversees each manager;
SELECT officerName, managerName
FROM Manager
INNER JOIN Officer
ON Manager.officerID = Officer.empl_ID;


PROMPT Analysis 3:;
PROMPT I want to find out the name from a particular cutomer ID;
SELECT accNum, cust_ID ,name, DOB, contact
FROM Account
INNER JOIN Customer
ON Account.custID = Customer.Cust_ID;

spool off;
