--Problem at https://www.hackerrank.com/challenges/weather-observation-station-10/problem
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select distinct city from station 
where right(city, 1) not in ('a','e','i','o','u')