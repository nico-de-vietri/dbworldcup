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
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (182, 2018, 'Final', 794, 795, 4, 2);
INSERT INTO public.games VALUES (183, 2018, 'Third Place', 796, 797, 2, 0);
INSERT INTO public.games VALUES (184, 2018, 'Semi-Final', 795, 797, 2, 1);
INSERT INTO public.games VALUES (185, 2018, 'Semi-Final', 794, 796, 1, 0);
INSERT INTO public.games VALUES (186, 2018, 'Quarter-Final', 795, 803, 3, 2);
INSERT INTO public.games VALUES (187, 2018, 'Quarter-Final', 797, 805, 2, 0);
INSERT INTO public.games VALUES (188, 2018, 'Quarter-Final', 796, 807, 2, 1);
INSERT INTO public.games VALUES (189, 2018, 'Quarter-Final', 794, 809, 2, 0);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 797, 811, 2, 1);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 805, 813, 1, 0);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 796, 815, 3, 2);
INSERT INTO public.games VALUES (193, 2018, 'Eighth-Final', 807, 817, 2, 0);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 795, 819, 2, 1);
INSERT INTO public.games VALUES (195, 2018, 'Eighth-Final', 803, 821, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Eighth-Final', 809, 823, 2, 1);
INSERT INTO public.games VALUES (197, 2018, 'Eighth-Final', 794, 825, 4, 3);
INSERT INTO public.games VALUES (198, 2014, 'Final', 826, 825, 1, 0);
INSERT INTO public.games VALUES (199, 2014, 'Third Place', 828, 807, 3, 0);
INSERT INTO public.games VALUES (200, 2014, 'Semi-Final', 825, 828, 1, 0);
INSERT INTO public.games VALUES (201, 2014, 'Semi-Final', 826, 807, 7, 1);
INSERT INTO public.games VALUES (202, 2014, 'Quarter-Final', 828, 835, 1, 0);
INSERT INTO public.games VALUES (203, 2014, 'Quarter-Final', 825, 796, 1, 0);
INSERT INTO public.games VALUES (204, 2014, 'Quarter-Final', 807, 811, 2, 1);
INSERT INTO public.games VALUES (205, 2014, 'Quarter-Final', 826, 794, 1, 0);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 807, 843, 2, 1);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 811, 809, 2, 0);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 794, 847, 2, 0);
INSERT INTO public.games VALUES (209, 2014, 'Eighth-Final', 826, 849, 2, 1);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 828, 817, 2, 1);
INSERT INTO public.games VALUES (211, 2014, 'Eighth-Final', 835, 853, 2, 1);
INSERT INTO public.games VALUES (212, 2014, 'Eighth-Final', 825, 813, 1, 0);
INSERT INTO public.games VALUES (213, 2014, 'Eighth-Final', 796, 857, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (794, 'France');
INSERT INTO public.teams VALUES (795, 'Croatia');
INSERT INTO public.teams VALUES (796, 'Belgium');
INSERT INTO public.teams VALUES (797, 'England');
INSERT INTO public.teams VALUES (803, 'Russia');
INSERT INTO public.teams VALUES (805, 'Sweden');
INSERT INTO public.teams VALUES (807, 'Brazil');
INSERT INTO public.teams VALUES (809, 'Uruguay');
INSERT INTO public.teams VALUES (811, 'Colombia');
INSERT INTO public.teams VALUES (813, 'Switzerland');
INSERT INTO public.teams VALUES (815, 'Japan');
INSERT INTO public.teams VALUES (817, 'Mexico');
INSERT INTO public.teams VALUES (819, 'Denmark');
INSERT INTO public.teams VALUES (821, 'Spain');
INSERT INTO public.teams VALUES (823, 'Portugal');
INSERT INTO public.teams VALUES (825, 'Argentina');
INSERT INTO public.teams VALUES (826, 'Germany');
INSERT INTO public.teams VALUES (828, 'Netherlands');
INSERT INTO public.teams VALUES (835, 'Costa Rica');
INSERT INTO public.teams VALUES (843, 'Chile');
INSERT INTO public.teams VALUES (847, 'Nigeria');
INSERT INTO public.teams VALUES (849, 'Algeria');
INSERT INTO public.teams VALUES (853, 'Greece');
INSERT INTO public.teams VALUES (857, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 213, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 6, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 857, true);


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

