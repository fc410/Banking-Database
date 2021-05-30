/*
Fernando Crespo
CS 325 Database Design - Fall 2020
November 15th, 2020
*/
SPOOL 325project.txt;

PROMPT Fernando Crespo Banking Database;


PROMPT Account Table;
DROP TABLE Account CASCADE CONSTRAINTS;
--The account table contains all the data affiliated with the customers account
CREATE TABLE Account(
	AccNum INT UNIQUE NOT NULL,
	--accType specifies checkings, savings, ect...
	accType VARCHAR(50) NOT NULL,
	custID INT UNIQUE  NOT NULL,
	Balance DECIMAL(9,2) NOT NULL,
	interestRate DECIMAL(3,2), 
	openDate TIMESTAMP NOT NULL,
	interest_ID INT,
	interestAmount DECIMAL (9,2),
	officerID INT UNIQUE NOT NULL,
	PRIMARY KEY(AccNum, accType),
	FOREIGN KEY(officerID) REFERENCES Officer(empl_ID)
);

PROMPT Deposit Account;
DROP TABLE DepositAccount CASCADE CONSTRAINTS;
--The DepositAccount contains all the data from an account that will be
--depositing money
CREATE TABLE DepositAccount(
	AccNum INT UNIQUE NOT NULL,
	interestID INT,
	init_amount DECIMAL(9,2) NOT NULL,
	cust_ID INT NOT NULL,
	depositAccType VARCHAR(50) NOT NULL,
	depositAccNum INT UNIQUE NOT NULL,
	currBalance DECIMAL(9,2) NOT NULL,
	interestRate DECIMAL(3,2),
	openDate TIMESTAMP NOT NULL,
	closedDate TIMESTAMP NOT NULL,
	PRIMARY KEY(AccNum, depositAccType),
	CONSTRAINT FK_DAT 
	 FOREIGN KEY(AccNum) 
	 REFERENCES Account(AccNum)
);


PROMPT Customer Table;
DROP TABLE Customer CASCADE CONSTRAINTS;
--The Customer table contains all the information from the customer
CREATE TABLE Customer(
	address VARCHAR(100) NOT NULL,
	name VARCHAR(50) NOT NULL,
	Cust_ID INT NOT NULL,
	DOB DATE NOT NULL,
	gender VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	contact VARCHAR(50) NOT NULL,
	nationality VARCHAR(25) NOT NULL,
	salary DECIMAL(9,2),
	PRIMARY KEY(cust_ID),
	CONSTRAINT FK_ID 
	 FOREIGN KEY(Cust_ID)
	 REFERENCES Account(custID) 
);

PROMPT Transaction Table;
DROP Table Transaction CASCADE CONSTRAINT;
--The Transaction table contains all the data involving a transation from the customer
CREATE TABLE Transaction(
	transactionID INT UNIQUE NOT NULL,
	acc_num INT NOT NULL,
	transactionType VARCHAR(25) NOT NULL,
	amount DECIMAL(9,2) NOT NULL,
	totalBalance DECIMAL(9,2) NOT NULL,
	date_of_trans TIMESTAMP NOT NULL,
	officerID INT UNIQUE NOT NULL,
	PRIMARY KEY(transactionID, acc_num),
	CONSTRAINTS FK_AN 
	 FOREIGN KEY(officerID)
	 REFERENCES Officer (empl_ID)
);

PROMPT Officer Table;
DROP TABLE Officer CASCADE CONSTRAINTS;
--The Officer table contains data from from a certain officer status employee
CREATE TABLE Officer(
	empl_ID INT NOT NULL,
	email VARCHAR(50) NOT NULL,
	salary DECIMAL(9,2) NOT NULL,
	address VARCHAR(100) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	contact VARCHAR(50) NOT NULL,
	DOB DATE NOT NULL,
	officerName VARCHAR(50) NOT NULL,
	User_Name VARCHAR(50) UNIQUE  NOT NULL,
	password VARCHAR(50) NOT NULL,
	PRIMARY KEY(empl_ID)
);

PROMPT LoanAccount Table;
DROP TABLE LoanAccount CASCADE CONSTRAINTS;
--The LoanAccount table contains all the data involving a customers loan account 
--not all customer may have a loan account and is approved by the manager
CREATE TABLE LoanAccount(
	acc_num INT NOT NULL,
	loan_ID INT UNIQUE NOT NULL,
	loanType VARCHAR(50) NOT NULL,
	date_of_loan DATE NOT NULL, 
	duration INT NOT NULL,
	totalAmount DECIMAL(8,2) NOT NULL,
	remainingAmount DECIMAL(8,2) NOT NULL,
	status VARCHAR(50) NOT NULL,
	interest DECIMAL(3,2) NOT NULL,
	officerID INT UNIQUE NOT NULL,	
	PRIMARY KEY(acc_num),
	CONSTRAINTS FK_AN2 
	 FOREIGN KEY(officerID)
	 REFERENCES Officer(empl_ID)
);

PROMPT Manager Table;
DROP TABLE Manager CASCADE CONSTRAINTS;
--The Manager table contains all the data involving a manager status account
CREATE TABLE Manager(
	empl_ID INT NOT NULL,
	email VARCHAR(50) NOT NULL,
	nationality VARCHAR(25) NOT NULL,
	user_name VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	managerName VARCHAR(50) NOT NULL,
	salary DECIMAL(9,2) NOT NULL,
	DOB DATE NOT NULL,
	contact VARCHAR(50) UNIQUE NOT NULL,
	gender VARCHAR(25)NOT NULL,
	address VARCHAR(100) NOT NULL,
	officerID INT UNIQUE NOT NULL,
	PRIMARY KEY(empl_ID),
	CONSTRAINTS FK_EID
	 FOREIGN KEY(officerID)
	 REFERENCES Officer(empl_ID)	
);

PROMPT Interest Table;
DROP TABLE Interest CASCADE CONSTRAINTS;
--The Interest table contains all the data involving interests from a customers 
--loan account and is updated by the manager
CREATE TABLE Interest(
	interest_ID INT NOT NULL,
	loanInterest DECIMAL(3,2) NOT NULL,
	savings_int DECIMAL(3,2) NOT NULL,
	RD_int DECIMAL(3,2) NOT NULL,
	FD_int DECIMAL(3,2) NOT NULL,
	curr_int DECIMAL(3,2) NOT NULL,
	PRIMARY KEY(interest_ID),
	 CONSTRAINTS FK_INT
	 FOREIGN KEY(interest_ID)
	 REFERENCES Manager(empl_ID)
);

spool off;

