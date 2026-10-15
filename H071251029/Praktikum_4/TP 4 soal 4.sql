SET search_path TO  "classicmodels", public;

-- SOAL 4
SELECT DISTINCT
    e.employeeNumber
FROM employees e
WHERE e.employeeNumber IN (
    SELECT reportsTo
    FROM employees
    WHERE reportsTo IS NOT NULL
)
AND e.jobTitle NOT LIKE '%VP%'
AND e.jobTitle NOT LIKE '%President%';