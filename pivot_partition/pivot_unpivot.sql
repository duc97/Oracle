/*
055-Lệnh PIVOT và INPIVOT
Lệnh PIVOT trong SQL được sử dụng để xoay dữ liệu của bạn từ dạng dọc sang dạng ngang. 
Điều này cho phép bạn chuyển đổi các giá trị duy nhất trong một hoặc nhiều cột thành các cột mới 
trong bảng đầu ra 
*/
SELECT department_id, salary FROM employees;
--xoay ngang, tính tổng lương theo phòng ban
SELECT * FROM (
  SELECT department_id, salary
  FROM employees
)
PIVOT (
  SUM(salary)
  FOR department_id IN (50, 80, 70)
    --Để hiển thị department_name thay vì department_id, 
    --bạn cần kết nối (JOIN) bảng employees với bảng departments 
    --để lấy ra department_name
);

--Đếm số nhân viên theo phòng ban
SELECT department_id, employee_id FROM employees;
SELECT * FROM (
  SELECT department_id, employee_id
  FROM employees
)
PIVOT (
  COUNT(employee_id)
  FOR department_id IN (50, 80, 70)
);
--Đếm số nhân viên theo công việc
SELECT job_id, employee_id FROM employees;
SELECT * FROM (
  SELECT job_id, employee_id
  FROM employees
)
PIVOT (
  COUNT(employee_id)
  FOR job_id IN ('AC_ACCOUNT', 'FI_ACCOUNT')
);

--Trung bình lương theo phòng ban
SELECT department_id, salary FROM employees;

SELECT * FROM (
  SELECT department_id, ROUND(salary, 0) as rounded_salary
  FROM employees
)
PIVOT (
  AVG(rounded_salary)
  FOR department_id IN (50, 80, 70)
);
--Trung bình lương theo công việc
SELECT * FROM (
  SELECT job_id, salary
  FROM employees
)
PIVOT (
  AVG(salary)
  FOR job_id IN ('AC_ACCOUNT', 'FI_ACCOUNT')
);
--lệnh UNPIVOT được sử dụng để thực hiện hoạt động ngược lại với PIVOT, 
--chuyển dữ liệu từ dạng ngang sang dạng dọc. Điều này có nghĩa là 
--UNPIVOT sẽ chuyển đổi các cột của bảng thành các hàng
--ví dụ sử dụng UNPIVOT với bảng DUAL
SELECT 1 AS one, 2 AS two, 3 AS three FROM dual;

SELECT *
FROM (
  SELECT 1 AS one, 2 AS two, 3 AS three FROM dual
)
UNPIVOT (
  VALUE FOR NUMBER_COLUMN
  IN (one, two, three)
);

SELECT * FROM (
  SELECT d.department_name, e.salary
  FROM employees e
  JOIN departments d ON e.department_id = d.department_id
)
PIVOT (
  SUM(salary)
  FOR department_name IN ('Marketing', 'Purchasing', 'Human Resources')
    --Để hiển thị department_name thay vì department_id, 
    --bạn cần kết nối (JOIN) bảng employees với bảng departments 
    --để lấy ra department_name
);

