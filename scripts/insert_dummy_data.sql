

-- Insert clients with various ages and Paul combinations
INSERT INTO client (first_name, middle_name, last_name, date_of_birth) VALUES
('Paul', 'John', 'Smith', '1990-05-15'),      -- 35 years old (Paul in first name)
('Mary', 'Paul', 'Johnson', '1985-12-20'),    -- 39 years old (Paul in middle name)
('John', 'Robert', 'Williams', '1995-08-10'), -- 30 years old (Not Paul)
('Paul', NULL, 'Brown', '1998-03-25'),        -- 27 years old (Paul in first name)
('Sarah', 'Anne', 'Davis', '1980-11-05'),     -- 44 years old (Not Paul)
('Robert', 'Paul', 'Miller', '1992-07-30'),   -- 33 years old (Paul in middle name)
('Paul', 'Thomas', 'Wilson', '2005-01-01');   -- 20 years old (Too young, should not appear in results)

-- Insert vehicles including various engine sizes
INSERT INTO vehicle (make, model_name) VALUES
('Honda', 'HJ 150CC-11A'),
('Yamaha', 'Ace CB 125CC'),
('Suzuki', 'Enzo 6000CC'),      -- Should not appear in engine size results
('Bajaj', 'Discover 100CC'),
('TVS', 'Star City 100CC'),
('Hero', 'Hunk 150CC'),
('Kawasaki', 'Ninja 250CC');    -- Should not appear in engine size results

-- Insert loans for testing aggregation and ordering
INSERT INTO loan (client_id, vehicle_id, principal_amount, submitted_on_date) VALUES
(1, 1, 2500.00, '2024-01-15'),  -- Paul Smith's first loan
(1, 2, 1800.00, '2024-03-20'),  -- Paul Smith's second loan
(2, 3, 3500.00, '2024-02-10'),  -- Mary Paul Johnson's loan
(3, 4, 1200.00, '2024-04-05'),  -- John Williams' loan
(4, 5, 1100.00, '2024-05-12'),  -- Paul Brown's loan
(5, 6, 2800.00, '2024-03-08'),  -- Sarah Davis' loan
(6, 1, 2600.00, '2024-06-20'),  -- Robert Paul Miller's loan
(2, 2, 1900.00, '2024-07-15');  -- Mary Paul Johnson's second loan