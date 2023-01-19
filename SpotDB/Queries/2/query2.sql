select  song_name
from 
usr.playlist p inner join  art.playlist_record pr on p.playlist_id = pr.playlist_id
inner join art.record r on r.record_id = pr.record_id
inner join art.song s on s.song_id = r.song_id
where playlist_name = 'M Material'