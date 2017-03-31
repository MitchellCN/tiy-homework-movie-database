--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE genre (
    "Genre type" character varying(10),
    genre_id integer NOT NULL
);


ALTER TABLE genre OWNER TO cmitchell;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genre_id_seq OWNER TO cmitchell;

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;


--
-- Name: miscellanous_movie_info; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE miscellanous_movie_info (
    "Date Released" date,
    "Mot Pic of America Rating" character varying(8),
    language character varying(10),
    misc_id integer NOT NULL
);


ALTER TABLE miscellanous_movie_info OWNER TO cmitchell;

--
-- Name: miscellanous_movie_info_misc_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE miscellanous_movie_info_misc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE miscellanous_movie_info_misc_id_seq OWNER TO cmitchell;

--
-- Name: miscellanous_movie_info_misc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE miscellanous_movie_info_misc_id_seq OWNED BY miscellanous_movie_info.misc_id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE movie (
    "Movie Genre" character varying(15) NOT NULL,
    movie_id integer NOT NULL,
    "Movie Name" character varying(20) NOT NULL,
    misc_id integer NOT NULL
);


ALTER TABLE movie OWNER TO cmitchell;

--
-- Name: movie_genres; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE movie_genres (
    movie_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE movie_genres OWNER TO cmitchell;

--
-- Name: movie_movie id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE "movie_movie id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "movie_movie id_seq" OWNER TO cmitchell;

--
-- Name: movie_movie id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE "movie_movie id_seq" OWNED BY movie.movie_id;


--
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_movie_id_seq OWNER TO cmitchell;

--
-- Name: movie_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE movie_movie_id_seq OWNED BY movie.movie_id;


--
-- Name: movie_roles; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE movie_roles (
    movie_id integer NOT NULL,
    person_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE movie_roles OWNER TO cmitchell;

--
-- Name: person; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE person (
    person_id integer NOT NULL,
    last_name character varying(20),
    first_name character varying(20)
);


ALTER TABLE person OWNER TO cmitchell;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_person_id_seq OWNER TO cmitchell;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE person_person_id_seq OWNED BY person.person_id;


--
-- Name: review; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE review (
    "Star Rating" double precision,
    metascore integer,
    "User Reviews" integer,
    "Critic Review" integer,
    review_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE review OWNER TO cmitchell;

--
-- Name: review_Review ID_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE "review_Review ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "review_Review ID_seq" OWNER TO cmitchell;

--
-- Name: review_Review ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE "review_Review ID_seq" OWNED BY review.review_id;


--
-- Name: review_review_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE review_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE review_review_id_seq OWNER TO cmitchell;

--
-- Name: review_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE review_review_id_seq OWNED BY review.review_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: cmitchell
--

CREATE TABLE role (
    role_id integer NOT NULL,
    role character varying(20)
);


ALTER TABLE role OWNER TO cmitchell;

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: cmitchell
--

CREATE SEQUENCE role_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE role_role_id_seq OWNER TO cmitchell;

--
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cmitchell
--

ALTER SEQUENCE role_role_id_seq OWNED BY role.role_id;


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);


--
-- Name: miscellanous_movie_info misc_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY miscellanous_movie_info ALTER COLUMN misc_id SET DEFAULT nextval('miscellanous_movie_info_misc_id_seq'::regclass);


--
-- Name: movie movie_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie ALTER COLUMN movie_id SET DEFAULT nextval('movie_movie_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY person ALTER COLUMN person_id SET DEFAULT nextval('person_person_id_seq'::regclass);


--
-- Name: review review_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY review ALTER COLUMN review_id SET DEFAULT nextval('review_review_id_seq'::regclass);


--
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY role ALTER COLUMN role_id SET DEFAULT nextval('role_role_id_seq'::regclass);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY genre ("Genre type", genre_id) FROM stdin;
Comedy	1
Biography	2
Drama	3
Music	4
Horror	5
Action	6
Suspension	7
Sci-Fi	8
Thriller	9
Adventure	10
Animation	11
Fantasy	12
\.


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('genre_genre_id_seq', 6, true);


--
-- Data for Name: miscellanous_movie_info; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY miscellanous_movie_info ("Date Released", "Mot Pic of America Rating", language, misc_id) FROM stdin;
1982-03-19	R	English	1
1995-09-15	R	English	2
1987-07-24	PG-13	English	3
2017-03-24	R	English	4
1994-02-04	PG-13	English	5
2015-06-12	PG-13	English	6
1989-12-01	PG-13	English	7
1995-03-31	PG-13	English	8
2013-11-27	PG	English	9
2007-02-16	PG-13	English	10
\.


--
-- Name: miscellanous_movie_info_misc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('miscellanous_movie_info_misc_id_seq', 4, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY movie ("Movie Genre", movie_id, "Movie Name", misc_id) FROM stdin;
Comedy	1	Porky's	1
Biography	2	La Bamba	2
Crime	3	The Usual Suspects	3
Comedy	4	Ace Ventura	4
Horror	5	Life	5
Action	6	Jurassic World	6
Comedy	7	Christmas Vacation	7
Comedy	8	Tommy Boy	8
Animation	9	Frozen	9
Action	10	Ghost Rider	10
\.


--
-- Data for Name: movie_genres; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY movie_genres (movie_id, genre_id) FROM stdin;
\.


--
-- Name: movie_movie id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('"movie_movie id_seq"', 4, true);


--
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('movie_movie_id_seq', 3, true);


--
-- Data for Name: movie_roles; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY movie_roles (movie_id, person_id, role_id) FROM stdin;
1	7	3
1	1	3
1	2	3
1	3	3
1	4	3
1	5	3
1	6	3
3	9	3
3	10	3
3	11	3
3	13	3
2	14	3
2	15	3
2	16	3
4	17	3
5	20	3
5	21	3
5	19	3
4	18	3
4	36	3
6	22	3
6	23	3
6	24	3
7	25	3
7	26	3
7	27	3
8	29	3
8	28	3
9	30	3
9	32	3
9	31	3
10	33	3
10	34	3
10	35	3
10	47	2
10	55	5
9	46	2
9	54	5
8	45	2
8	53	5
7	43	2
7	52	5
9	54	2
6	42	2
6	51	5
5	41	2
5	50	5
4	40	2
4	49	5
2	38	2
2	38	5
1	37	2
1	37	5
3	48	5
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY person (person_id, last_name, first_name) FROM stdin;
1	Monahan	Dan
2	Herrier	Mark
3	Knight	Wyatt
4	Wilson	Roger
5	O Reilly	Cyril
6	Hunter	Kaki
7	Cattrall	Kim
8	Parsons	Nancy
9	Spacey	Kevin
10	Baldwin	Stephen
11	Byrne	Gabriel
12	Pollak	Kevin
13	Del Toro	Benicio
14	Phillips	Lou Diamond
15	Morales	Esai
16	Desoto	Rosanna
17	Carrey	Jim
18	Cox	Courtney
19	Gyllenhaal	Jake
20	Ferguson	Rebecca
21	Reynold	Ryan
22	Pratt	Chris
23	Howard	Bryce
24	Simpkins	Ty
25	Chase	Chevy
26	D Angelo	Beverly
27	Lewis	Juliette
28	Farley	Chris
29	Spade	David
30	Bell	Kristen
31	Menzel	Idina
32	Groff	Jonathan
33	Cage	Nicholas
34	Mendez	Eva
35	Elliot	Sam
36	Young	Sean
37	Clark	Bob
38	Valdez	Luis
39	Singer	Bryan
40	Shadyac	Tom
41	Espinosa	Daniel
42	Jaffa	Colin
43	Chechik	Jeremiah
44	Singer	Bryan
45	Segal	Peter
46	Buck	Chris
47	Johnson	Mark
48	Brockmann	Hans
49	Barber	Gary
50	Granger	Don
51	Spielberg	Steven
52	Simmons	Matty
53	Weiss	Robert K.
54	Lasseter	John
55	Arad	Ari
\.


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('person_person_id_seq', 55, true);


--
-- Data for Name: review; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY review ("Star Rating", metascore, "User Reviews", "Critic Review", review_id, movie_id) FROM stdin;
6.20000000000000018	40	156	76	1	1
8.59999999999999964	77	1208	162	2	2
6.79999999999999982	\N	64	\N	3	3
6.90000000000000036	37	245	63	4	4
7	54	199	208	5	5
7	59	1323	658	6	6
7.59999999999999964	\N	262	90	7	7
7	\N	200	53	8	8
7.5	74	937	421	9	9
5.20000000000000018	35	684	276	10	10
\.


--
-- Name: review_Review ID_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('"review_Review ID_seq"', 4, true);


--
-- Name: review_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('review_review_id_seq', 1, true);


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: cmitchell
--

COPY role (role_id, role) FROM stdin;
2	Director
3	Actor
4	Key grip
5	Producer
6	Writer
1	Editor
\.


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cmitchell
--

SELECT pg_catalog.setval('role_role_id_seq', 6, true);


--
-- Name: genre genre_genre_id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_genre_id_pk PRIMARY KEY (genre_id);


--
-- Name: miscellanous_movie_info miscellanous_movie_info_misc_id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY miscellanous_movie_info
    ADD CONSTRAINT miscellanous_movie_info_misc_id_pk PRIMARY KEY (misc_id);


--
-- Name: movie movie_movie id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT "movie_movie id_pk" PRIMARY KEY (movie_id);


--
-- Name: movie_roles movie_roles_movie_id_person_id_role_id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_roles
    ADD CONSTRAINT movie_roles_movie_id_person_id_role_id_pk PRIMARY KEY (movie_id, person_id, role_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: review review_movie_id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY review
    ADD CONSTRAINT review_movie_id_pk PRIMARY KEY (movie_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: movie_genres table_name_movie_id_genre_id_pk; Type: CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT table_name_movie_id_genre_id_pk PRIMARY KEY (movie_id, genre_id);


--
-- Name: genre_genre_id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX genre_genre_id_uindex ON genre USING btree (genre_id);


--
-- Name: miscellanous_movie_info_misc_id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX miscellanous_movie_info_misc_id_uindex ON miscellanous_movie_info USING btree (misc_id);


--
-- Name: movie_Movie Name_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX "movie_Movie Name_uindex" ON movie USING btree ("Movie Name");


--
-- Name: movie_movie id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX "movie_movie id_uindex" ON movie USING btree (movie_id);


--
-- Name: person_person_id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX person_person_id_uindex ON person USING btree (person_id);


--
-- Name: review_review_id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX review_review_id_uindex ON review USING btree (review_id);


--
-- Name: role_role_id_uindex; Type: INDEX; Schema: public; Owner: cmitchell
--

CREATE UNIQUE INDEX role_role_id_uindex ON role USING btree (role_id);


--
-- Name: movie_genres movie_genres_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT movie_genres_genre_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genre(genre_id);


--
-- Name: movie_genres movie_genres_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_genres
    ADD CONSTRAINT movie_genres_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: movie movie_miscellanous_movie_info_misc_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_miscellanous_movie_info_misc_id_fk FOREIGN KEY (misc_id) REFERENCES miscellanous_movie_info(misc_id);


--
-- Name: movie_roles movie_roles_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_roles
    ADD CONSTRAINT movie_roles_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: movie_roles movie_roles_person_person_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_roles
    ADD CONSTRAINT movie_roles_person_person_id_fk FOREIGN KEY (person_id) REFERENCES person(person_id);


--
-- Name: movie_roles movie_roles_role_role_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY movie_roles
    ADD CONSTRAINT movie_roles_role_role_id_fk FOREIGN KEY (role_id) REFERENCES role(role_id);


--
-- Name: review review_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: cmitchell
--

ALTER TABLE ONLY review
    ADD CONSTRAINT review_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- PostgreSQL database dump complete
--

