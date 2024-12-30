2. Create table given below: Employee and IncentiveTable


mysql> create table Employee (Employee_Id int primary key, First_name varchar(20), Last_name varchar(30), Salary int, Jioning_date datetime, Department varchar(30));
mysql> describe employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Employee_Id  | int         | NO   | PRI | NULL    |       |
| First_name   | varchar(20) | YES  |     | NULL    |       |
| Last_name    | varchar(30) | YES  |     | NULL    |       |
| Salary       | int         | YES  |     | NULL    |       |
| Jioning_date | datetime    | YES  |     | NULL    |       |
| Department   | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
mysql> insert into Employee values (1, "John", "Abraham" , 1000000 , "2013-01-01 12.00.00 ", "Banking");
mysql> insert into Employee values (2, "Michael", "Clarke" , 800000 , "2013-01-01 12.00.00 ", "Insurance"),(3, "Roy", "Thomas" , 700000 , "2013-02-01 12.00.00 ", "Banking");
mysql> insert into Employee values (4, "Tom", "Jose" , 600000 , "2013-01-01 12.00.00 ", "Insurance"),(5, "Jerry", "Pinto" , 650000 , "2013-02-01 12.00.00 ", "Insurance"), 
(6, "Philip", "Mathew" , 750000 , "2013-01-01 12.00.00 ", "Services"),(7, "TestName1", "123" , 650000 , "2013-01-01 12.00.00 ", "Services"),(8, "TestName2", "Lname%" , 600000 , "2013-02-01 12.00.00 ", "Insurance");
mysql> select * from employee;
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_Id | First_name | Last_name | Salary  | Jioning_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 12:00:00 | Banking    |
|           2 | Michael    | Clarke    |  800000 | 2013-01-01 12:00:00 | Insurance  |
|           3 | Roy        | Thomas    |  700000 | 2013-02-01 12:00:00 | Banking    |
|           4 | Tom        | Jose      |  600000 | 2013-01-01 12:00:00 | Insurance  |
|           5 | Jerry      | Pinto     |  650000 | 2013-02-01 12:00:00 | Insurance  |
|           6 | Philip     | Mathew    |  750000 | 2013-01-01 12:00:00 | Services   |
|           7 | TestName1  | 123       |  650000 | 2013-01-01 12:00:00 | Services   |
|           8 | TestName2  | Lname%    |  600000 | 2013-02-01 12:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+

mysql> create table Incentive ( Employee_ref_Id int, foreign key (Employee_ref_Id) references employee(Employee_Id), Incentive_date date, Incentive_Amt int);
mysql> describe Incentive;
+-----------------+------+------+-----+---------+-------+
| Field           | Type | Null | Key | Default | Extra |
+-----------------+------+------+-----+---------+-------+
| Employee_ref_Id | int  | YES  | MUL | NULL    |       |
| Incentive_date  | date | YES  |     | NULL    |       |
| Incentive_Amt   | int  | YES  |     | NULL    |       |
+-----------------+------+------+-----+---------+-------+

mysql> insert into Incentive values (1, "2013-02-01", 5000);
mysql> insert into Incentive values (2, "2013-02-01", 3000),(3, "2013-02-01", 4000),(1, "2013-01-01", 4500),(2, "2013-01-01", 3500);
mysql> select * from incentive;
+-----------------+----------------+---------------+
| Employee_ref_Id | Incentive_date | Incentive_Amt |
+-----------------+----------------+---------------+
|               1 | 2013-02-01     |          5000 |
|               2 | 2013-02-01     |          3000 |
|               3 | 2013-02-01     |          4000 |
|               1 | 2013-01-01     |          4500 |
|               2 | 2013-01-01     |          3500 |
+-----------------+----------------+---------------+

Question 3 : 3. Get First_Name from employee table using Tom name “Employee Name”.
mysql> select First_name as Employee_Name from Employee where First_name="tom";
+---------------+
| Employee_Name |
+---------------+
| Tom           |
+---------------+

Question 4 : 4. Get FIRST_NAME, Joining Date, and Salary from employee table.
mysql> select First_name , Jioning_date , salary from employee;
+------------+---------------------+---------+
| First_name | Jioning_date        | salary  |
+------------+---------------------+---------+
| John       | 2013-01-01 12:00:00 | 1000000 |
| Michael    | 2013-01-01 12:00:00 |  800000 |
| Roy        | 2013-02-01 12:00:00 |  700000 |
| Tom        | 2013-01-01 12:00:00 |  600000 |
| Jerry      | 2013-02-01 12:00:00 |  650000 |
| Philip     | 2013-01-01 12:00:00 |  750000 |
| TestName1  | 2013-01-01 12:00:00 |  650000 |
| TestName2  | 2013-02-01 12:00:00 |  600000 |
+------------+---------------------+---------+

Question 5 : 5. Get all employee details from the employee table order by First_Name Ascending and Salary descending?
mysql> select * from Employee order by First_name , salary desc;
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_Id | First_name | Last_name | Salary  | Jioning_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           5 | Jerry      | Pinto     |  650000 | 2013-02-01 12:00:00 | Insurance  |
|           1 | John       | Abraham   | 1000000 | 2013-01-01 12:00:00 | Banking    |
|           2 | Michael    | Clarke    |  800000 | 2013-01-01 12:00:00 | Insurance  |
|           6 | Philip     | Mathew    |  750000 | 2013-01-01 12:00:00 | Services   |
|           3 | Roy        | Thomas    |  700000 | 2013-02-01 12:00:00 | Banking    |
|           7 | TestName1  | 123       |  650000 | 2013-01-01 12:00:00 | Services   |
|           8 | TestName2  | Lname%    |  600000 | 2013-02-01 12:00:00 | Insurance  |
|           4 | Tom        | Jose      |  600000 | 2013-01-01 12:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+


Question 6 :6. Get employee details from employee table whose first name contains ‘J’.
mysql> select * from Employee where First_name like 'j%';
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_Id | First_name | Last_name | Salary  | Jioning_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 12:00:00 | Banking    |
|           5 | Jerry      | Pinto     |  650000 | 2013-02-01 12:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+


Question 7 & 8 : 7. Get department wise maximum salary from employee table order by
8. salaryascending?

mysql> select department,max(salary) as Max_Salary from employee group by department order by Max_Salary asc;
+------------+------------+
| department | Max_Salary |
+------------+------------+
| Services   |     750000 |
| Insurance  |     800000 |
| Banking    |    1000000 |
+------------+------------+

Question 9 : 9. Select first_name, incentive amount from employee and incentives table
forthose employees who have incentives and incentive amount greater than
3000
mysql> select First_name,Incentive_Amt from Employee inner join incentive on employee.employee_id=incentive.employee_ref_id where incentive_amt>3000;
+------------+---------------+
| First_name | Incentive_Amt |
+------------+---------------+
| John       |          5000 |
| Roy        |          4000 |
| John       |          4500 |
| Michael    |          3500 |
+------------+---------------+

Question 10: 10. Create After Insert trigger on Employee table which insert records in
viewtable