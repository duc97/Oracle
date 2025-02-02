/*
035-Các câu lệnh điều khiển: IF, CASE, vòng lặp: LOOP, WHILE, FOR
Một số ví dụ về cấu trúc điều khiển IF, CASE và 
các vòng lặp LOOP, WHILE, FOR trong PL/SQL
*/
--Câu lệnh điều khiển IF
DECLARE 
   x NUMBER := 85; 
BEGIN 
   IF x >= 50 THEN 
      DBMS_OUTPUT.PUT_LINE('Số này lớn hơn hoặc bằng 50'); 
   END IF; 
END; 
/
--Câu lệnh IF-ELSE
DECLARE 
   num NUMBER := 45; 
BEGIN 
   IF num >= 50 THEN 
      DBMS_OUTPUT.PUT_LINE('Số này lớn hơn hoặc bằng 50'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('Số này nhỏ hơn 50'); 
   END IF; 
END; 
/
--Câu lệnh IF-ELSIF-ELSE
DECLARE 
   num NUMBER := 61; 
BEGIN 
   IF num > 80 THEN 
      DBMS_OUTPUT.PUT_LINE('Số này lớn hơn 80'); 
   ELSIF num > 60 THEN 
      DBMS_OUTPUT.PUT_LINE('Số này lớn hơn 60'); 
   ELSE 
      DBMS_OUTPUT.PUT_LINE('Số này nhỏ hơn hoặc bằng 60'); 
   END IF; 
END; 
/

--Câu lệnh điều khiển CASE
DECLARE 
   num NUMBER := 52; 
BEGIN 
   CASE 
      WHEN num > 80 THEN 
         DBMS_OUTPUT.PUT_LINE('Số này lớn hơn 80'); 
      WHEN num > 60 THEN 
         DBMS_OUTPUT.PUT_LINE('Số này lớn hơn 60'); 
      ELSE 
         DBMS_OUTPUT.PUT_LINE('Số này nhỏ hơn hoặc bằng 60'); 
   END CASE; 
END; 
/
--Vòng lặp LOOP
DECLARE 
   i NUMBER := 1; 
BEGIN 
   LOOP
      DBMS_OUTPUT.PUT_LINE('Giá trị hiện tại của num là: ' || i);
      i := i + 1; 
      EXIT WHEN i > 10;
   END LOOP;
END; 
/

--Vòng lặp WHILE
DECLARE 
   num NUMBER := 1; 
BEGIN 
   WHILE num <= 10 LOOP
      DBMS_OUTPUT.PUT_LINE('Giá trị hiện tại của num là: ' || num);
      num := num + 1; 
   END LOOP;
END; 
/
-- Vòng lặp FOR
DECLARE 
BEGIN 
   FOR num IN 1..10 LOOP
      DBMS_OUTPUT.PUT_LINE('Giá trị hiện tại của num là: ' || num);
   END LOOP;
END; 
/
