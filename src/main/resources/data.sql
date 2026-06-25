-- Seed data for the promotions table (created by Hibernate via ddl-auto=create-drop)
INSERT INTO promotions (account_id, name, description, discount_percent)
VALUES ('ACC001', 'Summer Sale', '20% off on all electronics', 20.0);

INSERT INTO promotions (account_id, name, description, discount_percent)
VALUES ('ACC001', 'Loyalty Bonus', '5% extra discount for loyal customers', 5.0);

INSERT INTO promotions (account_id, name, description, discount_percent)
VALUES ('ACC002', 'New Customer Offer', '15% off on first purchase', 15.0);

INSERT INTO promotions (account_id, name, description, discount_percent)
VALUES ('ACC002', 'Festive Deal', '25% off during festive season', 25.0);

INSERT INTO promotions (account_id, name, description, discount_percent)
VALUES ('ACC003', 'Premium Member Discount', '30% off for premium members', 30.0);

-- Seed data for the products table (created by Hibernate via ddl-auto=create-drop)
INSERT INTO products (account_id, name, description, price)
VALUES ('ACC001', 'Wireless Mouse', 'Ergonomic 2.4GHz wireless mouse', 25.99);

INSERT INTO products (account_id, name, description, price)
VALUES ('ACC001', 'Mechanical Keyboard', 'RGB backlit mechanical keyboard', 79.99);

INSERT INTO products (account_id, name, description, price)
VALUES ('ACC002', 'USB-C Hub', '7-in-1 USB-C multiport adapter', 39.99);

INSERT INTO products (account_id, name, description, price)
VALUES ('ACC002', 'Laptop Stand', 'Adjustable aluminium laptop stand', 34.50);

INSERT INTO products (account_id, name, description, price)
VALUES ('ACC003', 'Noise Cancelling Headphones', 'Over-ear Bluetooth headphones', 149.99);

