CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    parent_category INT,
    FOREIGN KEY (parent_category) REFERENCES categories(category_id)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    price DECIMAL(8,2) DEFAULT 100.00,
    category_id INT,
    quantity INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


INSERT INTO categories VALUES
(1, 'Phones', NULL),
(2, 'Laptops', NULL),
(3, 'Consoles', NULL),
(4, 'iPhone', 1),
(5, 'Windows', 2),
(6, 'Mbox', 3);


INSERT INTO products VALUES
(1, 'iPhone 12', 999.99, 4, 10),
(2, 'MacBook Pro', 1999.99, 2, 5),
(3, 'Dell XPS 15', 1599.99, 5, 8),
(4, 'Sony PlayStation 5', 499.99, 3, 20),
(5, 'Nintendo', 149.99, 3, 12),
(6, 'Mbox Series X', 499.99, 6, 6);


ALTER TABLE products
ADD CONSTRAINT chk_price CHECK (price BETWEEN 0 AND 3000);


SELECT product_id, name
FROM products
WHERE name LIKE 'M%';


SELECT p.product_id, p.name AS product_name, c.name AS category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id;

SELECT c.category_id, c.name AS category_name, COUNT(p.product_id) AS total_count
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
GROUP BY c.category_id, c.name
ORDER BY c.name;



SELECT product_id, name AS product_name, price
FROM products
WHERE price > 1000
ORDER BY name DESC;


SELECT p.product_id, p.name AS product_name
FROM products p
JOIN categories c ON p.category_id = c.category_id
WHERE c.parent_category IS NULL;


CREATE VIEW ViewProductsList AS
SELECT 
    p.product_id,
    p.name AS product_name,
    c.name AS category,
    p.price,
    p.quantity
FROM products p
JOIN categories c ON p.category_id = c.category_id;


DELIMITER //

CREATE PROCEDURE UpdateProductPrices (
    IN category_name_input VARCHAR(50),
    IN percentage_increase DECIMAL(5,2)
)
BEGIN
    DECLARE categoryId INT;

    SELECT category_id INTO categoryId
    FROM categories
    WHERE name = category_name_input;

    UPDATE products
    SET price = price + (price * (percentage_increase / 100))
    WHERE category_id = categoryId;
END //

DELIMITER ;


