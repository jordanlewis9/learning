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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    largest_star text,
    number_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types text,
    description text
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_atmosphere boolean
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
    has_life boolean,
    planet_types text,
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
    galaxy_id integer NOT NULL,
    distance_from_earth numeric,
    color character varying(30),
    name character varying(30) NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Betelgeuse', 81);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Dubhe', 94);
INSERT INTO public.constellation VALUES (3, 'Aries', 'Hamal', 61);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'barred spiral', 'The Milky Way galaxy is a vast, spiral-shaped collection of stars, planets, gas, and dust that spans approximately 100,000 light-years in diameter. It is home to our Solar System, including the Earth. The Milky Way is characterized by its central bulge and spiral arms, which radiate outward from a central region. These spiral arms contain young, hot stars, as well as regions of star formation.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 11500, 'spiral', 'The Andromeda Galaxy, also known as Messier 31 (M31), is a majestic spiral galaxy located about 2.537 million light-years away from Earth. It is the closest spiral galaxy to our own Milky Way and is one of the most prominent objects visible in the night sky.');
INSERT INTO public.galaxy VALUES (3, 'Bear Paw', 70, 'irregular', 'The Bear Paw Galaxy is located approximately 21 million light-years away from Earth in the constellation Lynx and is notable for its striking appearance and active star-forming regions. It serves as a fascinating object of study for astronomers seeking to understand the dynamics and evolution of galaxies in the universe.');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 9000, 'spiral', 'The most distinctive characteristic of the Black Eye Galaxy is the dark band of dust that obscures part of its bright central region, giving it the appearance of having a "black eye." This feature is likely the result of a recent or ongoing interaction with a smaller companion galaxy, which stirred up gas and dust within the galaxy and triggered new episodes of star formation.');
INSERT INTO public.galaxy VALUES (5, 'Bode''s Galaxy', 11000, 'spiral', 'Despite its age, Bode''s Galaxy continues to exhibit ongoing star formation activity, with regions of bright, young stars visible in its spiral arms. It is also known to host a supermassive black hole at its center, which has a mass millions of times that of our Sun.');
INSERT INTO public.galaxy VALUES (6, 'Cigar', 10, 'irregular', 'Despite its relatively young age, the Cigar Galaxy is already home to a large number of massive, young stars, as well as regions of intense star formation and glowing gas clouds. It is a popular target for astronomers studying the processes of galaxy formation, evolution, and starburst activity within the universe.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', true, false);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', false, false);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', false, false);
INSERT INTO public.moon VALUES (4, 5, 'Europa', true, true);
INSERT INTO public.moon VALUES (5, 5, 'Ganymede', true, false);
INSERT INTO public.moon VALUES (6, 5, 'Io', true, true);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', true, true);
INSERT INTO public.moon VALUES (8, 5, 'Kallichore', false, false);
INSERT INTO public.moon VALUES (9, 5, 'Amalthea', false, false);
INSERT INTO public.moon VALUES (10, 6, 'Titan', true, true);
INSERT INTO public.moon VALUES (11, 6, 'Iapetus', true, false);
INSERT INTO public.moon VALUES (12, 6, 'Phoebe', false, false);
INSERT INTO public.moon VALUES (13, 6, 'Rhea', true, true);
INSERT INTO public.moon VALUES (14, 6, 'Hyperion', false, false);
INSERT INTO public.moon VALUES (15, 7, 'Titania', true, true);
INSERT INTO public.moon VALUES (16, 7, 'Oberon', true, false);
INSERT INTO public.moon VALUES (17, 7, 'Miranda', false, false);
INSERT INTO public.moon VALUES (18, 7, 'Ariel', true, false);
INSERT INTO public.moon VALUES (19, 8, 'Triton', true, true);
INSERT INTO public.moon VALUES (20, 8, 'Hippocamp', false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'solid', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 'solid', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'solid', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 'solid', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 'gas', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 'gas', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 'gas', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 'gas', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 'solid', 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', false, 'solid', 3);
INSERT INTO public.planet VALUES (11, 'Proxima d', false, 'solid', 3);
INSERT INTO public.planet VALUES (12, 'Saffar', false, 'gas', 6);
INSERT INTO public.planet VALUES (13, 'Majriti', false, 'gas', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 0, 'white', 'Sun');
INSERT INTO public.star VALUES (2, 1, 3840, 'red', 'VY Canis Majoris');
INSERT INTO public.star VALUES (3, 1, 4, 'red', 'Proxima Centauri');
INSERT INTO public.star VALUES (4, 1, 9, 'white', 'Sirius');
INSERT INTO public.star VALUES (5, 1, 59, 'yellow-white', 'HN Pegasi');
INSERT INTO public.star VALUES (6, 1, 44, 'red', 'Upsilon Andromedae');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

