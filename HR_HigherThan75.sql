--Problem at https://www.hackerrank.com/challenges/more-than-75-marks/problem
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select name from students where marks>75 order by right(name,3),id