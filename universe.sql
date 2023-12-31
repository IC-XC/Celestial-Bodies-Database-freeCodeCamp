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
    name character varying(100) NOT NULL,
    designation text,
    constelation text,
    name_meaning text,
    size numeric(20,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    parent_planet text,
    distance_to_planet integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean NOT NULL,
    description text,
    distance_from_earth numeric(10,2),
    is_spherical boolean,
    age numeric(5,2) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(100) NOT NULL,
    size integer
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    constellation text,
    designation character varying(50),
    approval_date date,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'M31', 'Andromeda', 'Andromeda is the daughter of the kings of Ethiopia.', 2.50);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxy', 'NGC 4038', 'Corvus', 'This is a dual galaxy', 5.20);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'NGC 4622', 'Centaurus', 'It seems to rotate in the opposite direction to what it should according to its shape', 1.70);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'M64', 'Coma Berenices', 'It looks like an eye with a dark stripe underneath', 5.40);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', 'M81', 'Ursa Major', 'Named after the astronomer who discovered it, Johann Elert Bode', 3.50);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'NGC 4567', 'Virgo', 'It looks like a pair of butterfly wings', 4.60);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', 'PGC 2248', 'Sculptor', 'It loIt looks a bit like a cartwheel', 2.90);
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'NGC 2470', 'Sagitarrius', 'Night sky formed from stars that cannot be individually distinguished by the naked eye', 26.80);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth', 384400, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', 2618, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars', 23460, 5);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter', 262000, 22);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiter', 414000, 22);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiter', 1070400, 22);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiter', 1880000, 22);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Jupiter', 181000, 22);
INSERT INTO public.moon VALUES (9, 'Himalia', 'Jupiter', 4400000, 22);
INSERT INTO public.moon VALUES (10, 'Elara', 'Jupiter', 4277900, 22);
INSERT INTO public.moon VALUES (11, 'Pasiphea', 'Jupiter', 18000000, 22);
INSERT INTO public.moon VALUES (12, 'Sinope', 'Jupiter', 528845, 22);
INSERT INTO public.moon VALUES (13, 'Lysithea', 'Jupiter', 18, 22);
INSERT INTO public.moon VALUES (14, 'Carme', 'Jupiter', 22, 22);
INSERT INTO public.moon VALUES (15, 'Ananke', 'Jupiter', 6788, 22);
INSERT INTO public.moon VALUES (16, 'Leda', 'Jupiter', 6, 22);
INSERT INTO public.moon VALUES (17, 'Thebe', 'Jupiter', 140, 22);
INSERT INTO public.moon VALUES (18, 'Adrastea', 'Jupiter', 140, 22);
INSERT INTO public.moon VALUES (19, 'Metis', 'Jupiter', 59900, 22);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 'Jupiter', 422, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', false, 'Mercury is a rocky planet, also known as a terrestrial planet', 77.00, true, 4.60, 3);
INSERT INTO public.planet VALUES (22, 'Jupiter', false, 'Gas giant', 367.00, true, 4.50, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'One of the four terrestrial planets', 40.00, true, 4.60, 6);
INSERT INTO public.planet VALUES (4, 'Earth', true, 'An ellipsoid with a circumference of about 40k km.', 0.00, true, 4.45, 4);
INSERT INTO public.planet VALUES (5, 'Mars', false, 'Cold desert world', 140.00, true, 4.60, 7);
INSERT INTO public.planet VALUES (23, 'Saturn', false, 'It is a gast giant with an average radius of about nine and a half times that of Earth', 1.67, true, 4.60, 2);
INSERT INTO public.planet VALUES (24, 'Uranus', false, 'Seventh planet from the Sun', 2.90, true, 4.60, 3);
INSERT INTO public.planet VALUES (25, 'Neptune', false, 'Neptune is the eighth planet from the sun and the farthest know solar planet right now', 4.40, true, 17.60, 5);
INSERT INTO public.planet VALUES (26, 'Pluto', false, 'Dwarf planet', 5.05, true, 4.50, 2);
INSERT INTO public.planet VALUES (27, 'Ceres', false, 'Dwarf planet too', 5.80, true, 4.50, 5);
INSERT INTO public.planet VALUES (28, 'Charon', false, 'Dwarf planet moon', 5.06, true, 4.50, 2);
INSERT INTO public.planet VALUES (29, '2003 UB313', false, 'Celestial object', 6.00, true, 0.00, 1);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Ariel', 3);
INSERT INTO public.satellites VALUES (2, 'Echo', 3);
INSERT INTO public.satellites VALUES (4, 'Kepler', 2);
INSERT INTO public.satellites VALUES (5, 'Tiros', 2);
INSERT INTO public.satellites VALUES (3, 'Glory', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Acamar', 'Eridanus', 'Eridani A', '2016-07-20', 8);
INSERT INTO public.star VALUES (2, 'Achird', 'Cassiopeia', 'Cassiopeiae A', '2017-09-05', 7);
INSERT INTO public.star VALUES (3, 'Achernar', 'Eridanus', 'Eridanus A', '2016-06-30', 3);
INSERT INTO public.star VALUES (4, 'Acrab', 'Scorpius', 'Scorpii Aa', '2016-08-21', 6);
INSERT INTO public.star VALUES (5, 'Acrux', 'Crux', 'Crucios Aa', '2016-07-20', 2);
INSERT INTO public.star VALUES (6, 'Acubens', 'Cancer', 'Cancri', '2016-07-20', 2);
INSERT INTO public.star VALUES (7, 'Adhafera', 'Leo', 'Leonis', '2016-07-20', 4);


--
-- Name: galaxy galaxy_constelation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constelation_key UNIQUE (constelation);


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
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellites satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_name_key UNIQUE (name);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


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

