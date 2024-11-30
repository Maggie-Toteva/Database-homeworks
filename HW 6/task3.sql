-- 1
SELECT first_name, surname FROM reststaff INNER JOIN restbill on staff_no = waiter_no
where cust_name = "Tanya Singh";
-- 2
SELECT room_date FROM restroom_management T1 JOIN reststaff T2 on T1.headwaiter = T2.headwaiter 
WHERE T1.room_name = "Green" 
AND T2.headwaiter = 10 
AND T1.room_date LIKE "1602%";
-- 3
SELECT T2.first_name, T2.surname FROM reststaff T1 INNER JOIN reststaff T2
ON T1.headwaiter = T2.headwaiter WHERE T1.first_name = "Zoe";
-- 4 
SELECT cust_name, bill_total, first_name, surname from restbill 
inner join reststaff on waiter_no = staff_no order by bill_total desc;
-- 5
SELECT first_name, surname from reststaff inner join restbill on staff_no = waiter_no
where bill_no = 14 or bill_no = 17;
-- 6 
SELECT first_name, surname from reststaff T1 inner join restroom_management T2 on 
T1.headwaiter = T2.headwaiter WHERE room_name = "Blue" AND room_date = "160312";