-- DDL
-- Creating the tables
create table artist (
	artist_id SERIAL primary key,
	artist_name VARCHAR(100),
	record_label VARCHAR(100)
);

select * from artist;

create table favorite_song(
	song_id SERIAL primary key,
	song_name VARCHAR(100),
	artist_id INTEGER,
	album VARCHAR(100),
	date_published DATE,
	plays INTEGER,
	foreign key (artist_id) references artist (artist_id)
);

select * from favorite_song;

-- DML
-- Inserting data into the tables
insert into artist (artist_name, record_label)
values ('Pop Smoke', 'Republic Records'), ('Mac Miller', 'Rostrum Records'),('Juice WRLD', 'Interscope Records'),('Nipsey Hussle', 'All money In No Money Out');

insert into artist (artist_name)
values('Chance the Rapper');

select * from artist;

insert into favorite_song (song_name, artist_id, album, date_published, plays)
values
('Blue World', 2, 'Circles', '2020-01-17', 142556902),
('Welcome to the Party', 1, 'Meet The Woo', '2019-07-26', 382147889),
('So It Goes', 2, 'Swimming', '2018-08-03', 4912657),
('Yea Yea', 1, 'Shoot Fot The Stars Aim For The Moon', '2020-07-03', 6824587),
('Lucid Dreams', 3, 'Goodbye & Good Riddance', '2018-05-18', 1699199935),
('Hard Work Pays Off', 3, 'WRLD ON DRUGS', '2018-10-19', 517858962),
('Hussle and Motivate', 4, 'Victory Lap', '2018-02-16', 51656462),
('Grinding All My Life', 4, 'Victory Lap', '2018-02-16', 119751625);

INSERT INTO favorite_song(song_name)
VALUES('DREAMCATCHER');

select * from favorite_song;
