CREATE TABLE IF NOT EXISTS users (
	id SERIAL PRIMARY KEY NOT NULL,
	email TEXT NOT NULL UNIQUE,
	username VARCHAR(15) NOT NULL UNIQUE,
	password_hash CHAR(60) NOT NULL,
	registration_timestamp TIMESTAMP,
	reset_token CHAR(20),
	title VARCHAR(2) NULL,
	rd_bullet REAL NOT NULL DEFAULT 350,
	rd_blitz REAL NOT NULL DEFAULT 350,
	rd_classical REAL NOT NULL DEFAULT 350
);
