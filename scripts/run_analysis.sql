/* For postgresql via codepaces using dummy data.
Here is the repository: https://github.com/24jmwangi/watu-sql-assessment
*/

/* 1: Select all clients called Paul in first name or middle name and who are more than 25 years old.
*/
\echo '=== Question 1: Pauls over 25 years old ==='
SELECT
    client_id,
    first_name,
    middle_name,
    last_name,
    date_of_birth,
    (DATE_PART('year', AGE(CURRENT_DATE, date_of_birth))) AS age_years
FROM
    client
WHERE
    (first_name = 'Paul' OR middle_name = 'Paul')
    AND (DATE_PART('year', AGE(CURRENT_DATE, date_of_birth))) > 25
ORDER BY
    age_years DESC;


/* 2: Add a column with the number of loans per customer. */
\echo '=== Question 2: Number of loans per Paul customer ==='
SELECT
    c.client_id,
    c.first_name,
    c.middle_name,
    c.last_name,
    (DATE_PART('year', AGE(CURRENT_DATE, c.date_of_birth))) AS age_years,
    COUNT(l.loan_id) AS number_of_loans
FROM
    client c
LEFT JOIN loan l ON c.client_id = l.client_id
WHERE
    (c.first_name = 'Paul' OR c.middle_name = 'Paul')
    AND (DATE_PART('year', AGE(CURRENT_DATE, c.date_of_birth))) > 25
GROUP BY
    c.client_id, c.first_name, c.middle_name, c.last_name, c.date_of_birth
ORDER BY
    age_years DESC;


/* 3: Select 100cc, 125cc, and 150cc bikes and extract engine size. */
\echo '=== Question 3: Bikes by engine size ==='
SELECT
    vehicle_id,
    make,
    model_name,
    (SUBSTRING(model_name FROM '(\d{3})CC')) AS engine_size
FROM
    vehicle
WHERE
    model_name ILIKE '%100CC%'
    OR model_name ILIKE '%125CC%'
    OR model_name ILIKE '%150CC%';


/* 4: Total principal amount per client full name and per vehicle make. */
\echo '=== Question 4: Total principal by client and vehicle ==='
SELECT
    CONCAT_WS(' ', c.first_name, c.middle_name, c.last_name) AS client_full_name,
    v.make AS vehicle_make,
    SUM(l.principal_amount) AS total_principal_amount
FROM
    loan l
INNER JOIN client c ON l.client_id = c.client_id
INNER JOIN vehicle v ON l.vehicle_id = v.vehicle_id
GROUP BY
    client_full_name, vehicle_make
ORDER BY
    total_principal_amount DESC;


/* 5: Add a chronological loan order for each client. */
\echo '=== Question 5: Loan order chronology ==='
SELECT
    loan_id,
    client_id,
    principal_amount,
    submitted_on_date,
    ROW_NUMBER() OVER (
        PARTITION BY client_id
        ORDER BY submitted_on_date ASC
    ) AS loan_order
FROM
    loan
ORDER BY
    client_id, loan_order;
