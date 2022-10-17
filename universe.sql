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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
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
    description text,
    diameter_in_ly integer,
    distance_from_earth_in_kly integer,
    constellation_id integer
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
    name character varying(40) NOT NULL,
    description text,
    made_of_cheese boolean,
    radius_in_km numeric,
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
    name character varying(40) NOT NULL,
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
    name character varying(40),
    description text,
    star_type character varying(40),
    galaxy_id integer NOT NULL
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

INSERT INTO public.constellation VALUES (1, 'Sagittarius', 'Sagittarius is one of the constellations of the zodiac and is located in the Southern celestial hemisphere');
INSERT INTO public.constellation VALUES (2, 'Andromeda', 'Located in the northern celestial hemisphere');
INSERT INTO public.constellation VALUES (3, 'Dorado', 'Dorado is a constellation in the southern sky');
INSERT INTO public.constellation VALUES (4, 'Ursa Major', 'Also known as the great bear');
INSERT INTO public.constellation VALUES (5, 'Canes Venatici', 'Created by Johannes Hevelius in the 17th century');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar System', 100000, 0, 1);
INSERT INTO public.galaxy VALUES (2, 'LMC', 'The Large Magllanic Cloud, or Nebulus Major is a satellite galaxy of the Milky Way', 14000, 163, 3);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'The Andromeda Galaxy is the nearest large galaxy to the Milky Way', 220000, 2500, 2);
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 'Also named Cigar Galaxy, after its shape', 37000, 11500, 4);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'Part of the constellation Ursa Major', 170000, 20870, 4);
INSERT INTO public.galaxy VALUES (6, 'Eye of Sauron', 'Named for its similarity to the Eye of Sauron from Lord of the Rings', NULL, 52000, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Luna is the moon of the planet Earth', true, 1737.4, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of the two Mars moons', false, 1370.52, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'One of the two Mars moons', false, 251.625, 4);
INSERT INTO public.moon VALUES (4, 'Ganymed', 'One of the Jupiter moons', false, 2631, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'One of the Jupiter moons', false, 2400, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'One of the Jupiter moons', false, 1815, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'One of the Jupiter moons', false, 1569, 5);
INSERT INTO public.moon VALUES (8, 'Amelthea', 'One of the Jupiter moons', false, 850, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 'One of the Jupiter moons', false, 38, 5);
INSERT INTO public.moon VALUES (10, 'Thebe', 'One of the Jupiter moons', false, 245, 5);
INSERT INTO public.moon VALUES (11, 'Elara', 'One of the Jupiter moons', false, 38, 5);
INSERT INTO public.moon VALUES (12, 'Pasiphae', 'One of the Jupiter moons', false, 25, 5);
INSERT INTO public.moon VALUES (13, 'Metis', 'One of the Jupiter moons', false, 20, 5);
INSERT INTO public.moon VALUES (14, 'Carme', 'One of the Jupiter moons', false, 18, 5);
INSERT INTO public.moon VALUES (15, 'Sinope', 'One of the Jupiter moons', false, 18, 5);
INSERT INTO public.moon VALUES (16, 'Lysithea', 'One of the Jupiter moons', false, 18, 5);
INSERT INTO public.moon VALUES (17, 'Ananke', 'One of the Jupiter moons', false, 15, 5);
INSERT INTO public.moon VALUES (18, 'Leda', 'One of the Jupiter moons', false, 8, 5);
INSERT INTO public.moon VALUES (19, 'Titan', 'Largest moon of the planet Saturn', false, 2575, 6);
INSERT INTO public.moon VALUES (20, 'Rhea', 'Seconde largest moon of the planet Saturn', false, 765, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet in the solar system', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Third planet from the Sun', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Fourth planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Fifth planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Sixth planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Seventh planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Eigth planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (9, 'HD 108236 f', '', false, NULL);
INSERT INTO public.planet VALUES (10, 'TOI-1259Ab', 'Also white dwarf on wide orbit', false, NULL);
INSERT INTO public.planet VALUES (11, 'OGLE-2019-BLG-0960Lb', 'Smallest planet discovered by microlensing', false, NULL);
INSERT INTO public.planet VALUES (12, 'Candidate 1', '', false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the center of our Solar System', 'G2V', 1);
INSERT INTO public.star VALUES (2, 'Almach', 'The third-brghtest point of light in the northern constellation of Andromeda', 'K2+llb', 3);
INSERT INTO public.star VALUES (3, 'Megrez', 'Member of the Big Dipper or the Plough(UK)', 'dwarf star', 4);
INSERT INTO public.star VALUES (4, 'Talitha', 'Also called Talitha Borealis', 'red dwarf', 4);
INSERT INTO public.star VALUES (5, 'Klaus Astralis', 'Part of the Teapot asterism', 'evolved giant', 1);
INSERT INTO public.star VALUES (6, 'Cor Caroli', 'Brightest point of light in its constellation', 'binary star', 6);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


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
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_constraint UNIQUE (name);


--
-- Name: planet fk_planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy galaxy_constellation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: moon moon_belongs_to_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_belongs_to_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_part_of_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_part_of_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

