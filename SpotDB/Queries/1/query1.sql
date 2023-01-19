select * from usr.usr
where user_id
in 
(select top 5
followed_id
from usr.follow 
group by followed_id

)