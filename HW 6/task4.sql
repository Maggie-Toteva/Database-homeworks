-- 1
SELECT DISTINCT t1.cust_name FROM restBill t1 WHERE t1.bill_total > 450.00
AND t1.table_no IN ( 
	SELECT t2.table_no
    FROM restRest_table t2
    JOIN restRoom_management t3 ON t2.room_name = t3.room_name AND t1.bill_date = t3.room_date
    JOIN restStaff t4 ON t3.headwaiter = t4.staff_no
    WHERE t4.first_name = 'Charles'
);
-- 2
SELECT t1.first_name , t1.surname  FROM restStaff t1
WHERE t1.staff_no = (
    SELECT DISTINCT t2.headwaiter
    FROM restRoom_management t2
    JOIN restRest_table t3 ON t2.room_name = t3.room_name
    JOIN restBill t4 ON t3.table_no = t4.table_no
    WHERE t4.cust_name = 'Nerida Smith' 
	AND t4.bill_date = 160111
);
-- 3
SELECT cust_name FROM restBill
WHERE bill_total = (
    SELECT MIN(bill_total)
    FROM restBill
);
-- 4
SELECT first_name, surname FROM restStaff 
WHERE staff_no NOT IN (
    SELECT DISTINCT waiter_no
    FROM restBill 
);
-- 5
