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
    name character varying(30) NOT NULL,
    discovered boolean NOT NULL,
    distance numeric,
    age integer
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
    density numeric,
    orbit_path text,
    distance_from_earth integer,
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
    has_life boolean NOT NULL,
    planet_types character varying(40),
    distance_from_earth integer,
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
    is_spherical boolean NOT NULL,
    description character varying(40),
    age_in_millions_of_years integer,
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
-- Name: traveler; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.traveler (
    traveler_id integer NOT NULL,
    name character varying(30) NOT NULL,
    travels_time boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.traveler OWNER TO freecodecamp;

--
-- Name: traveler_traveler_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.traveler_traveler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traveler_traveler_id_seq OWNER TO freecodecamp;

--
-- Name: traveler_traveler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.traveler_traveler_id_seq OWNED BY public.traveler.traveler_id;


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
-- Name: traveler traveler_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveler ALTER COLUMN traveler_id SET DEFAULT nextval('public.traveler_traveler_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 50, 150);
INSERT INTO public.galaxy VALUES (2, 'Poison Reach', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Heavens GATE', true, 66, 300);
INSERT INTO public.galaxy VALUES (4, 'Z5', true, 40, 900);
INSERT INTO public.galaxy VALUES (5, 'ARMA', true, 800, 658);
INSERT INTO public.galaxy VALUES (6, 'Sophi Sophi', true, 25, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Eccentricity', 50.5, 'Polar', 3, 1);
INSERT INTO public.moon VALUES (2, 'Discoverer', 12.5, 'Geostationary', 2, 1);
INSERT INTO public.moon VALUES (3, 'Themisto', 12.8, 'Polar', 3, 1);
INSERT INTO public.moon VALUES (4, 'Leda', 6, 'Polar', 30, 2);
INSERT INTO public.moon VALUES (5, 'Dia', 5.5, 'Transfer', 38, 2);
INSERT INTO public.moon VALUES (6, 'Kale', 1.65, 'Geostationary', 33, 3);
INSERT INTO public.moon VALUES (7, 'Aoede', 10.2, 'Polar', 10, 4);
INSERT INTO public.moon VALUES (8, 'Thyone', 50.3, 'Polar', 15, 4);
INSERT INTO public.moon VALUES (9, 'Herse', 8.01, 'Transfer', 80, 5);
INSERT INTO public.moon VALUES (10, 'Praxidike', 6, 'Polar', 3, 6);
INSERT INTO public.moon VALUES (11, 'Kore', 77.2, 'Geostationary', 63, 6);
INSERT INTO public.moon VALUES (12, 'Eukelade', 1556.2, 'Polar', 7, 6);
INSERT INTO public.moon VALUES (13, 'M45', 3.6, 'Polar', 8, 5);
INSERT INTO public.moon VALUES (14, 'Blood Moon', 84.5, 'Polar', 9, 4);
INSERT INTO public.moon VALUES (15, 'Autotune', 6.6, 'Transfer', 6, 2);
INSERT INTO public.moon VALUES (16, 'Archer', 889.003, 'Geostationary', 15, 2);
INSERT INTO public.moon VALUES (17, 'Aoede II', 1.56, 'Polar', 6, 6);
INSERT INTO public.moon VALUES (18, 'Targaryain', 779, 'Polar', 8, 5);
INSERT INTO public.moon VALUES (19, 'Sponde', 1653, 'Polar', 5, 3);
INSERT INTO public.moon VALUES (20, 'XX33', 70.5, 'Transfer', 10, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Vogsphere', false, 'Molten Lava', 5, 1);
INSERT INTO public.planet VALUES (2, 'Caprica', true, 'Galactica', 1500, 3);
INSERT INTO public.planet VALUES (3, 'Coruscant', false, 'Dying Light', 88, 4);
INSERT INTO public.planet VALUES (4, 'Worlorn', true, 'Water', 100, 2);
INSERT INTO public.planet VALUES (5, 'Krypton', true, 'SUPER', 6, 5);
INSERT INTO public.planet VALUES (6, 'Terra Prime', true, 'Earth', 0, 6);
INSERT INTO public.planet VALUES (7, 'Acheron', true, 'Terra', 5, 6);
INSERT INTO public.planet VALUES (8, 'Pleiades', true, 'Galactica', 1800, 3);
INSERT INTO public.planet VALUES (9, 'Amazons', false, 'Dying', 98, 4);
INSERT INTO public.planet VALUES (10, 'Cyclopes', true, 'Water', 65, 2);
INSERT INTO public.planet VALUES (11, 'Artemi', true, 'Gas', 6, 1);
INSERT INTO public.planet VALUES (12, 'Daphne', true, 'Water', 68, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'North Star', false, 'True North', 100, 1);
INSERT INTO public.star VALUES (2, 'Orion', true, 'Three Kings', 150, 3);
INSERT INTO public.star VALUES (3, 'ALPHA', false, 'foot of the centaur', 50, 4);
INSERT INTO public.star VALUES (4, 'BETA', false, 'The Garnet Star', 100, 2);
INSERT INTO public.star VALUES (5, 'GAMMA', false, 'GAMMA of Crux', 100, 5);
INSERT INTO public.star VALUES (6, 'Ruchba', false, 'hens knee', 100, 6);


--
-- Data for Name: traveler; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.traveler VALUES (1, 'Bardan', false, 4);
INSERT INTO public.traveler VALUES (2, 'Ayala', true, 3);
INSERT INTO public.traveler VALUES (3, 'Eldredth', false, 2);
INSERT INTO public.traveler VALUES (4, 'Inara Serra', false, 8);
INSERT INTO public.traveler VALUES (5, 'Lapis Lazuli', false, 8);
INSERT INTO public.traveler VALUES (6, 'Margrethe', false, 3);
INSERT INTO public.traveler VALUES (7, 'Samara', true, 12);
INSERT INTO public.traveler VALUES (8, 'Samara II', true, 5);
INSERT INTO public.traveler VALUES (9, 'Thorby', false, 2);
INSERT INTO public.traveler VALUES (10, 'Talyn', true, 8);
INSERT INTO public.traveler VALUES (11, 'Talock', false, 5);
INSERT INTO public.traveler VALUES (12, 'Siona', false, 8);
INSERT INTO public.traveler VALUES (13, 'Sabe', true, 4);
INSERT INTO public.traveler VALUES (14, 'Holden', false, 12);
INSERT INTO public.traveler VALUES (15, 'Steve Albert', true, 6);


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
-- Name: traveler_traveler_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.traveler_traveler_id_seq', 15, true);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: traveler traveler_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveler
    ADD CONSTRAINT traveler_name_key UNIQUE (name);


--
-- Name: traveler traveler_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveler
    ADD CONSTRAINT traveler_pkey PRIMARY KEY (traveler_id);


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
-- Name: traveler traveler_home_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.traveler
    ADD CONSTRAINT traveler_home_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

