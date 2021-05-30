--Populating all my tables
--alt a to set marker to copy
--alt ^ to copy
--ctrl u to paste

PROMPT populating the Account table;

INSERT INTO Account
VALUES
(1, 'Savings', 1234, 2000, 0.08, '01-JAN-20 08:00:10.43', 4321, 1000, 12341);


INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(2, 'Checkings', 1235, 10000.23, 0.05, '01-JAN-19 09:36:40.44', 4322, 500, 12342);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(3, 'Savings', 1236, 250000.32, 0.04, '01-JAN-17 06:54:22.00',4323 , 10000,12343);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(4, 'Checkings', 1237, 1000, 0.05, '01-JAN-18 03:25:55.18', 4324, 50, 12344);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(5, 'Checkings', 1238, 5425.6, 0.05, '14-JULY-95 11:00:10.43', 4325, 500, 12345);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(6, 'Checkings', 1239, 5460.76, 0.05, '01-JAN-17 10:23:10.33', 4326, 100, 12346);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount,officerID) VALUES
(7, 'Checkings', 1240, 1000000.56, 0.05, '01-JAN-16 08:45:10.34', 4327, 30000, 12347);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(8, 'Checkings', 1241, 109430, 0.05, '06-MAY-95 09:32:15.33', 4328, 10000, 12348);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(9, 'Checkings', 1242, 20300.99, 0.05, '01-JAN-15 10:45:14.11', 4329, 5000,12349);

INSERT INTO Account
(AccNum, accType, custID, Balance, interestRate, openDate, interest_ID,
 interestAmount, officerID) VALUES
(10, 'Checkings', 1243, 200, 0.05, '01-JAN-14 04:14:40.22', 4330, 1000,12350);

PROMPT Deposit Account;

INSERT INTO DepositAccount
(AccNum, interestID, init_amount, cust_ID, depositAccType, depositAccNum,currBalance,  openDate, closedDate) VALUES
(1, 4321, 50, 1234 , 'Savings', 1111, 2000, '01-JAN-17 10:13:18.10', '01-JAN-17 10:19:18.30');

INSERT INTO DepositAccount
VALUES
(2, 4322, 100, 1235, 'Checkings', 1112, 10000.23, 0.05, '01-FEB-2020 05:30:00.00', '01-FEB-2020 06:35:25.25');

INSERT INTO DepositAccount
VALUES
(3, 4323, 100, 1236, 'Savings', 1113, 250000.32, 0.04, '01-FEB-2020 04:30:00.00', '01-FEB-2020 04:45:15.53');  

INSERT INTO DepositAccount
VALUES
(4, 4324, 100, 1237, 'Checkings', 1114, 1000, 0.05, '01-FEB-2020 03:30:00.00', '01-FEB-2020 03:38:07.31');

INSERT INTO DepositAccount
VALUES
(5, 4325, 100, 1238, 'Checkings', 1115, 5425.6, 0.05, '01-FEB-2020 02:30:00.00', '01-FEB-2020 02:55:19.50');

INSERT INTO DepositAccount
VALUES
(6, 4326, 100, 1239, 'Checkings', 1116, 5460.76, 0.05, '01-FEB-2020 01:30:00.00', '01-FEB-2020 01:34:11.35');

INSERT INTO DepositAccount
VALUES
(7, 4327, 100, 1240, 'Checkings', 1117, 10000.23, 0.05, '01-FEB-2020 12:30:00.00', '01-FEB-2020 12:33:17.28');

INSERT INTO DepositAccount
VALUES
(8, 4328, 100, 1241, 'Checkings', 1118, 10000.23, 0.05, '01-FEB-2020 11:30:00.00', '01-FEB-2020 11:55:42.12');

INSERT INTO DepositAccount
VALUES
(9, 4329, 100, 1242, 'Checkings', 1119, 10000.23, 0.05, '01-FEB-2020 10:30:00.00', '01-FEB-2020 10:39:40.45');

