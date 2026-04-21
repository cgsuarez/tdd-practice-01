INSERT INTO categories (name, description) VALUES
    ('Electronics', 'Phones, laptops and other electronic devices'),
    ('Books', 'Printed and digital books'),
    ('Clothing', 'Apparel for men, women and children'),
    ('Home', 'Furniture and home accessories');

INSERT INTO customers (first_name, last_name, email, phone, address) VALUES
    ('Ana', 'Torres', 'ana.torres@example.com', '0991112233', 'Av. Amazonas 123, Quito'),
    ('Luis', 'Perez', 'luis.perez@example.com', '0992223344', 'Calle 10 de Agosto 456, Quito'),
    ('Maria', 'Lopez', 'maria.lopez@example.com', '0993334455', 'Av. 6 de Diciembre 789, Quito'),
    ('Carlos', 'Gomez', 'carlos.gomez@example.com', '0994445566', 'Av. Colon 321, Quito');

INSERT INTO products (sku, name, description, price, stock, category_id, active) VALUES
    ('SKU-0001', 'Smartphone X1', '6.5 inch, 128GB storage', 499.99, 25, 1, TRUE),
    ('SKU-0002', 'Laptop Pro 14', '14 inch, 16GB RAM, 512GB SSD', 1299.00, 10, 1, TRUE),
    ('SKU-0003', 'Wireless Headphones', 'Noise cancelling, 30h battery', 159.50, 40, 1, TRUE),
    ('SKU-0004', 'Clean Code', 'Book by Robert C. Martin', 35.00, 50, 2, TRUE),
    ('SKU-0005', 'The Pragmatic Programmer', '20th Anniversary Edition', 42.00, 30, 2, TRUE),
    ('SKU-0006', 'Mens T-Shirt', '100% cotton, size M', 15.99, 100, 3, TRUE),
    ('SKU-0007', 'Womens Jacket', 'Waterproof, size S', 79.90, 20, 3, TRUE),
    ('SKU-0008', 'Office Chair', 'Ergonomic, adjustable height', 189.00, 15, 4, TRUE);

INSERT INTO orders (customer_id, status, total) VALUES
    (1, 'COMPLETED', 535.99),
    (2, 'PENDING', 1299.00),
    (3, 'COMPLETED', 77.00);

INSERT INTO order_items (order_id, product_id, quantity, unit_price, subtotal) VALUES
    (1, 1, 1, 499.99, 499.99),
    (1, 6, 2, 15.99, 31.98),
    (1, 4, 1, 35.00, 35.00),
    (2, 2, 1, 1299.00, 1299.00),
    (3, 4, 1, 35.00, 35.00),
    (3, 5, 1, 42.00, 42.00);
