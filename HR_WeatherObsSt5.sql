--Problem at https://www.hackerrank.com/challenges/weather-observation-station-5/problem
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT
    city,
    LENGTH(city)
FROM STATION
WHERE city = (
    SELECT
        MIN(city)
    FROM STATION
    WHERE LENGTH(city) = (
        SELECT
            MIN(LENGTH(city))
        FROM STATION
    )
)
OR city = (
    SELECT
        MIN(city)
    FROM STATION
    WHERE LENGTH(city) = (
        SELECT
            MAX(LENGTH(city))
        FROM STATION
    )
);