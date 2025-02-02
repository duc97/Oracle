/*
057-Phân cụm với PARTITION BY và áp dụng các hàm AGGREGATE 
PARTITION BY là một cụm từ trong SQL được sử dụng cùng với các hàm tổng hợp như SUM, AVG, MAX, MIN, etc., 
để thực hiện các phép tính tổng hợp trên từng nhóm độc lập trong bảng, chứ không phải trên toàn bộ bảng
*/
--Sử dụng PARTITION BY để tính tổng lương cho mỗi phòng ban
SELECT d.department_name, e.salary,
       SUM(e.salary) OVER (PARTITION BY e.department_id) as department_total
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

--Sử dụng PARTITION BY để tính lương cao nhất trong mỗi phòng ban
SELECT department_id, salary, 
       (MAX(salary) OVER (PARTITION BY department_id)) as max_department_salary
FROM employees;
--Sử dụng PARTITION BY để tính lương trung bình trong mỗi phòng ban
SELECT department_id, salary, 
       (AVG(salary) OVER (PARTITION BY department_id)) as avg_department_salary
FROM employees;
--Sử dụng PARTITION BY cùng với ORDER BY để xếp hạng lương trong mỗi phòng ban
SELECT department_id, salary, 
       RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as rank
FROM employees;

--Sử dụng PARTITION BY cùng với ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
--để tính tổng lương tích lũy trong mỗi phòng ban
SELECT department_id, salary, 
       (SUM(salary) OVER (PARTITION BY department_id ORDER BY hire_date 
                         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)) as running_total
FROM employees;

--Sử dụng PARTITION BY cùng với RANK() để tìm nhân viên có lương cao nhất trong mỗi phòng ban
SELECT 
    d.department_name, 
    e.first_name || ' ' ||e.last_name full_name, 
    e.salary
FROM (
  SELECT department_id, first_name, last_name, salary,
         RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) as rank
  FROM employees
) e
JOIN departments d ON e.department_id = d.department_id
WHERE e.rank = 1;