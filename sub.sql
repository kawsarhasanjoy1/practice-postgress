CREATE TABLE employes(
    employe_id SERIAL PRIMARY KEY,
    employe_name VARCHAR(20) NOT NULL,
    employe_salary INTEGER,
    department_name VARCHAR(25),
    hire_date DATE
)


-- 20 sample rows for employes
INSERT INTO employes (employe_name, employe_salary, department_name, hire_date) VALUES
('Kawsar Hasan',      35000, 'Sales',      '2024-01-15'),
('Ayesha Khan',       42000, 'Marketing',  '2024-02-01'),
('Rafi Chowdhury',    55000, 'IT',         '2024-03-10'),
('Tanvir Ahmed',      38000, 'Support',    '2024-03-25'),
('Mim Akter',         47000, 'Finance',    '2024-04-05'),
('Arif Rahman',       52000, 'R&D',        '2024-04-18'),
('Mehedi Hasan',      40000, 'Operations', '2024-05-02'),
('Sadia Haque',       39000, 'HR',         '2024-05-20'),
('Farhan Ali',        60000, 'IT',         '2024-06-07'),
('Javed Khan',        36000, 'Logistics',  '2024-06-21'),
('Sara Ahmed',        45000, 'Sales',      '2024-07-03'),
('Noor Hossain',      43000, 'Admin',      '2024-07-19'),
('Tuhin Islam',       48000, 'Marketing',  '2024-08-08'),
('Shila Roy',         51000, 'Finance',    '2024-08-22'),
('Naimul Karim',      37000, 'Support',    '2024-09-04'),
('Fariha Tasnim',     61000, 'R&D',        '2024-09-18'),
('Zahid Hasan',       59000, 'IT',         '2024-10-01'),
('Rukhsana Jahan',    44000, 'HR',         '2024-10-15'),
('Imran Hossain',     53000, 'Operations', '2024-11-05'),
('Nusrat Jahan',      47000, 'Sales',      '2024-11-20');


-- sub query 
-- SELECT * FROM employes WHERE employe_salary > (SELECT MAX(employe_salary) FROM  employes WHERE department_name = 'HR')

SELECT department_name , SUM(employe_salary) FROM employes GROUP BY department_name