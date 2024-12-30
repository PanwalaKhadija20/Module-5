-- 20. From the following table, write a SQL query to select a range of
-- products whose price is in the range Rs.200 to Rs.600. Begin and end
-- values are included. Return pro_id, pro_name, pro_price, and pro_com. 

create table item_mast (PRO_ID int primary key,PRO_NAME varchar (30),PRO_PRICE decimal (7,2),PRO_COM int);
mysql> describe  item_mast;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| PRO_ID    | int          | NO   | PRI | NULL    |       |
| PRO_NAME  | varchar(30)  | YES  |     | NULL    |       |
| PRO_PRICE | decimal(7,2) | YES  |     | NULL    |       |
| PRO_COM   | int          | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
mysql> insert into item_mast values (101, "Mother Board", 3200.00, 15);
mysql> insert into item_mast values (102, "Key Board", 450.00, 16),(103, "ZIP drive", 250.00, 14),(104, "Speaker", 550.00, 16),(105, "Monitor", 5000.00, 11);
insert into item_mast values (106, "DVD drive", 900.00, 12),(107, "CD drive", 800.00, 12),(108, "Printer", 2600.00, 13);
insert into item_mast values (109, "Refill cartridge", 350.00, 13),(110, "Mouse", 250.00, 12);
mysql> select * from item_mast;
+--------+------------------+-----------+---------+
| PRO_ID | PRO_NAME         | PRO_PRICE | PRO_COM |
+--------+------------------+-----------+---------+
|    101 | Mother Board     |   3200.00 |      15 |
|    102 | Key Board        |    450.00 |      16 |
|    103 | ZIP drive        |    250.00 |      14 |
|    104 | Speaker          |    550.00 |      16 |
|    105 | Monitor          |   5000.00 |      11 |
|    106 | DVD drive        |    900.00 |      12 |
|    107 | CD drive         |    800.00 |      12 |
|    108 | Printer          |   2600.00 |      13 |
|    109 | Refill cartridge |    350.00 |      13 |
|    110 | Mouse            |    250.00 |      12 |
+--------+------------------+-----------+---------+



Ans : SELECT pro_id, pro_name, pro_price, pro_com
    -> FROM item_mast
    -> WHERE pro_price BETWEEN 200 AND 600;
+--------+------------------+-----------+---------+
| pro_id | pro_name         | pro_price | pro_com |
+--------+------------------+-----------+---------+
|    102 | Key Board        |    450.00 |      16 |
|    103 | ZIP drive        |    250.00 |      14 |
|    104 | Speaker          |    550.00 |      16 |
|    109 | Refill cartridge |    350.00 |      13 |
|    110 | Mouse            |    250.00 |      12 |
+--------+------------------+-----------+---------+
5 rows in set (0.00 sec)