create schema act;
go


create table act.act(

act_id int primary key identity,
act_name varchar(20),
act_desc varchar(20)

);


create table act.artist_act(

artist_act_id int primary key identity,
act_id int not null,
artist_id int not null,
begin_date date not null,
end_date date not null,


foreign key (act_id) references act.act (act_id),
foreign key (artist_id) references art.artist (artist_id)

);


create table act.album_act(

album_act_id int primary key identity,
artist_act_id int not null,
album_id int not null,

foreign key (artist_act_id) references act.artist_act (artist_act_id),
foreign key (album_id) references art.album (album_id),


);



create table act.record_act(

record_act_id int primary key identity,
artist_act_id int not null,
record_id int not null,

foreign key (artist_act_id) references act.artist_act (artist_act_id),
foreign key (record_id) references art.record (record_id)


);

