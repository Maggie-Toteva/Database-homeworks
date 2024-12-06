-- 1
CREATE VIEW samsBills
AS (SELECT first_name, surname, bill_date, cust_name, bill_total
from reststaff JOIN restbill on stafF_no = waiter_no
where first_name = "Sam"); 
 
 -- 2
select * from samsBills where bill_total > 400;
 
-- 3
CREATE VIEW roomTotals AS 
(SELECT t2.room_name, sum(t1.bill_total) as total_sum 
from restbill t1
inner join restrest_table t2
on t1.table_no = t2.table_no group by t2.room_name);

-- 4

CREATE VIEW teamTotals AS
(SELECT CONCAT(t3.first_name, " ", t3.surname) as headwaiter_name, 
sum(t2.bill_total) as total_sum
from reststaff t1 
join
restbill t2 on t1.staff_no = t2.waiter_no 
join reststaff t3 on t1.headwaiter = t3.staff_no
group by t3.staff_no, t3.first_name, t3.surname);
