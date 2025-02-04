SQL> create table customers( customerid int primary key, fullname varchar(50), email varchar(50), phno varchar(20), idproof varchar(100));

Table created.


SQL> create table employee( employeeid int primary key, empname varchar(50), department varchar(50), empsalary decimal(7,2), emp_position varchar(20));

Table created.

SQL> create table destination ( destinationid int primary key, destname varchar(50), distance int, country varchar(50));

Table created.

SQL> create table trains( trainid int primary key, trainname varchar(50), departuretime varchar(10), arrivaltime varchar(10), origin varchar(10), destination varchar(50), destinationid int, foreign key(destinationid) references destination(destinationid));

Table created.


SQL> create table flights ( flightid int primary key, flightnumber varchar(10), airline varchar(50), departuretime varchar(10),arrivaltime varchar(10), origin varchar(10), destination varchar(50), destinationid int, foreign key(destinationid) references destination(destinationid));

Table created.

SQL> create table buses ( busid int primary key, busnumber varchar(10), operator varchar(50), departuretime varchar(10), arrivaltime varchar(10), origin varchar(50), destination varchar(50), destinationid int, foreign key(destinationid) references destination(destinationid));

Table created.

SQL> commit;

Commit complete.

SQL> create table payment( paymentid int primary key, paymentmethod varchar(30), paymentamount decimal(7,2), paymentdate date, customerid int, foreign key(customerid) references customers(customerid));

Table created.

SQL> create table booking( bookingid int primary key, customerid int, bookingstatus varchar(20), paymentid int, bookingtime varchar(20), origin varchar(20),
destination varchar(20), foreign key(customerid) references customers(customerid), foreign key(paymentid) references payment(paymentid));

Table created.

SQL> desc customers;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CUSTOMERID                                NOT NULL NUMBER(38)
 FULLNAME                                           VARCHAR2(50)
 EMAIL                                              VARCHAR2(50)
 PHNO                                               VARCHAR2(20)
 IDPROOF                                            VARCHAR2(100)

SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEEID                                NOT NULL NUMBER(38)
 EMPNAME                                            VARCHAR2(50)
 DEPARTMENT                                         VARCHAR2(50)
 EMPSALARY                                          NUMBER(7,2)
 EMP_POSITION                                       VARCHAR2(20)

SQL> desc destination;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DESTINATIONID                             NOT NULL NUMBER(38)
 DESTNAME                                           VARCHAR2(50)
 DISTANCE                                           NUMBER(38)
 COUNTRY                                            VARCHAR2(50)

SQL> desc trains;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TRAINID                                   NOT NULL NUMBER(38)
 TRAINNAME                                          VARCHAR2(50)
 DEPARTURETIME                                      VARCHAR2(10)
 ARRIVALTIME                                        VARCHAR2(10)
 ORIGIN                                             VARCHAR2(10)
 DESTINATION                                        VARCHAR2(50)
 DESTINATIONID                                      NUMBER(38)

SQL> desc flights;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FLIGHTID                                  NOT NULL NUMBER(38)
 FLIGHTNUMBER                                       VARCHAR2(10)
 AIRLINE                                            VARCHAR2(50)
 DEPARTURETIME                                      VARCHAR2(10)
 ARRIVALTIME                                        VARCHAR2(10)
 ORIGIN                                             VARCHAR2(10)
 DESTINATION                                        VARCHAR2(50)
 DESTINATIONID                                      NUMBER(38)

SQL> desc buses;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BUSID                                     NOT NULL NUMBER(38)
 BUSNUMBER                                          VARCHAR2(10)
 OPERATOR                                           VARCHAR2(50)
 DEPARTURETIME                                      VARCHAR2(10)
 ARRIVALTIME                                        VARCHAR2(10)
 ORIGIN                                             VARCHAR2(50)
 DESTINATION                                        VARCHAR2(50)
 DESTINATIONID                                      NUMBER(38)


SQL> desc payment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PAYMENTID                                 NOT NULL NUMBER(38)
 PAYMENTMETHOD                                      VARCHAR2(30)
 PAYMENTAMOUNT                                      NUMBER(7,2)
 PAYMENTDATE                                        DATE
 CUSTOMERID                                         NUMBER(38)

