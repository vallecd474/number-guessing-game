--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 43, 1);
INSERT INTO public.games VALUES (2, 92, 1);
INSERT INTO public.games VALUES (3, 74, 1);
INSERT INTO public.games VALUES (4, 53, 1);
INSERT INTO public.games VALUES (5, 55, 1);
INSERT INTO public.games VALUES (6, 79, 1);
INSERT INTO public.games VALUES (7, 82, 1);
INSERT INTO public.games VALUES (8, 7, 1);
INSERT INTO public.games VALUES (9, 87, 1);
INSERT INTO public.games VALUES (10, 35, 1);
INSERT INTO public.games VALUES (11, 28, 1);
INSERT INTO public.games VALUES (12, 71, 1);
INSERT INTO public.games VALUES (13, 6, 1);
INSERT INTO public.games VALUES (14, 26, 1);
INSERT INTO public.games VALUES (15, 7, 1);
INSERT INTO public.games VALUES (16, 15, 1);
INSERT INTO public.games VALUES (17, 82, 1);
INSERT INTO public.games VALUES (18, 60, 1);
INSERT INTO public.games VALUES (19, 60, 1);
INSERT INTO public.games VALUES (20, 70, 1);
INSERT INTO public.games VALUES (21, 73, 1);
INSERT INTO public.games VALUES (22, 52, 1);
INSERT INTO public.games VALUES (23, 77, 1);
INSERT INTO public.games VALUES (24, 24, 1);
INSERT INTO public.games VALUES (25, 87, 1);
INSERT INTO public.games VALUES (26, 87, 1);
INSERT INTO public.games VALUES (27, 20, 1);
INSERT INTO public.games VALUES (28, 73, 1);
INSERT INTO public.games VALUES (29, 28, 1);
INSERT INTO public.games VALUES (30, 35, 1);
INSERT INTO public.games VALUES (31, 10, 1);
INSERT INTO public.games VALUES (32, 43, 1);
INSERT INTO public.games VALUES (33, 40, 1);
INSERT INTO public.games VALUES (34, 103, 1);
INSERT INTO public.games VALUES (35, 57, 1);
INSERT INTO public.games VALUES (36, 76, 1);
INSERT INTO public.games VALUES (37, 92, 1);
INSERT INTO public.games VALUES (38, 48, 1);
INSERT INTO public.games VALUES (39, 66, 1);
INSERT INTO public.games VALUES (40, 94, 1);
INSERT INTO public.games VALUES (41, 92, 1);
INSERT INTO public.games VALUES (42, 15, 1);
INSERT INTO public.games VALUES (43, 96, 1);
INSERT INTO public.games VALUES (44, 54, 1);
INSERT INTO public.games VALUES (45, 94, 1);
INSERT INTO public.games VALUES (46, 68, 1);
INSERT INTO public.games VALUES (47, 13, 1);
INSERT INTO public.games VALUES (48, 6, 1);
INSERT INTO public.games VALUES (49, 50, 1);
INSERT INTO public.games VALUES (50, 5, 1);
INSERT INTO public.games VALUES (51, 23, 65);
INSERT INTO public.games VALUES (52, 17, 65);
INSERT INTO public.games VALUES (53, 72, 66);
INSERT INTO public.games VALUES (54, 95, 66);
INSERT INTO public.games VALUES (55, 99, 65);
INSERT INTO public.games VALUES (56, 9, 65);
INSERT INTO public.games VALUES (57, 46, 65);
INSERT INTO public.games VALUES (58, 2, 67);
INSERT INTO public.games VALUES (59, 2, 67);
INSERT INTO public.games VALUES (60, 17, 68);
INSERT INTO public.games VALUES (61, 47, 68);
INSERT INTO public.games VALUES (62, 18, 67);
INSERT INTO public.games VALUES (63, 62, 67);
INSERT INTO public.games VALUES (64, 44, 67);
INSERT INTO public.games VALUES (65, 15, 69);
INSERT INTO public.games VALUES (66, 60, 69);
INSERT INTO public.games VALUES (67, 43, 70);
INSERT INTO public.games VALUES (68, 2, 70);
INSERT INTO public.games VALUES (69, 71, 69);
INSERT INTO public.games VALUES (70, 29, 69);
INSERT INTO public.games VALUES (71, 64, 69);
INSERT INTO public.games VALUES (72, 87, 71);
INSERT INTO public.games VALUES (73, 5, 71);
INSERT INTO public.games VALUES (74, 77, 72);
INSERT INTO public.games VALUES (75, 17, 72);
INSERT INTO public.games VALUES (76, 11, 71);
INSERT INTO public.games VALUES (77, 43, 71);
INSERT INTO public.games VALUES (78, 15, 71);
INSERT INTO public.games VALUES (79, 26, 73);
INSERT INTO public.games VALUES (80, 84, 73);
INSERT INTO public.games VALUES (81, 57, 74);
INSERT INTO public.games VALUES (82, 44, 74);
INSERT INTO public.games VALUES (83, 59, 73);
INSERT INTO public.games VALUES (84, 51, 73);
INSERT INTO public.games VALUES (85, 22, 73);
INSERT INTO public.games VALUES (86, 8, 75);
INSERT INTO public.games VALUES (87, 11, 75);
INSERT INTO public.games VALUES (88, 10, 76);
INSERT INTO public.games VALUES (89, 3, 76);
INSERT INTO public.games VALUES (90, 85, 75);
INSERT INTO public.games VALUES (91, 51, 75);
INSERT INTO public.games VALUES (92, 54, 75);
INSERT INTO public.games VALUES (93, 73, 77);
INSERT INTO public.games VALUES (94, 92, 77);
INSERT INTO public.games VALUES (95, 30, 78);
INSERT INTO public.games VALUES (96, 70, 78);
INSERT INTO public.games VALUES (97, 9, 77);
INSERT INTO public.games VALUES (98, 42, 77);
INSERT INTO public.games VALUES (99, 39, 77);
INSERT INTO public.games VALUES (100, 96, 79);
INSERT INTO public.games VALUES (101, 4, 79);
INSERT INTO public.games VALUES (102, 92, 80);
INSERT INTO public.games VALUES (103, 71, 80);
INSERT INTO public.games VALUES (104, 84, 79);
INSERT INTO public.games VALUES (105, 95, 79);
INSERT INTO public.games VALUES (106, 79, 79);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, '');
INSERT INTO public.users VALUES (65, 'user_1654713219748');
INSERT INTO public.users VALUES (66, 'user_1654713219747');
INSERT INTO public.users VALUES (67, 'user_1654713290945');
INSERT INTO public.users VALUES (68, 'user_1654713290944');
INSERT INTO public.users VALUES (69, 'user_1654713404601');
INSERT INTO public.users VALUES (70, 'user_1654713404600');
INSERT INTO public.users VALUES (71, 'user_1654713618487');
INSERT INTO public.users VALUES (72, 'user_1654713618486');
INSERT INTO public.users VALUES (73, 'user_1654713658764');
INSERT INTO public.users VALUES (74, 'user_1654713658763');
INSERT INTO public.users VALUES (75, 'user_1654713889158');
INSERT INTO public.users VALUES (76, 'user_1654713889157');
INSERT INTO public.users VALUES (77, 'user_1654713955928');
INSERT INTO public.users VALUES (78, 'user_1654713955927');
INSERT INTO public.users VALUES (79, 'user_1654714001593');
INSERT INTO public.users VALUES (80, 'user_1654714001592');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 80, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
