-- 1
SELECT SUM(bill_total) AS Income FROM restbill;
-- 2 
SELECT SUM(bill_total) AS "Feb Income" FROM restbill where bill_date like "1602%";
-- 3 
SELECT AVG(bill_total) as "Table 2 avg" from restbill where table_no = 2;
-- 4 
SELECT MIN(no_of_seats) as "MIN", 
MAX(no_of_seats) as "MAX",
ROUND(AVG(no_of_seats)) as "AVG" 
from restrest_table where room_name = "blue";
-- 5
SELECT count(distinct table_no) from restbill where waiter_no = 002 or waiter_no = 004;
