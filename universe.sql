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
-- Name: continents; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continents (
    continents_id integer NOT NULL,
    name character varying(30) NOT NULL,
    amount_of_countries integer,
    percent_of_total_pop numeric(4,1)
);


ALTER TABLE public.continents OWNER TO freecodecamp;

--
-- Name: continents_continents_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continents_continents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_continents_id_seq OWNER TO freecodecamp;

--
-- Name: continents_continents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continents_continents_id_seq OWNED BY public.continents.continents_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text,
    constellation text,
    magnitude numeric(3,1)
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
    temp_in_k integer,
    magnitude numeric(3,1),
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
    has_water boolean,
    has_rings boolean,
    moon_amount integer,
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
    star_type text,
    constellation text,
    lightyears_away integer,
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
-- Name: continents continents_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents ALTER COLUMN continents_id SET DEFAULT nextval('public.continents_continents_id_seq'::regclass);


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
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continents VALUES (1, 'Asia', 48, 58.9);
INSERT INTO public.continents VALUES (2, 'Africa', 54, 18.6);
INSERT INTO public.continents VALUES (3, 'Europe', 50, 9.1);
INSERT INTO public.continents VALUES (4, 'North America', 23, 4.7);
INSERT INTO public.continents VALUES (5, 'South America', 12, 8.1);
INSERT INTO public.continents VALUES (6, 'Oceania', 14, 0.6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 'Sagittarius', -5.1);
INSERT INTO public.galaxy VALUES (2, 'Pinwheel', 'spiral', 'Ursa Major', 7.9);
INSERT INTO public.galaxy VALUES (3, 'NGC 5728', 'spiral', 'Libra', 13.4);
INSERT INTO public.galaxy VALUES (4, 'NGC 4886', 'elliptical', 'Coma Berenices', 14.9);
INSERT INTO public.galaxy VALUES (5, 'NGC 2865', 'elliptical', 'Hydra', 11.4);
INSERT INTO public.galaxy VALUES (6, 'NGC 5264', 'irregular', 'Hydra', 12.4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 206, -12.6, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 233, 11.8, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 233, 12.5, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 130, 5.3, 5);
INSERT INTO public.moon VALUES (5, 'Leda', 1, 20.2, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 120, 5.7, 5);
INSERT INTO public.moon VALUES (7, 'Titan', 94, 8.4, 6);
INSERT INTO public.moon VALUES (8, 'Rhea', 90, 9.7, 6);
INSERT INTO public.moon VALUES (9, 'Dione', 87, 10.4, 6);
INSERT INTO public.moon VALUES (10, 'Ariel', 190, 14.8, 7);
INSERT INTO public.moon VALUES (11, 'Oberon', 200, 14.1, 7);
INSERT INTO public.moon VALUES (12, 'Ophelia', 65, 23.8, 7);
INSERT INTO public.moon VALUES (13, 'Triton', 38, 13.5, 8);
INSERT INTO public.moon VALUES (14, 'Naiad', 51, 23.9, 8);
INSERT INTO public.moon VALUES (15, 'Larissa', 51, 21.5, 8);
INSERT INTO public.moon VALUES (16, 'Charon', 53, 16.8, 10);
INSERT INTO public.moon VALUES (17, 'Nix', 40, 23.5, 10);
INSERT INTO public.moon VALUES (18, 'Styx', 147, 27.1, 10);
INSERT INTO public.moon VALUES (19, 'Namaka', 32, 21.9, 11);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 30, 25.4, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, false, 0, 2);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 0, 2);
INSERT INTO public.planet VALUES (3, 'Earth', true, false, 1, 2);
INSERT INTO public.planet VALUES (4, 'Mars', true, false, 2, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, true, 95, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', true, true, 146, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', true, true, 28, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', true, true, 16, 2);
INSERT INTO public.planet VALUES (9, 'Ceres', true, false, 0, 2);
INSERT INTO public.planet VALUES (10, 'Pluto', true, false, 5, 2);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, false, 2, 2);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, false, 1, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'main sequence', NULL, 24000, 1);
INSERT INTO public.star VALUES (2, 'Antares', 'red giant', 'Scorpius', 600, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'red giant', 'Orion', 700, 1);
INSERT INTO public.star VALUES (4, 'Sirius B', 'white dwarf', 'Canis Major', 8, 1);
INSERT INTO public.star VALUES (5, 'Vela Pulsar', 'neutron', 'Vela', 959, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'red dwarf', 'Centaurus', 4, 1);


--
-- Name: continents_continents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continents_continents_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: continents continents_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_name_key UNIQUE (name);


--
-- Name: continents continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continents_id);


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

