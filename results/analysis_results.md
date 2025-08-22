# SQL Analysis Results
## Generated on Fri Aug 22 07:53:31 UTC 2025
### Platform: PostgreSQL
\n---
=== Question 1: Pauls over 25 years old ===
 client_id | first_name | middle_name | last_name | date_of_birth | age_years 
-----------+------------+-------------+-----------+---------------+-----------
         2 | Mary       | Paul        | Johnson   | 1985-12-20    |        39
         1 | Paul       | John        | Smith     | 1990-05-15    |        35
         6 | Robert     | Paul        | Miller    | 1992-07-30    |        33
         4 | Paul       |             | Brown     | 1998-03-25    |        27
(4 rows)


=== Question 2: Number of loans per Paul customer ===
 client_id | first_name | middle_name | last_name | age_years | number_of_loans 
-----------+------------+-------------+-----------+-----------+-----------------
         2 | Mary       | Paul        | Johnson   |        39 |               2
         1 | Paul       | John        | Smith     |        35 |               2
         6 | Robert     | Paul        | Miller    |        33 |               1
         4 | Paul       |             | Brown     |        27 |               1
(4 rows)


=== Question 3: Bikes by engine size ===
 vehicle_id |  make  |   model_name    | engine_size 
------------+--------+-----------------+-------------
          1 | Honda  | HJ 150CC-11A    | 150
          2 | Yamaha | Ace CB 125CC    | 125
          4 | Bajaj  | Discover 100CC  | 100
          5 | TVS    | Star City 100CC | 100
          6 | Hero   | Hunk 150CC      | 150
(5 rows)


=== Question 4: Total principal by client and vehicle ===
   client_full_name   | vehicle_make | total_principal_amount 
----------------------+--------------+------------------------
 Mary Paul Johnson    | Suzuki       |                3500.00
 Sarah Anne Davis     | Hero         |                2800.00
 Robert Paul Miller   | Honda        |                2600.00
 Paul John Smith      | Honda        |                2500.00
 Mary Paul Johnson    | Yamaha       |                1900.00
 Paul John Smith      | Yamaha       |                1800.00
 John Robert Williams | Bajaj        |                1200.00
 Paul Brown           | TVS          |                1100.00
(8 rows)


=== Question 5: Loan order chronology ===
 loan_id | client_id | principal_amount | submitted_on_date | loan_order 
---------+-----------+------------------+-------------------+------------
       1 |         1 |          2500.00 | 2024-01-15        |          1
       2 |         1 |          1800.00 | 2024-03-20        |          2
       3 |         2 |          3500.00 | 2024-02-10        |          1
       8 |         2 |          1900.00 | 2024-07-15        |          2
       4 |         3 |          1200.00 | 2024-04-05        |          1
       5 |         4 |          1100.00 | 2024-05-12        |          1
       6 |         5 |          2800.00 | 2024-03-08        |          1
       7 |         6 |          2600.00 | 2024-06-20        |          1
(8 rows)

