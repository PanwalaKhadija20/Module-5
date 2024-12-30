22. From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.' Sample table: item_mast


Ans : SELECT pro_name AS 'Item Name', pro_price AS 'Price in Rs.'
    -> FROM item_mast;
+------------------+--------------+
| Item Name        | Price in Rs. |
+------------------+--------------+
| Mother Board     |      3200.00 |
| Key Board        |       450.00 |
| ZIP drive        |       250.00 |
| Speaker          |       550.00 |
| Monitor          |      5000.00 |
| DVD drive        |       900.00 |
| CD drive         |       800.00 |
| Printer          |      2600.00 |
| Refill cartridge |       350.00 |
| Mouse            |       250.00 |
+------------------+--------------+
10 rows in set (0.00 sec)