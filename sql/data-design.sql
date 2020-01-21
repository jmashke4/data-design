ALTER DATABASE jmashke CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS `rating`;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS profile;


CREATE TABLE profile (

	profileId BINARY(16) NOT NULL,
	profileFirstName CHAR(32),
	profileLastName VARCHAR(32) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	profileWatchHistory VARCHAR(32),
	UNIQUE(profileEmail),
	PRIMARY KEY(profileId)
);

CREATE TABLE movie (
	movieId BINARY(16) NOT NULL,
	movieRating BINARY(16) NOT NULL,
	movieSummary VARCHAR(140) NOT NULL,
	movieYear DATETIME(6) NOT NULL,
	INDEX(movieId),
	FOREIGN KEY(movieId) REFERENCES profile(profileId),
	PRIMARY KEY(movieId)
);

CREATE TABLE `rating` (
	ratingProfileId BINARY(16) NOT NULL,
	ratingMovieId BINARY(16) NOT NULL,
	likeDate DATETIME(6) NOT NULL,
	INDEX(ratingProfileId),
	INDEX(ratingMovieId),
	FOREIGN KEY(ratingProfileId) REFERENCES profile(profileId),
	FOREIGN KEY(ratingMovieId) REFERENCES movie(movieId),
	PRIMARY KEY(ratingProfileId, ratingMovieId)
);

