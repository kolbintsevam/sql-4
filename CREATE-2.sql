CREATE TABLE IF NOT EXISTS genre(
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL 
);

CREATE TABLE IF NOT EXISTS singers(
    singer_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL 
);

CREATE TABLE IF NOT EXISTS genre_singers (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	genre_id INTEGER NOT NULL REFERENCES genre(genre_id)
);

CREATE TABLE IF NOT EXISTS albums(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_album (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks(
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    duration NUMERIC NOT NULL,
    album_id INTEGER NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS compilation(
    compilation_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    data INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation_traks (
    id SERIAL PRIMARY KEY,
    track_id INTEGER NOT NULL REFERENCES Tracks(track_id),
    compilation_id INTEGER NOT NULL REFERENCES Compilation(compilation_id)
);