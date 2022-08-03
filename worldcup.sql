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
    round character varying NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (450, 2018, 'Final', 943, 944, 4, 2);
INSERT INTO public.games VALUES (451, 2018, 'Third Place', 945, 946, 2, 0);
INSERT INTO public.games VALUES (452, 2018, 'Semi-Final', 944, 946, 2, 1);
INSERT INTO public.games VALUES (453, 2018, 'Semi-Final', 943, 945, 1, 0);
INSERT INTO public.games VALUES (454, 2018, 'Quarter-Final', 944, 947, 3, 2);
INSERT INTO public.games VALUES (455, 2018, 'Quarter-Final', 946, 948, 2, 0);
INSERT INTO public.games VALUES (456, 2018, 'Quarter-Final', 945, 949, 2, 1);
INSERT INTO public.games VALUES (457, 2018, 'Quarter-Final', 943, 950, 2, 0);
INSERT INTO public.games VALUES (458, 2018, 'Eighth-Final', 946, 951, 2, 1);
INSERT INTO public.games VALUES (459, 2018, 'Eighth-Final', 948, 952, 1, 0);
INSERT INTO public.games VALUES (460, 2018, 'Eighth-Final', 945, 953, 3, 2);
INSERT INTO public.games VALUES (461, 2018, 'Eighth-Final', 949, 954, 2, 0);
INSERT INTO public.games VALUES (462, 2018, 'Eighth-Final', 944, 955, 2, 1);
INSERT INTO public.games VALUES (463, 2018, 'Eighth-Final', 947, 956, 2, 1);
INSERT INTO public.games VALUES (464, 2018, 'Eighth-Final', 950, 957, 2, 1);
INSERT INTO public.games VALUES (465, 2018, 'Eighth-Final', 943, 958, 4, 3);
INSERT INTO public.games VALUES (466, 2014, 'Final', 959, 958, 1, 0);
INSERT INTO public.games VALUES (467, 2014, 'Third Place', 960, 949, 3, 0);
INSERT INTO public.games VALUES (468, 2014, 'Semi-Final', 958, 960, 1, 0);
INSERT INTO public.games VALUES (469, 2014, 'Semi-Final', 959, 949, 7, 1);
INSERT INTO public.games VALUES (470, 2014, 'Quarter-Final', 960, 961, 1, 0);
INSERT INTO public.games VALUES (471, 2014, 'Quarter-Final', 958, 945, 1, 0);
INSERT INTO public.games VALUES (472, 2014, 'Quarter-Final', 949, 951, 2, 1);
INSERT INTO public.games VALUES (473, 2014, 'Quarter-Final', 959, 943, 1, 0);
INSERT INTO public.games VALUES (474, 2014, 'Eighth-Final', 949, 962, 2, 1);
INSERT INTO public.games VALUES (475, 2014, 'Eighth-Final', 951, 950, 2, 0);
INSERT INTO public.games VALUES (476, 2014, 'Eighth-Final', 943, 963, 2, 0);
INSERT INTO public.games VALUES (477, 2014, 'Eighth-Final', 959, 964, 2, 1);
INSERT INTO public.games VALUES (478, 2014, 'Eighth-Final', 960, 954, 2, 1);
INSERT INTO public.games VALUES (479, 2014, 'Eighth-Final', 961, 965, 2, 1);
INSERT INTO public.games VALUES (480, 2014, 'Eighth-Final', 958, 952, 1, 0);
INSERT INTO public.games VALUES (481, 2014, 'Eighth-Final', 945, 966, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (943, 'France');
INSERT INTO public.teams VALUES (944, 'Croatia');
INSERT INTO public.teams VALUES (945, 'Belgium');
INSERT INTO public.teams VALUES (946, 'England');
INSERT INTO public.teams VALUES (947, 'Russia');
INSERT INTO public.teams VALUES (948, 'Sweden');
INSERT INTO public.teams VALUES (949, 'Brazil');
INSERT INTO public.teams VALUES (950, 'Uruguay');
INSERT INTO public.teams VALUES (951, 'Colombia');
INSERT INTO public.teams VALUES (952, 'Switzerland');
INSERT INTO public.teams VALUES (953, 'Japan');
INSERT INTO public.teams VALUES (954, 'Mexico');
INSERT INTO public.teams VALUES (955, 'Denmark');
INSERT INTO public.teams VALUES (956, 'Spain');
INSERT INTO public.teams VALUES (957, 'Portugal');
INSERT INTO public.teams VALUES (958, 'Argentina');
INSERT INTO public.teams VALUES (959, 'Germany');
INSERT INTO public.teams VALUES (960, 'Netherlands');
INSERT INTO public.teams VALUES (961, 'Costa Rica');
INSERT INTO public.teams VALUES (962, 'Chile');
INSERT INTO public.teams VALUES (963, 'Nigeria');
INSERT INTO public.teams VALUES (964, 'Algeria');
INSERT INTO public.teams VALUES (965, 'Greece');
INSERT INTO public.teams VALUES (966, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 481, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 966, true);


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

