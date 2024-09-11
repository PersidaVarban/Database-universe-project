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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    galaxy_dim integer NOT NULL,
    galaxy_age integer NOT NULL,
    galaxy_existence boolean,
    galaxy_planets numeric,
    galaxy_descrip text,
    galaxy_moon_existence boolean
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
    moon_age integer NOT NULL,
    moon_per integer NOT NULL,
    name character varying(30),
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
    planet_age integer NOT NULL,
    planet_dim integer NOT NULL,
    star_id integer,
    name character varying(30)
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
    star_age integer NOT NULL,
    star_mag integer NOT NULL,
    galaxy_id integer,
    name character varying(30)
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
-- Name: sum; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sum (
    sum_id integer NOT NULL,
    name character varying(30),
    sum_star integer NOT NULL,
    sum_planet integer NOT NULL
);


ALTER TABLE public.sum OWNER TO freecodecamp;

--
-- Name: sum_sum_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sum_sum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sum_sum_id_seq OWNER TO freecodecamp;

--
-- Name: sum_sum_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sum_sum_id_seq OWNED BY public.sum.sum_id;


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
-- Name: sum sum_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sum ALTER COLUMN sum_id SET DEFAULT nextval('public.sum_sum_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Calea Lactee', 52850, 1361000, true, 10.23, 'Galaxie spirala', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 1001000, true, 5.7, 'Galaxie spirala', false);
INSERT INTO public.galaxy VALUES (3, 'Galaxia Triunghiului', 310000, 234000, true, 0.0, 'Galaxie spirala', false);
INSERT INTO public.galaxy VALUES (4, 'Persi', 740000, 34004000, false, 0.0, 'Galaxie ovala', false);
INSERT INTO public.galaxy VALUES (5, 'Maria', 70000, 54001100, false, 0.0, 'Galaxie ovala', false);
INSERT INTO public.galaxy VALUES (6, 'Liliac', 76320, 4001100, false, 2.05, 'Galaxie ovala', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 123100, 456008, 'Luna', 1);
INSERT INTO public.moon VALUES (2, 45674, 2341, 'Sana', 4);
INSERT INTO public.moon VALUES (3, 382397, 4759, 'Kefir', 5);
INSERT INTO public.moon VALUES (4, 31214, 2523, 'Lulu', 5);
INSERT INTO public.moon VALUES (5, 8790, 66876, 'Tupi', 10);
INSERT INTO public.moon VALUES (6, 3393, 5845, 'Kira', 11);
INSERT INTO public.moon VALUES (7, 27492, 1378, 'Koala', 12);
INSERT INTO public.moon VALUES (8, 18381, 2191, 'Mias', 11);
INSERT INTO public.moon VALUES (9, 123100, 456008, 'Lumia', 11);
INSERT INTO public.moon VALUES (10, 45674, 2341, 'Sraia', 12);
INSERT INTO public.moon VALUES (11, 382397, 4759, 'Kefirusi', 12);
INSERT INTO public.moon VALUES (12, 31214, 2523, 'Luloiu', 12);
INSERT INTO public.moon VALUES (13, 8790, 66876, 'Tuonisi', 10);
INSERT INTO public.moon VALUES (14, 3393, 5845, 'Kiotira', 11);
INSERT INTO public.moon VALUES (15, 27492, 1378, 'Kpiaoala', 12);
INSERT INTO public.moon VALUES (16, 18381, 2191, 'Miasias', 11);
INSERT INTO public.moon VALUES (17, 1312, 13122, 'Gkcldfjdl', 9);
INSERT INTO public.moon VALUES (18, 28138, 2123, 'Gisif', 9);
INSERT INTO public.moon VALUES (19, 54594, 3564, 'Kdbsfh', 10);
INSERT INTO public.moon VALUES (20, 2238, 223566, 'Lasdb', 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 45030000, 74800000, 1, 'Mercur');
INSERT INTO public.planet VALUES (2, 45030000, 460200000, 1, 'Venus');
INSERT INTO public.planet VALUES (3, 45430000, 510100000, 1, 'Pamant');
INSERT INTO public.planet VALUES (4, 46030000, 144400000, 1, 'Marte');
INSERT INTO public.planet VALUES (5, 4603000, 6142000, 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, 4503000, 42700000, 1, 'Saturn');
INSERT INTO public.planet VALUES (7, 45030000, 808300000, 1, 'Uranus');
INSERT INTO public.planet VALUES (8, 46030000, 144400000, 1, 'Neptun');
INSERT INTO public.planet VALUES (9, 24749000, 342000, 1, 'Pluto');
INSERT INTO public.planet VALUES (10, 4503000, 42700000, 2, 'Sirianis');
INSERT INTO public.planet VALUES (11, 45030000, 74800000, 6, 'Morier');
INSERT INTO public.planet VALUES (12, 45030000, 460200000, 5, 'Verius');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4603000, -27, 1, 'Soare');
INSERT INTO public.star VALUES (2, 230000000, -2, 1, 'Sirius');
INSERT INTO public.star VALUES (3, 310000000, -1, 1, 'Canopus');
INSERT INTO public.star VALUES (4, 50000000, -1, 3, 'Arcturs');
INSERT INTO public.star VALUES (5, 52000000, 0, 2, 'Vega');
INSERT INTO public.star VALUES (6, 8005000, 0, 1, 'Rigel');


--
-- Data for Name: sum; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sum VALUES (1, 'Suma1', 4, 9);
INSERT INTO public.sum VALUES (2, 'Suma2', 1, 1);
INSERT INTO public.sum VALUES (3, 'Suma3', 1, 0);


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
-- Name: sum_sum_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sum_sum_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_dim_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_dim_key UNIQUE (galaxy_dim);


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
-- Name: sum sum_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sum
    ADD CONSTRAINT sum_name_key UNIQUE (name);


--
-- Name: sum sum_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sum
    ADD CONSTRAINT sum_pkey PRIMARY KEY (sum_id);


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

