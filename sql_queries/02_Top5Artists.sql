/*
    Goal: Find the top 5 artists by total sales revenue
    - We will obviously need the 'artist' table
    - To get total sales, we will have to use the invoice, invoice_line, and tracks
*/

SELECT * FROM artist;

SELECT * FROM invoice_line LIMIT 10;

/*
    First I will create a CTE to keep things clean and modular.
    We will create a CTE to get artist_sales
*/

WITH artist_sales AS (
    SELECT
        ar.artist_id,
        ar.name AS artist_name,
        SUM(il.unit_price * il.quantity) AS total_revenue
    FROM invoice_line as il
    JOIN track AS t ON il.track_id = t.track_id
    JOIN album AS al ON t.album_id = al.album_id
    JOIN artist AS ar on al.artist_id = ar.artist_id
    GROUP BY ar.artist_id, ar.name
)

SELECT
    artist_name,
    total_revenue
FROM artist_sales
ORDER BY total_revenue DESC
LIMIT 5;

/*
    With this code, we were able to find that the top 5 artists generating
    revenue were Iron Maiden ($138), U2 ($105), Metallica ($90), Led Zeppelin ($86)
    and Lost ($81)
*/

-- !!Futher enhancements be be made since Lost is a TV show and not a musical artist!! 