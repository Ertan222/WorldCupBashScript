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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
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
    name character varying(50) NOT NULL
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

INSERT INTO public.games VALUES (251, 2018, 'Final', 178, 179, 2, 4);
INSERT INTO public.games VALUES (252, 2018, 'Third Place', 180, 181, 0, 2);
INSERT INTO public.games VALUES (253, 2018, 'Semi-Final', 179, 181, 1, 2);
INSERT INTO public.games VALUES (254, 2018, 'Semi-Final', 178, 180, 0, 1);
INSERT INTO public.games VALUES (255, 2018, 'Quarter-Final', 179, 182, 2, 3);
INSERT INTO public.games VALUES (256, 2018, 'Quarter-Final', 181, 183, 0, 2);
INSERT INTO public.games VALUES (257, 2018, 'Quarter-Final', 180, 184, 1, 2);
INSERT INTO public.games VALUES (258, 2018, 'Quarter-Final', 178, 185, 0, 2);
INSERT INTO public.games VALUES (259, 2018, 'Eighth-Final', 181, 186, 1, 2);
INSERT INTO public.games VALUES (260, 2018, 'Eighth-Final', 183, 187, 0, 1);
INSERT INTO public.games VALUES (261, 2018, 'Eighth-Final', 180, 188, 2, 3);
INSERT INTO public.games VALUES (262, 2018, 'Eighth-Final', 184, 189, 0, 2);
INSERT INTO public.games VALUES (263, 2018, 'Eighth-Final', 179, 190, 1, 2);
INSERT INTO public.games VALUES (264, 2018, 'Eighth-Final', 182, 191, 1, 2);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 185, 192, 1, 2);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 178, 193, 3, 4);
INSERT INTO public.games VALUES (267, 2014, 'Final', 194, 193, 0, 1);
INSERT INTO public.games VALUES (268, 2014, 'Third Place', 195, 184, 0, 3);
INSERT INTO public.games VALUES (269, 2014, 'Semi-Final', 193, 195, 0, 1);
INSERT INTO public.games VALUES (270, 2014, 'Semi-Final', 194, 184, 1, 7);
INSERT INTO public.games VALUES (271, 2014, 'Quarter-Final', 195, 196, 0, 1);
INSERT INTO public.games VALUES (272, 2014, 'Quarter-Final', 193, 180, 0, 1);
INSERT INTO public.games VALUES (273, 2014, 'Quarter-Final', 184, 186, 1, 2);
INSERT INTO public.games VALUES (274, 2014, 'Quarter-Final', 194, 178, 0, 1);
INSERT INTO public.games VALUES (275, 2014, 'Eighth-Final', 184, 197, 1, 2);
INSERT INTO public.games VALUES (276, 2014, 'Eighth-Final', 186, 185, 0, 2);
INSERT INTO public.games VALUES (277, 2014, 'Eighth-Final', 178, 198, 0, 2);
INSERT INTO public.games VALUES (278, 2014, 'Eighth-Final', 194, 199, 1, 2);
INSERT INTO public.games VALUES (279, 2014, 'Eighth-Final', 195, 189, 1, 2);
INSERT INTO public.games VALUES (280, 2014, 'Eighth-Final', 196, 200, 1, 2);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 193, 187, 0, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 180, 201, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (178, 'France');
INSERT INTO public.teams VALUES (179, 'Croatia');
INSERT INTO public.teams VALUES (180, 'Belgium');
INSERT INTO public.teams VALUES (181, 'England');
INSERT INTO public.teams VALUES (182, 'Russia');
INSERT INTO public.teams VALUES (183, 'Sweden');
INSERT INTO public.teams VALUES (184, 'Brazil');
INSERT INTO public.teams VALUES (185, 'Uruguay');
INSERT INTO public.teams VALUES (186, 'Colombia');
INSERT INTO public.teams VALUES (187, 'Switzerland');
INSERT INTO public.teams VALUES (188, 'Japan');
INSERT INTO public.teams VALUES (189, 'Mexico');
INSERT INTO public.teams VALUES (190, 'Denmark');
INSERT INTO public.teams VALUES (191, 'Spain');
INSERT INTO public.teams VALUES (192, 'Portugal');
INSERT INTO public.teams VALUES (193, 'Argentina');
INSERT INTO public.teams VALUES (194, 'Germany');
INSERT INTO public.teams VALUES (195, 'Netherlands');
INSERT INTO public.teams VALUES (196, 'Costa Rica');
INSERT INTO public.teams VALUES (197, 'Chile');
INSERT INTO public.teams VALUES (198, 'Nigeria');
INSERT INTO public.teams VALUES (199, 'Algeria');
INSERT INTO public.teams VALUES (200, 'Greece');
INSERT INTO public.teams VALUES (201, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 282, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 201, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


