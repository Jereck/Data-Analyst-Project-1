/*
    Goal: Find the top 5 artists by total sales revenue
    - We will obviously need the 'artist' table
    - To get total sales, we will have to use the invoice, invoice_line
*/

SELECT * 
FROM artist;

SELECT * FROM invoice_line LIMIT 10

SELECT 
    track_id,
    unit_price,
    quantity
FROM invoice_line
ORDER BY track_id
