/*
034-Cấu trúc của một block PL/SQL, biến và kiểu dữ liệu
PL/SQL, hay Procedural Language/Structured Query Language, 
là một ngôn ngữ lập trình phía máy chủ được Oracle Corporation 
phát triển dựa trên ngôn ngữ lập trình SQL.

Các tính năng chính của PL/SQL:

Hướng thủ tục: PL/SQL có các cấu trúc điều khiển hướng thủ tục, bao gồm các câu lệnh điều kiện IF-THEN-ELSE, các vòng lặp WHILE và FOR, và nhiều hơn nữa.

Giao dịch: cho phép thực hiện các câu lệnh INSERT, UPDATE, DELETE, và SELECT trong các khối PL/SQL.

Hàm(function) và thủ tục(procedure): 
giúp tái sử dụng và quản lý mã nguồn một cách tốt hơn.

Xử lý ngoại lệ: PL/SQL cho phép bạn xử lý các ngoại lệ (lỗi) một cách linh hoạt và an toàn.
*/
--Dưới đây là một ví dụ đơn giản về block PL/SQL:
DECLARE --(không bắt buộc): Đây là nơi bạn khai báo biến, hằng số,
   num1 NUMBER := 10; 
   num2 NUMBER := 0; 
   result NUMBER; 
BEGIN --(bắt buộc): Phần này chứa các câu lệnh PL/SQL mà bạn muốn thực thi
   result := num1 / num2; 
   DBMS_OUTPUT.PUT_LINE('Giá trị là: ' || result);
EXCEPTION --(không bắt buộc): Đây là nơi xử lý các lỗi hoặc ngoại lệ có thể xảy ra 
   WHEN ZERO_DIVIDE THEN
       DBMS_OUTPUT.PUT_LINE('Error: Division by zero');
END;--(bắt buộc): Đánh dấu kết thúc của block PL/SQL
/

--Một khối lệnh khác
BEGIN
    --PUT và NEW_LINE
    DBMS_OUTPUT.PUT('Hello,');
    DBMS_OUTPUT.NEW_LINE;
    DBMS_OUTPUT.PUT(' World!');
    DBMS_OUTPUT.NEW_LINE;
END;--(bắt buộc): Đánh dấu kết thúc của block PL/SQL
/













