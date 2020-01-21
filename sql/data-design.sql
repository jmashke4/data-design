ALTER DATABASE jmashke CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS `rating`;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS profile;


CREATE TABLE profile (

	profileId BINARY(16) NOT NULL,
	profileFirstName CHAR(32) NOT NULL,
	profileLastName CHAR(32) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	profileWatchHistory CHAR(150),
	PRIMARY KEY(profileId),
	UNIQUE(profileEmail)
);

CREATE TABLE movie (
	movieId BINARY(16) NOT NULL,
	movieName CHAR(50) NOT NULL,
	movieRating CHAR(16) NOT NULL,
	movieSummary VARCHAR(140) NOT NULL,
	movieYear VARCHAR(6) NOT NULL,
	INDEX(movieId),
	PRIMARY KEY(movieId)
);

CREATE TABLE `rating` (
	ratingProfileId BINARY(16) NOT NULL,
	ratingMovieId BINARY(16) NOT NULL,
	ratingDate VARCHAR(6) NOT NULL,
	INDEX(ratingProfileId),
	INDEX(ratingMovieId),
	FOREIGN KEY(ratingProfileId) REFERENCES profile(profileId),
	FOREIGN KEY(ratingMovieId) REFERENCES movie(movieId),
	PRIMARY KEY(ratingProfileId, ratingMovieId)
);

