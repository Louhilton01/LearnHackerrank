--Problem at https://www.hackerrank.com/challenges/interviews/problem
/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select c.contest_id as con,
c.hacker_id as ha,
c.name as na,
sum(m.total_submissions),
sum(m.total_accepted_submissions),
sum(m.total_views),
sum(m.total_unique_views) 
from 
Contests c 
join Colleges l on(c.contest_id=l.contest_id) 
join Challenges h on(h.college_id=l.college_id) 
join (select challenge_id, total_submissions,total_accepted_submissions,0 as total_views,0 as total_unique_views from Submission_Stats union all select challenge_id, 0,0,total_views,total_unique_views from View_Stats) m on(h.challenge_id=m.challenge_id) 
group by c.contest_id,c.hacker_id,c.name 
having sum(m.total_submissions) !=0 
and sum(m.total_accepted_submissions)!=0 and sum(m.total_views)!=0 
and sum(m.total_unique_views)!=0 
order by c.contest_id;