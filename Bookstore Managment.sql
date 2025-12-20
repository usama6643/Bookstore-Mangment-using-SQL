DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT,
	INSERT INTO Books
(book_id, title, author, genre, published_year, price, stock)
VALUES
(169, 'Sample Book', 'Unknown Author', 'Fiction', 2020, 15.99, 50);

insert into Books(Book_ID,Title,Author,Genre,Published_Year,Price,Stock)
values
(1, 'Configurable modular throughput', 'Joseph Crane', 'Biography', 1949, 21.34, 100),
(2, 'Persevering reciprocal knowledge user', 'Mario Moore', 'Fantasy', 1971, 35.8, 19),
(3, 'Streamlined coherent initiative', 'Derrick Howard', 'Non-Fiction', 1913, 15.75, 27),
(4, 'Customizable 24hour product', 'Christopher Andrews', 'Fiction', 2020, 43.52, 8),
(5, 'Adaptive 5thgeneration encoding', 'Juan Miller', 'Fantasy', 1956, 10.95, 16),
(6, 'Advanced encompassing implementation', 'Bryan Morgan', 'Biography', 1985, 6.56, 2),
(7, 'Open-architected exuding structure', 'Jacqueline Young', 'Romance', 1927, 43.63, 95),
(8, 'Persistent local encoding', 'Troy Cox', 'Science Fiction', 2019, 48.99, 84),
(9, 'Optimized interactive challenge', 'Colin Buckley', 'Fantasy', 1987, 14.33, 70),
(10, 'Ergonomic national hub', 'Samantha Ruiz', 'Mystery', 2015, 24.63, 25),
(11, 'Secured zero tolerance time-frame', 'Denise Barnes', 'Fantasy', 1998, 35.95, 10),
(12, 'Polarized optimal array', 'Destiny Scott', 'Non-Fiction', 1989, 27.43, 63),
(13, 'Adaptive 5thgeneration orchestration', 'Jaclyn Miller', 'Romance', 1913, 14.04, 99),
(14, 'Re-engineered demand-driven parallelism', 'Jeremy Hayes', 'Science Fiction', 1933, 6.04, 95),
(15, 'User-friendly motivating strategy', 'Keith Smith', 'Non-Fiction', 1997, 23.83, 58),
(16, 'Vision-oriented tangible project', 'Christopher Price', 'Mystery', 1941, 10.07, 8),
(17, 'Reduced secondary core', 'Benjamin Peters', 'Fantasy', 1966, 5.37, 45),
(18, 'Adaptive 4thgeneration concept', 'Hector Palmer', 'Non-Fiction', 2021, 39.47, 32),
(19, 'Progressive asymmetric Internet solution', 'Sean Miller', 'Science Fiction', 1990, 11.31, 1),
(20, 'Face-to-face systematic throughput', 'Teresa Brennan', 'Non-Fiction', 1978, 48.13, 64);
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
	INSERT INTO books (book_id, title, author, price, stock) VALUES
(301, 'Book Title Here', 'Author Name', 1000, 10);

