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
    name character varying(256),
    observed_stars integer,
    galaxy_type character varying(256),
    super_long_text_designation text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: manmade_satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.manmade_satellite (
    manmade_satellite_id integer NOT NULL,
    name character varying(30),
    online boolean NOT NULL,
    captain character varying(256) NOT NULL
);


ALTER TABLE public.manmade_satellite OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(256),
    made_of_cheese boolean,
    rotational_energy integer,
    weird_sciency_designation character varying(512) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(256) NOT NULL,
    distance_to_star_lightyears numeric(10,1),
    diameter_km numeric(10,1),
    dwarf boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(256),
    hotness integer,
    state character varying(256) NOT NULL,
    exploded boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Solar System', 4035, 'Ours', 'FJKLEWJIOFJOHI5YJO4GLNN87603');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 3078, 'Not Ours', 'KLHGDJG64YOAVM');
INSERT INTO public.galaxy VALUES (3, 'Blerpblap', 1, 'Fictional', 'HYTI5LD.FOHOYP4');
INSERT INTO public.galaxy VALUES (4, 'Relpara', 304, 'Maybe Fictional', 'GYOO640glVY34590309UM57KL');
INSERT INTO public.galaxy VALUES (5, 'yxalaG', 5304, 'Inverted', 'ZA');
INSERT INTO public.galaxy VALUES (6, 'Unknown', 9999999, 'Undiscovered', '34iogj3tioras4JKGFDGR4jio89F89');


--
-- Data for Name: manmade_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.manmade_satellite VALUES (457563, 'International Space Station', true, 'Captain Surname');
INSERT INTO public.manmade_satellite VALUES (490654, 'Space Debris', false, 'Commander Unknown');
INSERT INTO public.manmade_satellite VALUES (3600, 'Drifting Moon Probe', true, 'Alternate Universe Lieutenant Armstrong');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 40, '456U65HGFKLSKL35fh56ASW', 1);
INSERT INTO public.moon VALUES (2, 'The Hidden Moon', true, 2, 'WH4T', 1);
INSERT INTO public.moon VALUES (3, 'Red Moon', true, NULL, '69DFKLGSKLHGEIOTOP90', 14);
INSERT INTO public.moon VALUES (5, 'Red Moon', true, NULL, '69DFKLGSKLHGEIgberiogbeor', 14);
INSERT INTO public.moon VALUES (6, 'Jupiter Moon', false, 46902, '459I390GIOIO45', 3);
INSERT INTO public.moon VALUES (7, 'Smalldwarf Companion', true, 1, 'GJD34896BGJ459', 4);
INSERT INTO public.moon VALUES (8, 'Andromedean Moon', false, 30590, '0TIJG9029043MH', 6);
INSERT INTO public.moon VALUES (9, 'nooM', true, 4895, '590GKJH5904K90F2', 7);
INSERT INTO public.moon VALUES (10, 'Unknown', NULL, NULL, 'IDK', 8);
INSERT INTO public.moon VALUES (11, 'Test Planet Not Ready Yet', NULL, NULL, 'NULL', 14);
INSERT INTO public.moon VALUES (12, 'Data', false, NULL, 'JKU34TT493GJ', 5);
INSERT INTO public.moon VALUES (13, 'Entry', true, 34859, '348594H3G89534J', 13);
INSERT INTO public.moon VALUES (14, 'Is', false, 5940674, '393490U89B35Y9J54899', 13);
INSERT INTO public.moon VALUES (15, 'Excruciatingly', true, 4, 'GJNKFN5IU4OBHJ498BB', 1);
INSERT INTO public.moon VALUES (16, 'Boring', false, 99999, 'GNTRHIB3489UBTN839U6', 6);
INSERT INTO public.moon VALUES (17, 'And', NULL, NULL, '3689536UJ9546G45', 3);
INSERT INTO public.moon VALUES (21, 'It', false, NULL, 'JKU34TT5647645j7493GJ', 13);
INSERT INTO public.moon VALUES (22, 'Is', true, 34859, '348594H3G89556yn65u34J', 13);
INSERT INTO public.moon VALUES (23, 'Getting', true, 59374, '393490U89B35Y9J536h45hu454899', 13);
INSERT INTO public.moon VALUES (24, 'Late', false, 0, 'GJNKFrtyjnyrtjn45jn4576N5IU4OBHJ498BB', 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0.0, 2000.0, false, 5);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, NULL, true, 5);
INSERT INTO public.planet VALUES (4, 'Pluto', NULL, 3.0, true, 5);
INSERT INTO public.planet VALUES (5, 'Mars', 32050.0, 633.0, false, 5);
INSERT INTO public.planet VALUES (6, 'Andromedean Planet', NULL, NULL, false, 6);
INSERT INTO public.planet VALUES (7, 'htraE', 1.0, 456.0, true, 8);
INSERT INTO public.planet VALUES (8, 'Unknown', NULL, NULL, false, 10);
INSERT INTO public.planet VALUES (13, 'Apostle', 0.2, 0.7, false, 9);
INSERT INTO public.planet VALUES (14, 'Blackened Flame', 0.4, 49870345.0, true, 10);
INSERT INTO public.planet VALUES (15, 'Saturn', 6.0, 30.2, false, 5);
INSERT INTO public.planet VALUES (16, 'Venus', 4.2, 5.0, false, 5);
INSERT INTO public.planet VALUES (17, 'Forgotten Wish', 3497.0, 322.0, true, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'The Sun', 4079005, 'Not too bad', false, 1);
INSERT INTO public.star VALUES (6, 'Andromeda Star', 23607892, 'Not looking so hot', false, 2);
INSERT INTO public.star VALUES (7, 'BringleSpronglePinglePongle', 2, 'Weird and green.', true, 3);
INSERT INTO public.star VALUES (8, 'nuS', 2149320, 'Inside out.', true, 4);
INSERT INTO public.star VALUES (9, 'Relpara God', 357, 'Swapped places with the one from yxalaG.', true, 5);
INSERT INTO public.star VALUES (10, 'Unknown Star', 0, 'Blackened out.', NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 17, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_super_long_text_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_super_long_text_designation_key UNIQUE (super_long_text_designation);


--
-- Name: manmade_satellite manmade_satellite_captain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.manmade_satellite
    ADD CONSTRAINT manmade_satellite_captain_key UNIQUE (captain);


--
-- Name: manmade_satellite manmade_satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.manmade_satellite
    ADD CONSTRAINT manmade_satellite_pkey PRIMARY KEY (manmade_satellite_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_weird_sciency_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_weird_sciency_designation_key UNIQUE (weird_sciency_designation);


--
-- Name: planet planet_distance_to_star_lightyears_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_to_star_lightyears_key UNIQUE (distance_to_star_lightyears);


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
-- Name: star star_state_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_state_key UNIQUE (state);


--
-- Name: moon moon_orbits_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbits_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbits_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbits_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

