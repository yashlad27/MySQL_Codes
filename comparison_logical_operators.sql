USE books_data;

SELECT * FROM books;

SELECT * FROM books WHERE released_year!=2017;

SELECT title, author_lname FROM books WHERE author_lname!="Gaiman";

SELECT title FROM books WHERE title NOT like '% %';

SELECT author_fname, title, author_lname FROM books WHERE author_fname NOT LIKE "da%";

SELECT title FROM books WHERE title NOT LIKE "%e%";

SELECT * FROM books WHERE released_year > 2005;

SELECT * FROM books WHERE pages > 50;

SELECT 99 > 1;