-- ========================================================
-- 1. DATABASE SETUP (TABLES CREATION)
-- ========================================================

-- Create Books Table
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(250),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);

-- Create Customers Table
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

-- ========================================================
-- 2. DATA INGESTION (INSERT STATEMENTS)
-- ========================================================

-- Inserting Data into Books
INSERT INTO Books (Book_ID, Title, Author, Genre, Published_Year, Price, Stock) VALUES
(169, 'Sample Book', 'Unknown Author', 'Fiction', 2020, 15.99, 50),
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

-- Inserting Data into Customers
INSERT INTO Customers (Customer_ID, Name, Email, Phone, City, Country) VALUES
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
(20, 'Robert Salas', 'schultzjohn@thomas.com', '1234567910', 'Schultzchester', 'Denmark'),
(84, 'Gary Blair', 'leonardtaylor@bowers.net', '1234567974', 'Lake Paul', 'Armenia'),
(137, 'Shane Chang', 'melanie56@fleming.com', '1234568329', 'Ramosstad', 'Liechtenstein');

-- ========================================================
-- 3. BUSINESS DISCOVERY & DATA ANALYSIS
-- ========================================================

-- Q1: How many total books are available in the bookstore?
SELECT COUNT(*) AS Total_Books 
FROM Books;

-- Q2: Which books were published after the year 2000?
SELECT * FROM Books 
WHERE Published_Year > 2000;

-- Q3: Which books are the most expensive and least expensive?
-- Most Expensive
SELECT * FROM Books ORDER BY Price DESC LIMIT 1;
-- Least Expensive
SELECT * FROM Books ORDER BY Price ASC LIMIT 1;

-- Q4: What is the average price of all books?
SELECT ROUND(AVG(Price), 2) AS Average_Price 
FROM Books;

-- Q5: How many books belong to each genre?
SELECT Genre, COUNT(*) AS Book_Count 
FROM Books 
GROUP BY Genre;

-- Q6: Which genres have more than 2 books?
SELECT Genre, COUNT(*) AS Book_Count 
FROM Books 
GROUP BY Genre 
HAVING COUNT(*) > 2;

-- Q7: Which books have low stock (less than 10 units)?
SELECT * FROM Books 
WHERE Stock < 10;

-- Q8: What are the top 5 most expensive books?
SELECT * FROM Books 
ORDER BY Price DESC 
LIMIT 5;

-- Q9: Which is the oldest published book in the database?
SELECT * FROM Books 
ORDER BY Published_Year ASC 
LIMIT 1;

-- Q10: How many customers belong to each country?
SELECT Country, COUNT(*) AS Customer_Count 
FROM Customers 
GROUP BY Country;

-- Q11: Which customers live in cities that start with the word “Lake”?
SELECT * FROM Customers 
WHERE City LIKE 'Lake%';

-- Q12: Which customers belong to a specific country (e.g., Rwanda)?
SELECT * FROM Customers 
WHERE Country = 'Rwanda';
