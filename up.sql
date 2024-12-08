-- Create user and grant privileges
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'order_om') THEN
        CREATE ROLE order_om WITH LOGIN PASSWORD '${POSTGRES_PASSWORD}';
        GRANT CONNECT ON DATABASE postgres TO order_om;
    END IF;
END $$;

-- Create tables
CREATE TABLE IF NOT EXISTS orders (
    id CHAR(27) PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL,
    account_id CHAR(27) NOT NULL,
    total_price MONEY NOT NULL
);

CREATE TABLE IF NOT EXISTS orders_products (
    order_id CHAR(27) REFERENCES orders (id) ON DELETE CASCADE,
    product_id CHAR(27),
    quantity INT NOT NULL,
    PRIMARY KEY (product_id, order_id)
);
