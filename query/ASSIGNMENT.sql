--Bài tập 1: Tạo một sequence tên là "seq_id" bắt đầu từ 1 và tăng lên 1 sau mỗi lần gọi.

CREATE SEQUENCE seq_id START WITH 1 INCREMENT BY 1;

--Bài tập 2: Sử dụng sequence "seq_id" vừa tạo để chèn một bản ghi mới vào bảng "Students" với ID được tạo từ sequence.

INSERT INTO Students(ID, Name, Age, Address)

VALUES (seq_id.NEXTVAL, 'John Doe', 20, '123 Main St, Hanoi');

--Bài tập 3: Tạo một sequence khác tên là "seq_order_id" bắt đầu từ 1000 và tăng lên 10 sau mỗi lần gọi

CREATE SEQUENCE seq_order_id

  START WITH 1000

  INCREMENT BY 10;



--Bài tập 4: Trong bảng "Courses", đếm số lượng sinh viên đăng ký cho mỗi khóa học

SELECT Course_Name, COUNT(Student_ID) as Student_Count

FROM Courses

GROUP BY Course_Name;

--Bài tập 5: Trong bảng "Courses", liệt kê các khóa học có số lượng sinh viên đăng ký lớn hơn 10.

SELECT Course_Name, COUNT(Student_ID) as Student_Count

FROM Courses

GROUP BY Course_Name

HAVING COUNT(Student_ID) > 10;

--Bài tập 6: Trong bảng "Courses", liệt kê các khóa học có số lượng sinh viên đăng ký lớn hơn trung bình.

SELECT Course_Name, COUNT(Student_ID) as Student_Count

FROM Courses

GROUP BY Course_Name

HAVING COUNT(Student_ID) > (SELECT AVG(Student_Count) FROM (SELECT COUNT(Student_ID) as Student_Count FROM Courses GROUP BY Course_Name));

--Bài tập 7: Kết hợp dữ liệu từ bảng "Students" và "Courses" để liệt kê tên sinh viên và tên khóa học mà họ đã đăng ký.

SELECT Students.Name, Courses.Course_Name

FROM Students

JOIN Registrations ON Students.ID = Registrations.Student_ID

JOIN Courses ON Courses.ID = Registrations.Course_ID;



--Bài tập 8: Trong bảng "Students", nhóm theo địa chỉ và đếm số lượng sinh viên ở mỗi địa chỉ.

SELECT Address, COUNT(*) as Student_Count

FROM Students

GROUP BY Address;

--Bài tập 9: Sử dụng câu lệnh JOIN để liên kết dữ liệu giữa 2 bảng "Students" và "Registrations", sau đó sắp xếp theo tên sinh viên.

SELECT Students.Name, Registrations.Course_ID

FROM Students

JOIN Registrations ON Students.ID = Registrations.Student_ID

ORDER BY Students.Name;

--Bài tập 10: Sử dụng câu lệnh JOIN để liên kết dữ liệu giữa 2 bảng "Courses" và "Registrations", sau đó liệt kê các khóa học có số lượng đăng ký lớn hơn 5.

SELECT Courses.Course_Name, COUNT(Registrations.Student_ID) as Registration_Count

FROM Courses

JOIN Registrations ON Courses.ID = Registrations.Course_ID

GROUP BY Courses.Course_Name

HAVING COUNT(Registrations.Student_ID) > 5;