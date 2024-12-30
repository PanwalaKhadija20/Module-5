-- 18. Write a SQL statement that displays all the information about all
-- salespeople



mysql> create table salespeople (salesman_id int, Name varchar (20), City varchar (20), Commission decimal (3,2));
mysql> describe salespeople;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| salesman_id | int          | YES  |     | NULL    |       |
| Name        | varchar(20)  | YES  |     | NULL    |       |
| City        | varchar(20)  | YES  |     | NULL    |       |
| Commission  | decimal(3,2) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
mysql> insert into salespeople values (5001, "James Hoog", "New York", 0.15);
mysql> insert into salespeople values (5002, "Nail Knite", "Paris", 0.13),(5002, "Nail Knite", "Paris", 0.13),(5006, "Mc Lyon", "Paris", 0.14);
mysql> insert into salespeople values (5007, "Paul Adam", "Rome", 0.13),(5003, "Lauson Hen", "San Jose", 0.12);
mysql> select * from salespeople;
+-------------+------------+----------+------------+
| salesman_id | Name       | City     | Commission |
+-------------+------------+----------+------------+
|        5001 | James Hoog | New York |       0.15 |
|        5002 | Nail Knite | Paris    |       0.13 |
|        5002 | Nail Knite | Paris    |       0.13 |
|        5006 | Mc Lyon    | Paris    |       0.14 |
|        5007 | Paul Adam  | Rome     |       0.13 |
|        5003 | Lauson Hen | San Jose |       0.12 |
+-------------+------------+----------+------------+


Ans : SELECT * FROM SALESPERSON;
+------+---------+-----------+------+
| SNo  | SNAME   | CITY      | COMM |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | Axelrod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rafkin  | Barcelona | 0.15 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)