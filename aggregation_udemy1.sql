USE books_data;

SELECT author_lname,  MIN(released_year) FROM books GROUP BY author_lname;

SELECT author_lname, author_fname, 
COUNT(*) AS books_written, 
MAX(released_year) AS latest_release,
MIN(released_year) AS earliest_release,
MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname, author_fname;

SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;

SELECT SUM(pages) FROM books;

SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname;

SELECT AVG(pages) FROM books;

SELECT AVG(released_year) FROM books;

SELECT AVG(stock_quantity) FROM books;

SELECT released_year, AVG(stock_quantity), COUNT(*) FROM books GROUP BY released_year;

-- EXERCISE:
SELECT * FROM books;

SELECT COUNT(*) FROM books;

SELECT released_year, COUNT(*) AS books_Released_in_year FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_lname, author_fname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, " ", author_lname), MAX(pages) FROM books GROUP BY author_lname, author_fname;

SELECT released_year AS year, COUNT(*) AS books, AVG(pages) AS avg_pages FROM books GROUP BY released_year ORDER BY released_year;

-- Find full name of max number of pages written:
SELECT CONCAT(author_fname, " ", author_lname) AS author, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- Method-2
SELECT CONCAT(author_fname, " ", author_lname) AS author, pages FROM books ORDER BY pages DESC LIMIT 1; 






