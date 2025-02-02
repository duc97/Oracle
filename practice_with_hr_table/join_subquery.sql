--028-Các câu lệnh SELECT và SUB-QUERY với bảng employees
SELECT * FROM employees;
SELECT count(*) FROM departments;
--viết các câu lệnh cho bảng employees
--Lấy tất cả các nhân viên có lương lớn hơn 5000
SELECT *
FROM employees
WHERE salary > 5000
ORDER BY salary DESC;
--Lấy các nhân viên thuộc phòng ban có department_id là 30
SELECT *
FROM employees
WHERE department_id = 30;
--Lấy số lượng nhân viên trong mỗi phòng 
SELECT department_id, COUNT(*)
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id;
--Lấy first_name, last_name và email của tất cả nhân viên:
SELECT 
    email,
    first_name, 
    last_name    
FROM employees;
--Lấy danh sách nhân viên mà có quản lý (manager_id khác NULL):
SELECT *
FROM employees
WHERE manager_id IS NOT NULL;

SELECT * FROM employees
WHERE employee_id=100; --sếp tổng
--Lấy các nhân viên được thuê sau ngày 01/03/2008
SELECT *
FROM employees
WHERE hire_date > TO_DATE('2008-03-01', 'YYYY-MM-DD');
--Lấy các nhân viên có first_name bắt đầu bằng chữ 'A':
SELECT *
FROM employees
WHERE first_name LIKE 'A%';
--Lấy các nhân viên có email chứa 'gmail':
SELECT *
FROM employees
WHERE email LIKE '%gmail%';
--Lấy tất cả các nhân viên có lương lớn hơn 6000 và thuộc phòng ban 50
SELECT *
FROM employees
WHERE salary > 6000 AND department_id = 50;

--Lấy tất cả nhân viên có lương từ 2000 đến 4000 
--và thuộc phòng ban có department_id là 10 hoặc 20, hoặc 30
SELECT *
FROM employees
WHERE (salary BETWEEN 2000 AND 4000) 
        AND department_id IN (10, 20, 30);
        
--Lấy tất cả các nhân viên không phải là quản lý 
--(tức là manager_id của họ không xuất hiện trong danh sách manager_id) 
--và có lương dưới 3000

SELECT *
FROM employees
WHERE employee_id NOT IN 
    (SELECT manager_id FROM employees WHERE manager_id IS NOT NULL)
      AND salary < 3000;
--Lấy tất cả các nhân viên được thuê sau ngày 01/01/2007 và có job_id là 'IT_PROG'    

SELECT *
FROM employees
WHERE hire_date > TO_DATE('2007-01-01', 'YYYY-MM-DD') AND job_id = 'IT_PROG';

--Lấy tất cả các nhân viên có hire_date nằm trong năm 2008 và job_id bắt đầu bằng 'SA'
SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 2008 AND UPPER(job_id) LIKE UPPER('SA%');

--Lấy tất cả các nhân viên thuộc phòng ban 10 hoặc 20, và có last_name kết thúc bằng 'tein'
SELECT *
FROM employees
WHERE department_id IN (10, 20) AND last_name LIKE '%tein';

--029-Các lệnh JOIN và SUB QUERY với bảng departments và employees
--lệnh SQL JOIN có thể sử dụng để kết hợp dữ liệu từ hai bảng employees và departments
--INNER JOIN - Lấy tất cả các nhân viên và thông tin về phòng ban mà họ làm việc
SELECT 
    employees.first_name, 
    employees.last_name, 
    departments.department_name, 
    employees.salary
FROM employees
--LEFT JOIN 
--FULL OUTER JOIN -- Lấy tất cả thông tin từ cả hai bảng, bất kể liệu nhân viên có phòng ban hoặc phòng ban có nhân viên:
INNER JOIN departments
ON employees.department_id = departments.department_id;
--aggregation
--Lấy tên phòng ban và số lượng nhân viên trong mỗi phòng

--Để sắp xếp kết quả theo số lượng nhân viên (COUNT(employees.employee_id)), 
--bạn có thể sử dụng mệnh đề ORDER BY trong câu lệnh SQL
SELECT 
    departments.department_name, 
    COUNT(employees.employee_id) AS employee_count
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
ORDER BY employee_count ASC;

--Lấy thông tin về các phòng ban mà không có nhân viên nào
SELECT departments.department_name 
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
WHERE employees.employee_id IS NULL;

--SELECT * FROM departments WHERE department_name='Treasury';
--SELECT * FROM employees WHERE department_id=120;
--Lấy tên phòng ban và lương trung bình của nhân viên trong mỗi phòng
SELECT 
    departments.department_name, 
    ROUND(AVG(employees.salary),2)
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name;

--Lấy thông tin về những nhân viên có lương cao nhất trong mỗi phòng
--sử dụng sub-query và inner-join
SELECT 
    departments.department_name, 
    employees.first_name, 
    employees.last_name, 
    employees.salary
FROM employees
INNER JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) emp_max_salary
ON employees.department_id = emp_max_salary.department_id AND employees.salary = emp_max_salary.max_salary
INNER JOIN departments
ON employees.department_id = departments.department_id;

--Lấy tất cả các nhân viên có lương lớn hơn 5000 và thông tin về phòng ban mà họ làm việc
SELECT 
    employees.first_name, 
    employees.last_name, 
    employees.salary,
    departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE employees.salary > 5000;

--Lấy thông tin về những phòng ban có ít hơn 10 nhân viên nhưng ko được trống
SELECT 
    departments.department_name, 
    COUNT(employees.employee_id) AS employee_count
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
GROUP BY departments.department_name
HAVING COUNT(employees.employee_id) < 10 AND COUNT(employees.employee_id) > 0;
/*
Trong SQL, có nhiều loại join, bao gồm INNER JOIN, LEFT JOIN (hoặc LEFT OUTER JOIN), 
RIGHT JOIN (hoặc RIGHT OUTER JOIN) và FULL JOIN (hoặc FULL OUTER JOIN). 
Trong thực tế, INNER JOIN và LEFT JOIN được sử dụng nhiều nhất. */






























