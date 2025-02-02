/*
056-Làm việc với mệnh đề WITH, hay Common Table Expression (CTE)
WITH clause, còn được gọi là Common Table Expression (CTE), 
được sử dụng để tạo một tập kết quả tạm thời, không cần đặt tên, 
có thể được tham chiếu trong câu truy vấn khác. 
Đây là một cách hiệu quả để phân rã các truy vấn phức tạp thành các phần nhỏ,dễ quản lý hơn
*/
--Truy vấn tổng lương theo phòng ban
WITH dept_salaries AS (
  SELECT department_id, SUM(salary) as total_salary
  FROM employees
  GROUP BY department_id
)
SELECT d.department_name, ds.total_salary
FROM departments d
JOIN dept_salaries ds ON d.department_id = ds.department_id;

--Sử dụng nhiều CTE trong cùng một truy vấn
WITH 
  dept_salaries AS (
    SELECT department_id, SUM(salary) as total_salary
    FROM employees
    GROUP BY department_id
  ),
  dept_count AS (
    SELECT department_id, COUNT(*) as num_employees
    FROM employees
    GROUP BY department_id
  )
SELECT d.department_name, ds.total_salary, dc.num_employees
FROM departments d
JOIN dept_salaries ds ON d.department_id = ds.department_id
JOIN dept_count dc ON d.department_id = dc.department_id;

--CTE đệ quy: Liệt kê nhân viên và người quản lý của họ (chỉ hoạt động trên Oracle 11g và phiên bản sau)
--Lưu ý rằng level không phải là một trường trong bảng employees, 
--mà chỉ là một trường tạm thời được tạo trong CTE để biểu diễn cấp độ trong hệ thống phân cấp quản lý.
WITH employee_hierarchy (employee_id, last_name, manager_id, employee_level) AS (
  SELECT employee_id, last_name, manager_id, 1
  FROM employees
  WHERE manager_id IS NULL
  UNION ALL
  SELECT e.employee_id, e.last_name, e.manager_id, eh.employee_level + 1
  FROM employees e
  JOIN employee_hierarchy eh ON e.manager_id = eh.employee_id
)
SELECT * 
FROM employee_hierarchy
ORDER BY employee_level, last_name;
