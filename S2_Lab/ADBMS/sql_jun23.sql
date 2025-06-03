CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(25) NOT NULL,
    nationality VARCHAR(15),
    birth_year INT
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    author_id INT,
    title VARCHAR(100) UNIQUE NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(8,2) DEFAULT 100.00,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


INSERT INTO authors VALUES
(1, 'F. Scott Fitzgerald', 'American', 1896),
(2, 'Harper Lee', 'American', 1926),
(3, 'J.K. Rowling', 'British', 1965),
(4, 'J.R.R. Tolkien', 'British', 1892),
(5, 'Dan Brown', 'American', 1964),
(6, 'Stieg Larsson', 'Swedish', NULL);


INSERT INTO books VALUES
(1, 1, 'The Great Gatsby', 'Fiction', 150.25),
(2, 2, 'To Kill a Mockingbird', 'Fiction', 230.70),
(3, 3, 'Harry Potter', 'Fantasy', 600.00),
(4, 4, 'The Hobbit', 'Fantasy', 720.00),
(5, 4, 'The Da Vinci Code', 'Fiction', 800.00),
(6, 5, 'The Girl with the Sword', 'Mystery', 950.00);

ALTER TABLE books
ADD CONSTRAINT chk_price CHECK (price BETWEEN 0 AND 1000);

-----------------------------------------------------------------------
SELECT book_id, title, price
FROM books
ORDER BY price DESC
LIMIT 1;

SELECT b.book_id, b.title, a.author_name, a.nationality
FROM books b
JOIN authors a ON b.author_id = a.author_id
WHERE a.nationality = 'American'
ORDER BY b.title DESC;

SELECT genre, SUM(price) AS total_price
FROM books
GROUP BY genre
HAVING SUM(price) > 1000;

SELECT genre, COUNT(*) AS total_books
FROM books
GROUP BY genre
ORDER BY total_books DESC
LIMIT 1;


CREATE VIEW AuthorBookInfo AS
SELECT b.title, a.author_name, b.genre
FROM books b
JOIN authors a ON b.author_id = a.author_id;


CREATE TRIGGER UpdateAuthorBirthYear
AFTER INSERT ON books
FOR EACH ROW
BEGIN
    UPDATE authors
    SET birth_year = 2000
    WHERE author_id = NEW.author_id AND birth_year IS NULL;
END;

DELIMITER //

CREATE TRIGGER UpdateAuthorBirthYear
AFTER INSERT ON books
FOR EACH ROW
BEGIN
    UPDATE authors
    SET birth_year = 2000
    WHERE author_id = NEW.author_id AND birth_year IS NULL;
END;
//

DELIMITER ;

START TRANSACTION;

SAVEPOINT before_insert;

INSERT INTO books VALUES
(7, 1, 'My New Book', 'Drama', 300.00);

ROLLBACK TO before_insert;

UPDATE authors
SET birth_year = 1980
WHERE author_name = 'F. Scott Fitzgerald';

COMMIT;


