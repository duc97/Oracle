/*
021-Bảng dual là gì, những lệnh hay dùng với bảng DUAL
Bảng "DUAL" trong cơ sở dữ liệu Oracle được sử dụng như một bảng tạm thời 
để thực hiện các câu lệnh SQL không phụ thuộc vào bất kỳ bảng nào khác.
*/
--Lấy ngày hiện tại
SELECT SYSDATE FROM DUAL;

SELECT 3.14159 AS PI FROM DUAL;
--Lấy tên đăng nhập người dùng hiện tại
SELECT USER FROM dual;
--Lấy ngày và giờ hiện tại
SELECT SYSTIMESTAMP FROM dual;
--Lấy chuỗi ký tự trong chữ hoa
SELECT UPPER('Hoang') AS Uppercase FROM DUAL;
--Lấy số nguyên ngẫu nhiên
SELECT ROUND(DBMS_RANDOM.VALUE(1, 100)) AS RandomNumber FROM DUAL;
--Lấy thông tin phiên bản Oracle
SELECT * FROM V$VERSION;
--Lấy độ dài của một chuỗi ký tự
SELECT LENGTH('Cường') AS StringLength FROM DUAL;
--Lấy giá trị của hàm SQRT (căn bậc hai) của một số
SELECT SQRT(100) SquareRoot FROM DUAL;
--Lấy ngày hiện tại với định dạng cụ thể 'DD-MON-YYYY'
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS CurrentDate FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS') AS CurrentDateTime FROM DUAL;
--Lấy kết quả của phép so sánh
SELECT 
    CASE WHEN 11 > 100 THEN 'True' ELSE 'False' END AS ComparisonResult 
FROM DUAL;
--Tạo một chuỗi ký tự kết hợp từ nhiều chuỗi ký tự khác(concatenate)
SELECT 'Hello' || ' ' || 'World' || ' !' AS ConcatenatedString FROM DUAL;
--Lấy giá trị của hàm TRUNC (làm tròn số)
SELECT TRUNC(3.14159) AS TruncatedNumber FROM DUAL;
--Lấy giá trị của hàm MOD (chia lấy dư)
SELECT MOD(10, 5) AS Remainder FROM DUAL;
--Lấy ngày trong tuần của ngày hiện tại
SELECT TO_CHAR(SYSDATE, 'D') AS DayOfWeek FROM DUAL;
--Lấy giá trị NULL nhưng hiển thị thông báo thay thế
SELECT NVL(NULL, 'No Value') AS Value FROM DUAL;
--Lấy ngày đầu tiên của tháng hiện tại
SELECT TRUNC(SYSDATE, 'MONTH') AS FirstDayOfMonth FROM DUAL;
--Lấy giá trị của hàm LOG (logarit tự nhiên)
SELECT LN(10) AS NaturalLogarithm FROM DUAL;
--Lấy kết quả của phép tính số học với số thập phân
SELECT POWER(2, 32) AS CalculationResult FROM DUAL;
--Lấy giá trị của hàm ABS (giá trị tuyệt đối)
SELECT ABS(-12) AS AbsoluteValue FROM DUAL;
--Lấy giá trị của hàm CEIL (làm tròn lên)
SELECT CEIL(4.3) AS CeilValue FROM DUAL;
--Lấy giá trị của hàm FLOOR (làm tròn xuống)
SELECT FLOOR(4.8) AS FloorValue FROM DUAL;
--Lấy kết quả của phép chia
SELECT ROUND(10 / 3,3) AS DivisionResult FROM DUAL;
--Lấy giá trị của hàm GREATEST (giá trị lớn nhất):
SELECT GREATEST(10, 20, 15) AS GreatestValue FROM DUAL;
--Lấy giá trị của hàm LEAST (giá trị nhỏ nhất)
SELECT LEAST(10, 20, 15) AS LeastValue FROM DUAL;
--Lấy giá trị của hàm TRIM (loại bỏ khoảng trắng từ hai bên chuỗi)
SELECT TRIM('        hoangnd  ') AS TrimmedString FROM DUAL;
--Lấy giá trị của hàm MONTHS_BETWEEN (số tháng giữa hai ngày)
SELECT MONTHS_BETWEEN(
    TO_DATE('2022-12-01', 'YYYY-MM-DD'), 
    TO_DATE('2022-01-01', 'YYYY-MM-DD')
    ) AS MonthsBetween 
FROM DUAL;
--Lấy giá trị của hàm INITCAP (viết hoa chữ cái đầu của mỗi từ trong chuỗi)
SELECT INITCAP('hello world') AS InitCapString FROM DUAL;
/*
Lưu ý rằng bảng "DUAL" trong Oracle không chứa dữ liệu thực sự, 
nó chỉ được sử dụng để thực hiện các câu lệnh đơn giản và trả về kết quả ngay lập tức
*/


