-- 23. From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price. Sample table: item_mast



Ans :  SELECT pro_name, pro_price
    -> FROM item_mast
    -> WHERE pro_price >= 250
    -> ORDER BY pro_price DESC, pro_name ASC;
+------------------+-----------+
| pro_name         | pro_price |
+------------------+-----------+
| Monitor          |   5000.00 |
| Mother Board     |   3200.00 |
| Printer          |   2600.00 |
| DVD drive        |    900.00 |
| CD drive         |    800.00 |
| Speaker          |    550.00 |
| Key Board        |    450.00 |
| Refill cartridge |    350.00 |
| Mouse            |    250.00 |
| ZIP drive        |    250.00 |
+------------------+-----------+
10 rows in set (0.06 sec)