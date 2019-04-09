--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.abouts (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    address character varying,
    location_zip character varying,
    phone character varying,
    email character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.abouts OWNER TO leo;

--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: leo
--

CREATE SEQUENCE public.abouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abouts_id_seq OWNER TO leo;

--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leo
--

ALTER SEQUENCE public.abouts_id_seq OWNED BY public.abouts.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO leo;

--
-- Name: experiences; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.experiences (
    id bigint NOT NULL,
    title character varying,
    date character varying,
    location character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.experiences OWNER TO leo;

--
-- Name: experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: leo
--

CREATE SEQUENCE public.experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.experiences_id_seq OWNER TO leo;

--
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leo
--

ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;


--
-- Name: job_descriptions; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.job_descriptions (
    id bigint NOT NULL,
    description character varying,
    experience_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.job_descriptions OWNER TO leo;

--
-- Name: job_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: leo
--

CREATE SEQUENCE public.job_descriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_descriptions_id_seq OWNER TO leo;

--
-- Name: job_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leo
--

ALTER SEQUENCE public.job_descriptions_id_seq OWNED BY public.job_descriptions.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    link character varying,
    credit text,
    "position" integer
);


ALTER TABLE public.projects OWNER TO leo;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: leo
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO leo;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leo
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO leo;

--
-- Name: users; Type: TABLE; Schema: public; Owner: leo
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO leo;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: leo
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO leo;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leo
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.abouts ALTER COLUMN id SET DEFAULT nextval('public.abouts_id_seq'::regclass);


--
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);


--
-- Name: job_descriptions id; Type: DEFAULT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.job_descriptions ALTER COLUMN id SET DEFAULT nextval('public.job_descriptions_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.abouts (id, first_name, last_name, address, location_zip, phone, email, description, created_at, updated_at) FROM stdin;
1	Leo Shue	Schuster	1901 Crossing Place	Austin, TX 78741	(512) 241-9041	leoshueschuster@gmail.com	Hey there! I’ve been living in Austin for 17 years. I recently graduated from Texas State University with a bachelor’s degree in Computer Science. I enjoy spending my free time playing board games, going on hikes, and recording podcasts.	2019-04-09 16:41:54.299297	2019-04-09 16:57:03.194802
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-04-09 15:55:38.697813	2019-04-09 15:55:38.697813
\.


--
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.experiences (id, title, date, location, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: job_descriptions; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.job_descriptions (id, description, experience_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.projects (id, name, description, created_at, updated_at, link, credit, "position") FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.schema_migrations (version) FROM stdin;
20190312203459
20190318163631
20190318170155
20190318172248
20190327161058
20190401164529
20190401172502
20190409163222
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: leo
--

COPY public.users (id, name, email, password_digest, created_at, updated_at, admin) FROM stdin;
1	Leo [***Admin***]	leoshueschuster@gmail.com	$2a$10$OuW2bJy6lYXds.3MD/lsye3n1cZjmYyGBM9L4vB3d2fX83OBv45v2	2019-04-09 16:47:57.140608	2019-04-09 16:47:57.140608	t
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leo
--

SELECT pg_catalog.setval('public.abouts_id_seq', 1, true);


--
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leo
--

SELECT pg_catalog.setval('public.experiences_id_seq', 1, false);


--
-- Name: job_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leo
--

SELECT pg_catalog.setval('public.job_descriptions_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leo
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leo
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.abouts
    ADD CONSTRAINT abouts_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- Name: job_descriptions job_descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.job_descriptions
    ADD CONSTRAINT job_descriptions_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_job_descriptions_on_experience_id; Type: INDEX; Schema: public; Owner: leo
--

CREATE INDEX index_job_descriptions_on_experience_id ON public.job_descriptions USING btree (experience_id);


--
-- Name: job_descriptions fk_rails_4346cb4ff8; Type: FK CONSTRAINT; Schema: public; Owner: leo
--

ALTER TABLE ONLY public.job_descriptions
    ADD CONSTRAINT fk_rails_4346cb4ff8 FOREIGN KEY (experience_id) REFERENCES public.experiences(id);


--
-- PostgreSQL database dump complete
--

