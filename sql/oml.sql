INSERT INTO profile(profileId, profileFirstName, profileLastName, profileEmail, profileWatchHistory) VALUES (UNHEX('5c13630935034491badc4aab0fef9395'), 'Josh', 'Mashke', 'jmeuhuirg@gmail.com',
'The Witcher');
INSERT INTO movie(movieId, movieName, movieRating, movieSummary, movieYear) VALUES (UNHEX('df1018f52a3b411daf476322b720abf8'), 'Endgame', '8', 'The Avengers fight Thanos', '2019');
INSERT INTO  rating(ratingProfileId, ratingMovieId, likeDate) VALUES (UNHEX('5c13630935034491badc4aab0fef9395'), UNHEX('df1018f52a3b411daf476322b720abf8'), '2019');


update profile
set
	profileFirstName = 'Piyuewh'
WHERE
	profileId = UNHEX('5c13630935034491badc4aab0fef9395');


insert into movie(movieId, movieName, movieRating, movieSummary, movieYear) VALUES (UNHEX('42d8ad88ca624a48baa58dfa67e1fa38'), 'Scott Pilgrim', '10', 'Scott must battle Ramonas evil exs', '2010');
delete from movie where movieId = UNHEX('42d8ad88ca624a48baa58dfa67e1fa38');

INSERT INTO profile(profileId, profileFirstName, profileLastName, profileEmail, profileWatchHistory) VALUES (UNHEX('f19b4aa826d243b698c09b893d4f8668'), 'MMMMMMMMMMMMdoc', '99942', 'MMMMMMMMMMdoc@hotmail.com', 'Friends');
INSERT INTO movie(movieId, movieName, movieRating, movieSummary, movieYear) VALUES (UNHEX('1257e827ef634c77b3d5f1b121100866'), 'Eden of the East', '7', 'This one guy is naked with a gun in front of the white house. Why? Who knows. Certianly
not him', '2012');

Select movieName, movieYear from movie where movieId = UNHEX('1257e827ef634c77b3d5f1b121100866');

select profile.profileFirstName, profile.profileLastName, rating.likeDate FROM profile INNER JOIN rating on rating.ratingProfileId = profile.profileId where profileLastName = 'Mashke';




