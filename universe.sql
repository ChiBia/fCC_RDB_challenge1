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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_arm character varying(10),
    name character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    distance_from_planet integer,
    has_dedicated_song boolean,
    has_been_visited boolean,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: not_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.not_planet (
    not_planet_id integer NOT NULL,
    no_anymore boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.not_planet OWNER TO freecodecamp;

--
-- Name: not_planet_not_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.not_planet_not_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.not_planet_not_planet_id_seq OWNER TO freecodecamp;

--
-- Name: not_planet_not_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.not_planet_not_planet_id_seq OWNED BY public.not_planet.not_planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_types character varying(10),
    has_life boolean,
    is_sferical boolean,
    name character varying(20) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_million_years integer,
    color character varying(10),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: not_planet not_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.not_planet ALTER COLUMN not_planet_id SET DEFAULT nextval('public.not_planet_not_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Orion Arm', 'Solar System');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Orion Arm', 'Alpha Centauri');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'Orion Arm', 'Alpha Canis Majoris');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Orion Arm', 'Alpha Canis Minoris');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Orion Arm', 'Eta Cassiopeiae');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Orion Arm', 'Ophiuchi');
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'Orion Arm', 'Delta Pavonis');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, true, true, 'Moon', 1);
INSERT INTO public.moon VALUES (2, NULL, false, false, 'Deimos', 3);
INSERT INTO public.moon VALUES (3, NULL, false, false, 'Phobos', 3);
INSERT INTO public.moon VALUES (4, NULL, false, false, 'Ganymede', 5);
INSERT INTO public.moon VALUES (5, NULL, false, false, 'Callysto', 5);
INSERT INTO public.moon VALUES (6, NULL, false, false, 'Io', 5);
INSERT INTO public.moon VALUES (7, NULL, false, false, 'Europa', 5);
INSERT INTO public.moon VALUES (8, NULL, false, false, 'Iapetus', 4);
INSERT INTO public.moon VALUES (9, NULL, false, false, 'Rhea', 4);
INSERT INTO public.moon VALUES (10, NULL, false, false, 'Dione', 4);
INSERT INTO public.moon VALUES (11, NULL, false, false, 'Tethys', 4);
INSERT INTO public.moon VALUES (12, NULL, false, false, 'Mimas', 4);
INSERT INTO public.moon VALUES (13, NULL, false, false, 'Titania', 7);
INSERT INTO public.moon VALUES (14, NULL, false, false, 'Oberon', 7);
INSERT INTO public.moon VALUES (15, NULL, false, false, 'Umbriel', 7);
INSERT INTO public.moon VALUES (16, NULL, false, false, 'Ariel', 7);
INSERT INTO public.moon VALUES (17, NULL, false, false, 'Miranda', 7);
INSERT INTO public.moon VALUES (18, NULL, false, false, 'Thebe', 5);
INSERT INTO public.moon VALUES (19, NULL, false, false, 'Amalthea', 5);
INSERT INTO public.moon VALUES (20, NULL, false, false, 'Metis', 5);


--
-- Data for Name: not_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.not_planet VALUES (1, true, 'Pluto');
INSERT INTO public.not_planet VALUES (2, false, 'Venus');
INSERT INTO public.not_planet VALUES (3, false, 'Mars');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, 'Earth', 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, 'Venus', 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 'Mars', 1);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 'Saturn', 1);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 'Mercury', 1);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 'Uranus', 1);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 'Neptuune', 1);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, 'Eris', 1);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, 'Pluto', 1);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 'Orcus', 1);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 'Ceres', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Procyon', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Achird', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Guniibuu', NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: not_planet_not_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.not_planet_not_planet_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: not_planet not_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.not_planet
    ADD CONSTRAINT not_planet_name_key UNIQUE (name);


--
-- Name: not_planet not_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.not_planet
    ADD CONSTRAINT not_planet_pkey PRIMARY KEY (not_planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


