-- Bài tập 1: Viết một PL/SQL block để chèn một bản ghi vào bảng 'Students'. Nếu ID sinh viên đã tồn tại, ném ra một exception.
DECLARE
  student_id_exists EXCEPTION;
BEGIN
  INSERT INTO Students(ID, Name, Age, Address)
  VALUES (1, 'John Doe', 20, '123 Main St, Hanoi');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    RAISE student_id_exists;
END;
/
-- Bài tập 2: Tạo một hàm trả về một bảng chứa tất cả các khóa học.
CREATE TYPE Course AS OBJECT (
  Course_ID NUMBER,
  Course_Name VARCHAR2(50),
  Course_Description VARCHAR2(255)
);
/
CREATE TYPE Course_Table AS TABLE OF Course;
/
CREATE FUNCTION get_all_courses RETURN Course_Table IS
  course_list Course_Table := Course_Table();
  CURSOR c IS SELECT * FROM Courses;
  temp Course;
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO temp;
    EXIT WHEN c%NOTFOUND;
    course_list.EXTEND;
    course_list(course_list.LAST) := temp;
  END LOOP;
  CLOSE c;
  RETURN course_list;
END;
/
-- Bài tập 3: Viết một PL/SQL block để cập nhật điểm của một sinh viên. Sử dụng implicit cursor để kiểm tra số lượng bản ghi được cập nhật.
DECLARE
  row_count INTEGER;
BEGIN
  UPDATE Students SET Grade = 90 WHERE ID = 1;
  row_count := SQL%ROWCOUNT;
  DBMS_OUTPUT.PUT_LINE('Updated ' || row_count || ' rows.');
END;
/

-- Bài tập 4: Tạo một hàm trả về một bảng chứa thông tin về tất cả các sinh viên đến từ một thành phố nhất định.
CREATE FUNCTION get_students_from_city(city_name IN VARCHAR2) RETURN Students_Table IS
  students Students_Table := Students_Table();
  CURSOR c IS SELECT * FROM Students WHERE Address LIKE '%' || city_name || '%';
  temp_student Student%ROWTYPE;
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO temp_student;
    EXIT WHEN c%NOTFOUND;
    students.EXTEND;
    students(students.LAST) := temp_student;
  END LOOP;
  CLOSE c;
  RETURN students;
END;
/

-- Bài tập 5: Viết một PL/SQL block để cập nhật điểm của một sinh viên. Nếu sinh viên không tồn tại, ném ra một exception.
DECLARE
  student_not_found EXCEPTION;
BEGIN
  UPDATE Students SET Grade = 85 WHERE ID = 1;
  IF SQL%ROWCOUNT = 0 THEN
    RAISE student_not_found;
  END IF;
EXCEPTION
  WHEN student_not_found THEN
    DBMS_OUTPUT.PUT_LINE('Student not found.');
END;
/

-- Bài tập 6: Tạo một hàm trả về một bảng chứa thông tin về tất cả các khóa học mà một sinh viên nhất định đã đăng ký.
CREATE FUNCTION get_student_courses(student_id IN NUMBER) RETURN Courses_Table IS
  courses Courses_Table := Courses_Table();
  CURSOR c IS SELECT Courses.* FROM Courses JOIN Registrations ON Courses.ID = Registrations.Course_ID WHERE Registrations.Student_ID = student_id;
  temp_course Course%ROWTYPE;
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO temp_course;
    EXIT WHEN c%NOTFOUND;
    courses.EXTEND;
    courses(courses.LAST) := temp_course;
  END LOOP;
  CLOSE c;
  RETURN courses;
END;
/

-- Bài tập 7: Viết một PL/SQL block để xóa một sinh viên khỏi bảng 'Students'. Sử dụng implicit cursor để kiểm tra số lượng bản ghi bị xóa.
BEGIN
  DELETE FROM Students WHERE ID = 1;
  IF SQL%ROWCOUNT = 0 THEN
    DBMS_OUTPUT.PUT_LINE('No rows deleted.');
  ELSE
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' row(s) deleted.');
  END IF;
END;
/

-- Bài tập 8: Tạo một hàm trả về bảng chứa tất cả các sinh viên có điểm cao hơn một giá trị nhất định.
CREATE TYPE Student AS OBJECT (
  ID NUMBER,
  Name VARCHAR2(50),
  Age NUMBER,
  Address VARCHAR2(255)
);
/
CREATE TYPE Student_Table AS TABLE OF Student;
/
CREATE FUNCTION get_top_students(min_grade NUMBER) RETURN Student_Table IS
  student_list Student_Table := Student_Table();
  CURSOR c IS SELECT * FROM Students WHERE Grade > min_grade;
  temp Student;
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO temp;
    EXIT WHEN c%NOTFOUND;
    student_list.EXTEND;
    student_list(student_list.LAST) := temp;
  END LOOP;
  CLOSE c;
  RETURN student_list;
END;
/
-- Bài tập 9: Viết một PL/SQL block để thêm một sinh viên vào bảng 'Students'. Nếu địa chỉ email của sinh viên đã tồn tại, ném ra một exception.
DECLARE
  email_exists EXCEPTION;
BEGIN
  INSERT INTO Students(ID, Name, Age, Address, Email)
  VALUES (2, 'Jane Doe', 20, '456 Oak St, Hanoi', 'janedoe@example.com');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    RAISE email_exists;
END;
/

-- Bài tập 10: Tạo một hàm trả về bảng chứa tất cả các khóa học có số lượng sinh viên đăng ký vượt quá một giá trị nhất định.
CREATE FUNCTION get_popular_courses(min_students NUMBER) RETURN Course_Table IS
  course_list Course_Table := Course_Table();
  CURSOR c IS SELECT * FROM Courses WHERE (SELECT COUNT(*) FROM Registrations WHERE Course_ID = Courses.ID) > min_students;
  temp Course;
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO temp;
    EXIT WHEN c%NOTFOUND;
    course_list.EXTEND;
    course_list(course_list.LAST) := temp;
  END LOOP;
  CLOSE c;
  RETURN course_list;
END;
/