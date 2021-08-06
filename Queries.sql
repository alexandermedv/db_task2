create table if not exists test.genre (
	genre_id integer primary key,
	genre_name varchar(100)
	);

create table if not exists test.performer (
	performer_id integer primary key,
	performer_name varchar(100),
	genre_id integer not null references test.genre(genre_id)
);

create table if not exists test.album (
	album_id integer primary key,
	album_name varchar(1000),
	year integer,
	performer_id integer not null references test.performer(performer_id)
);

create table if not exists test.track (
	track_id integer primary key,
	track_name varchar(100),
	duration integer,
	album_id integer not null references test.album(album_id)
);