INSERT INTO DepositAccount
VALUES
(10, 4330, 100, 1243, 'Checkings', 1120, 10000.23, 0.05, '01-FEB-2020 09:30:00.00', '01-FEB-2020 09:45:06.56');


PROMPT Customer Table;

INSERT INTO Customer
VALUES
('740 Sussex Court, REIDSVILLE NC 27320', 'Kirby, Ross', 1234, '24-JUL-90', 'Male', 'Ross@gmail.com', '457-92-7897', 'American', 50000);

INSERT INTO Customer
VALUES
('2224 Pretty View Lane, Arcata CA 95521', 'Senter, Robert', 1235, '12-JUN-80', 'Male', 'Robert@gmail.com', '707-432-3456', 'Mexican', 60000);

INSERT INTO Customer
VALUES
('4665 Harper Street, Arcata, CA 95521 ', 'Rodriguez, Maria', 1236, '03-APR-89', 'Female', 'Maria@gmail.com', '707-646-6545', 'Mexican', 65000);

INSERT INTO Customer
VALUES
('4902 Hide A Way Road, Mckinleyville CA 95519', 'Bartley, Pamela', 1237, '04-MAY-01', 'Female', 'Pamela@gmail.com', '707-333-7777', 'Mexican', 25000);

INSERT INTO Customer
VALUES
('4215 White Avenue, Arcata CA 95521', 'Arguete, Steve', 1238, '29-JAN-96', 'Male', 'Steve@gmail.com', '619-450-3036', 'Canadian', 40000);

INSERT INTO Customer
VALUES
('4633 CrestView Terrace, Eureka CA 95501', 'Senter, Robert', 1239, '12-JUN-99', 'Female', 'Patricia@gmail.com', '639-343-3432', 'Canadian', 70000);

INSERT INTO Customer
VALUES
('902 Thompson Drive, Arcata CA 95521', 'Martin, Nicole', 1240, '15-APR-79', 'Female', 'Nicole@gmail.com', '510-442-1106', 'Mexican', 60000);


INSERT INTO Customer
VALUES
('3506 Wetzel Lane, Arcata CA 95521', 'Mundell, Lena', 1241, '30-NOV-84', 'Female', 'Lena@gmail.com', '619-434-5667', 'American', 35000);

INSERT INTO Customer
VALUES
('2357 Westwood Cite, CA 95521', 'Salazar, Miguel', 1242, '28-AUG-95', 'Male', 'Miguel@gmail.com', '707-546-8882', 'American', 40000);

INSERT INTO Customer
VALUES
('357 Hidden Creek Road, Arcata CA 95521', 'Crespo, Fernando', 1243, '14-JUL-95', 'Male', 'Fernando@gmail.com', '707-444-1234', 'Mexican', 80000);

PROMPT Transaction Table;

INSERT INTO Transaction
VALUES
(12341, 1234, 'Withdraw', 50, 30000, '01-NOV-2020', 12341); 

INSERT INTO Transaction
VALUES
(12342, 1235, 'Withdraw', 100, 30000, '02-NOV-2020', 12342);

INSERT INTO Transaction
VALUES
(12343, 1236, 'Withdraw', 25, 30000, '03-NOV-2020', 12343);

INSERT INTO Transaction
VALUES
(12344, 1237, 'Deposit', 50, 30000, '04-NOV-2020', 12344); 

INSERT INTO Transaction
VALUES
(12345, 1238, 'Deposit', 100, 30000, '05-NOV-2020', 12345); 

INSERT INTO Transaction
VALUES
(12346, 1239, 'Withdraw', 50, 30000, '06-NOV-2020', 12346); 

INSERT INTO Transaction
VALUES
(12347, 1240, 'Deposit', 70, 30000, '07-NOV-2020', 12347); 

INSERT INTO Transaction
VALUES
(12348, 1241, 'Withdraw', 40, 30000, '08-NOV-2020', 12348); 

