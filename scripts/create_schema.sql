DROP TABLE IF EXISTS loan;
DROP TABLE IF EXISTS vehicle;
DROP TABLE IF EXISTS client;

CREATE TABLE client (
    client_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE vehicle (
    vehicle_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model_name VARCHAR(100)
);

CREATE TABLE loan (
    loan_id SERIAL PRIMARY KEY,
    client_id INTEGER REFERENCES client(client_id),
    vehicle_id INTEGER REFERENCES vehicle(vehicle_id),
    principal_amount DECIMAL(10,2),
    submitted_on_date DATE DEFAULT CURRENT_DATE
);