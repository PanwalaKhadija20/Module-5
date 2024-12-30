-- 11.Create table given below: Salesperson and Customer

mysql> create table SALESPERSON (Sno int primary key,Sname varchar (30),City varchar (20), Comm decimal (2,2));
mysql>  describe  salesperson;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| Sno   | int          | NO   | PRI | NULL    |       |
| Sname | varchar(30)  | YES  |     | NULL    |       |
| City  | varchar(20)  | YES  |     | NULL    |       |
| Comm  | decimal(2,2) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
mysql> insert into salesperson values (1001, "Peel", "London", .12);
mysql> insert into salesperson values (1002, "Serres", "San Jose", .13),(1004, "Motika", "London", .11),(1007, "Rafkin", "Barcelona", .15),(1003, "Axelrod", "New York", .1);
mysql> select * from salesperson;
+------+---------+-----------+------+
| Sno  | Sname   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | Axelrod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rafkin  | Barcelona | 0.15 |
+------+---------+-----------+------+


mysql> create table CUSTOMER (Cnm int primary key, Cname varchar (30), City varchar (20), Rating int, Sno int, foreign key (Sno) references salesperson(Sno));
mysql> describe customer;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Cnm    | int         | NO   | PRI | NULL    |       |
| Cname  | varchar(30) | YES  |     | NULL    |       |
| City   | varchar(20) | YES  |     | NULL    |       |
| Rating | int         | YES  |     | NULL    |       |
| Sno    | int         | YES  | MUL | NULL    |       |
+--------+-------------+------+-----+---------+-------+
mysql> insert into customer values (201,"Hoffman", "London", 100, 1001);
mysql> insert into customer values (202,"Giovanne", "Roe", 200, 1003),(203,"Liu", "San Jose", 300, 1002),(204,"Grass", "Barcelona", 100, 1002);
mysql> insert into customer values (206,"Clemens", "London", 300, 1007),(207,"Pereira", "Roe", 100, 1004);
mysql> select * from customer;
+-----+----------+-----------+--------+------+
| Cnm | Cname    | City      | Rating | Sno  |
+-----+----------+-----------+--------+------+
| 201 | Hoffman  | London    |    100 | 1001 |
| 202 | Giovanne | Roe       |    200 | 1003 |
| 203 | Liu      | San Jose  |    300 | 1002 |
| 204 | Grass    | Barcelona |    100 | 1002 |
| 206 | Clemens  | London    |    300 | 1007 |
| 207 | Pereira  | Roe       |    100 | 1004 |
+-----+----------+-----------+--------+------+

12: 12. Retrieve the below data from above table

Ans :  SELECT
    ->   s.SNAME,
    ->   c.CNAME
    -> FROM Salesperson AS s
    -> JOIN Customer AS c
    ->   ON s.SNo = c.SNo;
+---------+----------+
| SNAME   | CNAME    |
+---------+----------+
| Peel    | Hoffman  |
| Serres  | Liu      |
| Serres  | Grass    |
| Axelrod | Giovanne |
| Motika  | Pereira  |
| Rafkin  | Clemens  |
+---------+----------+
6 rows in set (0.00 sec)

13.All Customer name whose rating is more than 100.

Ans: select * from Customer where Sno >1000;
+-----+----------+-----------+--------+------+
| CNM | CNAME    | CITY      | RATING | SNo  |
+-----+----------+-----------+--------+------+
| 201 | Hoffman  | London    |    100 | 1001 |
| 203 | Liu      | San Jose  |    300 | 1002 |
| 204 | Grass    | Barcelona |    100 | 1002 |
| 202 | Giovanne | Roe       |    200 | 1003 |
| 207 | Pereira  | Roe       |    100 | 1004 |
| 206 | Clemens  | London    |    300 | 1007 |
+-----+----------+-----------+--------+------+

14. Names and cities of all salespeople in London with commission above 0.12


15. All salespeople either in Barcelona or in London


Ans :  SELECT SNAME, CITY FROM Salesperson WHERE CITY='Barcelona' OR CITY='London';
+--------+-----------+
| SNAME  | CITY      |
+--------+-----------+
| Peel   | London    |
| Motika | London    |
| Rafkin | Barcelona |
+--------+-----------+
3 rows in set (0.00 sec)

16. All salespeople with commission between 0.10 and 0.12. (Boundary valuesshould be excluded)

Ans: SELECT *
    -> FROM SALESPERSON
    -> WHERE COMM BETWEEN 0.10 AND 0.12;
+------+---------+----------+------+
| SNo  | SNAME   | CITY     | COMM |
+------+---------+----------+------+
| 1001 | Peel    | London   | 0.12 |
| 1003 | Axelrod | New York | 0.10 |
| 1004 | Motika  | London   | 0.11 |
+------+---------+----------+------+
3 rows in set (0.05 sec)

17. All customers excluding those with rating <= 100 unless they are located inRome

Ans:  SELECT *
    -> FROM CUSTOMER
    -> WHERE RATING > 100
    -> UNION
    -> SELECT *
    -> FROM CUSTOMER
    -> WHERE RATING <= 100 AND CITY = 'Rome';
+-----+----------+----------+--------+------+
| CNM | CNAME    | CITY     | RATING | SNo  |
+-----+----------+----------+--------+------+
| 202 | Giovanne | Roe      |    200 | 1003 |
| 203 | Liu      | San Jose |    300 | 1002 |
| 206 | Clemens  | London   |    300 | 1007 |
+-----+----------+----------+--------+------+
3 rows in set (0.01 sec)

