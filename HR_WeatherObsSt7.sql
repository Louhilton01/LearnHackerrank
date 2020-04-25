--Problem at https://www.hackerrank.com/challenges/weather-observation-station-7/problem
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT distinct CITY
 from STATION 
WHERE  lower(substr(city,length(city),length(city))) in('a','e','i','o','u');