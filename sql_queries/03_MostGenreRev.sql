/*
    Goal: Find what genre's generate the most revenue
    Tables needed:
        - genre
        - invoice_line
        - track
*/

SELECT * FROM genre;

SELECT * FROM invoice_line;

SELECT * FROM track;

SELECT 
    g.name AS genre_name,
    SUM(il.unit_price * il.quantity) AS total_revenue
FROM invoice_line AS il
JOIN track AS t ON il.track_id = t.track_id
JOIN genre AS g on t.genre_id = g.genre_id
GROUP BY g.name
ORDER BY total_revenue DESC;

/*
    Using the above query, I was able to find that the top 5 genres were
    1. Rock
    2. Latin
    3. Metal
    4. Alternative & Punk
    5. TV Shows

    Once again TV Shows are appearing as a genre, when it's technically not music.
    Futher improvements can be made such as creating a new or temporary database that is 
    just music related.
*/