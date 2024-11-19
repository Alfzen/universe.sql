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
-- Name: approved_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.approved_table (
    approved_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    approved boolean
);


ALTER TABLE public.approved_table OWNER TO freecodecamp;

--
-- Name: approved_table_approved_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.approved_table_approved_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.approved_table_approved_table_id_seq OWNER TO freecodecamp;

--
-- Name: approved_table_approved_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.approved_table_approved_table_id_seq OWNED BY public.approved_table.approved_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_earth numeric(4,2),
    year_discovered integer,
    description text,
    reachable boolean
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
    name character varying(30) NOT NULL,
    distance_earth numeric(4,2),
    year_discovered integer,
    description text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_earth numeric(4,2),
    year_discovered integer,
    habitable boolean,
    description text,
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
    name character varying(30) NOT NULL,
    distance_earth numeric(4,2),
    year_discovered integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: approved_table approved_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.approved_table ALTER COLUMN approved_table_id SET DEFAULT nextval('public.approved_table_approved_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: approved_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.approved_table VALUES (1, 'Alfonso', true);
INSERT INTO public.approved_table VALUES (2, 'Alfredo', true);
INSERT INTO public.approved_table VALUES (3, 'Gonzales', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A-galaxy', 11.22, 1999, 'descripción de agalaxy', true);
INSERT INTO public.galaxy VALUES (2, 'B-galaxy', 22.33, 1998, 'descripción de B-galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'C-galaxy', 33.44, 1978, 'descripción de c-galaxy', true);
INSERT INTO public.galaxy VALUES (4, 'd-galaxy', 44.55, 1997, 'descripción de d-galaxy', true);
INSERT INTO public.galaxy VALUES (5, 'e-galaxy', 55.66, 1927, 'descripción de E-galaxy', true);
INSERT INTO public.galaxy VALUES (6, 'F-galaxy', 66.77, 1327, 'descripción de F-galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon-A', 12.30, 2021, 'description de MOON-A', 1);
INSERT INTO public.moon VALUES (2, 'moon-B', 25.50, 2020, 'description de MOON-B', 2);
INSERT INTO public.moon VALUES (3, 'moon-C', 30.10, 2022, 'description de MOON-C', 3);
INSERT INTO public.moon VALUES (4, 'moon-D', 14.60, 2023, 'description de MOON-D', 4);
INSERT INTO public.moon VALUES (5, 'moon-E', 20.80, 2020, 'description de MOON-E', 5);
INSERT INTO public.moon VALUES (6, 'moon-F', 19.90, 2021, 'description de MOON-F', 6);
INSERT INTO public.moon VALUES (7, 'moon-G', 22.40, 2022, 'description de MOON-G', 7);
INSERT INTO public.moon VALUES (8, 'moon-H', 27.10, 2023, 'description de MOON-H', 8);
INSERT INTO public.moon VALUES (9, 'moon-I', 18.70, 2020, 'description de MOON-I', 9);
INSERT INTO public.moon VALUES (10, 'moon-J', 15.20, 2021, 'description de MOON-J', 10);
INSERT INTO public.moon VALUES (11, 'moon-K', 23.60, 2022, 'description de MOON-K', 11);
INSERT INTO public.moon VALUES (12, 'moon-L', 28.30, 2023, 'description de MOON-L', 12);
INSERT INTO public.moon VALUES (13, 'moon-M', 11.40, 2020, 'description de MOON-M', 1);
INSERT INTO public.moon VALUES (14, 'moon-N', 16.80, 2021, 'description de MOON-N', 2);
INSERT INTO public.moon VALUES (15, 'moon-O', 24.90, 2022, 'description de MOON-O', 3);
INSERT INTO public.moon VALUES (16, 'moon-P', 17.50, 2023, 'description de MOON-P', 4);
INSERT INTO public.moon VALUES (17, 'moon-Q', 21.20, 2020, 'description de MOON-Q', 5);
INSERT INTO public.moon VALUES (18, 'moon-R', 13.60, 2021, 'description de MOON-R', 6);
INSERT INTO public.moon VALUES (19, 'moon-S', 26.00, 2022, 'description de MOON-S', 7);
INSERT INTO public.moon VALUES (20, 'moon-T', 29.70, 2023, 'description de MOON-T', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet-A', 30.50, 2020, true, 'description de PLANET-A', 1);
INSERT INTO public.planet VALUES (2, 'planet-B', 45.80, 2021, false, 'description de PLANET-B', 2);
INSERT INTO public.planet VALUES (3, 'planet-C', 15.25, 2022, true, 'description de PLANET-C', 3);
INSERT INTO public.planet VALUES (4, 'planet-D', 60.10, 2023, false, 'description de PLANET-D', 4);
INSERT INTO public.planet VALUES (5, 'planet-E', 40.90, 2020, true, 'description de PLANET-E', 5);
INSERT INTO public.planet VALUES (6, 'planet-F', 50.30, 2021, false, 'description de PLANET-F', 6);
INSERT INTO public.planet VALUES (7, 'planet-G', 25.75, 2022, true, 'description de PLANET-G', 1);
INSERT INTO public.planet VALUES (8, 'planet-H', 37.90, 2023, false, 'description de PLANET-H', 2);
INSERT INTO public.planet VALUES (9, 'planet-I', 48.60, 2020, true, 'description de PLANET-I', 3);
INSERT INTO public.planet VALUES (10, 'planet-J', 70.20, 2021, false, 'description de PLANET-J', 4);
INSERT INTO public.planet VALUES (11, 'planet-K', 33.40, 2022, true, 'description de PLANET-K', 5);
INSERT INTO public.planet VALUES (12, 'planet-L', 53.15, 2023, false, 'description de PLANET-L', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star-A', 99.11, 1234, 'description de STAR-A', 1);
INSERT INTO public.star VALUES (2, 'star-B', 45.23, 1500, 'description de STAR-B', 2);
INSERT INTO public.star VALUES (3, 'star-C', 58.50, 1600, 'description de STAR-C', 3);
INSERT INTO public.star VALUES (4, 'star-D', 34.12, 1700, 'description de STAR-D', 4);
INSERT INTO public.star VALUES (5, 'star-E', 89.99, 1800, 'description de STAR-E', 5);
INSERT INTO public.star VALUES (6, 'star-F', 77.66, 1900, 'description de STAR-F', 6);


--
-- Name: approved_table_approved_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.approved_table_approved_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: approved_table approved_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.approved_table
    ADD CONSTRAINT approved_table_name_key UNIQUE (name);


--
-- Name: approved_table approved_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.approved_table
    ADD CONSTRAINT approved_table_pkey PRIMARY KEY (approved_table_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

