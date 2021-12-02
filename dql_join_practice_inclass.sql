-- INNER JOIN
select *
from artist
inner join favorite_song
on favorite_song.artist_id = artist.artist_id;

-- inner join with constraints
select song_name, artist_name
from favorite_song
inner join artist
on favorite_song.artist_id = artist.artist_id 
where song_name like 'H%';


-- left table (FROM clause)
-- right table (____ JOIN clause)

-- Left join
select favorite_song.artist_id, song_name, artist_name
from favorite_song
left join artist
on favorite_song.artist_id = artist.artist_id;

-- right join
select favorite_song.artist_id, song_name, artist_name
from favorite_song
right join artist
on favorite_song.artist_id = artist.artist_id;

-- FULL JOIN
select f_s.artist_id, art.artist_name, record_label, f_s.song_name, album, COUNT(*)
from favorite_song as f_s
full join artist as art
on f_s.artist_id = art.artist_id
group by f_s.artist_id, art.artist_name, record_label, f_s.song_name, album
order by count(*) desc;