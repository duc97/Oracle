-- Bài tập 1: Viết một vòng lặp FOR trong PL/SQL để in ra 10 số nguyên từ 1 đến 10.
DECLARE
   i number(2);
BEGIN
   i := 1;
   -- Using FOR loop
   FOR i IN 1..10 LOOP
      dbms_output.put_line(i);
   END LOOP;
END;

-- Bài tập 2: Sử dụng vòng lặp WHILE trong PL/SQL để in ra 10 số nguyên từ 1 đến 10.
i := 1;
   -- Using WHILE loop
   WHILE i <= 10 LOOP
      dbms_output.put_line(i);

      i := i + 1;
   END LOOP;
-- Bài tập 3: Tạo một block PL/SQL đơn giản để hiển thị một thông điệp "Hello, Oracle!"
BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello, Oracle!');
END;

-- Bài tập 4: Tạo một procedure trong Oracle để hiển thị một thông điệp "Hello, Oracle!".

BEGIN
   DBMS_OUTPUT.PUT_LINE('Hello, Oracle!');
END;



-- Bài tập 5: Tạo một procedure để hiển thị tổng của hai số.
CREATE OR REPLACE PROCEDURE sum_two_numbers(a IN NUMBER, b IN NUMBER) AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('The sum is:' || (a + b));
END;


-- Bài tập 6: Tạo một procedure để tìm giá trị tuyệt đối của một số.
CREATE OR REPLACE PROCEDURE absolute_value(a IN NUMBER) AS
BEGIN
   DBMS_OUTPUT.PUT_LINE('The absolute value is: ' || ABS(a));
END;



-- Bài tập 7: Sử dụng vòng lặp FOR để lặp qua và in ra tất cả các giá trị trong một bảng.
DECLARE
   CURSOR numbers_cursor IS
      SELECT value
      FROM Numbers;
   number_rec numbers_cursor%ROWTYPE;
BEGIN
   FOR number_rec IN numbers_cursor LOOP
      DBMS_OUTPUT.PUT_LINE('Number: ' || number_rec.value);
   END LOOP;
END;



-- Bài tập 8: Sử dụng vòng lặp WHILE để lặp qua và in ra tất cả các giá trị trong một bảng.
DECLARE
   CURSOR numbers_cursor IS
      SELECT value
      FROM Numbers;
   number_rec numbers_cursor%ROWTYPE;
BEGIN
   OPEN numbers_cursor;
   LOOP
      FETCH numbers_cursor INTO number_rec;
      EXIT WHEN numbers_cursor%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Number: ' || number_rec.value);
   END LOOP;
   CLOSE numbers_cursor;
END;

-- Bài tập 9: Tạo một procedure để chèn một giá trị vào một bảng.
CREATE OR REPLACE PROCEDURE insert_number(a IN NUMBER) AS
BEGIN
   INSERT INTO Numbers (value) VALUES (a);
   COMMIT;
END;


-- Bài tập 10: Sử dụng hàm TREAT để chuyển đổi một đối tượng sang một loại đối tượng khác trong Oracle.
-- Hàm TREAT trong Oracle cho phép chúng ta xử lý một đối tượng như thể nó thuộc một loại đối tượng con nhất định. Đây là một tính năng hướng đối tượng PL/SQL khá phức tạp và thường được sử dụng trong các tình huống nâng cao.
-- Ví dụ sau giả sử chúng ta có đối tượng Animal và Dog (đối tượng con của Animal), và một hàm bark chỉ có trong đối tượng Dog:

CREATE TYPE Animal AS OBJECT (
    name VARCHAR2(100)
) NOT FINAL;
/

CREATE TYPE Dog UNDER Animal (
    breed VARCHAR2(100)
);
/

CREATE TYPE BODY Dog AS
    PROCEDURE bark AS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Woof!');
    END;
END;
/

-- Bây giờ giả sử chúng ta có một thủ tục lưu trữ muốn "cho phép" một đối tượng Animal sủa, nếu đó là một con chó. Chúng ta có thể sử dụng hàm TREAT để thực hiện điều này:

CREATE OR REPLACE PROCEDURE let_animal_bark(animal IN Animal) AS
    dog Dog;
BEGIN
    dog := TREAT(animal AS Dog);
    IF dog IS NOT NULL THEN
        dog.bark();
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('The animal cannot bark.');
END;
/

-- Lưu ý rằng đoạn mã này sẽ không báo lỗi nếu bạn cố gắng "cho phép" một con vật không phải chó sủa - thay vào đó, nó chỉ sẽ không làm gì cả.
-- Đây là một ví dụ rất cơ bản về cách sử dụng hàm TREAT. Trong thực tế, bạn có thể sử dụng nó trong nhiều tình huống phức tạp hơn liên quan đến lập trình hướng đối tượng trong PL/SQL.