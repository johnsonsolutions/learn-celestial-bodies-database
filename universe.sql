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
    name character varying(60),
    type integer NOT NULL,
    age numeric,
    description text,
    has_life boolean
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
    name character varying(60) NOT NULL,
    age numeric,
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
    name character varying(60) NOT NULL,
    type integer NOT NULL,
    age numeric,
    description text,
    has_life boolean,
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
    name character varying(60) NOT NULL,
    age numeric,
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 13.6, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 10.1, 'Nearest spiral galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 1, 5.0, 'Third largest in Local Group', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 1, 8.2, 'Famous for its spiral arms', false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 2, 12.0, 'Unique shape with bright center', false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 3, 1.5, 'A satellite galaxy of Milky Way', false);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 1, 8.9, 'Face-on spiral galaxy', false);
INSERT INTO public.galaxy VALUES (8, 'Messier 87', 2, 13.0, 'Giant elliptical galaxy', false);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', 3, 12.0, 'Has an active galactic nucleus', false);
INSERT INTO public.galaxy VALUES (10, 'Cartwheel', 1, 4.0, 'Ring galaxy from collision', false);
INSERT INTO public.galaxy VALUES (11, 'Antennae Galaxies', 2, 7.5, 'Merging galaxy pair', false);
INSERT INTO public.galaxy VALUES (12, 'Hoag’s Object', 3, 10.0, 'A rare ring galaxy', false);
INSERT INTO public.galaxy VALUES (13, 'NGC 1300', 1, 9.8, 'A large barred spiral galaxy', false);
INSERT INTO public.galaxy VALUES (14, 'NGC 6744', 2, 10.5, 'Similar in structure to Milky Way', false);
INSERT INTO public.galaxy VALUES (15, 'NGC 4038', 1, 6.5, 'Part of Antennae Galaxies', false);
INSERT INTO public.galaxy VALUES (16, 'NGC 1566', 2, 9.2, 'Intermediate spiral galaxy', false);
INSERT INTO public.galaxy VALUES (17, 'NGC 7331', 1, 11.2, 'An unbarred spiral galaxy', false);
INSERT INTO public.galaxy VALUES (18, 'IC 1101', 3, 12.5, 'Largest known galaxy', false);
INSERT INTO public.galaxy VALUES (19, 'Tadpole Galaxy', 1, 6.7, 'Distorted shape due to past interaction', false);
INSERT INTO public.galaxy VALUES (20, 'Sculptor Galaxy', 2, 8.3, 'Brightest starburst galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4.5, 'Earth’s natural satellite', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4.5, 'One of Mars’ moons, irregular shape', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4.5, 'Smaller moon of Mars', 4);
INSERT INTO public.moon VALUES (4, 'Io', 4.5, 'Volcanically active moon of Jupiter', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4.5, 'Ice-covered moon, potential for life', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4.5, 'Largest moon in the Solar System', 5);
INSERT INTO public.moon VALUES (21, 'Ganymede', 4.5, 'Largest moon of Jupiter, has a magnetic field', 5);
INSERT INTO public.moon VALUES (22, 'Io', 4.5, 'Most volcanically active body in the solar system', 5);
INSERT INTO public.moon VALUES (23, 'Europa', 4.5, 'Ice-covered moon with potential subsurface ocean', 5);
INSERT INTO public.moon VALUES (24, 'Rhea', 4.5, 'Second-largest moon of Saturn', 6);
INSERT INTO public.moon VALUES (25, 'Tethys', 4.5, 'Saturnian moon with a huge impact crater', 6);
INSERT INTO public.moon VALUES (26, 'Ariel', 4.5, 'One of the brightest moons of Uranus', 9);
INSERT INTO public.moon VALUES (27, 'Umbriel', 4.5, 'Darkest moon of Uranus', 9);
INSERT INTO public.moon VALUES (28, 'Titania', 4.5, 'Largest moon of Uranus', 9);
INSERT INTO public.moon VALUES (29, 'Dysnomia', 4.5, 'Only known moon of Eris', 10);
INSERT INTO public.moon VALUES (30, 'Himalia', 4.5, 'Irregularly shaped Jovian moon', 5);
INSERT INTO public.moon VALUES (31, 'Pan', 4.5, 'Saturn’s moon that creates the Encke Gap in the rings', 6);
INSERT INTO public.moon VALUES (32, 'Atlas', 4.5, 'Shepherd moon of Saturn’s A Ring', 6);
INSERT INTO public.moon VALUES (33, 'Naiad', 4.5, 'Innermost moon of Neptune', 13);
INSERT INTO public.moon VALUES (34, 'Thalassa', 4.5, 'Neptunian moon with a rapidly decaying orbit', 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4.5, 'Closest to Sun, no atmosphere', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4.5, 'Thick toxic atmosphere, hottest planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 4.5, 'Only planet known to support life', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 4.5, 'Red planet, potential for life', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 4.5, 'Largest planet, gas giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 4.5, 'Famous for its rings', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 4.5, 'Ice giant with rings', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, 4.5, 'Farthest planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 1, 3.6, 'Possible habitable exoplanet', false, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581c', 1, 2.1, 'Super-Earth exoplanet', false, 3);
INSERT INTO public.planet VALUES (11, 'HD 209458b', 2, 1.5, 'First exoplanet detected transiting', false, 4);
INSERT INTO public.planet VALUES (12, '55 Cancri e', 2, 2.3, 'Lava-covered exoplanet', false, 5);
INSERT INTO public.planet VALUES (13, 'WASP-12b', 2, 1.9, 'Hot Jupiter-type exoplanet', false, 6);
INSERT INTO public.planet VALUES (14, 'Kepler-10b', 1, 3.1, 'One of the smallest exoplanets', false, 7);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1d', 1, 1.8, 'One of TRAPPIST-1 planets', false, 8);
INSERT INTO public.planet VALUES (16, 'GJ 1214b', 2, 3.0, 'Exoplanet with thick atmosphere', false, 9);
INSERT INTO public.planet VALUES (17, 'LHS 1140b', 1, 4.3, 'Super-Earth in habitable zone', false, 10);
INSERT INTO public.planet VALUES (18, 'Kepler-442b', 1, 3.5, 'Potentially habitable', false, 11);
INSERT INTO public.planet VALUES (19, 'Kepler-186f', 1, 4.0, 'Similar to Earth', false, 12);
INSERT INTO public.planet VALUES (20, 'HD 40307g', 1, 5.5, 'Super-Earth in habitable zone', false, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.6, 'Main sequence star of our solar system', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.8, 'Closest known exoplanetary system', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8.0, 'A red supergiant', 1);
INSERT INTO public.star VALUES (4, 'Sirius', 2.5, 'Brightest star visible from Earth', 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 5.0, 'Part of a binary system', 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri B', 5.0, 'Binary pair of Alpha Centauri A', 1);
INSERT INTO public.star VALUES (7, 'Vega', 2.1, 'Bright star in Lyra', 1);
INSERT INTO public.star VALUES (8, 'Rigel', 8.0, 'Blue supergiant in Orion', 1);
INSERT INTO public.star VALUES (9, 'Polaris', 4.6, 'North Star, Cepheid variable', 1);
INSERT INTO public.star VALUES (10, 'Antares', 12.0, 'Red supergiant in Scorpius', 1);
INSERT INTO public.star VALUES (11, 'Aldebaran', 6.4, 'Brightest star in Taurus', 2);
INSERT INTO public.star VALUES (12, 'Altair', 1.4, 'Fast-rotating bright star', 2);
INSERT INTO public.star VALUES (13, 'Arcturus', 7.1, 'Red giant in Bootes', 3);
INSERT INTO public.star VALUES (14, 'Capella', 5.4, 'Bright multiple star system', 3);
INSERT INTO public.star VALUES (15, 'Deneb', 10.5, 'Brightest in Cygnus', 4);
INSERT INTO public.star VALUES (16, 'Spica', 4.0, 'Binary system in Virgo', 5);
INSERT INTO public.star VALUES (17, 'Castor', 6.2, 'Binary system in Gemini', 5);
INSERT INTO public.star VALUES (18, 'Mira', 3.1, 'A variable red giant', 6);
INSERT INTO public.star VALUES (19, 'Fomalhaut', 1.9, 'Surrounded by dust belt', 6);
INSERT INTO public.star VALUES (20, 'Epsilon Eridani', 0.85, 'Has exoplanet', 6);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 1, 'Sol');
INSERT INTO public.sun VALUES (2, 2, 'Alpha Centauri A');
INSERT INTO public.sun VALUES (3, 2, 'Alpha Centauri B');
INSERT INTO public.sun VALUES (4, 3, 'Barnard''s Star');
INSERT INTO public.sun VALUES (5, 4, 'Wolf 359');
INSERT INTO public.sun VALUES (6, 5, 'Sirius A');
INSERT INTO public.sun VALUES (7, 5, 'Sirius B');
INSERT INTO public.sun VALUES (8, 6, 'Procyon A');
INSERT INTO public.sun VALUES (9, 6, 'Procyon B');
INSERT INTO public.sun VALUES (10, 7, 'Betelgeuse');
INSERT INTO public.sun VALUES (11, 7, 'Rigel');
INSERT INTO public.sun VALUES (12, 8, 'Vega');
INSERT INTO public.sun VALUES (13, 8, 'Altair');
INSERT INTO public.sun VALUES (14, 9, 'Arcturus');
INSERT INTO public.sun VALUES (15, 9, 'Antares');
INSERT INTO public.sun VALUES (16, 10, 'Spica');
INSERT INTO public.sun VALUES (17, 11, 'Polaris');
INSERT INTO public.sun VALUES (18, 12, 'Fomalhaut');
INSERT INTO public.sun VALUES (19, 13, 'Aldebaran');
INSERT INTO public.sun VALUES (20, 14, 'Deneb');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 34, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 20, true);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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
-- Name: sun unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unique_name UNIQUE (name);


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
-- Name: sun unique_sun_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT unique_sun_id UNIQUE (sun_id);


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
-- Name: sun sun_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