INSERT INTO Transaction
VALUES
(12349, 1242, 'Withdraw', 500, 30000, '09-NOV-2020', 12349); 

INSERT INTO Transaction
VALUES
(12350, 1243, 'Withdraw', 10, 30000, '10-NOV-2020', 12350); 
 
PROMPT Officer Table;

INSERT INTO Officer
VALUES
(12341, 'Officer1@gmail.com', 80000, '1861 Mutton Town Road, Arcata CA 95521', 'Female', '707-534-8756', '23-MAY-80', 'Peacock, Marlene', 'Mar546', 'Pea543');

INSERT INTO Officer
VALUES
(12342, 'Officer2@gmail.com', 83234, '3623 Elkview Drive, Arcata CA 95521', 'Female', '707-232-6567', '02-FEB-78', 'Begley, Iola', 'Iol546', 'Beg543');

INSERT INTO Officer
VALUES
(12343, 'Officer3@gmail.com', 82345, '2322 Caldwell Road, Arcata CA 95521', 'Male', '707-564-1953', '23-DEC-71', 'Layne, Brian', 'Bri546', 'Lay543');
 
INSERT INTO Officer
VALUES
(12344, 'Officer4@gmail.com', 80000, '1242 Walnut Street, Arcata CA 95521', 'Female', '707-678-1243', '08-JUL-55', 'Abner, Isabella', 'Isa546', 'Abn543');

INSERT INTO Officer
VALUES
(12345, 'Officer5@gmail.com', 80000, '1065 Pine Tree Lane, Arcata CA 95521', 'Male', '707-333-6543', '15-DEC-85', 'Hines, Milton', 'Hin546', 'Mil543');

INSERT INTO Officer
VALUES
(12346, 'Officer6@gmail.com', 80000, '2151 Hilltop Drive, Arcata CA 95521', 'Female', '707-787-2432', '21-DEC-91', 'Smith, Carrie', 'Car546', 'Smi543');

INSERT INTO Officer
VALUES
(12347, 'Officer7@gmail.com', 80000, '4443 Pearlman Avenue, Arcata CA 95521', 'Male', '707-222-4543', '26-JAN-96', 'Nelson, Lynn', 'Lyn546', 'Nel543');

INSERT INTO Officer
VALUES
(12348, 'Officer8@gmail.com', 80000, '1843 Cabell Avenue, Arcata CA 95521', 'Male', '707-534-8756', '23-MAR-91', 'Woodman, Edward', 'Edw546', 'Woo543');

INSERT INTO Officer
VALUES
(12349, 'Officer9@gmail.com', 80000, '1005 Watson Street, Arcata CA 95521', 'Male', '707-444-3243', '23-OCT-87', 'Collins, John', 'Joh546', 'Col543');

INSERT INTO Officer
VALUES
(12350, 'Officer10@gmail.com', 80000, '3362 Ella Street, Arcata CA 95521', 'Male', '707-111-2421', '23-JUL-97', 'Berrios, Clinton', 'Cli546', 'Ber543');

PROMPT LoanAccount Table;

INSERT INTO LoanAccount
VALUES
(1, 12341, 'Subsidized', '01-JAN-01', 7, 1000, 300, 'Late', 0.05, 12341);

INSERT INTO LoanAccount
VALUES
(2, 12342, 'Subsidized', '02-JAN-01', 8, 1000, 300, 'Good', 0.05, 12342);

INSERT INTO LoanAccount
VALUES
(3, 12343, 'Subsidized', '03-JAN-01', 9, 1200, 200, 'Good', 0.05,12343);

INSERT INTO LoanAccount
VALUES
(4, 12344, 'Subsidized', '04-JAN-01', 7, 900, 300, 'Late', 0.05,12344);

INSERT INTO LoanAccount
VALUES
(5, 12345, 'Subsidized', '05-JAN-15', 8, 800, 200, 'Good', 0.05,12345);

INSERT INTO LoanAccount
VALUES
(6, 12346, 'Subsidized', '06-JAN-15', 7, 1000, 300, 'Late', 0.05,12346);

