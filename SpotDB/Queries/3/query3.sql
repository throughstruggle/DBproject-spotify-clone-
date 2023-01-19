select country_name ,  count(*) number_of_users 
from 
usr.country c inner join usr.usr u on u.country_id = c.country_id
group by
country_name
