CREATE SCHEMA usr;
GO

create table usr.country(
country_id int identity primary key,
country_name varchar(20) not null,


);


create table usr.subscriptiontype(
subscription_type_id int identity primary key,
subscription_type_name varchar(15) not null,
subscription_type_description varchar(50) not null
);

create table usr.usertype(

user_type_id int identity primary key,
user_type_name varchar(20) not null,
start_date date not null,
end_date date not null,
subscription_type_id int not null,

foreign key (subscription_type_id) references usr.subscriptiontype (subscription_type_id),

);

create table usr.usr(

user_id int primary key identity,
username varchar(50) not null,
firstname varchar(50) not null,
lastname varchar(50) not null,
user_type_id int not null,
country_id int not null,
city varchar(50) not null,
street varchar(50) not null,
house_number varchar(50) not null,
birth_date date not null,
email varchar(50) not null,
pass varchar(50) not null,
date_joined date not null,

foreign key (country_id) references usr.country (country_id),
foreign key (user_type_id) references usr.usertype (user_type_id)



);


create table usr.collaborator_type(
collaborator_type_id int primary key identity,
collaborator_type_name varchar(50)
)


create table usr.collaborator (

collaborator_id int primary key identity,
playlist_id int not null,
user_id int not null,
collaborator_type_id int not null,

foreign key (user_id) references usr.usr (user_id),
foreign key (collaborator_type_id) references usr.collaborator_type (collaborator_type_id)

);

create table usr.playlist_type(
playlist_type_id int primary key identity,
playlist_type_name varchar(50)

);

create table usr.playlist(

playlist_id int primary key identity,
playlist_name varchar(50) not null,
playlist_type_id int not null,
playlist_description varchar(100),
creation_date date not null,

foreign key (playlist_type_id) references usr.playlist_type (playlist_type_id)


);


create table usr.follow(
follow_id int primary key identity,
follower_id int not null,
followed_id int not null,
follow_date date not null,

foreign key (follower_id) references usr.usr (user_id),
foreign key (followed_id) references usr.usr (user_id)


)




