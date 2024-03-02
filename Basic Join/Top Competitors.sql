select h.hacker_id,h.name from hackers h,challenges c ,difficulty d,submissions s 
where h.hacker_id=s.hacker_id
and c.challenge_id=s.challenge_id
and c.difficulty_level=d.difficulty_level
and s.score=d.score
group by h.hacker_id,h.name having  count(h.hacker_id)>1
 order by count(c.challenge_id) desc,h.hacker_id