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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30),
    near_the_galaxy boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    number_stars integer NOT NULL,
    number_planets integer NOT NULL,
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
    name character varying(30),
    planet_id integer NOT NULL,
    size integer,
    dencity numeric(5,2)
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
    name character varying(30),
    description text,
    has_life boolean,
    habitable boolean,
    dencity numeric(8,2),
    star_id integer NOT NULL
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    dencity integer,
    temperature numeric(8,2)
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Oscuro', false, 1);
INSERT INTO public.black_hole VALUES (2, 'Mandato', true, 2);
INSERT INTO public.black_hole VALUES (3, 'Yatas', false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 23, 120);
INSERT INTO public.galaxy VALUES (3, 'Meltor', 1, 5, 120);
INSERT INTO public.galaxy VALUES (6, 'Metast', 1, 8, 120);
INSERT INTO public.galaxy VALUES (9, 'Pan', 1, 2, 120);
INSERT INTO public.galaxy VALUES (12, 'Latni', 1, 10, 120);
INSERT INTO public.galaxy VALUES (2, 'Aurora', 1, 10, 200);
INSERT INTO public.galaxy VALUES (4, 'Proxenet', 1, 33, 200);
INSERT INTO public.galaxy VALUES (5, 'Alfur', 1, 5, 350);
INSERT INTO public.galaxy VALUES (7, 'Malasi', 1, 12, 350);
INSERT INTO public.galaxy VALUES (8, 'Culum', 1, 0, 350);
INSERT INTO public.galaxy VALUES (10, 'Espinal', 1, 5, 1250);
INSERT INTO public.galaxy VALUES (11, 'Prada', 1, 32, 1250);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Alta', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Brillas', 3, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Luna 1', 1, 3, 4.30);
INSERT INTO public.moon VALUES (25, 'Luna 2', 2, 3, 3.80);
INSERT INTO public.moon VALUES (26, 'Luna 3', 3, 2, 5.10);
INSERT INTO public.moon VALUES (27, 'Luna 4', 4, 2, 4.70);
INSERT INTO public.moon VALUES (28, 'Luna 5', 5, 3, 3.50);
INSERT INTO public.moon VALUES (29, 'Luna 6', 6, 3, 4.00);
INSERT INTO public.moon VALUES (30, 'Luna 7', 7, 4, 3.20);
INSERT INTO public.moon VALUES (31, 'Luna 8', 8, 2, 4.60);
INSERT INTO public.moon VALUES (32, 'Luna 9', 9, 3, 4.10);
INSERT INTO public.moon VALUES (33, 'Luna 10', 10, 3, 3.90);
INSERT INTO public.moon VALUES (34, 'Luna 11', 11, 2, 4.40);
INSERT INTO public.moon VALUES (35, 'Luna 12', 12, 2, 5.00);
INSERT INTO public.moon VALUES (36, 'Luna 13', 1, 3, 4.20);
INSERT INTO public.moon VALUES (37, 'Luna 14', 2, 3, 3.70);
INSERT INTO public.moon VALUES (38, 'Luna 15', 3, 2, 4.80);
INSERT INTO public.moon VALUES (39, 'Luna 16', 4, 3, 3.60);
INSERT INTO public.moon VALUES (40, 'Luna 17', 5, 3, 4.50);
INSERT INTO public.moon VALUES (41, 'Luna 18', 6, 3, 4.00);
INSERT INTO public.moon VALUES (42, 'Luna 19', 7, 3, 4.30);
INSERT INTO public.moon VALUES (43, 'Luna 20', 8, 3, 3.80);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Possedor de todas las capacidades para alvergar vida', true, true, 32.20, 1);
INSERT INTO public.planet VALUES (2, 'Martus', 'Un planeta gaseoso', false, false, 22.20, 2);
INSERT INTO public.planet VALUES (3, 'Starna', 'Planeta liquido en metanos', false, false, 199.20, 3);
INSERT INTO public.planet VALUES (4, 'Planeta 4', 'Descripción del planeta 4', false, false, 2.50, 2);
INSERT INTO public.planet VALUES (5, 'Planeta 5', 'Descripción del planeta 5', true, true, 6.80, 3);
INSERT INTO public.planet VALUES (6, 'Planeta 6', 'Descripción del planeta 6', false, true, 5.20, 3);
INSERT INTO public.planet VALUES (7, 'Planeta 7', 'Descripción del planeta 7', false, false, 3.90, 4);
INSERT INTO public.planet VALUES (8, 'Planeta 8', 'Descripción del planeta 8', false, false, 4.70, 4);
INSERT INTO public.planet VALUES (9, 'Planeta 9', 'Descripción del planeta 9', true, true, 6.10, 5);
INSERT INTO public.planet VALUES (10, 'Planeta 10', 'Descripción del planeta 10', false, true, 5.50, 5);
INSERT INTO public.planet VALUES (11, 'Planeta 11', 'Descripción del planeta 11', true, false, 3.20, 6);
INSERT INTO public.planet VALUES (12, 'Planeta 12', 'Descripción del planeta 12', false, false, 4.00, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sentauro', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Ardiente', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Full', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Falla', 4, 32, 40.20);
INSERT INTO public.star VALUES (5, 'Arca', 5, 44, 12.20);
INSERT INTO public.star VALUES (6, 'Lasuli', 6, 23, 1222.20);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 43, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_black_hole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_black_hole_id_key UNIQUE (black_hole_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

