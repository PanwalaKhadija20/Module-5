-- 21. From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg. Sample table: item_mast


Ans :  SELECT AVG(PRO_PRICE) AS avg
    -> FROM item_mast
    -> WHERE PRO_COM = 16;
+------------+
| avg        |
+------------+
| 500.000000 |
+------------+
1 row in set (0.05 sec)