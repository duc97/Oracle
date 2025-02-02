-- Tạo view 'student_view' hiển thị tên và tuổi của sinh viên từ bảng "Students".

CREATE VIEW student_view AS

SELECT Name, Age

FROM Students;

-- Tạo view 'course_view' hiển thị tên khóa học và số lượng sinh viên đăng ký từ bảng "Courses" và "Registrations".

CREATE VIEW course_view AS

SELECT Course_Name, COUNT(Student_ID) AS num_students

FROM Courses JOIN Registrations ON Courses.Course_ID = Registrations.Course_ID

GROUP BY Course_Name;

-- Sử dụng view 'student_view' để lấy danh sách tên sinh viên từ "Students".

SELECT * FROM student_view;

-- Sử dụng view 'course_view' để lấy danh sách các khóa học có ít nhất 10 sinh viên đăng ký.

SELECT * FROM course_view WHERE num_students >= 10;

-- Sử dụng JOIN để kết nối 3 bảng "Students", "Courses", và "Registrations", hiển thị tên sinh viên, tên khóa học và ngày đăng ký.

SELECT Students.Name, Courses.Course_Name, Registrations.Registration_Date

FROM ((Students JOIN Registrations ON Students.ID = Registrations.Student_ID) JOIN Courses ON Courses.Course_ID = Registrations.Course_ID);

-- Sử dụng subquery trong SELECT để lấy tên khóa học có nhiều sinh viên đăng ký nhất.

SELECT Course_Name FROM Courses WHERE Course_ID =

(SELECT Course_ID FROM Registrations GROUP BY Course_ID ORDER BY COUNT(Student_ID) DESC LIMIT 1);

-- Sử dụng subquery trong WHERE để lấy danh sách sinh viên đã đăng ký khóa học 'Mathematics'.

SELECT Name FROM Students WHERE ID IN

(SELECT Student_ID FROM Registrations WHERE Course_ID =

(SELECT Course_ID FROM Courses WHERE Course_Name = 'Mathematics'));

-- Sử dụng subquery trong FROM để tạo danh sách các khóa học cùng với số lượng sinh viên đăng ký.

SELECT Course_Name, COUNT(Student_ID) AS num_students

FROM (SELECT Courses.Course_Name, Registrations.Student_ID

FROM Courses JOIN Registrations ON Courses.Course_ID = Registrations.Course_ID)

GROUP BY Course_Name;

-- Tạo một view 'student_course_view' kết nối thông tin từ 3 bảng: "Students", "Courses", và "Registrations".

CREATE VIEW student_course_view AS

SELECT Students.Name, Courses.Course_Name, Registrations.Registration_Date

FROM ((Students

JOIN Registrations ON Students.ID = Registrations.Student_ID)

JOIN Courses ON Courses.Course_ID = Registrations.Course_ID);



-- Sử dụng view 'student_course_view' để lấy danh sách sinh viên đã đăng ký khóa học 'Mathematics'.

SELECT * FROM student_course_view WHERE Course_Name = 'Mathematics';

-- Sử dụng subquery trong FROM để tạo danh sách các khóa học cùng với số lượng sinh viên đăng ký, sau đó sắp xếp theo số lượng sinh viên giảm dần.

SELECT Course_Name, num_students

FROM (SELECT Courses.Course_Name, COUNT(Registrations.Student_ID) AS num_students

FROM Courses JOIN Registrations ON Courses.Course_ID = Registrations.Course_ID

GROUP BY Courses.Course_Name)

ORDER BY num_students DESC;

-- Sử dụng JOIN và subquery để lấy tên các sinh viên đã đăng ký ít nhất 3 khóa học.

SELECT Students.Name FROM Students WHERE Students.ID IN

(SELECT Registrations.Student_ID

FROM Registrations

GROUP BY Registrations.Student_ID

HAVING COUNT(Registrations.Course_ID) >= 3);