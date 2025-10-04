/*
    Goal: Find what genre's generate the most revenue
    Tables needed:
        - genre
        - invoice_line
        - invoice
        - track
*/

SELECT * FROM genre;

SELECT * FROM invoice_line;

SELECT * FROM track;

SELECT 
    g.name AS genre_name,
    ROUND(SUM(il.unit_price * il.quantity), 2) AS total_revenue,
    ROUND(
        100 * SUM(il.unit_price * il.quantity) /
        SUM(SUM(il.unit_price * il.quantity)) OVER (), 2
    ) AS percent_of_total
FROM invoice_line AS il
JOIN track AS t ON il.track_id = t.track_id
JOIN genre AS g ON t.genre_id = g.genre_id
JOIN invoice AS i ON il.invoice_id = i.invoice_id
WHERE i.billing_country = 'USA'
GROUP BY g.name
ORDER BY total_revenue DESC
LIMIT 5;

/*
    Using the above query, I was able to find that the top 5 genres were
    1. Rock
    2. Latin
    3. Metal
    4. Alternative & Punk
    5. TV Shows

    Added a Window Function to calculate the percentage of share for each genre

    !! Once again TV Shows are appearing as a genre, when it's technically not music.
    Futher improvements can be made such as creating a new or temporary database that is 
    just music related.
*/