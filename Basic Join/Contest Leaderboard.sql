select h.hacker_id,h.name,sum(temp.score) 
from hackers h inner join 
(select hacker_id,challenge_id, max(score) as score
from submissions 
group by hacker_id,challenge_id) as temp on temp.hacker_id= h.hacker_id
group by h.hacker_id,h.name
having sum(temp.score)>0
order by sum(temp.score) DESC, h.hacker_id ASC;