insert into Customers(Customer_ID,Name,Email,Phone,City,Country)
values
(1, 'Deborah Griffith', 'balljoseph@wright-keith.net', '1234567891', 'South Craigfort', 'Denmark'),
(2, 'Crystal Clements', 'kimberlybennett@curtis.com', '1234567892', 'East Derekberg', 'Nicaragua'),
(3, 'Susan Fuller', 'beanmichael@burnett-stewart.net', '1234567893', 'Austinbury', 'Equatorial Guinea'),
(4, 'Jamie Ramirez', 'amandahood@warren.com', '1234567894', 'Dianamouth', 'Slovenia'),
(5, 'Marcus Murphy', 'connerjohn@yahoo.com', '1234567895', 'Smithbury', 'Guinea-Bissau'),
(6, 'Stephen Vasquez', 'ricemiguel@yahoo.com', '1234567896', 'Hamiltonstad', 'Rwanda'),
(7, 'Susan Hicks', 'jeffrey91@yahoo.com', '1234567897', 'East Rebecca', 'Montenegro'),
(8, 'Matthew Johnson', 'austinkenneth@manning.net', '1234567898', 'Kirstenborough', 'Israel'),
(9, 'Matthew Williams', 'jeffrey41@diaz.com', '1234567899', 'Rebeccafurt', 'Somalia'),
(10, 'Ronald Osborn', 'staciekelley@heath.com', '1234567900', 'Lake Benjamin', 'Cameroon'),
(11, 'Thomas Garcia', 'rmiller@gmail.com', '1234567901', 'West Monicabury', 'Argentina'),
(12, 'Jennifer Murray', 'wilsonbrittany@hotmail.com', '1234567902', 'South Ashleychester', 'Zimbabwe'),
(13, 'Kristine Kim', 'sarahwilliams@hotmail.com', '1234567903', 'Lake Robert', 'Nigeria'),
(14, 'John Wood', 'johnsonalexander@gmail.com', '1234567904', 'Richardsonville', 'New Caledonia'),
(15, 'Vanessa Gaines', 'tbullock@gmail.com', '1234567905', 'Rodriguezmouth', 'Wallis and Futuna'),
(16, 'Stacey Flores', 'jackjackson@hotmail.com', '1234567906', 'East Michaelfurt', 'Saint Helena'),
(17, 'Christine Maldonado', 'ztaylor@yahoo.com', '1234567907', 'Smithborough', 'Chile'),
(18, 'David Watson', 'laurenlawson@alvarez-mcfarland.com', '1234567908', 'New Josephtown', 'Equatorial Guinea'),
(19, 'Marc Nash', 'joshua59@gmail.com', '1234567909', 'Davidton', 'French Guiana'),
(20, 'Robert Salas', 'schultzjohn@thomas.com', '1234567910', 'Schultzchester', 'Denmark');
INSERT INTO Customers
(customer_id, name, email, phone, city, country)
VALUES
(84, 'Gary Blair', 'leonardtaylor@bowers.net', '1234567974', 'Lake Paul', 'Armenia');
INSERT INTO customers (customer_id, name, email, phone, city, country) VALUES
(137, 'Shane Chang', 'melanie56@fleming.com', '1234568329', 'Ramosstad', 'Liechtenstein');


);

);
INSERT INTO Orders (order_id, customer_id, book_id, order_date) VALUES
(1, 216, 301, '2025-12-13');

SELECT * FROM Books;
SELECT * FROM Customers;
--List all customers
select * from customers;
--Find customers from a specific country
select * from customers
where country='Rwanda';
--Find books published after 2000
SELECT * FROM books WHERE published_year > 2000;
--Jin customers ka city "Lake" se start hota ho
SELECT * FROM customers
WHERE city LIKE 'Lake%';
--Books ko price ke hisaab se mehngi se sasti
SELECT * FROM books
ORDER BY price DESC;
--Customers ko name ke alphabetical order mein
SELECT * FROM customers
ORDER BY name ASC;
--Latest published books pehle
SELECT * FROM books
ORDER BY published_year DESC;
--Total kitni books hain
SELECT COUNT(*) AS total_books
FROM books;
--Average book price
SELECT AVG(price) AS avg_price
FROM books;
--Sab se mehngi book
SELECT MAX(price) AS max_price
FROM books;
--Genre ke hisaab se books ki count
select genre,count(*)
from books
group by genre;
--Genre ke hisaab se average price
select genre,avg(price)
from books
group by genre;
--Country ke hisaab se customers ki count
select country,count(*)
from customers
group by country;
--Sirf wo genre jin mein 2 se zyada books hain
select genre,count(*)
from books
group by genre
having count(*)>2;
--Books jinka stock 10 se kam hai
SELECT * FROM books
WHERE stock < 10;
--Sab se purani book
SELECT * FROM books
ORDER BY published_year ASC
LIMIT 1;
--Top 5 expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 5;
