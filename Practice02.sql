--  문제 1
SELECT COUNT(manager_id) "haveMngCnt" 
FROM employees;

--  문제 2
SELECT MAX(salary) 최고임금, 
    MIN(salary) 최저임금, 
    MAX(salary) - MIN(salary) "최고임금 - 최저임금"
FROM employees;

--  문제 3
SELECT TO_CHAR(MAX(hire_date), 'YYYY MONTH DD')
FROM employees;

--  문제 4
SELECT department_id, AVG(salary), MAX(salary), MIN(salary)
FROM employees
GROUP BY department_id
ORDER BY department_id DESC;

--  문제 5
SELECT job_id,AVG(salary), MIN(salary), MAX(salary)
FROM employees
GROUP BY job_id
ORDER BY MIN(salary) DESC, ROUND(AVG(salary));

--  문제 6
SELECT TO_CHAR(MIN(hire_date), 'YYYY-MM-DD DAY')
FROM employees;

--  문제 7
SELECT department_id 부서,
    AVG(salary) 평균임금, 
    MIN(salary) 최저임금,
    AVG(salary) - MIN(salary) "평균임금 - 최저임금"
FROM employees
GROUP BY department_id
ORDER BY "평균임금 - 최저임금" DESC;

--  문제 8
SELECT job_id 업무,
    MAX(salary) - MIN(salary) 차이
FROM employees
GROUP BY job_id
ORDER BY 차이 DESC;

--  문제 9
SELECT  manager_id,
    hire_date,
    ROUND(AVG(salary), 1),
    MIN(salary),
    MAX(salary)
FROM employees
GROUP BY manager_id
    HAVING ROUND(AVG(salary), 1) >= 5000 AND hire_date > '05/01/01' AND manager_id is not null
ORDER BY ROUND(AVG(salary), 1) DESC;

SELECT manager_id FROM employees;
    
--  문제 10
SELECT first_name, hire_date,
    CASE WHEN hire_date < '02/12/31' THEN '창립멤버'
        WHEN hire_date > '03/01/01' AND hire_date < '03/12/31' THEN '03년입사'
        WHEN hire_date > '04/01/01' AND hire_date < '04/12/31' THEN '04년입사'
        ELSE '상장이후입사'
    END optDate
FROM employees
ORDER BY hire_date;