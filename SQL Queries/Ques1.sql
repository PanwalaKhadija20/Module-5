-- 1. Create Table Name : Student and Exam


mysql> create table Student;
mysql> create table Student (RollNo  int primary key, Name varchar(20), Branch varchar(50));
mysql> describe student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| RollNo | int         | NO   | PRI | NULL    |       |
| Name   | varchar(20) | YES  |     | NULL    |       |
| Branch | varchar(50) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
mysql> insert into student values (1, "Jay", "Computer Science");
mysql> insert into student values (2, "Suhani", "Electronic and Com"), (3, "Kriti", "Electronic and Com");
mysql> select * from student;
+--------+--------+--------------------+
| RollNo | Name   | Branch             |
+--------+--------+--------------------+
|      1 | Jay    | Computer Science   |
|      2 | Suhani | Electronic and Com |
|      3 | Kriti  | Electronic and Com |
+--------+--------+--------------------+



mysql> create table Exam (RollNo int, foreign key (RollNo) references student(RollNo), S_code varchar(20), Marks int, P_code varchar(20));
mysql> describe Exam;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| RollNo | int         | YES  | MUL | NULL    |       |
| S_code | varchar(20) | YES  |     | NULL    |       |
| Marks  | int         | YES  |     | NULL    |       |
| P_code | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
mysql> insert into Exam values (1, "CS11", 50, "CS");
mysql> insert into Exam values (1, "CS12", 60, "CS"),(2, "EC101", 66, "EC"),(2, "EC102", 70, "EC"),(3, "EC101", 45, "EC"),(3, "EC102", 50, "EC");
mysql> select * from Exam;
+--------+--------+-------+--------+
| RollNo | S_code | Marks | P_code |
+--------+--------+-------+--------+
|      1 | CS11   |    50 | CS     |
|      1 | CS12   |    60 | CS     |
|      2 | EC101  |    66 | EC     |
|      2 | EC102  |    70 | EC     |
|      3 | EC101  |    45 | EC     |
|      3 | EC102  |    50 | EC     |
+--------+--------+-------+--------+
