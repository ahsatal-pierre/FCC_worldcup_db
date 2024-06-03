--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer,
    round character varying(30),
    winner integer,
    opponent integer,
    winner_goals integer,
    opponent_goals integer
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (88, 2018, 'Final', 115, 112, 4, 2);
INSERT INTO public.games VALUES (89, 2018, 'Third Place', 107, 114, 2, 0);
INSERT INTO public.games VALUES (90, 2018, 'Semi-Final', 112, 114, 2, 1);
INSERT INTO public.games VALUES (91, 2018, 'Semi-Final', 115, 107, 1, 0);
INSERT INTO public.games VALUES (92, 2018, 'Quarter-Final', 112, 123, 3, 2);
INSERT INTO public.games VALUES (93, 2018, 'Quarter-Final', 114, 125, 2, 0);
INSERT INTO public.games VALUES (94, 2018, 'Quarter-Final', 107, 108, 2, 1);
INSERT INTO public.games VALUES (95, 2018, 'Quarter-Final', 115, 128, 2, 0);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 114, 110, 2, 1);
INSERT INTO public.games VALUES (97, 2018, 'Eighth-Final', 125, 126, 1, 0);
INSERT INTO public.games VALUES (98, 2018, 'Eighth-Final', 107, 118, 3, 2);
INSERT INTO public.games VALUES (99, 2018, 'Eighth-Final', 108, 119, 2, 0);
INSERT INTO public.games VALUES (100, 2018, 'Eighth-Final', 112, 113, 2, 1);
INSERT INTO public.games VALUES (101, 2018, 'Eighth-Final', 123, 124, 2, 1);
INSERT INTO public.games VALUES (102, 2018, 'Eighth-Final', 128, 122, 2, 1);
INSERT INTO public.games VALUES (103, 2018, 'Eighth-Final', 115, 106, 4, 3);
INSERT INTO public.games VALUES (104, 2014, 'Final', 116, 106, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Third Place', 120, 108, 3, 0);
INSERT INTO public.games VALUES (106, 2014, 'Semi-Final', 106, 120, 1, 0);
INSERT INTO public.games VALUES (107, 2014, 'Semi-Final', 116, 108, 7, 1);
INSERT INTO public.games VALUES (108, 2014, 'Quarter-Final', 120, 111, 1, 0);
INSERT INTO public.games VALUES (109, 2014, 'Quarter-Final', 106, 107, 1, 0);
INSERT INTO public.games VALUES (110, 2014, 'Quarter-Final', 108, 110, 2, 1);
INSERT INTO public.games VALUES (111, 2014, 'Quarter-Final', 116, 115, 1, 0);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 108, 109, 2, 1);
INSERT INTO public.games VALUES (113, 2014, 'Eighth-Final', 110, 128, 2, 0);
INSERT INTO public.games VALUES (114, 2014, 'Eighth-Final', 115, 121, 2, 0);
INSERT INTO public.games VALUES (115, 2014, 'Eighth-Final', 116, 105, 2, 1);
INSERT INTO public.games VALUES (116, 2014, 'Eighth-Final', 120, 119, 2, 1);
INSERT INTO public.games VALUES (117, 2014, 'Eighth-Final', 111, 117, 2, 1);
INSERT INTO public.games VALUES (118, 2014, 'Eighth-Final', 106, 126, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Eighth-Final', 107, 127, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (105, 'Algeria');
INSERT INTO public.teams VALUES (106, 'Argentina');
INSERT INTO public.teams VALUES (107, 'Belgium');
INSERT INTO public.teams VALUES (108, 'Brazil');
INSERT INTO public.teams VALUES (109, 'Chile');
INSERT INTO public.teams VALUES (110, 'Colombia');
INSERT INTO public.teams VALUES (111, 'Costa Rica');
INSERT INTO public.teams VALUES (112, 'Croatia');
INSERT INTO public.teams VALUES (113, 'Denmark');
INSERT INTO public.teams VALUES (114, 'England');
INSERT INTO public.teams VALUES (115, 'France');
INSERT INTO public.teams VALUES (116, 'Germany');
INSERT INTO public.teams VALUES (117, 'Greece');
INSERT INTO public.teams VALUES (118, 'Japan');
INSERT INTO public.teams VALUES (119, 'Mexico');
INSERT INTO public.teams VALUES (120, 'Netherlands');
INSERT INTO public.teams VALUES (121, 'Nigeria');
INSERT INTO public.teams VALUES (122, 'Portugal');
INSERT INTO public.teams VALUES (123, 'Russia');
INSERT INTO public.teams VALUES (124, 'Spain');
INSERT INTO public.teams VALUES (125, 'Sweden');
INSERT INTO public.teams VALUES (126, 'Switzerland');
INSERT INTO public.teams VALUES (127, 'United States');
INSERT INTO public.teams VALUES (128, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 119, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 128, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- PostgreSQL database dump complete
--


