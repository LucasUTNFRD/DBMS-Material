 SELECT
    r.name AS RELEASE_NAME,
    a.name AS ARTIST_NAME,
    ri.date_year AS RELEASE_YEAR,
    ri.date_month AS RELEASE_MONTH,
    ri.date_day AS RELEASE_DAY
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
    mf.name = 'Cassette'
ORDER BY
    ri.date_year DESC,
    ri.date_month DESC,
    ri.date_day DESC,
    r.name ASC,
    a.name ASC

