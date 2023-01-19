create schema art;
go

create table art.record_label(

record_label_id int primary key identity,
record_label_name varchar(50),
date_founded date not null

);

create table art.album(

album_id int primary key identity,
album_name varchar(40) not null,
release_date date not null,
record_label_id int not null,

foreign key (record_label_id) references art.record_label (record_label_id)


);

create table art.artist_type(

artist_type_id int primary key identity,
artist_type_name varchar(20) not null,
artist_type_desc varchar(20) not null,

);

create table art.artist(

artist_id int primary key identity,
artist_type_id int not null,
artist_name varchar(20),
artist_bio varchar(100),


foreign key (artist_type_id) references art.artist_type(artist_type_id)
);

create table art.song_writing(

writing_id int primary key identity,
artist_id int not null,
record_date date not null,

foreign key (artist_id) references art.artist (artist_id)

);

create table art.song(

song_id int primary key identity,
song_name varchar(50),
writing_id int not null,

foreign key (writing_id) references art.song_writing (writing_id)

);

create table art.genre(
genre_id int primary key identity,
genre_name varchar(20),
genre_desc varchar(20)
);

create table art.record(

record_id int primary key identity,
song_id int not null,
genre_id int not null,
mins int not null,
sec int not null,

foreign key (song_id) references art.song (song_id),
foreign key (genre_id) references art.genre (genre_id)

);


create table art.playlist_record(

playlist_record_id int primary key identity,
playlist_id int not null,
record_id int not null,

foreign key (playlist_id) references usr.playlist (playlist_id),
foreign key (record_id) references art.record (record_id)

);


create table art.album_record(

album_record_id int primary key identity,
album_id int not null,
record_id int not null,

foreign key (album_id) references art.album (album_id),
foreign key (record_id) references art.record (record_id)

)


