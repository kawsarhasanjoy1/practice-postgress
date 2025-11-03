-- //CREATE TABL
CREATE TABLE customers (
    customers_id VARCHAR(25) UNIQUE PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    full_name TEXT GENERATED ALWAYS AS (
        first_name || ' ' || last_name
    ) STORED,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    country TEXT DEFAULT 'Bangladesh',
    createdAt TIMESTAMP DEFAULT now()
);

DROP TABLE customers;

-- ALTER COLUMN customers_id SET NOT NULL;
-- DELETE FROM customers WHERE customers_id = 'C001' 

-- CREATE DATA --
INSERT INTO customers (customers_id, first_name, last_name, email, phone, country)
VALUES
('C001', 'Kawsar', 'Hasan Joy', 'kawsar.hasanjoy@example.com', '01405969446', 'Bangladesh'),
('C002', 'Kaw', 'sar', 'kawsar@example.com', '01405969446', 'Bangladesh'),
('C003', 'hansan', 'Joy', 'hasanjoy@example.com', '01405969446', 'Bangladesh');



SELECT * FROM customers;
WHERE customers_id ='C001';

