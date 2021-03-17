--  문제 1
SELECT (first_name || ' ' || last_name) 이름,
    salary 월급,
    phone_number 전화번호,
    hire_date 입사일
FROM employees
ORDER BY hire_date ASC;

--  문제 2
SELECT job_title 업무이름,
    max_salary 최고월급
FROM jobs
ORDER BY max_salary DESC;

--  문제 3
SELECT first_name 이름,
    manager_id "매니저 아이디",
    commission_pct "커미션 비율",
    salary 월급
FROM employees
WHERE manager_id is not null AND 
    commission_pct is null AND 
    salary > 3000
ORDER BY salary DESC;

--  문제 4
SELECT job_title 업무이름,
    max_salary 최고월급
FROM jobs
WHERE max_salary >= 10000
ORDER BY max_salary DESC;

--  문제 5
SELECT first_name 이름,
    salary 월급,
    nvl(commission_pct, 0) 커미션퍼센트
FROM employees
WHERE 10000 <= salary  AND salary < 14000
ORDER BY salary DESC;

--  문제 6
SELECT first_name 이름,
    salary 월급,
    TO_CHAR(hire_date, 'YYYY-MM') 입사일,
    department_id 부서번호
FROM employees
WHERE department_id IN (10, 90, 100);

--  문제 7
SELECT first_name 이름,
    salary 월급
FROM employees
WHERE LOWER(first_name) LIKE '%s%';

--  문제 8
SELECT department_name 부서이름 
FROM departments
ORDER BY LENGTH(department_name) DESC;

--  문제 9
SELECT UPPER(country_id) 나라이름
FROM countries
ORDER BY UPPER(country_id) ASC;

--  문제 10
SELECT first_name 이름,
    salary 월급,
    REPLACE(phone_number, '.', '-') 전화번호,
    hire_date 입사일
FROM employees
WHERE hire_date < '03/12/31';