INSERT INTO LoanAccount
VALUES
(7, 12347, 'Subsidized', '07-JAN-01', 7, 1000, 300, 'Late', 0.05,12347);

INSERT INTO LoanAccount
VALUES
(8, 12348, 'Subsidized', '08-JAN-01', 7, 1000, 300, 'Good', 0.05, 12348);

INSERT INTO LoanAccount
VALUES
(9, 12349, 'Subsidized', '09-JAN-01', 7, 1000, 300, 'Good', 0.05, 12349);

INSERT INTO LoanAccount
VALUES
(10, 12350, 'Unsubsidized', '10-JAN-01', 7, 1000, 300, 'Good', 0.05, 12350);

PROMPT Manager Table;

INSERT INTO Manager
VALUES
(12341, 'Rob@gmail.com', 'American', 'Rob123', 'Wri123','Wright, Robert', 60000, '03-MAR-97','619-324-3556','Male', '2749 Nuzum Court, Arcata CA 95521', 12341); 

INSERT INTO Manager
VALUES
(12342, 'Gil@gmail.com', 'American', 'Gil123', 'Gar123','Garner, Gilbert', 62000, '05-MAY-86','619-212-5456','Male', '2558 Benedum Drive, Arcata CA 95521',12342); 

INSERT INTO Manager
VALUES
(12343, 'Joe@gmail.com', 'Mexican', 'Joe123', 'Obr123','Obrien, Joe', 63000, '17-FEB-71','619-765-2133','Male', '2044 Lindale Avenue, Arcata CA 95521',12343); 

INSERT INTO Manager
VALUES
(12344, 'Osc@gmail.com', 'American', 'Osc123', 'Far123', 'Farley, Oscar', 60145, '23-DEC-76','619-324-3578','Male', '1600 Horner Street, Arcata CA 95521',12344); 

INSERT INTO Manager
VALUES
(12345, 'Tom@gmail.com', 'Canadian', 'Tom123', 'Mcl123','Mclamb, Thomas', 63400, '17-NOV-73','619-653-3556','Male', '662 Philadelphia Avenue, Arcata CA 95521', 12345); 

INSERT INTO Manager
VALUES
(12346, 'Stel@gmail.com', 'American', 'Stel123', 'Wik123','Wike, Stella', 67000, '14-MAR-80','619-323-3226','Female', '3027 Clarksburg Park Road, Arcata CA 95521',12346); 

INSERT INTO Manager
VALUES
(12347, 'Mad@gmail.com', 'American', 'Mad123', 'Bar123','Barnes, Madeline', 60032, '31-MAR-78','707-324-3556','Female', '2885 Traction Street, Arcata CA 95521',12347); 

INSERT INTO Manager
VALUES
(12348, 'Jer@gmail.com', 'Mexican', 'Jer123', 'Wil123','Williams, Jermaine', 60000, '09-JUL-87','760-324-3556','Male', '1310 Apple Lane, Arcata CA 95521',12348); 

INSERT INTO Manager
VALUES
(12349, 'Don@gmail.com', 'American', 'Don123', 'Smi123','Smith, Donald', 50000, '18-JUN-88','450-324-3556','Male', '2014 Pritchard Court, Arcata CA 95521',12349); 

INSERT INTO Manager
VALUES
(12350, 'Jef@gmail.com', 'Canadian', 'Jef123', 'Dea123','Deady Jeffrey', 61000, '10-MAR-95','808-324-3556','Male', '3498 Elmwood Avenue, Arcata CA 95521', 12350); 


PROMPT Interest Table;

INSERT INTO Interest
VALUES
(12341, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12342, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12343, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12344, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12345, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12346, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12347, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12348, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12349, 0.045, 0.03, 0.04, 0.06, 0.05);

INSERT INTO Interest
VALUES
(12350, 0.045, 0.03, 0.04, 0.06, 0.05);
