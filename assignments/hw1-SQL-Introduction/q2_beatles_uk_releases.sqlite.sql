SELECT 
    r.name AS RELEASE_NAME,
    MIN(ri.date_year) AS RELEASE_YEAR
FROM 
    release r
JOIN 
    release_info ri ON r.id = ri.release
JOIN 
    artist a ON r.artist_credit = a.id
JOIN
    medium m ON r.id = m.release
JOIN
    medium_format mf ON m.format = mf.id
WHERE 
    a.name = 'The Beatles'
    AND ri.date_year <= 1970
    AND mf.name = '12" Vinyl'
GROUP BY 
    r.name
ORDER BY 
    RELEASE_YEAR, RELEASE_NAME;

