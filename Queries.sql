create table if not exists performer (
	performer_id integer primary key,
	performer_name varchar(100),
	genre_id integer references genre(genre_id)
);

create table if not exists album (
	album_id integer primary key,
	album_name varchar(1000),
	year integer,
	performer_name varchar(100) references performer(performer_id)
);

create table if not exists track (
	track_id integer primary key,
	track_name varchar(100),
	duration integer,
	album_name varchar(1000) references album(album_id)
);

create table if not exists genre (
	genre_id integer primary key,
	genre_name varchar(100)
	);
