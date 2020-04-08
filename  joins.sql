--1
SELECT *
FROM invoice i
JOIN invoice_line il ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

--2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

--3
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

--4
SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id

--5
SELECT pl.track_id
FROM playlist_track pl
JOIN playlist p ON p.playlist_id = pl.playlist_id
WHERE p.name = 'Music';

--6
SELECT t.name
FROM track t
JOIN playlist_track pl ON pl.track_id = t.track_id
WHERE pl.playlist_id = 5;

--7
SELECT t.name, p.name
FROM track t
JOIN playlist_track pl ON pl.track_id = t.track_id
JOIN playlist p ON pl.playlist_id = p.playlist_id;

--8
SELECT t.name, al.title
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';

--BD