SQL> desc booking;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 BOOKINGID                                 NOT NULL NUMBER(38)
 CUSTOMERID                                         NUMBER(38)
 BOOKINGSTATUS                                      VARCHAR2(20)
 PAYMENTID                                          NUMBER(38)
 BOOKINGTIME                                        VARCHAR2(20)
 ORIGIN                                             VARCHAR2(20)
 DESTINATION                                        VARCHAR2(20)

SQL> insert into customers values(1, 'Daivik Naik', 'Daivik@gmail.com','9876543210', 'ADHAAR');

1 row created.


SQL> insert into customers values(2, 'asmitha', 'asmitha@gmail.com','9876543211', 'PAN');

1 row created.

SQL> insert into customers values(3, 'Shashank', 'Shashank@gmail.com', '9876543212', 'Passport');

1 row created.

SQL> insert into customers values(4, 'Sanjana', 'sanjana@gmail.com', '987654
3213', 'Aadhar');

1 row created.

SQL> insert into customers values(5, 'Jatin patil', 'jatin@gmail.com', '9876
543214', 'PAN');

1 row created.

SQL> insert into customers values(6, 'Shreyas', 'Shreyas@gmail.com', '987654
3215', 'Aadhar');

1 row created.

SQL> insert into customers values(7, 'Abhay patil', 'abhay@gmail.com', '9876543216', 'Passport');

1 row created.

SQL> insert into customers values(8, 'Amol Goudar', 'Amol@gmail.com', '98765
43217', 'Aadhar');

1 row created.

SQL> insert into customers values(9, 'Darshan Wadrali', 'Darshan@gmail.com',
 '9876543218', 'PAN');

1 row created.

SQL> insert into customers values(10, 'Anuj K', 'Anuj@gmail.com', '987654321
9', 'Aadhar');

1 row created.

SQL> select * from customers;

CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------
         1 Daivik Naik
daivik@gmail.com                                   9876543210
Aadhaar

         2 asmitha
asmitha@gmail.com                                  9876543211
PAN

CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------

         3 Shashank
Shashank@gmail.com                                 9876543212
Passport

         4 Sanjana
sanjana@gmail.com                                  9876543213

CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------
Aadhar

         5 Jatin patil
jatin@gmail.com                                    9876543214
PAN

         6 Shreyas

CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------
Shreyas@gmail.com                                  9876543215
Aadhar

         7 Abhay patil
abhay@gmail.com                                    9876543216
Passport


CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------
         8 Amol Goudar
Amol@gmail.com                                     9876543217
Aadhar

         9 Darshan Wadrali
Darshan@gmail.com                                  9876543218
PAN

CUSTOMERID FULLNAME
---------- --------------------------------------------------
EMAIL                                              PHNO
-------------------------------------------------- --------------------
IDPROOF
--------------------------------------------------------------------------------

        10 Anuj K
Anuj@gmail.com                                     9876543219
Aadhar


10 rows selected.


SQL> insert into employee values(1, 'Amit Singh', 'Finance', 75000.00, 'Manager');

1 row created.

SQL> insert into employee values(1, 'Amit Singh', 'Bus', 75000.00, 'Driver');

1 row created.

SQL> insert into employee values(2, 'Rahul Verma', 'Train', 65000.00, 'Guide');

1 row created.

SQL>  insert into employee values(3, 'Amey gupta', 'Flights', 50000.00, 'Supervisor');

1 row created.

SQL> insert into employee values(4, 'Vivek mishra', 'Bus', 60000.00, 'Booking agent');

1 row created.

SQL> insert into employee values(5, 'Pooja Gupta', 'Train', 70000.00, 'Driver');

1 row created.

SQL> insert into employee values(6, 'Jay Singh', 'Flight', 55000.00, 'Supervisor');

1 row created.

SQL> insert into employee values(7, 'Anup Sinha', 'Bus', 58000.00, 'Guide');

1 row created.

SQL> insert into employee values(8, 'Aditya N', 'Train', 62000.00, 'Booking Agent');

1 row created.

SQL> insert into employee values(9, 'Anurag Mishra', 'Flight', 72000.00, 'Driver');

1 row created.

SQL> insert into employee values(10, 'Shubham Rathod', 'Bus', 53000.00, 'Supervisor');

1 row created.

SQL> commit;

Commit complete.

SQL> select * from employee;

EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------
         1 Amit Singh
Bus                                                     75000
Driver

         2 Rahul Verma
Train                                                   65000
Guide

EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------

         3 Amey gupta
Flights                                                 50000
Supervisor

         4 Vivek mishra
Bus                                                     60000

EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------
Booking agent

         5 Pooja Gupta
Train                                                   70000
Driver

         6 Jay Singh

EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------
Flight                                                  55000
Supervisor

         7 Anup Sinha
Bus                                                     58000
Guide


EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------
         8 Aditya N
Train                                                   62000
Booking Agent

         9 Anurag Mishra
Flight                                                  72000
Driver

EMPLOYEEID EMPNAME
---------- --------------------------------------------------
DEPARTMENT                                          EMPSALARY
-------------------------------------------------- ----------
EMP_POSITION
--------------------

        10 Shubham Rathod
Bus                                                     53000
Supervisor


10 rows selected.

SQL> insert into destination values (201, 'Mumbai', 500, 'India');

1 row created.

SQL> insert into destination values (202, 'Pune', 400, 'India');

1 row created.

SQL> insert into destination values (203, 'Chennai', 439, 'India');

1 row created.

SQL> insert into destination values (204, 'Bangalore', 400, 'India');

1 row created.

SQL> insert into destination values (205, 'Hyderabad', 800, 'India');

1 row created.

SQL> insert into destination values (206, 'Delhi', 1300, 'India');

1 row created.

SQL> insert into destination values (207, 'Kolkata', 2000, 'India');

1 row created.

SQL> insert into destination values (208, 'London', 12768, 'United Kingdom');

1 row created.

SQL> insert into destination values (209, 'Singapore', 6800, 'Singapore');

1 row created.

SQL> insert into destination values (210, 'Dubai', 2250, 'United Arab Emirates');

1 row created.

SQL> select * from destination;

DESTINATIONID DESTNAME                                             DISTANCE
------------- -------------------------------------------------- ----------
COUNTRY
--------------------------------------------------
          201 Mumbai                                                    500
India

          202 Pune                                                      400
India

          203 Chennai                                                   439
India


DESTINATIONID DESTNAME                                             DISTANCE
------------- -------------------------------------------------- ----------
COUNTRY
--------------------------------------------------
          204 Bangalore                                                 400
India

          205 Hyderabad                                                 800
India

          206 Delhi                                                    1300
India


DESTINATIONID DESTNAME                                             DISTANCE
------------- -------------------------------------------------- ----------
COUNTRY
--------------------------------------------------
          207 Kolkata                                                  2000
India

          208 London                                                  12768
United Kingdom

          209 Singapore                                                6800
Singapore


DESTINATIONID DESTNAME                                             DISTANCE
------------- -------------------------------------------------- ----------
COUNTRY
--------------------------------------------------
          210 Dubai                                                    2250
United Arab Emirates


10 rows selected.

SQL> insert into trains values(1, 'Rajdhani Express', '08:00:00', '15:00:00', 'Delhi', 'Mumbai', 201);

1 row created.

SQL> insert into trains values(2, 'Shatabdi Express', '09:00:00', '14:00:00', 'Mumbai', 'Pune', 202);

1 row created.

SQL> insert into trains values (3, 'Vande Bharat Express', '10:00:00', '17:00:00', 'Delhi', 'Chennai', 203);

1 row created.

SQL> insert into trains values (4, 'Garib Rath Express', '11:00:00', '18:00:00', 'Kolkata', 'Bangalore', 204);

1 row created.

SQL> insert into trains values (5, 'Shatabdi Express', '12:00:00', '19:00:00', 'Chennai', 'Hyderabad', 205);

1 row created.

SQL> insert into trains values (6, 'Rajdhani Express', '13:00:00', '20:00:00', 'Bangalore', 'Delhi', 206);

1 row created.

SQL> insert into trains values (7, 'Vande Bharat Express', '14:00:00', '21:00:00', 'Mumbai', 'Kolkata', 207);

1 row created.

SQL> insert into trains values (8, 'Garib Rath Express', '15:00:00', '22:00:00', 'Pune', 'Chennai', 208);

1 row created.

SQL> insert into trains values  (9, 'Shatabdi Express', '16:00:00', '23:00:00', 'Delhi', 'Hyderabad', 209);

1 row created.

SQL> insert into trains values  (10, 'Rajdhani Express', '17:00:00', '00:00:00', 'Kolkata', 'Mumbai', 210);

1 row created.

SQL> select * from trains;

   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------
         1 Rajdhani Express                                   08:00:00
15:00:00   Delhi      Mumbai
          201

         2 Shatabdi Express                                   09:00:00
14:00:00   Mumbai     Pune
          202

   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------

         3 Vande Bharat Express                               10:00:00
17:00:00   Delhi      Chennai
          203

         4 Garib Rath Express                                 11:00:00
18:00:00   Kolkata    Bangalore

   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------
          204

         5 Shatabdi Express                                   12:00:00
19:00:00   Chennai    Hyderabad
          205

         6 Rajdhani Express                                   13:00:00

   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------
20:00:00   Bangalore  Delhi
          206

         7 Vande Bharat Express                               14:00:00
21:00:00   Mumbai     Kolkata
          207


   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------
         8 Garib Rath Express                                 15:00:00
22:00:00   Pune       Chennai
          208

         9 Shatabdi Express                                   16:00:00
23:00:00   Delhi      Hyderabad
          209

   TRAINID TRAINNAME                                          DEPARTURET
---------- -------------------------------------------------- ----------
ARRIVALTIM ORIGIN     DESTINATION
---------- ---------- --------------------------------------------------
DESTINATIONID
-------------

        10 Rajdhani Express                                   17:00:00
00:00:00   Kolkata    Mumbai
          210


10 rows selected.

SQL> insert into flights values (1, 'AI101', 'Air India', ' 08:00:00', ' 10:00:00', 'Delhi', 'Mumbai', 201);

1 row created.

SQL> insert into flights values  (2, 'AI102', 'Air India', '10:00:00', ' 12:00:00', 'Mumbai', 'Pune', 202);

1 row created.

SQL> insert into flights values   (3, 'AI103', 'Air India', ' 12:00:00', '15:00:00', 'Delhi', 'Chennai', 203);

1 row created.

SQL> insert into flights values (4, 'AI104', 'Air India', ' 14:00:00', ' 17:00:00', 'Mumbai', 'Bangalore', 204);

1 row created.

SQL> insert into flights values(5, 'BA101', 'British Airways', ' 16:00:00', ' 18:00:00', 'Delhi', 'London', 205);

1 row created.

SQL> insert into flights values (6, 'SQ101', 'Singapore Airlines', ' 18:00:00', ' 20:00:00', 'Mumbai', 'Singapore', 206);

1 row created.

SQL> insert into flights values (7, 'EK101', 'Emirates', ' 20:00:00', ' 02:00:00', 'Delhi', 'Dubai', 207);

1 row created.

SQL> insert into flights values(8, 'LH101', 'Air Asia', ' 22:00:00', ' 01:00:00', 'Mumbai', 'Frankfurt', 208);

1 row created.

SQL> insert into flights values (9, 'QF101', 'Emirates', ' 01:00:00', ' 06:00:00', 'Delhi', 'Sydney', 209);

1 row created.

SQL> insert into flights values (10, 'SQ104', 'Singapore Airlines', ' 03:00:00', ' 05:00:00', 'Mumbai', 'Singapore', 210);

1 row created.

SQL> select * from flights;

  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
         1 AI101      Air India
 08:00:00   10:00:00  Delhi
Mumbai                                                       201

         2 AI102      Air India
10:00:00    12:00:00  Mumbai
Pune                                                         202

  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------

         3 AI103      Air India
 12:00:00  15:00:00   Delhi
Chennai                                                      203

         4 AI104      Air India
 14:00:00   17:00:00  Mumbai

  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
Bangalore                                                    204

         5 BA101      British Airways
 16:00:00   18:00:00  Delhi
London                                                       205

         6 SQ101      Singapore Airlines

  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
 18:00:00   20:00:00  Mumbai
Singapore                                                    206

         7 EK101      Emirates
 20:00:00   02:00:00  Delhi
Dubai                                                        207


  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
         8 LH101      Air Asia
 22:00:00   01:00:00  Mumbai
Frankfurt                                                    208

         9 QF101      Emirates
 01:00:00   06:00:00  Delhi
Sydney                                                       209

  FLIGHTID FLIGHTNUMB AIRLINE
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- ----------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------

        10 SQ104      Singapore Airlines
 03:00:00   05:00:00  Mumbai
Singapore                                                    210


10 rows selected.

SQL> insert into buses values(1, 'B001', 'ABC Bus Services', ' 08:00:00', ' 10:00:00', 'Delhi', 'Mumbai', 201);

1 row created.

SQL> insert into buses values (2, 'B002', 'XYZ Travels', ' 10:00:00', ' 12:00:00', 'Mumbai', 'Pune', 202);

1 row created.


SQL> insert into buses values  (3, 'B003', 'RST Tours', ' 12:00:00', ' 15:00:00', 'Delhi', 'Chennai', 203);

1 row created.

SQL> insert into buses values(4, 'B004', 'PQR Roadways', ' 14:00:00', ' 17:00:00', 'Mumbai', 'Bangalore', 204);

1 row created.

SQL> insert into buses values (5, 'B005', 'LMN Travels', ' 16:00:00', ' 18:00:00', 'Delhi', 'Hyderabad', 205);

1 row created.

SQL> insert into buses values  (6, 'B006', 'DEF Bus Lines', ' 18:00:00', ' 20:00:00', 'Mumbai', 'Kolkata', 206);

1 row created.

SQL> insert into buses values(7, 'B007', 'GHI Tours', ' 20:00:00', ' 02:00:00', 'Delhi', 'Lucknow', 207);

1 row created.

SQL> insert into buses values  (8, 'B008', 'JKL Bus Services', ' 22:00:00', ' 01:00:00', 'Mumbai', 'Ahmedabad', 208);

1 row created.

SQL> insert into buses values (9, 'B009', 'MNO Roadways', ' 01:00:00', ' 06:00:00', 'Delhi', 'Jaipur', 209);

1 row created.

SQL> insert into buses values  (10, 'B010', 'PQR Travels', ' 03:00:00', ' 05:00:00', 'Mumbai', 'Pune', 210);

1 row created.

SQL> select * from buses;

     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
         1 B001       ABC Bus Services
 08:00:00   10:00:00  Delhi
Mumbai                                                       201

         2 B002       XYZ Travels
 10:00:00   12:00:00  Mumbai
Pune                                                         202

     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------

         3 B003       RST Tours
 12:00:00   15:00:00  Delhi
Chennai                                                      203

         4 B004       PQR Roadways
 14:00:00   17:00:00  Mumbai

     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
Bangalore                                                    204

         5 B005       LMN Travels
 16:00:00   18:00:00  Delhi
Hyderabad                                                    205

         6 B006       DEF Bus Lines

     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
 18:00:00   20:00:00  Mumbai
Kolkata                                                      206

         7 B007       GHI Tours
 20:00:00   02:00:00  Delhi
Lucknow                                                      207


     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------
         8 B008       JKL Bus Services
 22:00:00   01:00:00  Mumbai
Ahmedabad                                                    208

         9 B009       MNO Roadways
 01:00:00   06:00:00  Delhi
Jaipur                                                       209

     BUSID BUSNUMBER  OPERATOR
---------- ---------- --------------------------------------------------
DEPARTURET ARRIVALTIM ORIGIN
---------- ---------- --------------------------------------------------
DESTINATION                                        DESTINATIONID
-------------------------------------------------- -------------

        10 B010       PQR Travels
 03:00:00   05:00:00  Mumbai
Pune                                                         210


10 rows selected.


SQL> insert into payment values (101, 'Credit Card', 5000.00, '15-jan-2024', 1);

1 row created.

SQL> insert into payment values (102, 'Debit Card', 3000.00, '20-feb-2024', 2);

1 row created.

SQL> insert into payment values  (103, 'Net Banking', 2000.00, '25-mar-2024', 3);

1 row created.

SQL> insert into payment values (104, 'UPI', 4000.00, '30-Apr-2024', 4);

1 row created.

SQL> insert into payment values   (105, 'Cash', 2500.00, '05-May-2024', 5);

1 row created.

SQL> insert into payment values  (106, 'Credit Card', 3500.00, '10-Jun-2024', 6);

1 row created.

SQL> insert into payment values  (107, 'Debit Card', 2800.00, '15-Jul-2024', 7);

1 row created.

SQL> insert into payment values  (108, 'Net Banking', 1800.00, '20-Aug-2024', 8);

1 row created.

SQL> insert into payment values  (109, 'UPI', 4200.00, '25-Sep-2024', 9);

1 row created.

SQL> insert into payment values  (110, 'Cash', 2300.00, '30-Oct-2024', 10);

1 row created.

SQL> select * from payment;

 PAYMENTID PAYMENTMETHOD                  PAYMENTAMOUNT PAYMENTDA CUSTOMERID
---------- ------------------------------ ------------- --------- ----------
       101 Credit Card                             5000 15-JAN-24          1
       102 Debit Card                              3000 20-FEB-24          2
       103 Net Banking                             2000 25-MAR-24          3
       104 UPI                                     4000 30-APR-24          4
       105 Cash                                    2500 05-MAY-24          5
       106 Credit Card                             3500 10-JUN-24          6
       107 Debit Card                              2800 15-JUL-24          7
       108 Net Banking                             1800 20-AUG-24          8
       109 UPI                                     4200 25-SEP-24          9
       110 Cash                                    2300 30-OCT-24         10

10 rows selected.


SQL> insert into booking values (1, 1, 'Confirmed', 101, ' 08:00:00',  'Delhi','Mumbai');

1 row created.

SQL> insert into booking values (2, 2, 'Confirmed', 102, ' 10:00:00', 'Mumbai', 'Pune');

1 row created.

SQL> insert into booking values  (3, 3, 'Confirmed', 103, ' 12:00:00', 'Delhi', 'Chennai');

1 row created.

SQL> insert into booking values  (4, 4, 'Confirmed', 104, ' 14:00:00', 'Mumbai', 'Bangalore');

1 row created.

SQL> insert into booking values   (5, 5, 'Confirmed', 105, ' 16:00:00', 'Singapore', 'Dubai');

1 row created.

SQL> insert into booking values (6, 6, 'Confirmed', 106, ' 18:00:00', 'Mumbai', 'Kolkata');

1 row created.

SQL> insert into booking values  (7, 7, 'Confirmed', 107, ' 20:00:00', 'Jaipur', 'Indore' );

1 row created.

SQL> insert into booking values (8, 8, 'Confirmed', 108, ' 22:00:00', 'Kolkata', 'Bangalore');

1 row created.

SQL> insert into booking values (9, 9, 'Confirmed', 109, ' 01:00:00', 'Delhi', 'Chennai');

1 row created.

SQL> insert into booking values (10, 10, 'Confirmed', 110, ' 03:00:00', 'Sydney', 'London');

1 row created.

SQL> select * from booking;

 BOOKINGID CUSTOMERID BOOKINGSTATUS         PAYMENTID BOOKINGTIME
---------- ---------- -------------------- ---------- --------------------
ORIGIN               DESTINATION
-------------------- --------------------
         1          1 Confirmed                   101  08:00:00
Delhi                Mumbai

         2          2 Confirmed                   102  10:00:00
Mumbai               Pune

         3          3 Confirmed                   103  12:00:00
Delhi                Chennai


 BOOKINGID CUSTOMERID BOOKINGSTATUS         PAYMENTID BOOKINGTIME
---------- ---------- -------------------- ---------- --------------------
ORIGIN               DESTINATION
-------------------- --------------------
         4          4 Confirmed                   104  14:00:00
Mumbai               Bangalore

         5          5 Confirmed                   105  16:00:00
Singapore            Dubai

         6          6 Confirmed                   106  18:00:00
Mumbai               Kolkata


 BOOKINGID CUSTOMERID BOOKINGSTATUS         PAYMENTID BOOKINGTIME
---------- ---------- -------------------- ---------- --------------------
ORIGIN               DESTINATION
-------------------- --------------------
         7          7 Confirmed                   107  20:00:00
Jaipur               Indore

         8          8 Confirmed                   108  22:00:00
Kolkata              Bangalore

         9          9 Confirmed                   109  01:00:00
Delhi                Chennai


 BOOKINGID CUSTOMERID BOOKINGSTATUS         PAYMENTID BOOKINGTIME
---------- ---------- -------------------- ---------- --------------------
ORIGIN               DESTINATION
-------------------- --------------------
        10         10 Confirmed                   110  03:00:00
Sydney               London


10 rows selected.

SQL> commit;

Commit complete.
