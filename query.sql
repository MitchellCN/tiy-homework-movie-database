SELECT last_name, first_name
FROM person
WHERE first_name = 'Jim';

SELECT last_name, first_name
FROM person;
WHERE last_name = 'farley';

SELECT movie_name, movie_genre
FROM movie
WHERE movie_name = 'Tommy Boy';

SELECT role_id, movie_id
FROM movie_roles
WHERE role_id = 3;

SELECT star_rating, user_reviews
FROM review
WHERE star_rating = 7;

SELECT star_rating, critic_review
FROM review
WHERE star_rating = 8.6;

SELECT genre_type, genre_id
FROM genre
WHERE genre_type = 'Comedy';

SELECT genre_type, role_name
FROM genre, role
WHERE genre_type = 'Comedy';


SELECT movie_id, movie_genre, movie_name, misc_id
FROM movie
WHERE movie_genre = 'Comedy';

SELECT date_released, mot_pic_rating, language, misc_id
FROM miscellanous_movie_info
WHERE LANGUAGE = 'English';

SELECT date_released, mot_pic_rating, language, misc_id
FROM miscellanous_movie_info
WHERE mot_pic_rating = 'PG-13';

SELECT date_released, mot_pic_rating, language, misc_id
FROM miscellanous_movie_info
WHERE misc_id = 7;

SELECT movie_id, person_id, role_id
FROM movie_roles
WHERE role_id = 5;

SELECT role_id, role_name
FROM role
WHERE role_name = 'Actor';

SELECT *
FROM role
WHERE role_name = 'Director';

SELECT *
FROM review
WHERE review_id = 3;

