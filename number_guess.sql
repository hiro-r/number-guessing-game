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
-- Name: game_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_info (
    game_id integer NOT NULL,
    guess_count integer NOT NULL,
    user_id integer
);


ALTER TABLE public.game_info OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_info_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_info_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_info_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_info_game_id_seq OWNED BY public.game_info.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    name character varying(22) NOT NULL,
    user_id integer NOT NULL
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
-- Name: game_info game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info ALTER COLUMN game_id SET DEFAULT nextval('public.game_info_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_info VALUES (1, 1, 7);
INSERT INTO public.game_info VALUES (2, 320, 10);
INSERT INTO public.game_info VALUES (3, 368, 10);
INSERT INTO public.game_info VALUES (4, 776, 11);
INSERT INTO public.game_info VALUES (5, 318, 11);
INSERT INTO public.game_info VALUES (6, 886, 10);
INSERT INTO public.game_info VALUES (7, 657, 10);
INSERT INTO public.game_info VALUES (8, 162, 10);
INSERT INTO public.game_info VALUES (9, 882, 12);
INSERT INTO public.game_info VALUES (10, 921, 12);
INSERT INTO public.game_info VALUES (11, 522, 13);
INSERT INTO public.game_info VALUES (12, 329, 13);
INSERT INTO public.game_info VALUES (13, 770, 12);
INSERT INTO public.game_info VALUES (14, 81, 12);
INSERT INTO public.game_info VALUES (15, 611, 12);
INSERT INTO public.game_info VALUES (16, 357, 14);
INSERT INTO public.game_info VALUES (17, 92, 14);
INSERT INTO public.game_info VALUES (18, 938, 15);
INSERT INTO public.game_info VALUES (19, 398, 15);
INSERT INTO public.game_info VALUES (20, 367, 14);
INSERT INTO public.game_info VALUES (21, 118, 14);
INSERT INTO public.game_info VALUES (22, 356, 14);
INSERT INTO public.game_info VALUES (23, 168, 16);
INSERT INTO public.game_info VALUES (24, 215, 16);
INSERT INTO public.game_info VALUES (25, 396, 17);
INSERT INTO public.game_info VALUES (26, 361, 17);
INSERT INTO public.game_info VALUES (27, 569, 16);
INSERT INTO public.game_info VALUES (28, 429, 16);
INSERT INTO public.game_info VALUES (29, 886, 16);
INSERT INTO public.game_info VALUES (30, 838, 18);
INSERT INTO public.game_info VALUES (31, 321, 18);
INSERT INTO public.game_info VALUES (32, 809, 19);
INSERT INTO public.game_info VALUES (33, 646, 19);
INSERT INTO public.game_info VALUES (34, 308, 18);
INSERT INTO public.game_info VALUES (35, 598, 18);
INSERT INTO public.game_info VALUES (36, 775, 18);
INSERT INTO public.game_info VALUES (37, 279, 20);
INSERT INTO public.game_info VALUES (38, 207, 20);
INSERT INTO public.game_info VALUES (39, 279, 21);
INSERT INTO public.game_info VALUES (40, 878, 21);
INSERT INTO public.game_info VALUES (41, 889, 20);
INSERT INTO public.game_info VALUES (42, 28, 20);
INSERT INTO public.game_info VALUES (43, 717, 20);
INSERT INTO public.game_info VALUES (44, 5, 7);
INSERT INTO public.game_info VALUES (45, 198, 22);
INSERT INTO public.game_info VALUES (46, 126, 22);
INSERT INTO public.game_info VALUES (47, 525, 23);
INSERT INTO public.game_info VALUES (48, 402, 23);
INSERT INTO public.game_info VALUES (49, 774, 22);
INSERT INTO public.game_info VALUES (50, 780, 22);
INSERT INTO public.game_info VALUES (51, 73, 22);
INSERT INTO public.game_info VALUES (52, 132, 24);
INSERT INTO public.game_info VALUES (53, 766, 24);
INSERT INTO public.game_info VALUES (54, 779, 25);
INSERT INTO public.game_info VALUES (55, 478, 25);
INSERT INTO public.game_info VALUES (56, 706, 24);
INSERT INTO public.game_info VALUES (57, 845, 24);
INSERT INTO public.game_info VALUES (58, 904, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('ham', 7);
INSERT INTO public.users VALUES ('user_1687285854369', 8);
INSERT INTO public.users VALUES ('user_1687285854368', 9);
INSERT INTO public.users VALUES ('user_1687285893540', 10);
INSERT INTO public.users VALUES ('user_1687285893539', 11);
INSERT INTO public.users VALUES ('user_1687285952775', 12);
INSERT INTO public.users VALUES ('user_1687285952774', 13);
INSERT INTO public.users VALUES ('user_1687286040140', 14);
INSERT INTO public.users VALUES ('user_1687286040139', 15);
INSERT INTO public.users VALUES ('user_1687286698960', 16);
INSERT INTO public.users VALUES ('user_1687286698959', 17);
INSERT INTO public.users VALUES ('user_1687286980948', 18);
INSERT INTO public.users VALUES ('user_1687286980947', 19);
INSERT INTO public.users VALUES ('user_1687287134427', 20);
INSERT INTO public.users VALUES ('user_1687287134426', 21);
INSERT INTO public.users VALUES ('user_1687287419370', 22);
INSERT INTO public.users VALUES ('user_1687287419369', 23);
INSERT INTO public.users VALUES ('user_1687287480315', 24);
INSERT INTO public.users VALUES ('user_1687287480314', 25);


--
-- Name: game_info_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_info_game_id_seq', 58, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: game_info game_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: game_info game_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_info
    ADD CONSTRAINT game_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

