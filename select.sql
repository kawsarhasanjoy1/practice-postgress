CREATE TABLE orders (
    order_id VARCHAR(25) PRIMARY KEY,
    customer_name VARCHAR(30) NOT NULL,
    amount INTEGER,
    customers_id VARCHAR(25) REFERENCES customers (customers_id) ON DELETE CASCADE,
    order_date DATE DEFAULT CURRENT_DATE
);

DROP TABLE orders;

ALTER TABLE orders DROP CONSTRAINT orders_customers_id_fkey;

ALTER TABLE orders
ADD CONSTRAINT orders_customers_id_fkey FOREIGN KEY (customers_id) REFERENCES customers (customers_id) ON DELETE SET NULL

INSERT INTO
    orders (
        order_id,
        customer_name,
        amount,
        customers_id,
        order_date
    )
VALUES (
        'O001',
        'Kawsar Hasan',
        700,
        'C001',
        '2025-03-22'
    ),
    (
        'O002',
        'Kawsar Hasan',
        1200,
        'C001',
        '2023-03-22'
    ),
    (
        'O003',
        'Kawsar Hasan',
        800,
        'C001',
        '2023-03-23'
    ),
    (
        'O004',
        'Kawsar Hasan',
        600,
        'C001',
        '2023-03-24'
    ),
    (
        'O005',
        'Kawsar Hasan',
        2000,
        'C001',
        '2023-04-01'
    ),
    (
        'O006',
        'Kawsar Hasan',
        1500,
        'C001',
        '2024-04-02'
    ),
    (
        'O007',
        'Ayesha Khan',
        900,
        'C002',
        '2024-04-03'
    ),
    (
        'O008',
        'Ayesha Khan',
        1400,
        'C002',
        '2024-04-05'
    ),
    (
        'O009',
        'Ayesha Khan',
        1700,
        'C002',
        '2024-04-06'
    ),
    (
        'O010',
        'Ayesha Khan',
        1900,
        'C002',
        '2024-05-01'
    ),
    (
        'O011',
        'Ayesha Khan',
        2500,
        'C002',
        '2024-05-03'
    ),
    (
        'O012',
        'Ayesha Khan',
        1800,
        'C002',
        '2022-05-04'
    ),
    (
        'O013',
        'Rafi Chowdhury',
        1000,
        'C003',
        '2022-05-05'
    ),
    (
        'O014',
        'Rafi Chowdhury',
        2200,
        'C003',
        '2022-05-06'
    ),
    (
        'O015',
        'Rafi Chowdhury',
        2400,
        'C003',
        '2022-05-07'
    ),
    (
        'O016',
        'Rafi Chowdhury',
        1700,
        'C003',
        '2022-06-01'
    ),
    (
        'O017',
        'Rafi Chowdhury',
        900,
        'C003',
        '2022-06-02'
    ),
    (
        'O018',
        'Rafi Chowdhury',
        2100,
        'C003',
        '2025-06-03'
    ),
    (
        'O019',
        'Rafi Chowdhury',
        1200,
        'C003',
        '2025-06-04'
    ),
    (
        'O020',
        'Rafi Chowdhury',
        800,
        'C003',
        '2025-06-05'
    );

-- মাস ভিত্তিক বিক্রি
-- SELECT extract(MONTH FROM orders.order_date) as month, SUM(amount) FROM orders WHERE extract(YEAR FROM orders.order_date) = '2025' GROUP BY month ;



-- কাস্টমার ভিত্তিক বিক্রি
SELECT customers_id, SUM(amount) as total_amount, COUNT(customers_id)
FROM orders
GROUP BY
    customers_id ORDER BY total_amount DESC LIMIT 2;