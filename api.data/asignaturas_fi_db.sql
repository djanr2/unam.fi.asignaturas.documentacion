--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2022-02-24 21:50:44

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
-- TOC entry 211 (class 1259 OID 24796)
-- Name: acceso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acceso (
    id integer NOT NULL,
    date_creacion timestamp with time zone,
    date_actualizacion timestamp with time zone,
    usuario character varying(40),
    mail character varying(40),
    password_ciphed character varying(40),
    rol character varying(40),
    estado character varying(40),
    key character varying(40)
);


ALTER TABLE public.acceso OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24794)
-- Name: Acceso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Acceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Acceso_id_seq" OWNER TO postgres;

--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 210
-- Name: Acceso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Acceso_id_seq" OWNED BY public.acceso.id;


--
-- TOC entry 217 (class 1259 OID 24843)
-- Name: acceso_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acceso_token (
    id bigint NOT NULL,
    usuario character varying(40),
    token character varying(700),
    created timestamp with time zone,
    lifespan timestamp with time zone
);


ALTER TABLE public.acceso_token OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24841)
-- Name: Access_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Access_token_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Access_token_id_seq" OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 216
-- Name: Access_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Access_token_id_seq" OWNED BY public.acceso_token.id;


--
-- TOC entry 205 (class 1259 OID 16404)
-- Name: agrupacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agrupacion (
    id bigint NOT NULL,
    agrupacion character varying(20),
    nombre character varying(150)
);


ALTER TABLE public.agrupacion OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16402)
-- Name: Agrupacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Agrupacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Agrupacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 204
-- Name: Agrupacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Agrupacion_id_seq" OWNED BY public.agrupacion.id;


--
-- TOC entry 207 (class 1259 OID 16412)
-- Name: asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignatura (
    id bigint NOT NULL,
    clave numeric(5,0),
    carrera bigint,
    nombre character varying(300),
    horas_practicas numeric(3,1),
    horas_teoricas numeric(3,1),
    semestre character varying(15),
    orden numeric(2,0),
    nota character varying(10),
    optativa character varying(10),
    agrupacion character varying(20),
    tamano numeric(2,0),
    enlace_pdf character varying(200),
    color character varying(25),
    color_text character varying(25)
);


ALTER TABLE public.asignatura OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16410)
-- Name: Asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Asignatura_id_seq" OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 206
-- Name: Asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Asignatura_id_seq" OWNED BY public.asignatura.id;


--
-- TOC entry 203 (class 1259 OID 16396)
-- Name: carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carrera (
    id bigint NOT NULL,
    clave numeric(4,0),
    nombre character varying(70),
    year numeric(4,0),
    date_actualizacion timestamp with time zone
);


ALTER TABLE public.carrera OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: Carrera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Carrera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Carrera_id_seq" OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 202
-- Name: Carrera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Carrera_id_seq" OWNED BY public.carrera.id;


--
-- TOC entry 215 (class 1259 OID 24818)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id integer NOT NULL,
    estado character varying(10),
    descripcion character varying(50)
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24816)
-- Name: Estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Estado_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Estado_id_seq" OWNER TO postgres;

--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 214
-- Name: Estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Estado_id_seq" OWNED BY public.estado.id;


--
-- TOC entry 213 (class 1259 OID 24807)
-- Name: rol_acceso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol_acceso (
    id integer NOT NULL,
    rol character varying(10),
    descripcion character varying(50)
);


ALTER TABLE public.rol_acceso OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24805)
-- Name: Rol_acceso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rol_acceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rol_acceso_id_seq" OWNER TO postgres;

--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 212
-- Name: Rol_acceso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_acceso_id_seq" OWNED BY public.rol_acceso.id;


--
-- TOC entry 209 (class 1259 OID 16420)
-- Name: seriacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seriacion (
    id bigint NOT NULL,
    carrera bigint,
    asignatura bigint,
    asignatura_seriada bigint,
    color character varying(10)
);


ALTER TABLE public.seriacion OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16418)
-- Name: Seriacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Seriacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Seriacion_id_seq" OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 208
-- Name: Seriacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Seriacion_id_seq" OWNED BY public.seriacion.id;


--
-- TOC entry 226 (class 1259 OID 49572)
-- Name: nota_mapa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nota_mapa (
    id bigint NOT NULL,
    carrera bigint NOT NULL,
    orden numeric(2,0),
    simbolo character varying(15),
    leyenda text
);


ALTER TABLE public.nota_mapa OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 49576)
-- Name: nota_mapa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nota_mapa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nota_mapa_id_seq OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 227
-- Name: nota_mapa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nota_mapa_id_seq OWNED BY public.nota_mapa.id;


--
-- TOC entry 225 (class 1259 OID 41321)
-- Name: optativa_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optativa_asignatura (
    id integer NOT NULL,
    tabla bigint,
    asignatura bigint
);


ALTER TABLE public.optativa_asignatura OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 41319)
-- Name: optativa_asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.optativa_asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.optativa_asignatura_id_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 224
-- Name: optativa_asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.optativa_asignatura_id_seq OWNED BY public.optativa_asignatura.id;


--
-- TOC entry 221 (class 1259 OID 41287)
-- Name: optativa_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optativa_categoria (
    id integer NOT NULL,
    container bigint,
    orden numeric(2,0),
    titulo text DEFAULT ''::text NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.optativa_categoria OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 41285)
-- Name: optativa_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.optativa_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.optativa_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 220
-- Name: optativa_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.optativa_categoria_id_seq OWNED BY public.optativa_categoria.id;


--
-- TOC entry 219 (class 1259 OID 41265)
-- Name: optativa_container; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optativa_container (
    id integer NOT NULL,
    carrera bigint,
    orden numeric(2,0),
    titulo character varying(200) DEFAULT ''::character varying NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.optativa_container OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 41263)
-- Name: optativa_container_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.optativa_container_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.optativa_container_id_seq OWNER TO postgres;

--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 218
-- Name: optativa_container_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.optativa_container_id_seq OWNED BY public.optativa_container.id;


--
-- TOC entry 223 (class 1259 OID 41304)
-- Name: optativa_tabla; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.optativa_tabla (
    id integer NOT NULL,
    categoria bigint,
    orden numeric(2,0),
    titulo character varying(200) DEFAULT ''::character varying NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.optativa_tabla OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 41302)
-- Name: optativa_tabla_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.optativa_tabla_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.optativa_tabla_id_seq OWNER TO postgres;

--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 222
-- Name: optativa_tabla_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.optativa_tabla_id_seq OWNED BY public.optativa_tabla.id;


--
-- TOC entry 2771 (class 2604 OID 24799)
-- Name: acceso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso ALTER COLUMN id SET DEFAULT nextval('public."Acceso_id_seq"'::regclass);


--
-- TOC entry 2774 (class 2604 OID 24846)
-- Name: acceso_token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso_token ALTER COLUMN id SET DEFAULT nextval('public."Access_token_id_seq"'::regclass);


--
-- TOC entry 2768 (class 2604 OID 16407)
-- Name: agrupacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion ALTER COLUMN id SET DEFAULT nextval('public."Agrupacion_id_seq"'::regclass);


--
-- TOC entry 2769 (class 2604 OID 16415)
-- Name: asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public."Asignatura_id_seq"'::regclass);


--
-- TOC entry 2767 (class 2604 OID 16399)
-- Name: carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera ALTER COLUMN id SET DEFAULT nextval('public."Carrera_id_seq"'::regclass);


--
-- TOC entry 2773 (class 2604 OID 24821)
-- Name: estado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public."Estado_id_seq"'::regclass);


--
-- TOC entry 2788 (class 2604 OID 49578)
-- Name: nota_mapa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nota_mapa ALTER COLUMN id SET DEFAULT nextval('public.nota_mapa_id_seq'::regclass);


--
-- TOC entry 2787 (class 2604 OID 41324)
-- Name: optativa_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura ALTER COLUMN id SET DEFAULT nextval('public.optativa_asignatura_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 41290)
-- Name: optativa_categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria ALTER COLUMN id SET DEFAULT nextval('public.optativa_categoria_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 41268)
-- Name: optativa_container id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container ALTER COLUMN id SET DEFAULT nextval('public.optativa_container_id_seq'::regclass);


--
-- TOC entry 2783 (class 2604 OID 41307)
-- Name: optativa_tabla id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla ALTER COLUMN id SET DEFAULT nextval('public.optativa_tabla_id_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 24810)
-- Name: rol_acceso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_acceso ALTER COLUMN id SET DEFAULT nextval('public."Rol_acceso_id_seq"'::regclass);


--
-- TOC entry 2770 (class 2604 OID 16423)
-- Name: seriacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion ALTER COLUMN id SET DEFAULT nextval('public."Seriacion_id_seq"'::regclass);


--
-- TOC entry 2971 (class 0 OID 24796)
-- Dependencies: 211
-- Data for Name: acceso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acceso (id, date_creacion, date_actualizacion, usuario, mail, password_ciphed, rol, estado, key) FROM stdin;
7	2020-12-15 14:15:47.772-06	2020-12-15 14:15:47.772-06	djanr2	djanr2@hotmail.com	8cb2237d679ca88db6464eac6da96345513964	developer	activo	UE5i7IDb76CV09tafDU
9	2020-12-18 23:06:20.727-06	2020-12-18 23:06:20.727-06	djanr2	djanr2@icloud.com	8cb2237d679ca88db6464eac6da96345513964	qa	activo	hihTYC0pO8iK7ztjBWk
10	2020-12-18 23:35:55.738-06	2020-12-22 01:56:44.106-06	djanr2	djanr2@comunidad.unam.mx	19b58543c85b97c5498edfd89c11c3aa8cb5fe51	root	activo	mfsA9zIM3Rn8C58g1B7
8	2020-12-15 14:16:24.847-06	2020-12-15 14:16:24.847-06	djanr2	djanr2@gmail.com	19b58543c85b97c5498edfd89c11c3aa8cb5fe51	tester	borrado	DsbAQ4KNjaGtvw04zLo
\.


--
-- TOC entry 2977 (class 0 OID 24843)
-- Dependencies: 217
-- Data for Name: acceso_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acceso_token (id, usuario, token, created, lifespan) FROM stdin;
12	djanr2@hotmail.com	S7Bl7lyCEw2zbOA13fa76GDtFdmFmJeScX4HdRkmmmFmiqoeFVnMOFIhu6kc/bvyaiKZQKQ2MlMsrRe6IAp7NketsEaBycOHplkabpbKrvE2RAbe4fXtZ2iE3g+RucVXkRyiQnXchYQ9LGUFOO8FFL7PbuFGX7Wc5pnCB4JnKesfdf5ErBzmVGucFa958FFvvAHJRQGbFoilMoPjav0XNHxaMN589X0qEvbaFN1KL7tGRGFIqDLfEgkC3QLHvRXtCdTDnjRccsJCR5eUqIOnCjBVPKZk83yXyLWjI6zZOrS4E+9PGdWAxJnQHgEi8xmyL9XwnSspOdxf/SAwuNUWn98a+e0yzdjqu2XVL5gaFiMvbpeiMXPP7Y8aXQzh5WqjigTcOcpPZ/OHTUIqrXWeyuIVs7sOYx0FDqbhse3eay5zq/+crhJ+XRcynP2ZNmL6co69EvlmabnzcyyhWmSBIQ==	2020-12-18 20:44:32.097-06	2021-01-25 04:44:32.097-06
\.


--
-- TOC entry 2965 (class 0 OID 16404)
-- Dependencies: 205
-- Data for Name: agrupacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agrupacion (id, agrupacion, nombre) FROM stdin;
1	AMARILLO	Ciencias B??sicas
2	NARANJA	\N
3	VERDE	Ciencias Sociales y Humanidades
5	AZUL	\N
6	MORADO	\N
7	OPTATIVA	Optativa
8	CSYH	Ciencias Sociales y Humanidades
9	CONSTRUCCION	\N
10	ESTRUCTURAS	\N
11	GEOTECNIA	\N
12	HIDRAULICA	\N
13	ISYA	\N
14	SPYT	\N
15	ELECTRONICA	\N
16	ELECTRONICA_OPT	\N
17	BIOMEDICA	\N
18	BIOMEDICA_OPT	\N
19	ELECTRICA	\N
20	ELECTRICA_OPT	\N
21	CYR	\N
22	CYR_OPT	\N
23	ENERGETICOS	\N
24	ENERGETICOS_OPT	\N
25	COMPETENCIAS	\N
26	OSC	\N
27	IS	\N
28	TIC	\N
29	ESPACIALES	\N
30	RADIOCOMUNICACION	\N
31	POLITICA	\N
32	RADIOFRECUENCIA	\N
33	REDES	\N
34	E_MINERA	\N
35	HIDROGEOLOGIA_1	\N
36	E_PETROLERA	\N
37	HIDROGEOLOGIA_2	\N
38	SISMOLOGIA	\N
39	HIDROGEOLOGIA_3	\N
40	INGENIERIA_A	\N
41	SUMINISTROS	\N
42	PRODUCCION	\N
43	DIRECCION	\N
44	MOVILIDAD	\N
45	AUTOMATIZACION	\N
46	DISENO	\N
47	MANUFACTURA	\N
48	TERMOFLUIDOS	\N
49	GEOMATICA_I	\N
50	GEOMATICA_II	\N
51	INSTRUMENTACION_CB	\N
52	INSTRUMENTACION_CI	\N
53	INSTRUMENTACION_SB	\N
54	BIOMECANICA_CB	\N
56	BIOMECANICA_SB	\N
57	LOGISTICA_CB	\N
58	LOGISTICA_CI	\N
59	LOGISTICA_SB	\N
60	BIOMEDICOS	\N
61	MB	\N
62	CALIDAD_AIRE	\N
63	CALIDAD_AIRE_OPT	\N
64	CALIDAD_AGUA	\N
65	CALIDAD_AGUA_OPT	\N
66	MANEJO	\N
67	MANEJO_OPT	\N
68	GESTION	\N
69	GESTION_OPT	\N
70	PLANEACION	\N
71	PLANEACION_OPT	\N
55	BIOMECANICA_CI	\N
76	CYAN	\N
77	ROSA	\N
78		\N
\.


--
-- TOC entry 2967 (class 0 OID 16412)
-- Dependencies: 207
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (id, clave, carrera, nombre, horas_practicas, horas_teoricas, semestre, orden, nota, optativa, agrupacion, tamano, enlace_pdf, color, color_text) FROM stdin;
6379	1120	6	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6888	1437	11	Termodin??mica	2.0	4.0	4	5	L+		AMARILLO	1		#ffff00	#000000
6538	1583	7	Mec??nica de Rocas	0.0	4.0	8	2			CYAN	1		#00ffff	#000000
6992	1218	12	Topograf??a II	0.0	4.5	2	5			CYAN	1		#00ffff	#000000
6403	2504	6	Variable Compleja Aplicada a la Geof??sica	0.0	4.0	5	2			CYAN	1		#00ffff	#000000
7373	1121	16	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
7374	1123	16	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
7375	1130	16	Fundamentos de F??sica	2.0	2.0	1	4	L		AMARILLO	1		#ffff00	#000000
7378	1220	16	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
7379	1221	16	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
7380	1223	16	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
7384	1337	16	Fundamentos de Probabilidad y Estad??stica	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
7025	1599	12	Fundamentos de Catastro	2.0	3.0	8	3	L		AZUL	1		#0000ff	#f0ffff
7133	1698	13	Mediciones Clinicas	2.0	4.0	8	6	L	OPT	BIOMECANICA_SB	0		#f0ffff	#000000
6059	914	2	Ventilacion	0.0	4.0	9, 10	8		OPT	OPTATIVA	0		#f0ffff	#000000
6060	3097	2	Voladura de Rocas	0.0	4.0	9, 10	9		OPT	OPTATIVA	0		#f0ffff	#000000
6061	2099	2	Yacimientos Minerales y T??cnicas An??liticas	0.0	3.0	9, 10	10		OPT	OPTATIVA	0		#f0ffff	#000000
6053	3092	2	Dep??sitos de Residuos Mineros	0.0	4.0	9, 10	2		OPT	OPTATIVA	0		#f0ffff	#000000
6116	426	3	Dispositivos Electr??nicos Programables	0.0	4.0	9	2		OPT	ELECTRONICA	0		#f0ffff	#000000
6117	427	3	Introducci??n a la Tecnolog??a Mems	0.0	4.0	9	3		OPT	ELECTRONICA	0		#f0ffff	#000000
6118	1010	3	Sistemas Embebidos	0.0	4.0	9	4		OPT	ELECTRONICA	0		#f0ffff	#000000
6119	428	3	Amplificadores para Microondas	0.0	3.0	10	1		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6121	767	3	Mems para Radiofrecuencia	0.0	3.0	10	3		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6013	1569	2	Estad??stica	0.0	4.0	5	1			AMARILLO	1		#ffff00	#000000
7385	1321	16	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
7386	1325	16	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
7387	1322	16	Cinem??tica y Din??mica	0.0	4.0	3	4			AMARILLO	1		#ffff00	#000000
7388	1437	16	Termodin??mica	2.0	4.0	3	5	L+		AMARILLO	1		#ffff00	#000000
6209	1414	4	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6590	1433	8	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
6674	1121	9	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6678	1220	9	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6679	1221	9	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6680	1223	9	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
6684	1436	9	Probabilidad	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6685	1321	9	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6686	1325	9	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6687	1322	9	Cinem??tica y Din??mica	0.0	4.0	3	4			AMARILLO	1		#ffff00	#000000
6690	1569	9	Estad??stica	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
7053	1120	13	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6988	1220	12	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6989	1221	12	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6995	1325	12	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6996	1321	12	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6997	1322	12	Cinem??tica y Din??mica	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
7001	1433	12	An??lisis Num??rico	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
7003	1447	12	Estad??stica Aplicada a la Ingenier??a Geom??tica	0.0	2.0	4	3			AMARILLO	1		#ffff00	#000000
7054	1121	13	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
7058	1220	13	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
7391	1414	16	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
7392	1433	16	An??lisis Num??rico	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
7393	1424	16	Matem??ticas Avanzadas	2.0	3.0	4	4			AMARILLO	1		#ffff00	#000000
7394	1476	16	Fundamentos de Mac??nica de Vuelo	0.0	3.0	4	5			CYAN	1		#00ffff	#000000
7396	1592	16	An??lisis de Circuitos El??ctricos	2.0	4.0	5	1	L+		CYAN	1		#00ffff	#000000
7397	879	16	Teor??a Electromagnetica	2.0	4.0	5	2	L+		CYAN	1		#00ffff	#000000
6224	1535	4	Dise??o Digital VLSI	2.0	3.0	7	2	L		CYAN	1		#00ffff	#000000
6548	0	7	Optativa	0.0	4.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
7129	1695	13	An??lisis de Biose??ales	2.0	4.0	8	2	L	OPT	BIOMECANICA_SB	0		#f0ffff	#000000
6416	0	6	Asignatura de Campo de Profundizaci??n	0.0	4.0	7	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6422	0	6	Asignatura de Campo de Profundizaci??n	0.0	4.0	8	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6427	0	6	Asignatura de Campo de Profundizaci??n	0.0	4.0	9	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6432	0	6	Asignatura de Campo de Profundizaci??n	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6423	2816	6	Prospecci??n El??ctrica	2.0	4.0	8	4	P+		AZUL	1		#0000ff	#f0ffff
6425	2094	6	Petrof??sica y Registros Geof??sicos en Pozos	2.0	4.0	9	1	P		AZUL	1		#0000ff	#f0ffff
6428	2967	6	Prospecci??n Electromagn??tica	2.0	4.0	9	4	P+		AZUL	1		#0000ff	#f0ffff
6430	2969	6	Procesamiento de Datos Geof??sicos	2.0	4.0	10	1	L		AZUL	1		#0000ff	#f0ffff
6431	2968	6	Geof??sica Integral	2.0	4.0	10	2	P		AZUL	1		#0000ff	#f0ffff
7235	0	14	Optativa del campo de profundizaci??n	0.0	3.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
7236	0	14	Optativa del campo de profundizaci??n	0.0	3.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
7237	0	14	Optativa del campo de profundizaci??n	0.0	3.0	10	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6835	1988	10	Ingenier??a de Yacimientos de Gas	0.0	4.0	8	3			AZUL	1		#0000ff	#f0ffff
6838	1990	10	Administraci??n Integral de Yacimientos	0.0	4.0	9	1			AZUL	1		#0000ff	#f0ffff
6839	1992	10	Econim??a de los Hidrocarburos	0.0	2.0	9	2			AZUL	1		#0000ff	#f0ffff
6906	549	11	M??quinas El??ctricas	2.0	4.0	8	1	L		AZUL	1		#0000ff	#f0ffff
7024	1679	12	Proyecto Geom??trico de Obras de Infraestructura Lineal	0.0	4.5	8	2			AZUL	1		#0000ff	#f0ffff
6225	406	4	Inteligencia Artificial	0.0	4.0	7	3			AZUL	1		#0000ff	#f0ffff
6032	2808	2	Explotaci??n de Minas a Cielo Abierto	0.0	4.0	8	2	P+		AZUL	1		#0000ff	#f0ffff
6033	2810	2	Hidro y Pirometalurgia	0.0	4.0	8	3	P+		AZUL	1		#0000ff	#f0ffff
6093	1998	3	M??quinas El??ctricas I	2.0	4.0	6	5	L+		AZUL	1		#0000ff	#f0ffff
6418	1587	6	Geolog??a de M??xico	0.0	4.0	7	5			AZUL	1		#0000ff	#f0ffff
6097	1723	3	Amplificadores Electr??nicos	2.0	4.0	7	4	L+		AZUL	1		#0000ff	#f0ffff
6098	1936	3	Sistemas El??ctricos de Potencia I	2.0	4.0	7	5	L+		AZUL	1		#0000ff	#f0ffff
6099	422	3	Automatizaci??n	2.0	4.0	8	1	L+		AZUL	1		#0000ff	#f0ffff
6100	1937	3	Microprocesadores y Microcontroladores	2.0	4.0	8	2	L+		AZUL	1		#0000ff	#f0ffff
6103	1822	3	Circuitos Integrados Anal??gicos	2.0	4.0	8	5	L+		AZUL	1		#0000ff	#f0ffff
6421	2817	6	Prospecci??n S??smica II	0.0	4.0	8	2			AZUL	1		#0000ff	#f0ffff
6426	2966	6	Inersion de Datos Geof??sicos	0.0	4.0	9	2			AZUL	1		#0000ff	#f0ffff
6044	0	2	Optativa	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6045	0	2	Optativa	0.0	4.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6104	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	9	1		OPT_1	AZUL	1		#0000ff	#f0ffff
6105	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	9	2		OPT_1	AZUL	1		#0000ff	#f0ffff
7390	1443	16	An??lisis de Sistemas y Se??ales	2.0	4.0	4	1	L+		AZUL	1		#0000ff	#f0ffff
7230	2827	14	Sistemas de Recuperaci??n de Recursos y Energ??a	0.0	3.0	9	4			AZUL	1		#0000ff	#f0ffff
189	0	1	Se deber??n cursar al menos 18 creditos optativos de una de las seis ??reas	0.0	9.0	10	2		OPT_1	AZUL	2		#0000ff	#f0ffff
190	0	1	Se deber??n cursar al menos 12 creditos optativos de una o dos de las cinco ??reas restantes	0.0	6.0	10	3		OPT_1	AZUL	2		#0000ff	#f0ffff
6433	0	6	Asignatura de Campo de Profundizaci??n	0.0	4.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6324	1875	5	Sistemas de Comunicaciones Opticas I	2.0	3.0	8	4	L+		AZUL	1		#0000ff	#f0ffff
6325	1874	5	Dispositivos de Microondas II	2.0	3.0	8	5	L+		AZUL	1		#0000ff	#f0ffff
6628	2919	8	An??lisis y Mejora de Procesos	2.0	2.0	10	6	P		AZUL	1		#0000ff	#f0ffff
6629	2920	8	Direcci??n de Poyectos	2.0	2.0	10	7	P		AZUL	1		#0000ff	#f0ffff
177	1935	1	Tratamiento de Aguas Residuales	0.0	4.5	9	4	L		AZUL	1		#0000ff	#f0ffff
119	1407	1	Recursos de la Construcci??n	0.0	3.0	3	5	L		AZUL	1		#0000ff	#f0ffff
6331	1974	5	Redes Inal??mbricas y M??viles	0.0	3.0	9	5			AZUL	1		#0000ff	#f0ffff
125	1444	1	Procedimientos Constructivos de Elementos de Estructuras	0.0	3.0	4	5	L		AZUL	1		#0000ff	#f0ffff
136	2601	1	Ingenier??a Ambiental II	0.0	3.0	6	3	L		AZUL	1		#0000ff	#f0ffff
116	1321	1	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
120	1333	1	Sistemas Termodin??micos y Electromagnetismo	0.0	4.0	3	6			AMARILLO	1		#ffff00	#000000
121	1436	1	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
122	1433	1	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
147	379	1	Hidrolog??a	0.0	4.5	8	2			CYAN	1		#00ffff	#000000
6704	462	9	Mec??nica de Fluidos I	2.0	4.0	6	5	L+		CYAN	1		#00ffff	#000000
6706	1691	9	Electr??nica B??sica	2.0	4.0	7	1	L		CYAN	1		#00ffff	#000000
6710	1756	9	Mec??nica de Fluidos II	2.0	4.0	7	5	L+		CYAN	1		#00ffff	#000000
6712	2806	9	Din??mica de Maquinaria	2.0	4.0	8	2	L+		CYAN	1		#00ffff	#000000
6714	1860	9	Transferencia de Calor	2.0	4.0	8	4	L+		CYAN	1		#00ffff	#000000
6220	1644	4	Bases de Datos	2.0	6.0	6	3	L+		CYAN	1		#00ffff	#000000
6221	1562	4	Circuitos El??ctricos	2.0	3.0	6	4	L		CYAN	1		#00ffff	#000000
7135	1786	13	Planeaci??n y Control de Recursos Hospitalarios	2.0	4.0	8	8	L	OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7136	1699	13	Sistemas de Medici??n y Transductores M??dicos	2.0	4.0	8	9	L	OPT	BIOMECANICA_SB	0		#f0ffff	#000000
6348	2305	5	Temas Selectos de Normalizaci??n y Desarrollo Industrial	0.0	3.0	8, 9	6		OPT	ESPACIALES	0		#f0ffff	#000000
6349	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	7		OPT	ESPACIALES	0		#f0ffff	#000000
6350	2311	5	Codificaci??n Multimedia	0.0	3.0	8, 9	1		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6351	2302	5	Innovaci??n Tecnolog??a y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6352	2304	5	Proyecto de Investigaci??n para Telecomunicaciones	0.0	3.0	8, 9	3		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
7097	0	13	Obligatoria de elecci??n de Ciencias de la ISBM	0.0	4.0	8	4		OBL_ELEC	CYAN	1		#00ffff	#000000
7098	0	13	Optativa de Cinecias de la Ingenier??a en Sistemas Biom??dicos	0.0	4.0	8	5		OPT_ELEC	CYAN	1		#00ffff	#000000
7099	0	13	Optativa de Cinecias de la Ingenier??a en Sistemas Biom??dicos	0.0	4.0	8	6		OPT_ELEC	CYAN	1		#00ffff	#000000
6229	0	4	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	8	1		OPT_1	VERDE	1		#32cd32	#000000
152	0	1	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	8	7		OPT_1	VERDE	1		#32cd32	#000000
133	1413	1	Introducci??n a la Econom??a	0.0	4.0	5	6			VERDE	1		#32cd32	#000000
6227	1686	4	Sistemas de Comunicaciones	2.0	3.0	7	5			CYAN	1		#00ffff	#000000
6302	1453	5	Sistemas Digitales	2.0	3.0	4	6			CYAN	1		#00ffff	#000000
6289	1227	5	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		NARANJA	1		#ff8c00	#000000
6419	0	6	Optativa de Otras Asignaturas Convenientes	0.0	2.0	7	6		OPT_1	NARANJA	1		#ff8c00	#000000
57	1120	1	??lgebra	0.0	4.0	1	1			AMARILLO	1	algebra.pdf	#ffff00	#000000
6237	0	4	Optativa de Campo de Profundizaci??n	0.0	4.0	9	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6239	0	4	Asignaturas OPTATIVA de Campo de Profundizaci??n	0.0	40.0	10	1		OPT_1	AZUL	5		#0000ff	#f0ffff
6533	1578	7	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7	2	L		AZUL	1		#0000ff	#f0ffff
6536	1088	7	Hidrogeolog??a	3.0	3.0	7	5	L, P		AZUL	1		#0000ff	#f0ffff
6537	1871	7	Geolog??a Aplicada a la Miner??a	3.0	3.0	8	1	P		AZUL	1		#0000ff	#f0ffff
6539	1066	7	Geolog??a del Petr??leo	3.0	3.0	8	3	P		AZUL	1		#0000ff	#f0ffff
7228	0	14	Obligatoria del campo de profundizaci??n	0.0	3.0	9	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6404	531	6	Mec??nica del Medio Continuo	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
5998	487	2	Mineralog??a	3.0	3.0	2	3	L		CYAN	1		#00ffff	#000000
6004	1137	2	Petrolog??a	2.0	2.0	3	4	L		CYAN	1		#00ffff	#000000
6014	1457	2	M??todos de Medici??n Minero-Cartogr??ficos	3.0	4.0	5	2	P		CYAN	1		#00ffff	#000000
6016	1455	2	An??lisis Qu??mico	4.0	2.0	5	4	L		CYAN	1		#00ffff	#000000
6353	2055	5	Radiodifusi??n	0.0	3.0	8, 9	4		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6354	2309	5	Redes Embebidas Inal??mbricas	0.0	3.0	8, 9	5		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6370	2305	5	Temas Selectos de Normalizaci??n y Desarrollo Industrial	0.0	3.0	8, 9	7		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6371	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	8		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6398	1414	6	Electricidad y Magnetismo	2.0	4.0	4	3	L+		AMARILLO	1		#ffff00	#000000
6581	1123	8	Qu??mica	2.0	4.0	2	5	L+		AMARILLO	1		#ffff00	#000000
6591	1437	8	Termodin??mica	2.0	4.0	4	3	L+		AMARILLO	1		#ffff00	#000000
6675	1123	9	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6676	2211	9	F??sica Experimental	2.0	4.0	1	4	L		AMARILLO	1		#ffff00	#000000
6691	1414	9	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6796	1125	10	Qu??mica de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6380	1121	6	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6384	1220	6	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6385	1221	6	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6807	1330	10	Fundamentos de Termodin??mica y Electromagnetismo	2.0	4.0	3	3	L+		AMARILLO	1		#ffff00	#000000
6281	1121	5	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6285	1220	5	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
137	2600	1	Estad??stica Aplicada a Ingenier??a Civil	0.0	3.0	6	4			CYAN	1		#00ffff	#000000
6286	1221	5	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
140	642	1	Planeaci??n	0.0	3.0	7	1			CYAN	1		#00ffff	#000000
6287	1228	5	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6415	2709	6	Prospecci??n S??smica I	0.0	4.0	7	2			AZUL	1		#0000ff	#f0ffff
144	1608	1	Movimiento de Tierras	0.0	3.0	7	5	L		AZUL	1		#0000ff	#f0ffff
6039	0	2	Optativa	0.0	4.0	9	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6040	0	2	Optativa	0.0	4.0	9	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6898	1964	11	Temas Selectos de Programaci??n I	2.0	2.0	6	4			AZUL	1		#0000ff	#f0ffff
6821	1591	10	Registros Geof??sicos en Pozos	2.0	4.0	5	5			AZUL	1		#0000ff	#f0ffff
6290	1436	5	Probabilidad	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6291	1321	5	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6292	1325	5	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6293	1424	5	Matem??ticas Avanzadas	2.0	3.0	3	4			AMARILLO	1		#ffff00	#000000
6299	1433	5	An??lisis Num??rico	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
7189	1231	14	Qu??mica Inorg??nica	2.0	4.0	2	5	L+		AMARILLO	1		#ffff00	#000000
7201	1475	14	Qu??mica Org??nica	2.0	4.0	4	5	L+		AMARILLO	1		#ffff00	#000000
6300	1452	5	Introducci??n a la F??sica del Estado S??lido	0.0	4.0	4	4			AMARILLO	1		#ffff00	#000000
6870	1123	11	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6876	2211	11	F??sica Experimental	2.0	4.0	2	4	L		AMARILLO	1		#ffff00	#000000
6885	1414	11	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6825	1982	10	Flujo Multif??sico en Tuber??as	0.0	4.0	6	3			AZUL	1		#0000ff	#f0ffff
7232	2825	14	Evaluaci??n de Impacto Ambiental	0.0	3.0	9	6			AZUL	1		#0000ff	#f0ffff
7238	2829	14	Evaluaci??n de Riesgo Ambiental	0.0	3.0	10	6			AZUL	1		#0000ff	#f0ffff
7224	2821	14	Gesti??n Integral de Residuos de Manejo Especial	0.0	3.0	8	4			AZUL	1		#0000ff	#f0ffff
7221	2822	14	Materiales y Residuos Peligrosos	0.0	4.5	8	1			AZUL	1		#0000ff	#f0ffff
7229	2823	14	Proyectos de Plantas de Tratamiento de Agua para Consumo Humano	0.0	4.5	9	3			AZUL	1		#0000ff	#f0ffff
7223	2826	14	Proyectos de Plantas de Tratamiento de Agua Residual	0.0	4.5	8	3			AZUL	1		#0000ff	#f0ffff
7227	2824	14	Control de la Contaminaci??n de Suelos y Acu??feros	0.0	3.0	9	1			AZUL	1		#0000ff	#f0ffff
6602	143	8	Dise??o de Sistemas Productivos	0.0	4.0	6	3			AZUL	1		#0000ff	#f0ffff
6614	1955	8	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	8	3			AZUL	1		#0000ff	#f0ffff
6615	2804	8	Dise??o de la Cadena de Suministros	0.0	4.0	8	4			AZUL	1		#0000ff	#f0ffff
6616	1918	8	Procesos Industriales	0.0	4.0	8	5			AZUL	1		#0000ff	#f0ffff
6619	2103	8	Calidad	0.0	4.0	9	2			AZUL	1		#0000ff	#f0ffff
6620	2137	8	Sistemas de Mejoramiento Ambiental	0.0	4.0	9	3			AZUL	1		#0000ff	#f0ffff
174	2156	1	Evaluaci??n de Proyectos	0.0	3.0	9	1			AZUL	1		#0000ff	#f0ffff
175	610	1	Obras Hidr??ulicas	0.0	4.5	9	2			AZUL	1		#0000ff	#f0ffff
176	230	1	Dise??o Estructural	0.0	4.5	9	3			AZUL	1		#0000ff	#f0ffff
187	2913	1	Ingenier??a del Transporte I	0.0	3.0	9	6			AZUL	1		#0000ff	#f0ffff
113	1229	1	Geom??tica B??sica	3.0	3.0	2	5			AZUL	1		#0000ff	#f0ffff
132	1596	1	Programaci??n y Presupuestaci??n	0.0	3.0	5	5			AZUL	1		#0000ff	#f0ffff
7002	1446	12	Electromagnetismo y ??ptica	2.0	4.0	4	2	L		AMARILLO	1		#ffff00	#000000
5991	1120	2	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
7055	1123	13	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
5992	1121	2	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
7071	1414	13	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
7073	1437	13	Termodin??mica	2.0	4.0	4	4	L+		AMARILLO	1		#ffff00	#000000
5996	1220	2	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
5997	1221	2	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6595	1414	8	Electricidad y Magnetismo	2.0	4.0	5	2	L+		AMARILLO	1		#ffff00	#000000
6001	1325	2	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6002	1321	2	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
142	1703	1	An??lisis Estructural	0.0	4.5	7	3			CYAN	1		#00ffff	#000000
7079	0	13	Obligatoria de elecci??n de Ciencias B??sicas	0.0	4.0	5	4		OBL_ELEC	AMARILLO	1		#ffff00	#000000
6194	1123	4	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6417	2708	6	Prospecci??n Gravim??trica y Magnetom??trica	2.0	4.0	7	4	P+		AZUL	1		#0000ff	#f0ffff
6120	700	3	Biomems y Dispositivos Lab on a Chip	0.0	3.0	10	2		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6122	768	3	Procesadores Multin??cleo	0.0	4.0	10	4		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6124	918	3	Sistemas Difusos	0.0	3.0	10	6		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6126	3003	3	Sistemas Operativos en Tiempo Real	0.0	4.0	10	8		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6127	2006	3	Temas Selectos de Electr??nica	0.0	3.0	10	9		OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6131	2906	3	Ingenier??a Cl??nica	0.0	4.0	10	4		OPT	BIOMEDICA	0		#f0ffff	#000000
6133	607	3	Audiometr??a	0.0	3.0	10	2		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6195	1130	4	Fundamentos de F??sica	2.0	2.0	1	4	L		AMARILLO	1		#ffff00	#000000
6249	1765	4	Dispositivos de Almacenamiento y Entrada-Salida	2.0	3.0	9, 10	1	L	OPT	OSC	0		#f0ffff	#000000
6134	949	3	Introducci??n a la Biof??sica	0.0	3.0	10	3		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6137	3006	3	Seguridad e Instalaciones Hospitalarias	0.0	4.0	10	6		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6138	955	3	Sistemas y Equipos Biom??dicos Electr??nicos	0.0	3.0	10	7		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6139	657	3	Telesalud	0.0	3.0	10	8		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6140	3007	3	Temas Selectos de Ingenier??a Biom??dica	0.0	3.0	10	9		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6141	967	3	Transductores Biom??dicos	0.0	3.0	10	10		OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6145	2003	3	Sistemas De Distribucion	0.0	3.0	10	4		OPT	ELECTRICA	0		#f0ffff	#000000
6148	1099	3	Iluminaci??n	0.0	3.0	9	2		OPT	ELECTRICA_OPT	0		#f0ffff	#000000
6150	2004	3	Sistemas de Transporte El??ctrico	0.0	3.0	9	4		OPT	ELECTRICA_OPT	0		#f0ffff	#000000
6151	2008	3	Temas Selectos de Ingenier??a El??ctrica	0.0	3.0	9	5		OPT	ELECTRICA_OPT	0		#f0ffff	#000000
6161	2903	3	Temas Selectos de Control y Rob??tica	0.0	3.0	10	7		OPT	CYR_OPT	0		#f0ffff	#000000
6162	2912	3	Introduccion a los Sistemas Energ??ticos	0.0	4.0	9	1		OPT	ENERGETICOS	0		#f0ffff	#000000
6163	3008	3	Energ??as Renovables	0.0	4.0	9, 10	1		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6164	3009	3	Fundamentos de Energ??a Nuclear	0.0	4.0	9, 10	2		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6165	3010	3	Herramientas Computacionales para la Optimaci??n de Sistemas Energ??ticos	0.0	4.0	9, 10	3		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6166	3011	3	Ingenier??a de Reactores Nucleares	0.0	4.0	9, 10	4		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6167	3012	3	Introducci??n a la Conversi??n de Energ??a	0.0	4.0	9, 10	5		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6168	3013	3	Introducci??n a la F??sica de Reactores Nucleares	0.0	4.0	9, 10	6		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6169	3014	3	Introducci??n al Ahorro y a la Gesti??n Energ??tica	0.0	4.0	9, 10	7		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6170	3015	3	Introducci??n al An??lisis Probabil??stico de Seguridad	0.0	4.0	9, 10	8		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6372	674	5	C??mputo M??vil	0.0	3.0	8, 9	1		OPT	REDES	0		#f0ffff	#000000
6373	2302	5	Innovaci??n Tecnolog??a y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2		OPT	REDES	0		#f0ffff	#000000
6007	1436	2	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6998	1436	12	Probabilidad	0.0	4.0	3	4			AMARILLO	1		#ffff00	#000000
6008	1433	2	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
6009	1228	2	Mec??nica	0.0	6.0	4	3			AMARILLO	1		#ffff00	#000000
6693	1437	9	Termodin??mica	2.0	4.0	4	5	L+		AMARILLO	1		#ffff00	#000000
123	1450	1	Sistemas Quimicos en Ingenier??a	2.0	2.0	4	3	L+		AMARILLO	1		#ffff00	#000000
6062	1120	3	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6063	1121	3	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6067	1220	3	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6068	1221	3	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6069	1228	3	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6073	1321	3	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6074	1325	3	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6078	1436	3	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6080	1433	3	An??lisis Num??rico	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
7372	1120	16	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6374	2310	5	Tecnolog??as e Interconexi??n de Redes	0.0	3.0	8, 9	3		OPT	REDES	0		#f0ffff	#000000
6375	2304	5	Proyecto de Investigaci??n para Telecomunicaciones	0.0	3.0	8, 9	4		OPT	REDES	0		#f0ffff	#000000
6376	2309	5	Redes Embebidas Inal??mbricas	0.0	3.0	8, 9	6		OPT	REDES	0		#f0ffff	#000000
6377	2305	5	Temas Selectos de Normalizaci??n y Desarrollo Industrial	0.0	3.0	8, 9	7		OPT	REDES	0		#f0ffff	#000000
6378	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	8		OPT	REDES	0		#f0ffff	#000000
6434	1789	6	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	5	1		OPT	CSYH	0		#f0ffff	#000000
7272	2981	14	An??lisis de Ciclo de Vida	0.0	3.0	9*	1		OPT	PLANEACION	0		#f0ffff	#000000
6473	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	E_PETROLERA	0		#f0ffff	#000000
6251	2914	4	Sistemas de Control	2.0	4.0	9, 10	3	L	OPT	OSC	0		#f0ffff	#000000
6257	1866	4	Administraci??n de Redes	2.0	3.0	9, 10	1	L	OPT	TIC	0		#f0ffff	#000000
6275	2954	4	Seguridad Inform??tica Avanzada	2.0	3.0	10	15	L	OPT	OPTATIVA	0		#f0ffff	#000000
6240	1789	4	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	8	1		OPT	CSYH	0		#f0ffff	#000000
6241	1790	4	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	8	2		OPT	CSYH	0		#f0ffff	#000000
6242	1055	4	Literatura Hispanoamericana Contemporanea	0.0	3.0	8	3		OPT	CSYH	0		#f0ffff	#000000
6243	1791	4	M??xico Naci??n Multicultural	0.0	2.0	8	4		OPT	CSYH	0		#f0ffff	#000000
6244	1792	4	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	8	5		OPT	CSYH	0		#f0ffff	#000000
6245	1793	4	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	8	6		OPT	CSYH	0		#f0ffff	#000000
6246	1794	4	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	8	7		OPT	CSYH	0		#f0ffff	#000000
6247	1795	4	Taller Sociohumanistico- Creatividad	2.0	0.0	8	8		OPT	CSYH	0		#f0ffff	#000000
6248	1796	4	Taller Sociohumanistico- Liderazgo	2.0	0.0	8	9		OPT	CSYH	0		#f0ffff	#000000
6250	2901	4	Procesamiento Digital de Se??ales	0.0	4.0	9, 10	2		OPT	OSC	0		#f0ffff	#000000
6252	2927	4	Sistemas Embebidos Avanzados	2.0	3.0	9, 10	4		OPT	OSC	0		#f0ffff	#000000
6253	2928	4	Administraci??n de Proyectos TIC	0.0	4.0	9, 10	1		OPT	IS	0		#f0ffff	#000000
6254	2929	4	Redes de Datos Avanzadas	0.0	4.0	9, 10	2		OPT	IS	0		#f0ffff	#000000
6255	2930	4	Criptograf??a	0.0	4.0	9, 10	3		OPT	IS	0		#f0ffff	#000000
6256	2931	4	Negocios Electr??nicos y Desarrollo Web	0.0	4.0	9, 10	4		OPT	IS	0		#f0ffff	#000000
6258	2932	4	An??lisis y Procesamiento Inteligente de Textos	0.0	4.0	9, 10	2		OPT	TIC	0		#f0ffff	#000000
6752	2074	9	Dise??o de Sistemas T??rmicos	0.0	4.0	9, 10	11		OPT	OPTATIVA	0		#f0ffff	#000000
6753	971	9	Dise??o del Producto	0.0	4.0	9, 10	12		OPT	OPTATIVA	0		#f0ffff	#000000
7419	2812	16	Desarrollo de Emprendedores	2.0	3.0	8	6			ROSA	1		#f0ffff	#000000
6755	3078	9	Dise??o Sustentable	0.0	4.0	9, 10	14		OPT	OPTATIVA	0		#f0ffff	#000000
6758	3071	9	Ingenier??a Automotriz I	0.0	4.0	9, 10	17		OPT	OPTATIVA	0		#f0ffff	#000000
6759	3080	9	Ingenier??a Automotriz II	0.0	4.0	9, 10	18		OPT	OPTATIVA	0		#f0ffff	#000000
6785	3085	9	Temas Selectos de Ingenier??a de Mec??nica I	0.0	4.0	9, 10	44		OPT	OPTATIVA	0		#f0ffff	#000000
6083	1593	3	Estad??stica para Ingenier??a El??ctrica Electr??nica	0.0	2.0	5	1			AMARILLO	1		#ffff00	#000000
6193	1121	4	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6397	1433	6	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
117	1322	1	Cinem??tica y Din??mica	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6786	3086	9	Temas Selectos de Ingenier??a de Mec??nica II	0.0	4.0	9, 10	45		OPT	OPTATIVA	0		#f0ffff	#000000
6787	3087	9	Temas Selectos de Ingenier??a en Materiales y Manufactura I	0.0	4.0	9, 10	46		OPT	OPTATIVA	0		#f0ffff	#000000
6788	3088	9	Temas Selectos de Ingenier??a en Materiales y Manufactura II	0.0	4.0	9, 10	47		OPT	OPTATIVA	0		#f0ffff	#000000
6850	1789	10	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	7	1		OPT	CSYH	0		#f0ffff	#000000
6851	1790	10	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	7	2		OPT	CSYH	0		#f0ffff	#000000
6765	549	9	M??quinas El??ctricas	2.0	4.0	9, 10	24	L	OPT	OPTATIVA	0		#f0ffff	#000000
6766	2925	9	Materiales III	2.0	4.0	9, 10	25	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6779	2135	9	Rob??tica	2.0	4.0	9, 10	38	L	OPT	OPTATIVA	0		#f0ffff	#000000
6780	3064	9	Sistemas de Manufactura Flexible	2.0	3.0	9, 10	39	L	OPT	OPTATIVA	0		#f0ffff	#000000
6782	2926	9	Sistemas Termoenerg??ticos	2.0	2.0	9, 10	41	L	OPT	OPTATIVA	0		#f0ffff	#000000
6860	970	10	Comercializaci??n de Crudo y Gas Natural	0.0	4.0	8, 9 y 10	3		OPT	OPTATIVA	0		#f0ffff	#000000
6861	977	10	Fracturamiento Hidr??ulico	0.0	4.0	8, 9 y 10	4		OPT	OPTATIVA	0		#f0ffff	#000000
6863	979	10	M??todos Geof??sicos para Petroleros	0.0	4.0	8, 9 y 10	6		OPT	OPTATIVA	0		#f0ffff	#000000
6864	2011	10	Perforaci??n de Pozos en Aguas Profundas	0.0	4.0	8, 9 y 10	7		OPT	OPTATIVA	0		#f0ffff	#000000
6865	2013	10	Registros en Pozo Entubado	0.0	4.0	8, 9 y 10	8		OPT	OPTATIVA	0		#f0ffff	#000000
7173	2204	13	Movilidad V	0.0	3.0	10	5		OPT	MOVILIDAD	0		#f0ffff	#000000
7174	2205	13	Movilidad VI	0.0	3.0	10	6		OPT	MOVILIDAD	0		#f0ffff	#000000
7175	2206	13	Movilidad VII	0.0	4.0	10	7		OPT	MOVILIDAD	0		#f0ffff	#000000
7176	2207	13	Movilidad VIII	0.0	4.0	10	8		OPT	MOVILIDAD	0		#f0ffff	#000000
7177	2208	13	Movilidad IX	0.0	4.0	10	9		OPT	MOVILIDAD	0		#f0ffff	#000000
7178	2209	13	Movilidad X	0.0	4.0	10	10		OPT	MOVILIDAD	0		#f0ffff	#000000
7179	2210	13	Movilidad XI	2.0	4.0	10	11		OPT	MOVILIDAD	0		#f0ffff	#000000
6498	1120	7	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6499	1121	7	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6503	1220	7	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6504	1221	7	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6505	1228	7	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6508	1325	7	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6509	1321	7	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6514	1436	7	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6572	1120	8	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6573	1121	8	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6577	1220	8	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6578	1221	8	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6579	1223	8	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
6583	1325	8	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6584	1321	8	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6585	1322	8	Cinem??tica y Din??mica	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6589	1436	8	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
7241	3008	14	Energ??as Renovables	0.0	4.0	10	3		OPT	CALIDAD_AIRE	0		#f0ffff	#000000
7243	1624	14	Energ??a e Impacto Ambiental	0.0	4.0	10	2		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
7244	3052	14	Energ??as Renovables en Edificios	0.0	3.0	10	3		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
7245	3015	14	Introducci??n al An??lisis Probabil??stico de Seguridad	0.0	4.0	10	4		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
7251	1580	14	Geolog??a Ambiental	0.0	4.0	10	1		OPT	CALIDAD_AGUA_OPT	0		#f0ffff	#000000
7458	2209	16	Movilidad X	0.0	4.0		0		OPT		0		#f0ffff	#000000
7459	2210	16	Movilidad XI	2.0	4.0		0		OPT		0		#f0ffff	#000000
6343	2300	5	Fundamentos de Radioelectr??nica Espacial	0.0	3.0	8, 9	1		OPT	ESPACIALES	0		#f0ffff	#000000
7121	1786	13	Planeaci??n y Control de Recursos Hospitalarios	2.0	4.0	8	9	L	OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7122	1780	13	Ac??stica y ??ptica	2.0	4.0	5	1	L	OPT	BIOMECANICA_CB	0		#f0ffff	#000000
7123	2079	13	Biomateriales	2.0	4.0	6, 7, 8	1	L	OPT	BIOMECANICA_CI	0		#f0ffff	#000000
7125	1996	13	Circuitos Digitales	2.0	4.0	6, 7, 8	3	L	OPT	BIOMECANICA_CI	0		#f0ffff	#000000
7150	1698	13	Mediciones Clinicas	2.0	4.0	8	8	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
7151	1699	13	Sistemas de Medici??n y Transductores M??dicos	2.0	4.0	8	9	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
7146	1781	13	Biotermofluidos I	2.0	4.0	8	4	L+	OPT	LOGISTICA_SB	0		#f0ffff	#000000
6339	1793	5	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	9	6		OPT	CSYH	0		#f0ffff	#000000
7059	1221	13	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
7060	1223	13	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
7064	1325	13	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
7065	1321	13	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
7066	1322	13	Cinem??tica y Din??mica	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
7070	1433	13	An??lisis Num??rico	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
7072	1436	13	Probabilidad	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
7078	1569	13	Estad??stica	0.0	4.0	5	3			AMARILLO	1		#ffff00	#000000
6594	1569	8	Estad??stica	0.0	4.0	5	1			AMARILLO	1		#ffff00	#000000
58	1121	1	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
62	1220	1	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
63	1221	1	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
7233	0	14	Obligatoria del campo de profundizaci??n	0.0	3.0	10	1		OPT_1	AZUL	1		#0000ff	#f0ffff
7234	0	14	Obligatoria del campo de profundizaci??n	0.0	3.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6340	1794	5	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	9	7		OPT	CSYH	0		#f0ffff	#000000
6342	1796	5	Taller Sociohumanistico- Liderazgo	2.0	0.0	9	9		OPT	CSYH	0		#f0ffff	#000000
7116	1782	13	Dise??o de Elementos de M??quinas	0.0	4.0	8	4		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7118	1955	13	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	8	6		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7119	339	13	Investigaci??n de Operaciones I	0.0	4.0	8	7		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7120	952	13	Optimizaci??n de Operaciones	0.0	4.0	8	8		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7140	339	13	Investigaci??n de Operaciones I	0.0	4.0	6, 7, 8	3		OPT	LOGISTICA_CI	0		#f0ffff	#000000
7141	952	13	Optimizaci??n de Operaciones	0.0	4.0	6, 7, 8	4		OPT	LOGISTICA_CI	0		#f0ffff	#000000
6558	2087	7	Geoqu??mica Org??nica	0.0	4.0	10	7		OPT	INGENIERIA_A	0		#f0ffff	#000000
6559	2088	7	Geotecnia de Excavaci??n	0.0	4.0	10	8		OPT	INGENIERIA_A	0		#f0ffff	#000000
6560	2089	7	Hidrogeolog??a de Contaminantes	0.0	4.0	10	9		OPT	INGENIERIA_A	0		#f0ffff	#000000
6561	2090	7	Mec??nica de Suelos para Ciencias de la Tierra	0.0	4.0	10	10		OPT	INGENIERIA_A	0		#f0ffff	#000000
6562	2091	7	Modelaci??n Num??rica en la Ingenier??a Geol??gica	0.0	4.0	10	11		OPT	INGENIERIA_A	0		#f0ffff	#000000
6563	2092	7	Modelaci??n Num??rica y Computacional de Acu??feros	0.0	4.0	10	12		OPT	INGENIERIA_A	0		#f0ffff	#000000
6566	2095	7	Riesgo Geol??gico	0.0	4.0	10	15		OPT	INGENIERIA_A	0		#f0ffff	#000000
6568	2096	7	Temas Selectos de Ingenier??a Geol??gica I	0.0	4.0	10	17		OPT	INGENIERIA_A	0		#f0ffff	#000000
6569	2097	7	Temas Selectos de Ingenier??a Geol??gica II	0.0	4.0	10	18		OPT	INGENIERIA_A	0		#f0ffff	#000000
6570	2098	7	Temas Selectos de Ingenier??a Geol??gica III	0.0	4.0	10	19		OPT	INGENIERIA_A	0		#f0ffff	#000000
7148	1782	13	Dise??o de Elementos de M??quinas	0.0	4.0	8	6		OPT	LOGISTICA_SB	0		#f0ffff	#000000
7156	1898	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos V	0.0	4.0	10	5		OPT	BIOMEDICOS	0		#f0ffff	#000000
7157	1899	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos VI	0.0	4.0	10	6		OPT	BIOMEDICOS	0		#f0ffff	#000000
7158	1977	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos VII	0.0	4.0	10	7		OPT	BIOMEDICOS	0		#f0ffff	#000000
7163	1791	13	M??xico Naci??n Multicultural	0.0	2.0	4, 5, 6	4		OPT	CSYH	0		#f0ffff	#000000
7164	1792	13	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	4, 5, 6	5		OPT	CSYH	0		#f0ffff	#000000
7165	1793	13	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	4, 5, 6	6		OPT	CSYH	0		#f0ffff	#000000
7166	1794	13	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	4, 5, 6	7		OPT	CSYH	0		#f0ffff	#000000
7167	1795	13	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 5, 6	8		OPT	CSYH	0		#f0ffff	#000000
7168	1796	13	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 5, 6	9		OPT	CSYH	0		#f0ffff	#000000
7252	3053	14	Ingenier??a para el Manejo Sustentable del Agua en Edificios	0.0	3.0	10	2		OPT	CALIDAD_AGUA_OPT	0		#f0ffff	#000000
64	1223	1	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
115	1325	1	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
7253	2092	14	Modelaci??n Num??rica y Computacional de Acu??feros	0.0	4.0	10	3		OPT	CALIDAD_AGUA_OPT	0		#f0ffff	#000000
7257	2809	14	Gesti??n Ambiental en Miner??a	0.0	4.0	10*	2		OPT	MANEJO	0		#f0ffff	#000000
7260	1580	14	Geolog??a Ambiental	0.0	4.0	10	2		OPT	MANEJO_OPT	0		#f0ffff	#000000
7261	2092	14	Modelaci??n Num??rica y Computacional de Acu??feros	0.0	4.0	10	3		OPT	MANEJO_OPT	0		#f0ffff	#000000
7266	1580	14	Geolog??a Ambiental	0.0	4.0	10	3		OPT	GESTION	0		#f0ffff	#000000
7269	2092	14	Modelaci??n Num??rica y Computacional de Acu??feros	0.0	4.0	10	3		OPT	GESTION_OPT	0		#f0ffff	#000000
7242	1199	14	Adaptaci??n al Cambio Clim??tico	0.0	3.0	10	1		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
7264	2978	14	Aprovechamiento y Valorizaci??n de Residuos	0.0	3.0	9*	1		OPT	GESTION	0		#f0ffff	#000000
7239	2970	14	Control de la Combusti??n	0.0	3.0	9*	1		OPT	CALIDAD_AIRE	0		#f0ffff	#000000
6106	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	9	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6110	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	10	1		OPT_1	AZUL	1		#0000ff	#f0ffff
6111	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6112	0	3	Asignatura del Campo de Profundizaci??n	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
7467	1267	16	Lanzadores	0.0	0.0		0		OPT		0		#f0ffff	#000000
6055	1088	2	Hidrogeolog??a	3.0	3.0	9, 10	4	L, P	OPT	OPTATIVA	0		#f0ffff	#000000
7279	2983	14	Temas Especiales de Planeaci??n y Gesti??n Ambiental	0.0	3.0	10	6		OPT	PLANEACION_OPT	0		#f0ffff	#000000
7240	2971	14	Cambio Clim??tico	0.0	3.0	10*	2		OPT	CALIDAD_AIRE	0		#f0ffff	#000000
7249	2974	14	Tratamiento de Aguas Residuales Industriales	0.0	3.0	10*	2		OPT	CALIDAD_AGUA	0		#f0ffff	#000000
7275	3078	14	Dise??o Sustentable	0.0	4.0	10	1		OPT	PLANEACION_OPT	0		#f0ffff	#000000
7276	3051	14	Edificios Sustentables	0.0	3.0	10	2		OPT	PLANEACION_OPT	0		#f0ffff	#000000
7277	3015	14	Introducci??n al An??lisis Probabil??stico de Seguridad	0.0	4.0	10	4		OPT	PLANEACION_OPT	0		#f0ffff	#000000
7278	3055	14	Proyectos Sustentables de Energ??a	0.0	3.0	10	5		OPT	PLANEACION_OPT	0		#f0ffff	#000000
7281	2602	14	Contabilidad Financiera y Costos	0.0	4.0	7	2		OPT	OPTATIVA	0		#f0ffff	#000000
7282	1057	14	Desarrollo de Habilidades Directivas	2.0	2.0	7	3		OPT	OPTATIVA	0		#f0ffff	#000000
7284	2805	14	Instalaciones Industriales	0.0	4.0	7	5		OPT	OPTATIVA	0		#f0ffff	#000000
7285	3025	14	Introduccion a la Gerencia de Proyectos	0.0	3.0	7	6		OPT	OPTATIVA	0		#f0ffff	#000000
7286	3026	14	Preparaci??n de Concursos de Obra P??lbica	0.0	3.0	7	7		OPT	OPTATIVA	0		#f0ffff	#000000
7287	1918	14	Procesos Industriales	0.0	4.0	7	8		OPT	OPTATIVA	0		#f0ffff	#000000
7288	3022	14	Relaciones Laborales y Organizacionales	0.0	4.0	7	9		OPT	OPTATIVA	0		#f0ffff	#000000
7289	3028	14	Supervision de Obras	0.0	3.0	7	10		OPT	OPTATIVA	0		#f0ffff	#000000
7290	1795	14	Taller Sociohumanistico- Creatividad	2.0	0.0	7	11		OPT	OPTATIVA	0		#f0ffff	#000000
7291	1796	14	Taller Sociohumanistico- Liderazgo	2.0	0.0	7	12		OPT	OPTATIVA	0		#f0ffff	#000000
7292	1789	14	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	3	1		OPT	CSYH	0		#f0ffff	#000000
6128	2904	3	Fisiolog??a de los Sistemas Homeost??ticos	2.0	3.0	9	1	L+	OPT	BIOMEDICA	0		#f0ffff	#000000
6129	2905	3	Fisiolog??a del Sistema End??crino y Nervioso	2.0	3.0	9	2	L+	OPT	BIOMEDICA	0		#f0ffff	#000000
6130	692	3	Fundamentos de Instrumentaci??n Biom??dica	2.0	3.0	9	3	L+	OPT	BIOMEDICA	0		#f0ffff	#000000
6132	930	3	Aplicaciones de Optoelectr??nica en Medicina	2.0	3.0	10	1	L+	OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6135	754	3	Procesamiento Digital de Im??genes M??dicas: Imagenolog??a	2.0	3.0	10	4	L+	OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6136	3001	3	Proyecto de Investigaci??n de Ingenier??a El??ctrica	0.0	3.0	9, 10	5	***	OPT	BIOMEDICA_OPT	0		#f0ffff	#000000
6142	2900	3	M??quinas El??ctricas II	2.0	4.0	9	1	L+	OPT	ELECTRICA	0		#f0ffff	#000000
6143	2907	3	M??quinas El??ctricas III	2.0	3.0	10	2	L	OPT	ELECTRICA	0		#f0ffff	#000000
6144	636	3	Protecci??n de Sistema El??ctricos	2.0	4.0	10	3	L+	OPT	ELECTRICA	0		#f0ffff	#000000
6146	2908	3	Sistemas El??ctricos de Potencia II	2.0	4.0	9	5	L+	OPT	ELECTRICA	0		#f0ffff	#000000
6155	678	3	Control Autom??tico Industrial	2.0	3.0	10	1	L+	OPT	CYR_OPT	0		#f0ffff	#000000
6156	1093	3	Control de Sistemas No Lineales	2.0	3.0	10	2	L+	OPT	CYR_OPT	0		#f0ffff	#000000
6157	1095	3	Control Distribuido e Integraci??n Scada	2.0	3.0	10	3	L+	OPT	CYR_OPT	0		#f0ffff	#000000
6158	693	3	Instrumentaci??n Virtual	2.0	3.0	10	4	L+	OPT	CYR_OPT	0		#f0ffff	#000000
6159	3001	3	Proyecto de Investigaci??n de Ingenier??a El??ctrica	0.0	3.0	9, 10	5	***	OPT	CYR_OPT	0		#f0ffff	#000000
6160	2902	3	Sistemas Embebidos en Instrumentaci??n y Control	2.0	3.0	10	6	L+	OPT	CYR_OPT	0		#f0ffff	#000000
6171	3016	3	Planeaci??n de Sistemas de Generaci??n El??ctrica	1.0	3.0	9, 10	9	L	OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6172	3017	3	Planeaci??n e Instalaci??n de Sistemas de Bioenerg??a	2.0	3.0	9, 10	10	L	OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6173	3001	3	Proyecto de Investigaci??n de Ingenier??a El??ctrica	0.0	3.0	9, 10	11	***	OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6178	3020	3	Creatividad e Innovaci??n	2.0	2.0	3	2	P	OPT	COMPETENCIAS	0		#f0ffff	#000000
6181	3021	3	Metodolog??as para la Planeaci??n	2.0	2.0	3	5	P	OPT	COMPETENCIAS	0		#f0ffff	#000000
6180	1059	3	Desarrollo Empresarial	2.0	2.0	3	4	P	OPT	COMPETENCIAS	0		#f0ffff	#000000
7293	1790	14	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	3	2		OPT	CSYH	0		#f0ffff	#000000
7294	1055	14	Literatura Hispanoamericana Contemporanea	0.0	3.0	3	3		OPT	CSYH	0		#f0ffff	#000000
7295	1791	14	M??xico Naci??n Multicultural	0.0	2.0	3	4		OPT	CSYH	0		#f0ffff	#000000
7296	1792	14	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	3	5		OPT	CSYH	0		#f0ffff	#000000
7402	1618	16	Dispositivos y Circuitos Electr??nicos	2.0	4.0	6	1	L+		CYAN	1		#00ffff	#000000
7403	1686	16	Sistemas de Comunicaciones	2.0	3.0	6	2			CYAN	1		#00ffff	#000000
7404	508	16	Modelado de Sistmas F??sicos	0.0	4.0	6	3			CYAN	1		#00ffff	#000000
6017	1572	2	Geolog??a Estructural	0.0	4.0	5	5	P		CYAN	1		#00ffff	#000000
6095	1617	3	Dise??o Digital	2.0	4.0	7	2	L+		CYAN	1		#00ffff	#000000
6081	1443	3	An??lisis de Sistemas y Se??ales	2.0	4.0	4	4	L+		CYAN	1		#00ffff	#000000
6586	1540	8	Mec??nica de S??lidos	0.0	4.0	3	4			CYAN	1		#00ffff	#000000
6813	1441	10	Mec??nica de Fluidos	0.0	4.0	4	3			CYAN	1		#00ffff	#000000
6549	0	7	Optativa	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6474	1580	6	Geolog??a Ambiental	0.0	4.0	7, 10	1		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6475	2095	6	Riesgo Geol??gico	0.0	4.0	7, 10	2		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6476	1026	6	Percepci??n Remota Aplicada	0.0	4.0	7, 10	3		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6477	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
7297	1793	14	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	3	6		OPT	CSYH	0		#f0ffff	#000000
7298	1794	14	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	3	7		OPT	CSYH	0		#f0ffff	#000000
7259	3092	14	Dep??sitos de Residuos Mineros	0.0	4.0	10	1		OPT	MANEJO_OPT	0		#f0ffff	#000000
7267	3092	14	Dep??sitos de Residuos Mineros	0.0	4.0	10	1		OPT	GESTION_OPT	0		#f0ffff	#000000
7274	1199	14	Adaptaci??n al Cambio Clim??tico	0.0	3.0	10	3		OPT	PLANEACION	0		#f0ffff	#000000
7268	1243	14	Gesti??n de residuos de Alto Impacto	0.0	3.0	10	2		OPT	GESTION_OPT	0		#f0ffff	#000000
7258	2976	14	Manejo de Residuos Biool??gicos-Infecciosos	0.0	3.0	10	3		OPT	MANEJO	0		#f0ffff	#000000
7256	2975	14	Modelaci??n Hidrogeoqu??mica en Medio Acuoso	0.0	3.0	9*	1		OPT	MANEJO	0		#f0ffff	#000000
6005	54	2	Dibujo	2.0	2.0	3	5			NARANJA	1		#ff8c00	#000000
7270	1242	14	Seguridad Industrial y Protecci??n Ambiental	0.0	3.0	10	4		OPT	GESTION_OPT	0		#f0ffff	#000000
7262	1242	14	Seguridad Industrial y Protecci??n Ambiental	0.0	3.0	10	4		OPT	MANEJO_OPT	0		#f0ffff	#000000
7254	1236	14	Tecnolog??as Avanzadas para el Tratamiento de Agua	0.0	3.0	10	4		OPT	CALIDAD_AGUA_OPT	0		#f0ffff	#000000
7271	1244	14	Temas Especiales de Gesti??n Integral de Residuos S??lidos	0.0	3.0	10	5		OPT	GESTION_OPT	0		#f0ffff	#000000
7255	1239	14	Temas Especiales de Ingenier??a de la Calidad del Agua	0.0	3.0	10	5		OPT	CALIDAD_AGUA_OPT	0		#f0ffff	#000000
7247	1235	14	Temas Especiales de Ingenier??a de la Calidad del Aire	0.0	3.0	10	6		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
6196	1122	4	Fundamentos de Programaci??n	2.0	4.0	1	5	L		NARANJA	1		#ff8c00	#000000
7381	1245	16	Medio Ambiente Aeroespacial	0.0	2.0	2	4			CYAN	1		#00ffff	#000000
6819	1588	10	Bombeo y Compresi??n de Hidrocarburos	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
6820	1589	10	Principios de Mec??nica de Yacimientos	0.0	4.0	5	4			CYAN	1		#00ffff	#000000
6826	1981	10	Comportamiento de Yacimientos	0.0	6.0	6	4			CYAN	1		#00ffff	#000000
7206	1886	14	Ecolog??a e Ingenier??a	0.0	3.0	5	4			CYAN	1		#00ffff	#000000
7218	2711	14	Gesti??n Integral de Residuos S??lidos Urbanos	0.0	3.0	7	4			CYAN	1		#00ffff	#000000
7209	2612	14	Hidrolog??a Superficial	0.0	4.5	6	1			CYAN	1		#00ffff	#000000
7204	2505	14	Transferencia de Masa y Energ??a	0.0	3.0	5	2			CYAN	1		#00ffff	#000000
6634	1792	8	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	3, 6	5		OPT	CSYH	0		#f0ffff	#000000
6635	1793	8	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	3, 6	6		OPT	CSYH	0		#f0ffff	#000000
6962	1790	11	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	6, 8	2		OPT	CSYH	0		#f0ffff	#000000
6963	1055	11	Literatura Hispanoamericana Contemporanea	0.0	3.0	6, 8	3		OPT	CSYH	0		#f0ffff	#000000
6965	1792	11	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	6, 8	5		OPT	CSYH	0		#f0ffff	#000000
6966	1793	11	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	6, 8	6		OPT	CSYH	0		#f0ffff	#000000
6967	1794	11	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	6, 8	7		OPT	CSYH	0		#f0ffff	#000000
6968	1795	11	Taller Sociohumanistico- Creatividad	2.0	0.0	4	8		OPT	CSYH	0		#f0ffff	#000000
6969	1796	11	Taller Sociohumanistico- Liderazgo	2.0	0.0	4	9		OPT	CSYH	0		#f0ffff	#000000
6638	1796	8	Taller Sociohumanistico- Liderazgo	2.0	0.0	3, 6	9		OPT	CSYH	0		#f0ffff	#000000
6645	1782	8	Dise??o de Elementos de M??quinas	0.0	4.0	7, 9, 10	1		OPT	PRODUCCION	0		#f0ffff	#000000
6646	971	8	Dise??o del Producto	0.0	4.0	7, 9, 10	2		OPT	PRODUCCION	0		#f0ffff	#000000
6649	3071	8	Ingenier??a Automotriz I	0.0	4.0	7, 9, 10	5		OPT	PRODUCCION	0		#f0ffff	#000000
6654	3075	8	Temas Selectos de Producci??n y Manufactura	2.0	2.0	7, 9, 10	10		OPT	PRODUCCION	0		#f0ffff	#000000
7377	1124	16	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	6			VERDE	1		#32cd32	#000000
7376	1144	16	Introducci??n a Ingenier??a Aeroespacial	0.0	2.0	1	5			NARANJA	1		#ff8c00	#000000
7382	1122	16	Fundamentos de Programaci??n	2.0	4.0	2	5	L		NARANJA	1		#ff8c00	#000000
7383	1219	16	Dibujo Industrial	4.0	2.0	2	6	L		NARANJA	1		#ff8c00	#000000
6207	1323	4	Programaci??n Orientada a Objetos	2.0	4.0	3	6	L		NARANJA	1		#ff8c00	#000000
7210	2613	14	Transporte y Dispersi??n de Contaminantes Atmosf??ricos	0.0	3.0	6	2			CYAN	1		#00ffff	#000000
6550	0	7	Optativa	0.0	4.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
7411	2713	16	Aerodin??mica	0.0	3.0	7	4			AZUL	1		#0000ff	#f0ffff
7412	2715	16	Vibraciones	0.0	3.0	7	5			AZUL	1		#0000ff	#f0ffff
6334	1789	5	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	9	1		OPT	CSYH	0		#f0ffff	#000000
6484	1030	6	Sismolog??a de Movimientos Fuertes	0.0	4.0	7, 10	3		OPT	SISMOLOGIA	0		#f0ffff	#000000
6488	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	SISMOLOGIA	0		#f0ffff	#000000
6489	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	SISMOLOGIA	0		#f0ffff	#000000
6491	2943	6	Mec??nica de Suelos para Ciencias de la Tierra	0.0	4.0	7, 10	2		OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6492	1032	6	Sismolog??a Aplicada a la Geotecnia	0.0	4.0	7, 10	3		OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6493	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6496	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6497	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6459	2089	6	Hidrogeolog??a de Contaminantes	0.0	4.0	7, 10	2		OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
7406	1540	16	Mec??nica de S??lidos	0.0	4.0	6	5			CYAN	1		#00ffff	#000000
7408	1617	16	Dise??o Digital	2.0	4.0	7	1	L+		CYAN	1		#00ffff	#000000
7409	2714	16	Fundamentos de Sistemsa Electr??nicos Anal??gicos	2.0	4.0	7	2	L+		CYAN	1		#00ffff	#000000
7410	551	16	Control Autom??tico	0.0	4.0	7	3			CYAN	1		#00ffff	#000000
6553	2082	7	Exploraci??n Geot??rmica	0.0	4.0	10	2		OPT	INGENIERIA_A	0		#f0ffff	#000000
7399	462	16	Mec??nica de Fluidos I	2.0	4.0	5	4	L+		CYAN	1		#00ffff	#000000
7400	1570	16	Ingenier??a de Materiales	2.0	4.0	5	5	L+		CYAN	1		#00ffff	#000000
7389	1222	16	Cultura y Comunicaci??n	2.0	0.0	3	6			VERDE	1		#32cd32	#000000
6554	2083	7	Exploraci??n y Evaluaci??n de Aguas Subterraneas	0.0	4.0	10	3		OPT	INGENIERIA_A	0		#f0ffff	#000000
6555	2084	7	Geolog??a Marina	0.0	4.0	10	4		OPT	INGENIERIA_A	0		#f0ffff	#000000
6556	2085	7	Geolog??a Urbana	0.0	4.0	10	5		OPT	INGENIERIA_A	0		#f0ffff	#000000
6557	2086	7	Geomec??nica	0.0	4.0	10	6		OPT	INGENIERIA_A	0		#f0ffff	#000000
6723	971	9	Dise??o del Producto	0.0	4.0	10	2		OPT	DISENO	0		#f0ffff	#000000
6730	547	9	M??quinas de Desplazamiento Positivo	0.0	4.0	9	1		OPT	TERMOFLUIDOS	0		#f0ffff	#000000
6731	900	9	Turbomaquinaria	0.0	4.0	9	2		OPT	TERMOFLUIDOS	0		#f0ffff	#000000
6662	2200	8	Movilidad I	0.0	2.0	7, 9, 10	1		OPT	MOVILIDAD	0		#f0ffff	#000000
6663	2201	8	Movilidad II	0.0	3.0	7, 9, 10	2		OPT	MOVILIDAD	0		#f0ffff	#000000
6664	2202	8	Movilidad II	0.0	3.0	7, 9, 10	3		OPT	MOVILIDAD	0		#f0ffff	#000000
6665	2203	8	Movilidad IV	0.0	3.0	7, 9, 10	4		OPT	MOVILIDAD	0		#f0ffff	#000000
6666	2204	8	Movilidad V	0.0	3.0	7, 9, 10	5		OPT	MOVILIDAD	0		#f0ffff	#000000
7395	0	16	Optativa de Ciencias Sociales y Humanidades	0.0	3.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
7398	1477	16	Derecho A??reo Y Espacial	0.0	3.0	5	3			NARANJA	1		#ff8c00	#000000
6733	1789	9	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	4	1		OPT	CSYH	0		#f0ffff	#000000
6734	1790	9	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	4	2		OPT	CSYH	0		#f0ffff	#000000
6735	1055	9	Literatura Hispanoamericana Contemporanea	0.0	3.0	4	3		OPT	CSYH	0		#f0ffff	#000000
6925	2035	11	Control Aplicado	2.0	3.0	10	3	L	OPT	OPTATIVA	0		#f0ffff	#000000
7401	1413	16	Introducci??n a la Econom??a	0.0	4.0	5	6			ROSA	1		#f0ffff	#000000
6667	2205	8	Movilidad VI	0.0	3.0	7, 9, 10	6		OPT	MOVILIDAD	0		#f0ffff	#000000
6187	1792	3	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	3	5		OPT	CSYH	0		#f0ffff	#000000
5989	2700	1	Temas Especiales de Sistemas I	0.0	3.0	10	6		OPT	SPYT	0		#f0ffff	#000000
5940	1789	1	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	4, 8	1		OPT	CSYH	0	ciencia_tecnologia_y_sociedad.pdf	#f0ffff	#000000
5941	1790	1	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	4, 8	2		OPT	CSYH	0		#f0ffff	#000000
5942	1055	1	Literatura Hispanoamericana Contemporanea	0.0	3.0	4, 8	3		OPT	CSYH	0		#f0ffff	#000000
5943	1791	1	M??xico Naci??n Multicultural	0.0	2.0	4, 8	4		OPT	CSYH	0		#f0ffff	#000000
5944	1792	1	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	4, 8	5		OPT	CSYH	0		#f0ffff	#000000
5945	1793	1	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	4, 8	6		OPT	CSYH	0		#f0ffff	#000000
5946	1794	1	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	4, 8	7		OPT	CSYH	0		#f0ffff	#000000
5947	1795	1	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 8	8		OPT	CSYH	0		#f0ffff	#000000
5948	1796	1	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 8	9		OPT	CSYH	0		#f0ffff	#000000
7405	2614	16	Ingenier??a T??rmica	0.0	4.0	6	4			CYAN	1		#00ffff	#000000
6295	1138	5	Principios Pr??cticos de Electr??nica	4.0	2.0	3	6	L		CYAN	1		#00ffff	#000000
7407	1052	16	??tica Profesional	2.0	2.0	6	6			VERDE	1		#32cd32	#000000
6305	1463	5	Teor??a de Circuitos	2.0	3.0	5	3	L+		CYAN	1		#00ffff	#000000
7415	1860	16	Transferencia de Calor	2.0	4.0	8	2	L+		CYAN	1		#00ffff	#000000
7414	2830	16	Fundamenteos de Antenas y Sistemas de Radiotranceptores	2.0	3.0	8	1	L+		AZUL	1		#0000ff	#f0ffff
7416	2811	16	Avi??nica I	0.0	3.0	8	3			AZUL	1		#0000ff	#f0ffff
7417	2831	16	Sistemas de Repulisi??n	0.0	3.0	8	4			AZUL	1		#0000ff	#f0ffff
7418	2828	16	Estructuras Aeroespaciales	0.0	3.0	8	5			AZUL	1		#0000ff	#f0ffff
7420	2980	16	Modelado Basado en Dise??o	6.0	2.0	9	1	L		AZUL	1		#0000ff	#f0ffff
7421	0	16	Obligatoria de Elecci??n del Campo de Profundizaci??n	0.0	4.0	9	2		OPT_1	AZUL	1		#0000ff	#f0ffff
7422	0	16	Obligatoria de Elecci??n del Campo de Profundizaci??n	0.0	4.0	9	3		OPT_1	AZUL	1		#0000ff	#f0ffff
7413	1955	16	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	7	6			ROSA	1		#f0ffff	#000000
6736	1791	9	M??xico Naci??n Multicultural	0.0	2.0	4	4		OPT	CSYH	0		#f0ffff	#000000
6737	1792	9	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	4	5		OPT	CSYH	0		#f0ffff	#000000
6738	1793	9	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	4	6		OPT	CSYH	0		#f0ffff	#000000
6739	1794	9	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	4	7		OPT	CSYH	0		#f0ffff	#000000
6740	1795	9	Taller Sociohumanistico- Creatividad	2.0	0.0	4	8		OPT	CSYH	0		#f0ffff	#000000
6741	1796	9	Taller Sociohumanistico- Liderazgo	2.0	0.0	4	9		OPT	CSYH	0		#f0ffff	#000000
6742	2802	9	Ahorro de Energ??a	0.0	4.0	9, 10	1		OPT	OPTATIVA	0		#f0ffff	#000000
6443	1323	6	Programaci??n Orientada a Objetos	2.0	4.0	7	1	L	OPT	OPTATIVA	0		#f0ffff	#000000
6444	1227	6	Estructura de Datos y Algoritmos I	2.0	4.0	6, 7	2	L	OPT	OPTATIVA	0		#f0ffff	#000000
6445	1691	6	Electr??nica B??sica	2.0	4.0	6, 7	3	L	OPT	OPTATIVA	0		#f0ffff	#000000
6447	1448	6	Geodesia I	2.0	4.0	6, 7	5	P	OPT	OPTATIVA	0		#f0ffff	#000000
6448	1647	6	Sistemas de Posicionamiento Global	2.0	3.0	7	6	P	OPT	OPTATIVA	0		#f0ffff	#000000
6450	1871	6	Geolog??a Aplicada a la Miner??a	3.0	3.0	7, 10	1	P	OPT	E_MINERA	0		#f0ffff	#000000
6455	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	E_MINERA	0		#f0ffff	#000000
6458	1088	6	Hidrogeolog??a	3.0	3.0	7, 10	1	L, P	OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6463	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6749	997	9	Deterioro de Materiales	0.0	4.0	9, 10	8		OPT	OPTATIVA	0		#f0ffff	#000000
6849	0	10	Optativa	0.0	4.0	10	6		OPT_1	AZUL	1		#0000ff	#f0ffff
7423	0	16	Obligatoria de Elecci??n del Campo de Profundizaci??n	0.0	4.0	9	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6761	354	9	Ingenier??a de Procesos Industriales	0.0	4.0	9, 10	20		OPT	OPTATIVA	0		#f0ffff	#000000
6762	999	9	Ingenier??a de Superficies	0.0	4.0	9, 10	21		OPT	OPTATIVA	0		#f0ffff	#000000
6764	547	9	M??quinas de Desplazamiento Positivo	0.0	4.0	9, 10	23		OPT	OPTATIVA	0		#f0ffff	#000000
6767	2200	9	Movilidad I	0.0	2.0	9, 10	26		OPT	OPTATIVA	0		#f0ffff	#000000
6768	2201	9	Movilidad II	0.0	3.0	9, 10	27		OPT	OPTATIVA	0		#f0ffff	#000000
6769	2202	9	Movilidad II	0.0	3.0	9, 10	28		OPT	OPTATIVA	0		#f0ffff	#000000
6770	2203	9	Movilidad IV	0.0	3.0	9, 10	29		OPT	OPTATIVA	0		#f0ffff	#000000
6771	2204	9	Movilidad V	0.0	3.0	9, 10	30		OPT	OPTATIVA	0		#f0ffff	#000000
6772	2205	9	Movilidad VI	0.0	3.0	9, 10	31		OPT	OPTATIVA	0		#f0ffff	#000000
6773	2206	9	Movilidad VII	0.0	4.0	9, 10	32		OPT	OPTATIVA	0		#f0ffff	#000000
6774	2207	9	Movilidad VIII	0.0	4.0	9, 10	33		OPT	OPTATIVA	0		#f0ffff	#000000
6775	2208	9	Movilidad IX	0.0	4.0	9, 10	34		OPT	OPTATIVA	0		#f0ffff	#000000
6776	2209	9	Movilidad X	0.0	4.0	9, 10	35		OPT	OPTATIVA	0		#f0ffff	#000000
6777	2210	9	Movilidad XI	2.0	4.0	9, 10	36		OPT	OPTATIVA	0		#f0ffff	#000000
6778	3081	9	Plantas Termoel??ctricas y Sistemas de Cogeneraci??n	0.0	4.0	9, 10	37		OPT	OPTATIVA	0		#f0ffff	#000000
6781	2137	9	Sistemas de Mejoramiento Ambiental	0.0	4.0	9, 10	40		OPT	OPTATIVA	0		#f0ffff	#000000
6783	3083	9	Temas Selectos de Ingenier??a de Dise??o I	0.0	4.0	9, 10	42		OPT	OPTATIVA	0		#f0ffff	#000000
6784	3084	9	Temas Selectos de Ingenier??a de Dise??o II	0.0	4.0	9, 10	43		OPT	OPTATIVA	0		#f0ffff	#000000
6607	339	8	Investigaci??n de Operaciones I	0.0	4.0	7	2			CYAN	1		#00ffff	#000000
6608	1734	8	Ingenier??a Econ??mica	0.0	4.0	7	3			CYAN	1		#00ffff	#000000
6612	2805	8	Instalaciones Industriales	0.0	4.0	8	1			CYAN	1		#00ffff	#000000
6306	1459	5	Dispositivos de Radiofrecuencia	2.0	4.0	5	4	L+		CYAN	1		#00ffff	#000000
6842	1052	10	??tica Profesional	2.0	2.0	9	5			VERDE	1		#32cd32	#000000
6307	1462	5	Fundamentos de Sistemas de Comunicaciones	2.0	4.0	5	5	L+		CYAN	1		#00ffff	#000000
6309	1682	5	Medios de Transmisi??n	2.0	3.0	6	1	L+		CYAN	1		#00ffff	#000000
6312	1467	5	Circuitos de Radiofrecuencia	2.0	4.0	6	4	L+		CYAN	1		#00ffff	#000000
6313	109	5	Comunicaciones Digitales	2.0	4.0	6	5	L+		CYAN	1		#00ffff	#000000
6315	1773	5	Antenas	2.0	3.0	7	1	L+		CYAN	1		#00ffff	#000000
6318	2706	5	Transmisores y Receptores	2.0	4.0	7	4	L+		CYAN	1		#00ffff	#000000
6319	1774	5	Dispositivos de Microondas I	2.0	3.0	7	5	L+		CYAN	1		#00ffff	#000000
5993	424	2	Geolog??a General	3.0	3.0	1	3	L, P		CYAN	1		#00ffff	#000000
6086	1592	3	An??lisis de Circuitos El??ctricos	2.0	4.0	5	4	L+		CYAN	1		#00ffff	#000000
6698	2500	9	Materiales II	2.0	4.0	5	4	L+		CYAN	1		#00ffff	#000000
6523	1574	7	Mineralog??a ??ptica	3.0	3.0	5	4	L		CYAN	1		#00ffff	#000000
6524	1572	7	Geolog??a Estructural	0.0	4.0	5	5	P		CYAN	1		#00ffff	#000000
6527	1575	7	Geolog??a de Campo y Cartograf??a	2.0	2.0	6	2	P+, P		CYAN	1		#00ffff	#000000
6528	1677	7	Petrolog??a Metam??rfica	3.0	3.0	6	3	L, P		CYAN	1		#00ffff	#000000
6529	1690	7	Petrolog??a ??gnea	3.0	3.0	6	4	L, P		CYAN	1		#00ffff	#000000
6532	1850	7	Metalogenia	3.0	3.0	7	1	P		CYAN	1		#00ffff	#000000
7424	0	16	Obligatoria de Elecci??n del Campo de Profundizaci??n	0.0	3.0	9	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6466	1066	6	Geolog??a del Petr??leo	3.0	3.0	7, 10	1	P	OPT	E_PETROLERA	0		#f0ffff	#000000
6471	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	E_PETROLERA	0		#f0ffff	#000000
6718	572	9	Automatizaci??n Industrial	4.0	2.0	9	1	L	OPT	AUTOMATIZACION	0		#f0ffff	#000000
6719	1996	9	Circuitos Digitales	2.0	4.0	9	2	L	OPT	AUTOMATIZACION	0		#f0ffff	#000000
6479	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6534	1579	7	Tect??nica	0.0	4.0	7	3	P		CYAN	1		#00ffff	#000000
6535	1729	7	Petrolog??a Sedimentaria	3.0	3.0	7	4	L, P		CYAN	1		#00ffff	#000000
6399	1137	6	Petrolog??a	2.0	2.0	4	4	L		CYAN	1		#00ffff	#000000
6400	1468	6	Introducci??n a la Geof??sica	2.0	4.0	4	5	P		CYAN	1		#00ffff	#000000
6401	824	6	Sedimentolog??a	2.0	2.0	4	6	L, P		CYAN	1		#00ffff	#000000
6406	1727	6	Estratigraf??a	0.0	4.0	5	5	P		CYAN	1		#00ffff	#000000
6410	1572	6	Geolog??a Estructural	0.0	4.0	6	3	P		CYAN	1		#00ffff	#000000
6894	1409	11	Termofluidos	2.0	4.0	5	5	L+		CYAN	1		#00ffff	#000000
6895	1691	11	Electr??nica B??sica	2.0	4.0	6	1	L		CYAN	1		#00ffff	#000000
6896	507	11	Ingenier??a de Manufactura	2.0	4.0	6	2	L+		CYAN	1		#00ffff	#000000
6613	1747	8	Investigaci??n de Operaciones II	0.0	4.0	8	2			CYAN	1		#00ffff	#000000
118	275	1	Estructuras Isost??ticas	0.0	4.5	3	4			CYAN	1		#00ffff	#000000
127	1555	1	Fundamentos de Mec??nica del Medio Continuo	0.0	3.0	4	7			CYAN	1		#00ffff	#000000
6407	0	6	Optativa de Ciencias Sociales y Humanidades	2.0	2.0	5	6		OPT_1	VERDE	1		#32cd32	#000000
6219	1645	4	Dise??o Digital Moderno	2.0	4.0	6	2	L+		CYAN	1		#00ffff	#000000
6901	1996	11	Circuitos Digitales	2.0	4.0	7	1	L		CYAN	1		#00ffff	#000000
7005	1449	12	Procesos Fotogram??tricos	3.0	4.5	4	5	L		CYAN	1		#00ffff	#000000
7007	1750	12	Cartograf??a	2.0	3.0	5	2	L		CYAN	1		#00ffff	#000000
7009	1533	12	Geodesia II	3.0	4.5	5	4	P		CYAN	1		#00ffff	#000000
6511	1329	7	Paleontolog??a General	2.0	2.0	3	4	L		CYAN	1		#00ffff	#000000
6512	1327	7	Geolog??a F??sica	3.0	3.0	3	5	L, P		CYAN	1		#00ffff	#000000
7020	1689	12	Percepci??n Remota I	3.0	3.0	7	4	L		CYAN	1		#00ffff	#000000
6593	1570	8	Ingenier??a de Materiales	2.0	4.0	4	5	L+		CYAN	1		#00ffff	#000000
6692	2400	9	Materiales I	2.0	4.0	4	4	L+		CYAN	1		#00ffff	#000000
7211	2608	14	Conductos a Presi??n y a Superfic??e Libre	3.0	3.0	6	3	L		CYAN	1		#00ffff	#000000
6803	424	10	Geolog??a General	3.0	3.0	2	4	L, P		CYAN	1		#00ffff	#000000
6808	1331	10	Geolog??a y Yacimientos de Fluidos	0.0	4.0	3	4	P		CYAN	1		#00ffff	#000000
6814	1442	10	Propiedades de los Fluidos Petroleros	2.0	4.0	4	4	L		CYAN	1		#00ffff	#000000
6815	1440	10	Geolog??a y Geoqu??mica del Petroleo	3.0	3.0	4	5	P		CYAN	1		#00ffff	#000000
7217	2712	14	Operaciones y Procesos Unitarios	3.0	3.0	7	3	L		CYAN	1		#00ffff	#000000
6412	0	6	Optativa de Otras Asignaturas Convenientes	0.0	4.0	6	5		OPT_1	NARANJA	1		#ff8c00	#000000
7192	2211	14	F??sica Experimental	2.0	4.0	3	2	L		AMARILLO	1		#ffff00	#000000
7198	1437	14	Termodin??mica	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6282	1123	5	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6720	972	9	Dise??o y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+	OPT	AUTOMATIZACION	0		#f0ffff	#000000
6487	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	SISMOLOGIA	0		#f0ffff	#000000
6490	1061	6	Geolog??a Aplicada a la Ingenier??a Civil	3.0	3.0	7, 10	1	P	OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6495	1583	6	Mec??nica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6462	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6470	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	E_PETROLERA	0		#f0ffff	#000000
6478	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6486	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	SISMOLOGIA	0		#f0ffff	#000000
6494	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_3	0		#f0ffff	#000000
6552	2081	7	Equipos y Herramientas de Perforaci??n de Pozos	0.0	4.0	10	1	P+	OPT	INGENIERIA_A	0		#f0ffff	#000000
6852	1791	10	M??xico Naci??n Multicultural	0.0	2.0	7	3		OPT	CSYH	0		#f0ffff	#000000
6853	1792	10	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	7	4		OPT	CSYH	0		#f0ffff	#000000
6854	1793	10	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	7	5		OPT	CSYH	0		#f0ffff	#000000
6855	1794	10	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	7	6		OPT	CSYH	0		#f0ffff	#000000
6856	1795	10	Taller Sociohumanistico- Creatividad	2.0	0.0	7	7		OPT	CSYH	0		#f0ffff	#000000
6857	1796	10	Taller Sociohumanistico- Liderazgo	2.0	0.0	7	8		OPT	CSYH	0		#f0ffff	#000000
6858	956	10	Aseguramiento de Flujo	0.0	4.0	8, 9 y 10	1		OPT	OPTATIVA	0		#f0ffff	#000000
6859	960	10	Caracterizaci??n Est??tica y Din??mica de Yacimientos Naturalmente Fracturados	0.0	4.0	8, 9 y 10	2		OPT	OPTATIVA	0		#f0ffff	#000000
7215	1088	14	Hidrogeolog??a	3.0	3.0	7	1	L, P		AZUL	1		#0000ff	#f0ffff
6721	549	9	M??quinas El??ctricas	2.0	4.0	10	4	L	OPT	AUTOMATIZACION	0		#f0ffff	#000000
6722	992	9	Ingenier??a de Dise??o	2.0	4.0	9	1	L+	OPT	DISENO	0		#f0ffff	#000000
6724	972	9	Dise??o y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+	OPT	DISENO	0		#f0ffff	#000000
6725	2923	9	Ingenier??a Asistida por Computadora	2.0	4.0	9	4	L+	OPT	DISENO	0		#f0ffff	#000000
6726	2920	9	Direcci??n de Poyectos	2.0	2.0	10	5	P	OPT	DISENO	0		#f0ffff	#000000
6900	0	11	Optativa(s) de Cinecias Sociales y Humanidades	2.0	2.0	6	6		OPT_1	VERDE	1		#32cd32	#000000
7180	1127	14	Programaci??n B??sica	2.0	2.0	1	2	P		NARANJA	1		#ff8c00	#000000
7183	1128	14	Representaciones Gr??ficas	4.0	2.0	1	5	P		NARANJA	1		#ff8c00	#000000
6727	2924	9	Manufactura III	2.0	4.0	9	1	L+	OPT	MANUFACTURA	0		#f0ffff	#000000
6728	2925	9	Materiales III	2.0	4.0	9	2	L+	OPT	MANUFACTURA	0		#f0ffff	#000000
6729	126	9	Dise??o de Herramental	2.0	4.0	9	3	L+	OPT	MANUFACTURA	0		#f0ffff	#000000
6732	2926	9	Sistemas Termoenerg??ticos	2.0	2.0	9	3	L	OPT	TERMOFLUIDOS	0		#f0ffff	#000000
6743	21	9	Aire Acondicionado y Refrigeraci??n	2.0	4.0	9, 10	2	L	OPT	OPTATIVA	0		#f0ffff	#000000
6744	2922	9	An??lisis por Elementos Finitos	2.0	4.0	9, 10	3	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6745	1198	9	Automatizaci??n Avanzada	4.0	2.0	9, 10	4	L	OPT	OPTATIVA	0		#f0ffff	#000000
6746	572	9	Automatizaci??n Industrial	4.0	2.0	9, 10	5	L	OPT	OPTATIVA	0		#f0ffff	#000000
6747	1009	9	Biomec??nica	2.0	4.0	9, 10	6	L	OPT	OPTATIVA	0		#f0ffff	#000000
6748	1996	9	Circuitos Digitales	2.0	4.0	9, 10	7	L	OPT	OPTATIVA	0		#f0ffff	#000000
6750	2920	9	Direcci??n de Poyectos	2.0	2.0	9, 10	9	P	OPT	OPTATIVA	0		#f0ffff	#000000
6751	126	9	Dise??o de Herramental	2.0	4.0	9, 10	10	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6754	563	9	Dise??o Mecatr??nico	2.0	4.0	9, 10	13	L	OPT	OPTATIVA	0		#f0ffff	#000000
6756	972	9	Dise??o y Manufactura Asistidos por Computadora	2.0	4.0	9, 10	15	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6757	2923	9	Ingenier??a Asistida por Computadora	2.0	4.0	9, 10	16	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6760	992	9	Ingenier??a de Dise??o	2.0	4.0	9, 10	19	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6763	2924	9	Manufactura III	2.0	4.0	9, 10	22	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6516	824	7	Sedimentolog??a	2.0	2.0	4	6	L, P		CYAN	1		#00ffff	#000000
6517	487	7	Mineralog??a	3.0	3.0	4	4	L		CYAN	1		#00ffff	#000000
6518	1438	7	T??cnicas Geol??gicas de Campo	2.0	2.0	4	5	P+		CYAN	1		#00ffff	#000000
6866	2067	10	Simulaci??n Num??rica de Yacimientos Naturalmente Fracturados	0.0	4.0	9 y 10	9		OPT	OPTATIVA	0		#f0ffff	#000000
7438	1059	16	Desarrollo Empresarial	2.0	2.0		0	P	OPT		0		#f0ffff	#000000
6703	2603	9	Manufactura II	2.0	4.0	6	4	L+		CYAN	1		#00ffff	#000000
6890	1550	11	An??lisis de Circuitos	2.0	4.0	5	1	L		CYAN	1		#00ffff	#000000
6891	1570	11	Ingenier??a de Materiales	2.0	4.0	5	2	L+		CYAN	1		#00ffff	#000000
6999	1334	12	Fotogrametr??a	3.0	4.5	3	5	L		CYAN	1		#00ffff	#000000
7004	1448	12	Geodesia I	2.0	4.0	4	4	P		CYAN	1		#00ffff	#000000
7076	1550	13	An??lisis de Circuitos	2.0	4.0	5	1	L		CYAN	1		#00ffff	#000000
6199	1228	4	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6202	1436	4	Probabilidad	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6203	1321	4	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6204	1325	4	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
6208	1445	4	Fundamentos de Estad??stica	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
7426	0	16	Optativa de Elecci??n del Campo de Profundizaci??n	0.0	3.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
7026	1752	12	Percepci??n Remota II	3.0	3.0	8	4	L		CYAN	1		#00ffff	#000000
7018	1548	12	C??lculo de Ajustes	0.0	3.0	7	2			CYAN	1		#00ffff	#000000
7083	192	13	Estudio del Trabajo	2.0	4.0	6	2			CYAN	1		#00ffff	#000000
7084	1540	13	Mec??nica de S??lidos	0.0	4.0	6	3			CYAN	1		#00ffff	#000000
7088	1807	13	Instrumentaci??n y Control	0.0	4.0	7	1			CYAN	1		#00ffff	#000000
6892	1540	11	Mec??nica de S??lidos	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
6985	1110	12	Pr??cticas de Topograf??a I	5.0	0.0	1	4			CYAN	1		#00ffff	#000000
6986	1114	12	Topograf??a I	0.0	4.5	1	5			CYAN	1		#00ffff	#000000
6993	1217	12	Pr??cticas de Topograf??a II	5.0	0.0	2	6			CYAN	1		#00ffff	#000000
7427	0	16	Optativa de Elecci??n del Campo de Profundizaci??n	0.0	3.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
7428	0	16	Optativa de Elecci??n del Campo de Profundizaci??n	0.0	3.0	10	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6955	3087	11	Temas Selectos de Ingenier??a en Materiales y Manufactura I	0.0	4.0	8, 10	33		OPT	OPTATIVA	0		#f0ffff	#000000
6660	1115	8	Sistemas de Comercializaci??n	2.0	2.0	7, 9, 10	16	P	OPT	DIRECCION	0		#f0ffff	#000000
6661	3077	8	Temas Selectos de Direcci??n y Creaci??n de Empresas	2.0	2.0	7, 9, 10	17	P	OPT	DIRECCION	0		#f0ffff	#000000
7169	2200	13	Movilidad I	0.0	2.0	10	1		OPT	MOVILIDAD	0		#f0ffff	#000000
7170	2201	13	Movilidad II	0.0	3.0	10	2		OPT	MOVILIDAD	0		#f0ffff	#000000
7171	2202	13	Movilidad II	0.0	3.0	10	3		OPT	MOVILIDAD	0		#f0ffff	#000000
7172	2203	13	Movilidad IV	0.0	3.0	10	4		OPT	MOVILIDAD	0		#f0ffff	#000000
7077	1570	13	Ingenier??a de Materiales	2.0	4.0	5	2	L+		CYAN	1		#00ffff	#000000
7082	1691	13	Electr??nica B??sica	2.0	4.0	6	1	L		CYAN	1		#00ffff	#000000
7207	1887	14	Ingenier??a de los Procesos Biol??gicos	2.0	2.0	5	5	L		CYAN	1		#00ffff	#000000
6596	1409	8	Termofluidos	2.0	4.0	5	3	L+		CYAN	1		#00ffff	#000000
6601	1550	8	An??lisis de Circuitos	2.0	4.0	6	2	L		CYAN	1		#00ffff	#000000
6606	1691	8	Electr??nica B??sica	2.0	4.0	7	1	L		CYAN	1		#00ffff	#000000
6623	2921	8	Simulaci??n	2.0	2.0	10	1	L		CYAN	1		#00ffff	#000000
6592	192	8	Estudio del Trabajo	2.0	4.0	4	4	L		CYAN	1		#00ffff	#000000
6695	1550	9	An??lisis de Circuitos	2.0	4.0	5	1	L		CYAN	1		#00ffff	#000000
124	465	1	Mec??nica de Materiales I	0.0	4.5	4	4	L		CYAN	1		#00ffff	#000000
6697	1433	9	An??lisis Num??rico	0.0	4.0	5	3			AMARILLO	1		#ffff00	#000000
6990	1223	12	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
6381	1125	6	Qu??mica de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6382	2211	6	F??sica Experimental	2.0	4.0	1	4	L		AMARILLO	1		#ffff00	#000000
6280	1120	5	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6075	0	3	Optativa de Competencias Profesionales	2.0	2.0	3	4		OPT_1	NARANJA	1		#ff8c00	#000000
6673	1120	9	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6520	1569	7	Estad??stica	0.0	4.0	5	1			AMARILLO	1		#ffff00	#000000
6543	1585	7	Geolog??a Hist??rica	0.0	4.0	9	2			CYAN	1		#00ffff	#000000
6827	1980	10	Caracterizaci??n Est??tica de Yacimientos	0.0	4.0	6	5			CYAN	1		#00ffff	#000000
6284	1122	5	Fundamentos de Programaci??n	2.0	4.0	1	5	L		NARANJA	1		#ff8c00	#000000
7029	0	12	Se deber??n cursar al menos 24 cr??ditos optativos, correspondientes a un m??nimo de 3 asignaturas OPTATIVA	24.0	0.0	9	1		OPT_1	AZUL	4		#0000ff	#f0ffff
6540	1580	7	Geolog??a Ambiental	0.0	4.0	8	4			AZUL	1		#0000ff	#f0ffff
6330	2963	5	Sistema de Radiocomunicaciones II	0.0	4.0	9	4			AZUL	1		#0000ff	#f0ffff
6389	1222	6	Cultura y Comunicaci??n	2.0	0.0	2	6			VERDE	1		#32cd32	#000000
6519	1413	7	Introducci??n a la Econom??a	0.0	4.0	4	6			VERDE	1		#32cd32	#000000
6525	1055	7	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	6			VERDE	1		#32cd32	#000000
6531	1790	7	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	6	6			VERDE	1		#32cd32	#000000
6610	0	8	Optativa	2.0	2.0	7	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6545	1584	7	Geoestad??stica	0.0	4.0	9	4			AZUL	1		#0000ff	#f0ffff
7128	1787	13	Amplificaci??n y Filtrado de Se??ales M??dicas	2.0	4.0	8	1	L	OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7115	2103	13	Calidad	0.0	4.0	8	3		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
7142	1786	13	Planeaci??n y Control de Recursos Hospitalarios	2.0	4.0	6, 7, 8	5	L	OPT	LOGISTICA_CI	0		#f0ffff	#000000
7143	1787	13	Amplificaci??n y Filtrado de Se??ales M??dicas	2.0	4.0	8	1	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
7144	1695	13	An??lisis de Biose??ales	2.0	4.0	8	2	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
7145	2079	13	Biomateriales	2.0	4.0	8	3	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
7147	1996	13	Circuitos Digitales	2.0	4.0	8	5	L	OPT	LOGISTICA_SB	0		#f0ffff	#000000
128	387	1	Ingenier??a de Sistemas I	0.0	3.0	5	1	L		CYAN	1		#00ffff	#000000
129	1402	1	Hidr??ulica Basica	0.0	4.5	5	2	L		CYAN	1		#00ffff	#000000
130	1595	1	Ingeniria Ambiental I	0.0	3.0	5	3	L		CYAN	1		#00ffff	#000000
131	466	1	Mac??nica de Materiales II	0.0	4.5	5	4	L		CYAN	1		#00ffff	#000000
134	1731	1	Ingenier??a de Sistemas II	0.0	4.5	6	1	L		CYAN	1		#00ffff	#000000
6914	972	11	Dise??o y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+		AZUL	1		#0000ff	#f0ffff
6915	2135	11	Rob??tica	2.0	4.0	9	4	L		AZUL	1		#0000ff	#f0ffff
6544	1586	7	Proyectos de Ingenier??a Geol??gica	0.0	4.0	9	3			AZUL	1		#0000ff	#f0ffff
135	1730	1	Hidr??ulica de Maquinas y Transitorios	0.0	4.5	6	2	L		CYAN	1		#00ffff	#000000
138	1601	1	Comportamiento de Suelos	0.0	4.5	6	5	L		CYAN	1		#00ffff	#000000
141	1507	1	Hidr??ulica de Canales	0.0	4.5	7	2	L		CYAN	1		#00ffff	#000000
143	1714	1	Mec??nica de Suelos	0.0	4.5	7	4	L		CYAN	1		#00ffff	#000000
7425	2080	16	Recursos y Necesidades de M??xico	0.0	4.0	9	6			VERDE	1		#32cd32	#000000
7091	0	13	Obligatoria de elecci??n de Ciencias de la ISBM	0.0	4.0	7	4		OBL_ELEC	CYAN	1		#00ffff	#000000
6605	0	8	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	6	6		OPT_1	VERDE	1		#32cd32	#000000
7429	0	16	Optativa de Ciencias Econ??mico Administrativas	0.0	3.0	10	6		OPT_1	ROSA	1		#f0ffff	#000000
7430	1055	16	Literatura Hispanoamericana Contemporanea	0.0	3.0		0		OPT		0		#f0ffff	#000000
7431	1789	16	Ciencia, Tecnolog??a y Sociedad	0.0	2.0		0		OPT		0		#f0ffff	#000000
7432	1790	16	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0		0		OPT		0		#f0ffff	#000000
7433	1791	16	M??xico Naci??n Multicultural	0.0	2.0		0		OPT		0		#f0ffff	#000000
7126	1782	13	Dise??o de Elementos de M??quinas	0.0	4.0	6, 7, 8	4		OPT	BIOMECANICA_CI	0		#f0ffff	#000000
7127	1783	13	Ergonom??a	0.0	4.0	6, 7, 8	5		OPT	BIOMECANICA_CI	0		#f0ffff	#000000
7130	2103	13	Calidad	0.0	4.0	8	3		OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7131	1955	13	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	8	4		OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7132	339	13	Investigaci??n de Operaciones I	0.0	4.0	8	5		OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7134	952	13	Optimizaci??n de Operaciones	0.0	4.0	8	7		OPT	BIOMECANICA_SB	0		#f0ffff	#000000
7137	1784	13	Estad??stica Aplicada	0.0	4.0	5	1		OPT	LOGISTICA_CB	0		#f0ffff	#000000
7138	2103	13	Calidad	0.0	4.0	6, 7, 8	1		OPT	LOGISTICA_CI	0		#f0ffff	#000000
7139	1955	13	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	6, 7, 8	2		OPT	LOGISTICA_CI	0		#f0ffff	#000000
6522	1727	7	Estratigraf??a	0.0	4.0	5	3	P		CYAN	1		#00ffff	#000000
6500	1125	7	Qu??mica de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6510	1328	7	F??sica	2.0	4.0	3	3	L		AMARILLO	1		#ffff00	#000000
6806	1321	10	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6197	1220	4	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6198	1221	4	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
7434	1792	16	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0		0		OPT		0		#f0ffff	#000000
7435	1793	16	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0		0		OPT		0		#f0ffff	#000000
7114	1781	13	Biotermofluidos I	2.0	4.0	8	2	L+	OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
6862	978	10	Metrolog??a Aplicada a la Medici??n de Caudal o Vol??men de Hidrocarburos Gaseosos y L??quidos	0.0	4.0	8, 9 y 10	5	P	OPT	OPTATIVA	0		#f0ffff	#000000
6867	2069	10	Yacimientos de Gas de Baja Permeabilidad	0.0	4.0	9 y 10	10	P	OPT	OPTATIVA	0		#f0ffff	#000000
6923	1780	11	Ac??stica y ??ptica	2.0	4.0	8, 10	1	L	OPT	OPTATIVA	0		#f0ffff	#000000
6924	1198	11	Automatizaci??n Avanzada	4.0	2.0	10	2	L	OPT	OPTATIVA	0		#f0ffff	#000000
6926	2909	11	Control Avanzado	2.0	4.0	10	4	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6927	2806	11	Din??mica de Maquinaria	2.0	4.0	8, 10	5	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6929	992	11	Ingenier??a de Dise??o	2.0	4.0	8, 10	7	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6933	3064	11	Sistemas de Manufactura Flexible	2.0	3.0	8, 10	11	L	OPT	OPTATIVA	0		#f0ffff	#000000
6935	619	11	Planeaci??n y Control de la Producci??n	2.0	4.0	8, 10	13	L	OPT	OPTATIVA	0		#f0ffff	#000000
6939	1057	11	Desarrollo de Habilidades Directivas	2.0	2.0	8, 10	17	P	OPT	OPTATIVA	0		#f0ffff	#000000
6940	18	11	Administraci??n	2.0	2.0	8, 10	18	P	OPT	OPTATIVA	0		#f0ffff	#000000
6941	1115	11	Sistemas de Comercializaci??n	2.0	2.0	8, 10	19	P	OPT	OPTATIVA	0		#f0ffff	#000000
6942	2920	11	Direcci??n de Poyectos	2.0	2.0	8, 10	20	P	OPT	OPTATIVA	0		#f0ffff	#000000
7436	1794	16	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0		0		OPT		0		#f0ffff	#000000
7437	992	16	Ingenier??a de Dise??o	2.0	4.0		0	L+	OPT		0		#f0ffff	#000000
7439	1281	16	Administraci??n de la Innovaci??n Tecnol??gica	0.0	0.0		0		OPT		0		#f0ffff	#000000
7440	1282	16	Formaci??n de Directivos	0.0	0.0		0		OPT		0		#f0ffff	#000000
7441	1283	16	Desarrollo de Proyectos Tecnol??gicos	0.0	0.0		0		OPT		0		#f0ffff	#000000
6943	1074	11	Legislaci??n Industrial	2.0	2.0	8, 10	21	P	OPT	OPTATIVA	0		#f0ffff	#000000
7191	1569	14	Estad??stica	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
7193	1321	14	C??lculo Vectorial	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
7194	1325	14	Ecuaciones Diferenciales	0.0	4.0	3	4			AMARILLO	1		#ffff00	#000000
7199	1228	14	Mec??nica	0.0	6.0	4	3			AMARILLO	1		#ffff00	#000000
7200	1433	14	An??lisis Num??rico	0.0	4.0	4	4			AMARILLO	1		#ffff00	#000000
7202	1474	14	Biolog??a	0.0	3.0	4	6			AMARILLO	1		#ffff00	#000000
6226	434	4	Compiladores	0.0	4.0	7	4			AZUL	1		#0000ff	#f0ffff
6322	0	5	Asignatura de Campo de Profundizaci??n	0.0	3.0	8	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6327	0	5	Asignatura de Campo de Profundizaci??n	0.0	3.0	9	1		OPT_1	AZUL	1		#0000ff	#f0ffff
6328	0	5	Asignatura de Campo de Profundizaci??n	0.0	3.0	9	2		OPT_1	AZUL	1		#0000ff	#f0ffff
7442	1284	16	Emprendimiento E Incubadoras de Tecnolog??a	0.0	0.0		0		OPT		0		#f0ffff	#000000
7443	1285	16	Fundamentos de Inteligencia Emocional	0.0	0.0		0		OPT		0		#f0ffff	#000000
7444	1286	16	Propiedad Intelectual	0.0	0.0		0		OPT		0		#f0ffff	#000000
7445	1287	16	Relaciones y Comercio Internacional	0.0	0.0		0		OPT		0		#f0ffff	#000000
7446	1288	16	Temas Selectos de Ciencias Econ??mico Administrativas	0.0	0.0		0		OPT		0		#f0ffff	#000000
7447	1795	16	Taller Sociohumanistico- Creatividad	2.0	0.0		0		OPT		0		#f0ffff	#000000
7448	1796	16	Taller Sociohumanistico- Liderazgo	2.0	0.0		0		OPT		0		#f0ffff	#000000
7124	1781	13	Biotermofluidos I	2.0	4.0	6, 7, 8	2	L+	OPT	BIOMECANICA_CI	0		#f0ffff	#000000
6699	901	9	Termodin??mica Aplicada	0.0	4.0	5	5			CYAN	1		#00ffff	#000000
6700	2501	9	Sistemas de Conversion de Energ??a T??rmica	2.0	0.0	5	6			CYAN	1		#00ffff	#000000
6880	1325	11	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1		#ffff00	#000000
7449	2200	16	Movilidad I	0.0	2.0		0		OPT		0		#f0ffff	#000000
7450	2201	16	Movilidad II	0.0	3.0		0		OPT		0		#f0ffff	#000000
6953	3007	11	Temas Selectos de Ingenier??a Biom??dica	0.0	3.0	8, 10	31		OPT	OPTATIVA	0		#f0ffff	#000000
7451	2202	16	Movilidad III	0.0	3.0		0		OPT		0		#f0ffff	#000000
7452	2203	16	Movilidad IV	0.0	3.0		0		OPT		0		#f0ffff	#000000
7453	2204	16	Movilidad V	0.0	3.0		0		OPT		0		#f0ffff	#000000
7454	2205	16	Movilidad VI	0.0	3.0		0		OPT		0		#f0ffff	#000000
7455	2206	16	Movilidad VII	0.0	4.0		0		OPT		0		#f0ffff	#000000
7149	1783	13	Ergonom??a	0.0	4.0	8	7		OPT	LOGISTICA_SB	0		#f0ffff	#000000
7152	1797	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos I	0.0	4.0	10	1		OPT	BIOMEDICOS	0		#f0ffff	#000000
7153	1798	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos II	0.0	4.0	10	2		OPT	BIOMEDICOS	0		#f0ffff	#000000
7154	1799	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos III	0.0	4.0	10	3		OPT	BIOMEDICOS	0		#f0ffff	#000000
7155	1897	13	Temas Selectos de Ingenier??a en Sistemas Biom??dicos IV	0.0	4.0	10	4		OPT	BIOMEDICOS	0		#f0ffff	#000000
6956	3088	11	Temas Selectos de Ingenier??a en Materiales y Manufactura II	0.0	4.0	8, 10	34		OPT	OPTATIVA	0		#f0ffff	#000000
6957	3089	11	Temas Selectos de Mecatr??nica I	0.0	4.0	8, 10	35		OPT	OPTATIVA	0		#f0ffff	#000000
6958	3090	11	Temas Selectos de Mecatr??nica II	0.0	4.0	8, 10	36		OPT	OPTATIVA	0		#f0ffff	#000000
6959	2077	11	Temas Selectos de Termofluidos I	0.0	4.0	8, 10	37		OPT	OPTATIVA	0		#f0ffff	#000000
7456	2207	16	Movilidad VIII	0.0	4.0		0		OPT		0		#f0ffff	#000000
6960	2078	11	Temas Selectos de Termofluidos II	0.0	4.0	8, 10	38		OPT	OPTATIVA	0		#f0ffff	#000000
6454	1578	6	Sistemas de Informaci??n Geogr??fica	3.0	3.0	7, 10	5	L	OPT	E_MINERA	0		#f0ffff	#000000
6653	3064	8	Sistemas de Manufactura Flexible	2.0	3.0	7, 9, 10	9	L	OPT	PRODUCCION	0		#f0ffff	#000000
6655	18	8	Administraci??n	2.0	2.0	7, 9, 10	11	P	OPT	DIRECCION	0		#f0ffff	#000000
7457	2208	16	Movilidad IX	0.0	4.0		0		OPT		0		#f0ffff	#000000
6656	1057	8	Desarrollo de Habilidades Directivas	2.0	2.0	7, 9, 10	12	P	OPT	DIRECCION	0		#f0ffff	#000000
6944	1009	11	Biomec??nica	2.0	4.0	8, 10	22	L	OPT	OPTATIVA	0		#f0ffff	#000000
6946	462	11	Mec??nica de Fluidos I	2.0	4.0	8, 10	24	L+	OPT	OPTATIVA	0		#f0ffff	#000000
6947	2926	11	Sistemas Termoenerg??ticos	2.0	2.0	8, 10	25	L	OPT	OPTATIVA	0		#f0ffff	#000000
6948	3077	11	Temas Selectos de Direcci??n y Creaci??n de Empresas	2.0	2.0	8, 10	26	P	OPT	OPTATIVA	0		#f0ffff	#000000
6954	3068	11	Temas Selectos de la Gesti??n de la Cadena de Suministros	2.0	2.0	8, 10	32	P	OPT	OPTATIVA	0		#f0ffff	#000000
6657	1059	8	Desarrollo Empresarial	2.0	2.0	7, 9, 10	13	P	OPT	DIRECCION	0		#f0ffff	#000000
6658	3076	8	Finanzas Corporativas	2.0	2.0	7, 9, 10	14	P	OPT	DIRECCION	0		#f0ffff	#000000
6659	1074	8	Legislaci??n Industrial	2.0	2.0	7, 9, 10	15	P	OPT	DIRECCION	0		#f0ffff	#000000
7219	0	14	Optativa de Otras Asignaturas Convenientes	0.0	3.0	7	5		OPT_1	NARANJA	1		#ff8c00	#000000
6283	1130	5	Fundamentos de F??sica	2.0	2.0	1	4	L		AMARILLO	1		#ffff00	#000000
6297	1451	5	Fundamentos de ??ptica	2.0	2.0	4	1	L		AMARILLO	1		#ffff00	#000000
6298	1414	5	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6000	1125	2	Qu??mica de Ciencias de la Tierra	2.0	4.0	2	5	L+		AMARILLO	1		#ffff00	#000000
6003	1330	2	Fundamentos de Termodin??mica y Electromagnetismo	2.0	4.0	3	3	L+		AMARILLO	1		#ffff00	#000000
6546	1052	7	??tica Profesional	2.0	2.0	9	5			VERDE	1		#32cd32	#000000
6230	1672	4	Microcomputadoras	2.0	3.0	8	2	L+		AZUL	1		#0000ff	#f0ffff
6231	1590	4	Computaci??n Gr??fica e Interacci??n Humano-Computadora	2.0	4.0	8	3	L+		AZUL	1		#0000ff	#f0ffff
6233	1598	4	Redes de Datos Seguras	2.0	6.0	8	5	L+		AZUL	1		#0000ff	#f0ffff
7460	1246	16	Aeroelasticidad	0.0	0.0		0		OPT		0		#f0ffff	#000000
7461	1247	16	Avi??nica II	0.0	0.0		0		OPT		0		#f0ffff	#000000
7462	1248	16	Hidr??ulica Industrial	0.0	0.0		0		OPT		0		#f0ffff	#000000
7463	1249	16	Procesos de Manufactura de Aviones	0.0	0.0		0		OPT		0		#f0ffff	#000000
7464	1250	16	Pruebas de Certificaci??n Aeron??utica	0.0	0.0		0		OPT		0		#f0ffff	#000000
7465	1265	16	An??lisis y Dise??o de una Misi??n Espacial	0.0	0.0		0		OPT		0		#f0ffff	#000000
7466	1266	16	Elementos de Dise??o de Sistemas Espaciales	0.0	0.0		0		OPT		0		#f0ffff	#000000
7468	1268	16	Mec??nica Orbital	0.0	0.0		0		OPT		0		#f0ffff	#000000
7469	1269	16	Pruebas de Certificaci??n Espacial	0.0	0.0		0		OPT		0		#f0ffff	#000000
7470	1937	16	Microprocesadores y Microcontroladores	2.0	4.0		0	L+	OPT		0		#f0ffff	#000000
7471	991	16	An??lisis por Elementos Finitos	0.0	0.0		0		OPT		0		#f0ffff	#000000
7472	1251	16	Aeronaves No Tripuladas	0.0	0.0		0		OPT		0		#f0ffff	#000000
7159	1978	13	Temas Selectos del ??rea M??dico Biol??gica	0.0	4.0	10	1		OPT	MB	0		#f0ffff	#000000
7160	1789	13	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	4, 5, 6	1		OPT	CSYH	0		#f0ffff	#000000
7161	1790	13	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	4, 5, 6	2		OPT	CSYH	0		#f0ffff	#000000
7162	1055	13	Literatura Hispanoamericana Contemporanea	0.0	3.0	4, 5, 6	3		OPT	CSYH	0		#f0ffff	#000000
7085	0	13	Obligatoria de elecci??n de Ciencias de la ISBM	0.0	4.0	6	4		OBL_ELEC	CYAN	1		#00ffff	#000000
7022	0	12	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	7	6		OPT_1	VERDE	1		#32cd32	#000000
6909	1059	11	Desarrollo Empresarial	2.0	2.0	8	4	P		NARANJA	1		#ff8c00	#000000
6064	1123	3	Qu??mica	2.0	4.0	1	3	L+		AMARILLO	1		#ffff00	#000000
6072	1437	3	Termodin??mica	2.0	4.0	3	1	L+		AMARILLO	1		#ffff00	#000000
6079	1414	3	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1		#ffff00	#000000
6084	1780	3	Ac??stica y ??ptica	2.0	4.0	5	2	L		AMARILLO	1		#ffff00	#000000
6192	1120	4	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
7016	1652	12	Sistemas de Informaci??n Geogr??fica I	3.0	3.0	6	5	L		AZUL	1		#0000ff	#f0ffff
6912	563	11	Dise??o Mecatr??nico	2.0	4.0	9	1	L		AZUL	1		#0000ff	#f0ffff
6913	572	11	Automatizaci??n Industrial	4.0	2.0	9	2	L		AZUL	1		#0000ff	#f0ffff
6716	0	9	Obligatorias de Elecci??n del Campo de Profundizaci??n y/u OPTATIVA**	40.0	0.0	9	1		OPT_1	AZUL	6		#0000ff	#f0ffff
6717	0	9	Obligatorias de Elecci??n del Campo de Profundizaci??n y/u OPTATIVA**	40.0	0.0	10	1		OPT_1	AZUL	6		#0000ff	#f0ffff
7473	1252	16	Comunicaci??nes de Aeronaves	0.0	0.0		0		OPT		0		#f0ffff	#000000
7474	1253	16	Din??mica de Aeronaves con Propulsi??n Axial o Rotatoria	0.0	0.0		0		OPT		0		#f0ffff	#000000
7475	1254	16	Din??mica de Fluidos Computacional	0.0	0.0		0		OPT		0		#f0ffff	#000000
7476	1255	16	Elementos de Dise??o de Aeronaves	0.0	0.0		0		OPT		0		#f0ffff	#000000
7477	1256	16	Manufactura Aditiva y Digital	0.0	0.0		0		OPT		0		#f0ffff	#000000
7478	1257	16	Modelado de Aeronaves	0.0	0.0		0		OPT		0		#f0ffff	#000000
7479	1258	16	Propulsi??n	0.0	0.0		0		OPT		0		#f0ffff	#000000
7480	1259	16	Sistemas de Navegaci??n	0.0	0.0		0		OPT		0		#f0ffff	#000000
7481	1260	16	Temas Selectos de Materiales I	0.0	0.0		0		OPT		0		#f0ffff	#000000
6087	1594	3	F??sica de Semiconductores	0.0	4.0	5	5			CYAN	1		#00ffff	#000000
6088	1624	3	Energ??a e Impacto Ambiental	0.0	4.0	5	6			CYAN	1		#00ffff	#000000
6414	2707	6	Introducci??n al Dise??o de Filtros Digitales	0.0	4.0	7	1			CYAN	1		#00ffff	#000000
6218	840	4	Sistemas Operativos	0.0	4.0	6	1			CYAN	1		#00ffff	#000000
6696	1521	9	Elementos de Mec??nica del Medio Continuo	0.0	4.0	5	2			CYAN	1		#00ffff	#000000
6526	1576	7	Geomorfolog??a	0.0	4.0	6	1			CYAN	1		#00ffff	#000000
6530	1577	7	Prospeci??n Geof??sica y Registros en Pozos	3.0	3.0	6	5			CYAN	1		#00ffff	#000000
7482	1261	16	Temas Selectos de Materiales II	0.0	0.0		0		OPT		0		#f0ffff	#000000
7483	1262	16	Temas Selectos de Tecnolog??a Aeron??utica I	0.0	0.0		0		OPT		0		#f0ffff	#000000
6090	879	3	Teor??a Electromagnetica	2.0	4.0	6	2	L+		CYAN	1		#00ffff	#000000
6201	1227	4	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		CYAN	1		#00ffff	#000000
6214	138	4	Dispositivos Electr??nicos	2.0	4.0	5	2	L+		CYAN	1		#00ffff	#000000
6216	1473	4	Se??ales y Sistemas	2.0	3.0	5	4	L+		CYAN	1		#00ffff	#000000
6902	1973	11	Sistemas Electr??nicos Lineales	0.0	4.0	7	2			CYAN	1		#00ffff	#000000
6903	1782	11	Dise??o de Elementos de M??quinas	0.0	4.0	7	3			CYAN	1		#00ffff	#000000
6836	0	10	Optativa	0.0	4.0	8	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6843	0	10	Optativa	0.0	4.0	9	6		OPT_1	AZUL	1		#0000ff	#f0ffff
7484	1263	16	Temas Selectos de Tecnolog??a Aeron??utica II	0.0	0.0		0		OPT		0		#f0ffff	#000000
7485	1264	16	Temas Selectos de Tecnolog??a Aeron??utica III	0.0	0.0		0		OPT		0		#f0ffff	#000000
7263	1241	14	Temas Especiales de Manejo de Materiales y Residuos Peligrosos	0.0	3.0	10	5		OPT	MANEJO_OPT	0		#f0ffff	#000000
7486	426	16	Dispositivos Electr??nicos Programables	0.0	4.0		0		OPT		0		#f0ffff	#000000
7487	1270	16	An??lisis de Confiabilidad	0.0	0.0		0		OPT		0		#f0ffff	#000000
7488	1271	16	Comunicaciones Espaciales	0.0	0.0		0		OPT		0		#f0ffff	#000000
7489	1272	16	Elementos de Propulsi??n Espacial	0.0	0.0		0		OPT		0		#f0ffff	#000000
7490	1273	16	Ingenier??a de Carga ??til	0.0	0.0		0		OPT		0		#f0ffff	#000000
7491	1274	16	Procesamiento y Manejo de Datos a Bordo	0.0	0.0		0		OPT		0		#f0ffff	#000000
7492	1275	16	Sistemas de Almacenamiento y Distribuci??n de Energ??a	0.0	0.0		0		OPT		0		#f0ffff	#000000
7493	1276	16	Sistema de Estructura y Regulaci??n T??rmica	0.0	0.0		0		OPT		0		#f0ffff	#000000
7494	1277	16	Sistemas de Control de Orientaci??n	0.0	0.0		0		OPT		0		#f0ffff	#000000
7495	1278	16	Temas Selectos de Tecnolog??a Espacial I	0.0	0.0		0		OPT		0		#f0ffff	#000000
7496	1279	16	Temas Selectos de Tecnolog??a Espacial II	0.0	0.0		0		OPT		0		#f0ffff	#000000
7497	1280	16	Temas Selectos de Tecnolog??a Espacial III	0.0	0.0		0		OPT		0		#f0ffff	#000000
7033	2068	12	Hidrograf??a	0.0	4.5	9	1		OPT	OPTATIVA	0		#f0ffff	#000000
6910	551	11	Control Autom??tico	0.0	4.0	8	5			CYAN	1		#00ffff	#000000
7006	1543	12	Modelaci??n Metem??tica	0.0	3.0	5	1			CYAN	1		#00ffff	#000000
7013	1637	12	Teor??a de los Errores	0.0	3.0	6	2			CYAN	1		#00ffff	#000000
7015	1646	12	Geodesia III	0.0	4.5	6	4			CYAN	1		#00ffff	#000000
6908	0	11	Asignatura Optativa	0.0	4.0	8	3		OPT_1	AZUL	1		#0000ff	#f0ffff
7498	2301	16	Fundamentos de Sistemas de Comandos y Manejo de Informaci??n	0.0	3.0		0		OPT		0		#f0ffff	#000000
7499	2901	16	Procesamiento Digital de Se??ales	0.0	4.0		0		OPT		0		#f0ffff	#000000
7034	2940	12	Prean??lisis y Dise??o de Proyectos Topogr??ficos	0.0	4.5	9	2		OPT	OPTATIVA	0		#f0ffff	#000000
7035	2941	12	Programaci??n Aplicada a la Geom??tica	2.0	2.0	9	3		OPT	OPTATIVA	0		#f0ffff	#000000
7036	2939	12	M??todos Geof??sicos	3.0	3.0	9	4		OPT	OPTATIVA	0		#f0ffff	#000000
7037	2938	12	Geom??tica Aplicada al Transporte	0.0	4.5	9	5		OPT	OPTATIVA	0		#f0ffff	#000000
7038	2937	12	Geom??tica Aplicada al Ordenamiento Territorial	0.0	4.5	9	6		OPT	OPTATIVA	0		#f0ffff	#000000
7039	2936	12	Cartograf??a Digital	3.0	3.0	9	7		OPT	OPTATIVA	0		#f0ffff	#000000
7040	32	12	Abastecimiento de Agua Potable	0.0	3.0	9	1		OPT	GEOMATICA_I	0		#f0ffff	#000000
7041	2800	12	Alcantarillado Sanitario y Pluvial	0.0	3.0	9	2		OPT	GEOMATICA_I	0		#f0ffff	#000000
7042	2942	12	Topograf??a Aplicada a la Construcci??n de Edificaciones	0.0	4.5	9	1		OPT	GEOMATICA_II	0		#f0ffff	#000000
7043	2935	12	Astronom??a de Posici??n	3.0	3.0	9	2		OPT	GEOMATICA_II	0		#f0ffff	#000000
7044	1789	12	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	3, 7	1		OPT	CSYH	0		#f0ffff	#000000
7045	1790	12	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	3, 7	2		OPT	CSYH	0		#f0ffff	#000000
7046	1055	12	Literatura Hispanoamericana Contemporanea	0.0	3.0	3, 7	3		OPT	CSYH	0		#f0ffff	#000000
7047	1791	12	M??xico Naci??n Multicultural	0.0	2.0	3, 7	4		OPT	CSYH	0		#f0ffff	#000000
7048	1792	12	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	3, 7	5		OPT	CSYH	0		#f0ffff	#000000
7049	1793	12	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	3, 7	6		OPT	CSYH	0		#f0ffff	#000000
7051	1795	12	Taller Sociohumanistico- Creatividad	2.0	0.0	3, 7	8		OPT	CSYH	0		#f0ffff	#000000
7092	0	13	Obligatoria de elecci??n de Ciencias de la ISBM	0.0	4.0	7	5		OBL_ELEC	CYAN	1		#00ffff	#000000
7096	0	13	Obligatoria de elecci??n de Ciencias de la ISBM	0.0	4.0	8	3		OBL_ELEC	CYAN	1		#00ffff	#000000
6259	2933	4	Miner??a de Datos	0.0	4.0	9, 10	3		OPT	TIC	0		#f0ffff	#000000
6260	2934	4	Seguridad Inform??tica B??sica	0.0	4.0	9, 10	4		OPT	TIC	0		#f0ffff	#000000
6261	2944	4	Administraci??n de Centros de Tecnolog??a de la Informaci??n	0.0	4.0	10	1		OPT	OPTATIVA	0		#f0ffff	#000000
6262	2945	4	Administraci??n de Servicios de Internet	0.0	4.0	10	2		OPT	OPTATIVA	0		#f0ffff	#000000
6263	2946	4	Arquitectura Cliente Servidor	0.0	3.0	10	3		OPT	OPTATIVA	0		#f0ffff	#000000
6264	2947	4	Bases de Datos Distribuidas	0.0	4.0	10	4		OPT	OPTATIVA	0		#f0ffff	#000000
6265	2948	4	Computaci??n Grafica Avanzada	0.0	4.0	10	5		OPT	OPTATIVA	0		#f0ffff	#000000
6266	674	4	C??mputo M??vil	0.0	3.0	10	6		OPT	OPTATIVA	0		#f0ffff	#000000
6267	2949	4	F??sica Cu??ntica	0.0	4.0	10	7		OPT	OPTATIVA	0		#f0ffff	#000000
6268	2950	4	Procesamiento del Lenguaje Natural	0.0	3.0	10	8		OPT	OPTATIVA	0		#f0ffff	#000000
6269	1916	4	Procesamiento Digital de Imagenes	0.0	4.0	10	9		OPT	OPTATIVA	0		#f0ffff	#000000
6270	1018	4	Procesamiento Digital de Voz	0.0	4.0	10	10		OPT	OPTATIVA	0		#f0ffff	#000000
6271	2951	4	Programaci??n Masiva en Arquitectutra Unificada	0.0	4.0	10	11		OPT	OPTATIVA	0		#f0ffff	#000000
7108	1787	13	Amplificaci??n y Filtrado de Se??ales M??dicas	2.0	4.0	6, 7, 8	1	L	OPT	INSTRUMENTACION_CI	0		#f0ffff	#000000
7109	1695	13	An??lisis de Biose??ales	2.0	4.0	6, 7, 8	2	L	OPT	INSTRUMENTACION_CI	0		#f0ffff	#000000
7110	1996	13	Circuitos Digitales	2.0	4.0	6, 7, 8	3	L	OPT	INSTRUMENTACION_CI	0		#f0ffff	#000000
7111	1698	13	Mediciones Clinicas	2.0	4.0	6, 7, 8	4	L	OPT	INSTRUMENTACION_CI	0		#f0ffff	#000000
7112	1699	13	Sistemas de Medici??n y Transductores M??dicos	2.0	4.0	6, 7, 8	5	L	OPT	INSTRUMENTACION_CI	0		#f0ffff	#000000
7113	2079	13	Biomateriales	2.0	4.0	8	1	L	OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
6210	1433	4	An??lisis Num??rico	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
6211	1424	4	Matem??ticas Avanzadas	2.0	3.0	4	4			AMARILLO	1		#ffff00	#000000
7181	1121	14	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	3			AMARILLO	1		#ffff00	#000000
7182	1120	14	??lgebra	0.0	4.0	1	4			AMARILLO	1		#ffff00	#000000
7185	1436	14	Probabilidad	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
7187	1221	14	C??lculo Integral	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
7188	1220	14	??lgebra Lineal	0.0	4.0	2	4			AMARILLO	1		#ffff00	#000000
7023	1649	12	Ingenier??a Geom??tica	0.0	3.0	8	1			AZUL	1		#0000ff	#f0ffff
7014	1647	12	Sistemas de Posicionamiento Global	2.0	3.0	6	3	P		AZUL	1		#0000ff	#f0ffff
7019	2070	12	Topograf??a de Yacimientos Minerales	2.0	3.0	7	3	P		AZUL	1		#0000ff	#f0ffff
7021	1753	12	Sistemas de Informaci??n Geogr??fica II	3.0	3.0	7	5	L		AZUL	1		#0000ff	#f0ffff
7101	0	13	Optativa de la Ingenier??a Aplicada en Sistemas Biom??dicos	0.0	4.0	10	1		OPT_1	AZUL	1		#0000ff	#f0ffff
6020	1465	2	Fundamentos para la Explotaci??n de Minas	0.0	4.0	6	2	P+		CYAN	1		#00ffff	#000000
6091	1997	3	Fundamentos de Control	2.0	4.0	6	3	L+		CYAN	1		#00ffff	#000000
6092	1618	3	Dispositivos y Circuitos Electr??nicos	2.0	4.0	6	4	L+		CYAN	1		#00ffff	#000000
6094	558	3	Medici??n e Instrumentaci??n 	2.0	3.0	7	1	L+		CYAN	1		#00ffff	#000000
6096	1999	3	Sistemas de Comunicaciones Electr??nicas	2.0	4.0	7	3	L+		CYAN	1		#00ffff	#000000
6205	1222	4	Cultura y Comunicaci??n	2.0	0.0	3	4			VERDE	1		#32cd32	#000000
7196	0	14	Optativa de Ciencias Sociales y Humanidades	2.0	2.0	3	6		OPT_1	VERDE	1		#32cd32	#000000
6392	1437	6	Termodin??mica	2.0	4.0	3	3	L+		AMARILLO	1		#ffff00	#000000
7102	0	13	Optativa de la Ingenier??a Aplicada en Sistemas Biom??dicos	0.0	4.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
7103	0	13	Optativa de la Ingenier??a Aplicada en Sistemas Biom??dicos	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6272	2952	4	Proyecto de Investigacion para Ingenier??a en Computaci??n	0.0	3.0	10	12		OPT	OPTATIVA	0		#f0ffff	#000000
6273	517	4	Reconocimiento de Patrones	0.0	3.0	10	13		OPT	OPTATIVA	0		#f0ffff	#000000
7265	2979	14	Tratamiento y Aprovechamiento de Bios??lidos	0.0	3.0	10*	2		OPT	GESTION	0		#f0ffff	#000000
7246	1234	14	Riesgo Ambiental Toxicol??gico	0.0	3.0	10	5		OPT	CALIDAD_AIRE_OPT	0		#f0ffff	#000000
7273	1234	14	Riesgo Ambiental Toxicol??gico	0.0	3.0	10*	2		OPT	PLANEACION	0		#f0ffff	#000000
7050	1794	12	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	3, 7	7		OPT	CSYH	0		#f0ffff	#000000
6115	425	3	Circuitos Para Comunicaciones	2.0	4.0	9	1	L+	OPT	ELECTRONICA	0		#f0ffff	#000000
6123	3001	3	Proyecto de Investigaci??n de Ingenier??a El??ctrica	0.0	3.0	9, 10	5	***	OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
7190	1222	14	Cultura y Comunicaci??n	2.0	0.0	2	6			VERDE	1		#32cd32	#000000
7008	1542	12	Geolog??a y Geomorfolog??a	2.0	3.0	5	3	P		NARANJA	1		#ff8c00	#000000
6506	1122	7	Fundamentos de Programaci??n	2.0	4.0	2	4	L		NARANJA	1		#ff8c00	#000000
6701	1540	9	Mec??nica de S??lidos	0.0	4.0	6	2			CYAN	1		#00ffff	#000000
6702	508	9	Modelado de Sistmas F??sicos	0.0	4.0	6	3			CYAN	1		#00ffff	#000000
6707	1659	9	Mecanismos	0.0	4.0	7	2			CYAN	1		#00ffff	#000000
6711	1782	9	Dise??o de Elementos de M??quinas	0.0	4.0	8	1			CYAN	1		#00ffff	#000000
6713	1807	9	Instrumentaci??n y Control	0.0	4.0	8	3			CYAN	1		#00ffff	#000000
6809	2081	10	Equipos y Herramientas de Perforaci??n de Pozos	0.0	4.0	3	5	P+	OPT	CYAN	1		#00ffff	#000000
6274	2953	4	Robots M??viles	0.0	3.0	10	14		OPT	OPTATIVA	0		#f0ffff	#000000
6276	2955	4	Seminario de Titulaci??n para Ingenieros en Computaci??n	0.0	3.0	10	16		OPT	OPTATIVA	0		#f0ffff	#000000
6277	2956	4	Temas Selectos de Ingenier??a en Computaci??n I	0.0	3.0	10	17		OPT	OPTATIVA	0		#f0ffff	#000000
7280	18	14	Administraci??n	2.0	2.0	7	1	P	OPT	OPTATIVA	0		#f0ffff	#000000
6278	2957	4	Temas Selectos de Ingenier??a en Computaci??n II	0.0	3.0	10	18		OPT	OPTATIVA	0		#f0ffff	#000000
6279	2958	4	Temas Selectos de Ingenier??a en Computaci??n III	0.0	4.0	10	19		OPT	OPTATIVA	0		#f0ffff	#000000
6335	1790	5	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	9	2		OPT	CSYH	0		#f0ffff	#000000
6336	1055	5	Literatura Hispanoamericana Contemporanea	0.0	3.0	9	3		OPT	CSYH	0		#f0ffff	#000000
6337	1791	5	M??xico Naci??n Multicultural	0.0	2.0	9	4		OPT	CSYH	0		#f0ffff	#000000
6338	1792	5	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	9	5		OPT	CSYH	0		#f0ffff	#000000
6341	1795	5	Taller Sociohumanistico- Creatividad	2.0	0.0	9	8		OPT	CSYH	0		#f0ffff	#000000
7220	642	14	Planeaci??n	0.0	3.0	7	6			MORADO	1		#8a2be2	#000000
7197	2080	14	Recursos y Necesidades de M??xico	0.0	4.0	4	1			VERDE	1		#32cd32	#000000
7208	1413	14	Introducci??n a la Econom??a	0.0	4.0	5	6			VERDE	1		#32cd32	#000000
6012	0	2	Taller Optativo Sociohuman??stico	2.0	0.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
6333	0	5	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	9	7		OPT_1	VERDE	1		#32cd32	#000000
6234	1867	4	Organizaci??n y Arquitectura de Computadoras	2.0	3.0	9	1	L+		AZUL	1		#0000ff	#f0ffff
6235	1858	4	Fundamentos de Sistemas Embebidos	2.0	3.0	9	2	L		AZUL	1		#0000ff	#f0ffff
6316	2704	5	Procesamiento de Se??ales Digitales en Tiempo Real	2.0	3.0	7	2	L+		AZUL	1		#0000ff	#f0ffff
6301	1454	5	Sistemas y Se??ales	0.0	4.0	4	5			CYAN	1		#00ffff	#000000
6303	1461	5	Fundamentos de Procesos Aleatorios	0.0	3.0	5	1			CYAN	1		#00ffff	#000000
6521	1573	7	Geoqu??mica	0.0	4.0	5	2			CYAN	1		#00ffff	#000000
6304	1458	5	Campos y Ondas	0.0	4.0	5	2			CYAN	1		#00ffff	#000000
6308	1460	5	Elementos de Control	0.0	3.0	5	6			CYAN	1		#00ffff	#000000
6311	1470	5	Introducci??n a la Codificaci??n de Fuente y Canal	0.0	3.0	6	3			CYAN	1		#00ffff	#000000
6077	0	3	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	3	6		OPT_1	VERDE	1		#32cd32	#000000
6344	2301	5	Fundamentos de Sistemas de Comandos y Manejo de Informaci??n	0.0	3.0	8, 9	2		OPT	ESPACIALES	0		#f0ffff	#000000
6345	2302	5	Innovaci??n Tecnolog??a y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	3		OPT	ESPACIALES	0		#f0ffff	#000000
6346	2303	5	Introducci??n al An??lisis de Compatibilidad Electromagn??tica	0.0	3.0	8, 9	4		OPT	ESPACIALES	0		#f0ffff	#000000
6347	2304	5	Proyecto de Investigaci??n para Telecomunicaciones	0.0	3.0	8, 9	5		OPT	ESPACIALES	0		#f0ffff	#000000
6355	2305	5	Temas Selectos de Normalizaci??n y Desarrollo Industrial	0.0	3.0	8, 9	6		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6356	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	7		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6357	2312	5	Transmisi??n Multimedia	0.0	3.0	8, 9	8		OPT	RADIOCOMUNICACION	0		#f0ffff	#000000
6358	2302	5	Innovaci??n Tecnolog??a y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	1		OPT	POLITICA	0		#f0ffff	#000000
6359	2307	5	Pol??tica y Legislaci??n de las Telecomunicaciones	0.0	3.0	8, 9	2		OPT	POLITICA	0		#f0ffff	#000000
6360	2304	5	Proyecto de Investigaci??n para Telecomunicaciones	0.0	3.0	8, 9	3		OPT	POLITICA	0		#f0ffff	#000000
6361	2308	5	Tecnolog??as para la Sociedad de la Informaci??n	0.0	3.0	8, 9	4		OPT	POLITICA	0		#f0ffff	#000000
6362	2305	5	Temas Selectos de Normalizaci??n y Desarrollo Industrial	0.0	3.0	8, 9	5		OPT	POLITICA	0		#f0ffff	#000000
6363	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	6		OPT	POLITICA	0		#f0ffff	#000000
6364	2313	5	Antenas Reconfigurables y Arreglos de Antenas	0.0	3.0	8, 9	1		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
7283	1059	14	Desarrollo Empresarial	2.0	2.0	7	4	P	OPT	OPTATIVA	0		#f0ffff	#000000
6365	2302	5	Innovaci??n Tecnolog??a y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6294	1323	5	Programaci??n Orientada a Objetos	2.0	4.0	3	5	L		NARANJA	1		#ff8c00	#000000
5999	1122	2	Fundamentos de Programaci??n	2.0	4.0	2	4	L		NARANJA	1		#ff8c00	#000000
6547	1587	7	Geolog??a de M??xico	0.0	4.0	10	1			AZUL	1		#0000ff	#f0ffff
6366	2314	5	Introducci??n a los Sistemas Embebidos	0.0	3.0	8, 9	3		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6367	2304	5	Proyecto de Investigaci??n para Telecomunicaciones	0.0	3.0	8, 9	4		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6368	2315	5	Redes ??pticas y Acceso	0.0	3.0	8, 9	5		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6369	2309	5	Redes Embebidas Inal??mbricas	0.0	3.0	8, 9	6		OPT	RADIOFRECUENCIA	0		#f0ffff	#000000
6435	1790	6	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	5	2		OPT	CSYH	0		#f0ffff	#000000
6436	1055	6	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	3		OPT	CSYH	0		#f0ffff	#000000
6437	1791	6	M??xico Naci??n Multicultural	0.0	2.0	5	4		OPT	CSYH	0		#f0ffff	#000000
6438	1792	6	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	5	5		OPT	CSYH	0		#f0ffff	#000000
6439	1793	6	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	5	6		OPT	CSYH	0		#f0ffff	#000000
6440	1794	6	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	5	7		OPT	CSYH	0		#f0ffff	#000000
6441	1795	6	Taller Sociohumanistico- Creatividad	2.0	0.0	5	8		OPT	CSYH	0		#f0ffff	#000000
6442	1796	6	Taller Sociohumanistico- Liderazgo	2.0	0.0	5	9		OPT	CSYH	0		#f0ffff	#000000
6446	510	6	Instrumentaci??n	0.0	4.0	6, 7	4		OPT	OPTATIVA	0		#f0ffff	#000000
6449	1955	6	Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	6, 7	7		OPT	OPTATIVA	0		#f0ffff	#000000
6451	1139	6	Exploraci??n Geoqu??mica Minera	0.0	4.0	7, 10	2		OPT	E_MINERA	0		#f0ffff	#000000
6452	1026	6	Percepci??n Remota Aplicada	0.0	4.0	7, 10	3		OPT	E_MINERA	0		#f0ffff	#000000
6453	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	E_MINERA	0		#f0ffff	#000000
6456	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	E_MINERA	0		#f0ffff	#000000
6457	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	E_MINERA	0		#f0ffff	#000000
6460	2092	6	Modelaci??n Num??rica y Computacional de Acu??feros	0.0	4.0	7, 10	3		OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6125	3002	3	Sistemas Electr??nicos	2.0	3.0	10	7	L+	OPT	ELECTRONICA_OPT	0		#f0ffff	#000000
6405	2503	6	Teor??a del Potencial Aplicada a la Geof??sica	0.0	4.0	5	4			CYAN	1		#00ffff	#000000
6408	2605	6	An??lisis Espectral de Se??ales	0.0	4.0	6	1			CYAN	1		#00ffff	#000000
6409	2606	6	F??sica de Ondas	0.0	4.0	6	2			CYAN	1		#00ffff	#000000
6411	2607	6	Fundamentos de Tor??a Electromagn??tica	0.0	4.0	6	4			CYAN	1		#00ffff	#000000
6897	1659	11	Mecanismos	0.0	4.0	6	3			CYAN	1		#00ffff	#000000
6899	508	11	Modelado de Sistmas F??sicos	0.0	4.0	6	5			CYAN	1		#00ffff	#000000
7086	1693	13	Introducci??n a la Anatom??a y Fisiolog??a I	2.0	4.0	6	5	L		MORADO	1		#8a2be2	#000000
7090	1778	13	Mec??nica del Cuerpo Humano	2.0	4.0	7	3	L		MORADO	1		#8a2be2	#000000
6551	2080	7	Recursos y Necesidades de M??xico	0.0	4.0	10	5			VERDE	1		#32cd32	#000000
6837	1413	10	Introducci??n a la Econom??a	0.0	4.0	8	5			VERDE	1		#32cd32	#000000
6889	0	11	Taller Sociohuman??stico	2.0	0.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
6617	1052	8	??tica Profesional	2.0	2.0	8	6			VERDE	1		#32cd32	#000000
6228	1413	4	Introducci??n a la Econom??a	0.0	4.0	7	1			VERDE	1		#32cd32	#000000
6461	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6464	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6147	1092	3	Automatizacion de Sistemas El??ctricos	2.0	3.0	9	1	L	OPT	ELECTRICA_OPT	0		#f0ffff	#000000
6149	3001	3	Proyecto de Investigaci??n de Ingenier??a El??ctrica	0.0	3.0	9, 10	3	***	OPT	ELECTRICA_OPT	0		#f0ffff	#000000
6152	2909	3	Control Avanzado	2.0	4.0	9	1	L+	OPT	CYR	0		#f0ffff	#000000
6153	2910	3	Controladores Industriales Programables	2.0	3.0	9	2	L+	OPT	CYR	0		#f0ffff	#000000
6154	2911	3	Rob??tica Industrial	2.0	3.0	9	3	L+	OPT	CYR	0		#f0ffff	#000000
6066	1122	3	Fundamentos de Programaci??n	2.0	4.0	1	5	L		NARANJA	1		#ff8c00	#000000
6071	1227	3	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		NARANJA	1		#ff8c00	#000000
6076	1332	3	Modelos de Programaci??n Orientada a Objetos	2.0	2.0	3	5	L		NARANJA	1		#ff8c00	#000000
7068	1734	13	Ingenier??a Econ??mica	0.0	4.0	3	5			CYAN	1		#00ffff	#000000
7205	2502	14	Mec??nica de Fluidos para Ingenier??a Ambiental	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
6600	1784	8	Estad??stica Aplicada	0.0	4.0	6	1			CYAN	1		#00ffff	#000000
6831	0	10	Optativa(s) de Ciencias Sociales y Humanidades	0.0	2.0	7	4		OPT_1	VERDE	1		#32cd32	#000000
6841	1861	10	Administraci??n de la Seguridad Industrial y Protecci??n Ambiental	0.0	3.0	9	4			NARANJA	1		#ff8c00	#000000
6223	1537	4	Finanzas en la Ingenier??a en Computaci??n	0.0	3.0	7	1			NARANJA	1		#ff8c00	#000000
6574	1122	8	Fundamentos de Programaci??n	2.0	4.0	1	3	L		NARANJA	1		#ff8c00	#000000
6580	3020	8	Creatividad e Innovaci??n	2.0	2.0	2	4	P		NARANJA	1		#ff8c00	#000000
6587	1209	8	Dibujo Mec??nico e Industrial	2.0	2.0	3	5	L		NARANJA	1		#ff8c00	#000000
6232	1052	4	??tica Profesional	2.0	2.0	8	4			VERDE	1		#32cd32	#000000
6848	2080	10	Recursos y Necesidades de M??xico	0.0	4.0	10	5			VERDE	1		#32cd32	#000000
6238	2080	4	Recursos y Necesidades de M??xico	0.0	4.0	9	5			VERDE	1		#32cd32	#000000
6296	1222	5	Cultura y Comunicaci??n	2.0	0.0	3	7			VERDE	1		#32cd32	#000000
6314	1413	5	Introducci??n a la Econom??a	0.0	4.0	6	6			VERDE	1		#32cd32	#000000
6320	1052	5	??tica Profesional	2.0	2.0	7	6			VERDE	1		#32cd32	#000000
6326	2080	5	Recursos y Necesidades de M??xico	0.0	4.0	8	6			VERDE	1		#32cd32	#000000
6828	1985	10	Perforaci??n No Convencional	0.0	6.0	7	1			AZUL	1		#0000ff	#f0ffff
6829	1986	10	Recuperaci??n Secundaria y Mejorada	0.0	6.0	7	2			AZUL	1		#0000ff	#f0ffff
6832	1984	10	Caracterizaci??n Din??mica de Yacimientos	0.0	4.0	7	6			AZUL	1		#0000ff	#f0ffff
6465	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	HIDROGEOLOGIA_1	0		#f0ffff	#000000
6467	1023	6	Sismolog??a Aplicada a la Exploraci??n Petrolera	0.0	4.0	7, 10	2		OPT	E_PETROLERA	0		#f0ffff	#000000
6468	1024	6	Procesamiento de Datos S??smicos Petroleros	0.0	4.0	7, 10	3		OPT	E_PETROLERA	0		#f0ffff	#000000
6469	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	E_PETROLERA	0		#f0ffff	#000000
6472	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	E_PETROLERA	0		#f0ffff	#000000
6480	1141	6	Temas Selectos de Ingenier??a Geof??sica I	0.0	4.0	7, 10	7		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6481	1142	6	Temas Selectos de Ingenier??a Geof??sica II	0.0	4.0	7, 10	8		OPT	HIDROGEOLOGIA_2	0		#f0ffff	#000000
6482	1028	6	Fuente S??smica	0.0	4.0	7, 10	1		OPT	SISMOLOGIA	0		#f0ffff	#000000
6483	1143	6	An??lisis de Registros S??smicos	0.0	4.0	7, 10	2		OPT	SISMOLOGIA	0		#f0ffff	#000000
6789	3089	9	Temas Selectos de Mecatr??nica I	0.0	4.0	9, 10	48		OPT	OPTATIVA	0		#f0ffff	#000000
6790	3090	9	Temas Selectos de Mecatr??nica II	0.0	4.0	9, 10	49		OPT	OPTATIVA	0		#f0ffff	#000000
6630	1789	8	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	3, 6	1		OPT	CSYH	0		#f0ffff	#000000
6631	1790	8	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	3, 6	2		OPT	CSYH	0		#f0ffff	#000000
6632	1055	8	Literatura Hispanoamericana Contemporanea	0.0	3.0	3, 6	3		OPT	CSYH	0		#f0ffff	#000000
6633	1791	8	M??xico Naci??n Multicultural	0.0	2.0	3, 6	4		OPT	CSYH	0		#f0ffff	#000000
6791	2077	9	Temas Selectos de Termofluidos I	0.0	4.0	9, 10	50		OPT	OPTATIVA	0		#f0ffff	#000000
6792	2078	9	Temas Selectos de Termofluidos II	0.0	4.0	9, 10	51		OPT	OPTATIVA	0		#f0ffff	#000000
6793	900	9	Turbomaquinaria	0.0	4.0	9, 10	52		OPT	OPTATIVA	0		#f0ffff	#000000
6928	971	11	Dise??o del Producto	0.0	4.0	8, 10	6		OPT	OPTATIVA	0		#f0ffff	#000000
6930	2805	11	Instalaciones Industriales	0.0	4.0	8, 10	8		OPT	OPTATIVA	0		#f0ffff	#000000
6931	406	11	Inteligencia Artificial	0.0	4.0	10	9		OPT	OPTATIVA	0		#f0ffff	#000000
6911	0	11	Optativa(s) de Cinecias Sociales y Humanidades	2.0	2.0	8	6		OPT_1	VERDE	1		#32cd32	#000000
5995	1222	2	Cultura y Comunicaci??n	2.0	0.0	1	5			VERDE	1		#32cd32	#000000
6681	1122	9	Fundamentos de Programaci??n	2.0	4.0	2	4	L		NARANJA	1		#ff8c00	#000000
6682	1209	9	Dibujo Mec??nico e Industrial	2.0	2.0	2	5	L		NARANJA	1		#ff8c00	#000000
7212	2609	14	Conocimiento Territorial	2.0	3.0	6	4	L+		NARANJA	1		#ff8c00	#000000
6804	1122	10	Fundamentos de Programaci??n	2.0	4.0	2	5	L		NARANJA	1		#ff8c00	#000000
6844	1994	10	Planeaci??n y Evaluaci??n de Proyectos Petroleros	2.0	2.0	10	1			NARANJA	1		#ff8c00	#000000
6846	1993	10	Legislaci??n de la Industria Petrolera	0.0	4.0	10	3			NARANJA	1		#ff8c00	#000000
6872	1122	11	Fundamentos de Programaci??n	2.0	4.0	1	5	L		NARANJA	1		#ff8c00	#000000
6877	1209	11	Dibujo Mec??nico e Industrial	2.0	2.0	2	5	L		NARANJA	1		#ff8c00	#000000
6984	1128	12	Representaciones Gr??ficas	4.0	2.0	1	3	P		NARANJA	1		#ff8c00	#000000
6991	1127	12	Programaci??n B??sica	2.0	2.0	2	4	P		NARANJA	1		#ff8c00	#000000
6688	1225	9	Manufactura I	4.0	2.0	3	5	L+		AZUL	1		#0000ff	#f0ffff
6236	1959	4	Sistemas Distribuidos	0.0	4.0	9	3			AZUL	1		#0000ff	#f0ffff
7100	1976	13	Estancia	20.0	0.0	9	1			AZUL	1		#0000ff	#f0ffff
6845	1995	10	Proyectos Integrales Petroleros	2.0	2.0	10	2			AZUL	1		#0000ff	#f0ffff
6847	1116	10	Temas Selectos de Ingenier??a Petrolera	2.0	2.0	10	4			AZUL	1		#0000ff	#f0ffff
6622	0	8	Optativa	2.0	2.0	9	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6624	0	8	Optativa	2.0	2.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6625	0	8	Optativa	2.0	2.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6626	0	8	Optativa	2.0	2.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6816	1439	10	Fluidos de Perforaci??n	1.0	2.0	4	6	L		AZUL	1		#0000ff	#f0ffff
6917	0	11	Asignatura Optativa	0.0	4.0	10	1		OPT_1	AZUL	1		#0000ff	#f0ffff
6918	0	11	Asignatura Optativa	0.0	4.0	10	2		OPT_1	AZUL	1		#0000ff	#f0ffff
6919	0	11	Asignatura Optativa	0.0	4.0	10	3		OPT_1	AZUL	1		#0000ff	#f0ffff
6920	0	11	Asignatura Optativa	0.0	4.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6921	0	11	Asignatura Optativa	0.0	4.0	10	5		OPT_1	AZUL	1		#0000ff	#f0ffff
6541	1582	7	Geolog??a del Subsuelo	3.0	3.0	8	5	P		AZUL	1		#0000ff	#f0ffff
6932	574	11	Introducci??n a Sistemas No Lineales	0.0	4.0	10	10		OPT	OPTATIVA	0		#f0ffff	#000000
6934	2137	11	Sistemas de Mejoramiento Ambiental	0.0	4.0	8, 10	12		OPT	OPTATIVA	0		#f0ffff	#000000
6936	192	11	Estudio del Trabajo	2.0	4.0	8, 10	14		OPT	OPTATIVA	0		#f0ffff	#000000
6937	2804	11	Dise??o de la Cadena de Suministros	0.0	4.0	8, 10	15		OPT	OPTATIVA	0		#f0ffff	#000000
6938	143	11	Dise??o de Sistemas Productivos	0.0	4.0	8, 10	16		OPT	OPTATIVA	0		#f0ffff	#000000
6945	3071	11	Ingenier??a Automotriz I	0.0	4.0	8, 10	23		OPT	OPTATIVA	0		#f0ffff	#000000
6636	1794	8	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	3, 6	7		OPT	CSYH	0		#f0ffff	#000000
6637	1795	8	Taller Sociohumanistico- Creatividad	2.0	0.0	3, 6	8		OPT	CSYH	0		#f0ffff	#000000
6310	1469	5	Fundamentos y Aplicaciones para el Procesamiento Digital de Se??ales	0.0	3.0	6	2			CYAN	1		#00ffff	#000000
6222	1643	4	Administraci??n de Proyectos de Software	0.0	4.0	6	5			CYAN	1		#00ffff	#000000
6018	1413	2	Introducci??n a la Econom??a	0.0	4.0	5	6			VERDE	1		#32cd32	#000000
6070	1222	3	Cultura y Comunicaci??n	2.0	0.0	2	4			VERDE	1		#32cd32	#000000
7057	1122	13	Fundamentos de Programaci??n	2.0	4.0	1	5	L		NARANJA	1		#ff8c00	#000000
7062	1224	13	Introducci??n a la Ingenier??a en Sistemas Biom??dicos	2.0	0.0	2	5	L		NARANJA	1		#ff8c00	#000000
5994	1131	2	Introducci??n a la Ingenier??a de Minas y Metalurg??a	0.0	2.0	1	4			NARANJA	1		#ff8c00	#000000
7069	1209	13	Dibujo Mec??nico e Industrial	2.0	2.0	3	6	L		NARANJA	1		#ff8c00	#000000
6332	1059	5	Desarrollo Empresarial	2.0	2.0	9	6	P		NARANJA	1		#ff8c00	#000000
6011	1067	2	Geometr??a Descriptiva Aplicada	2.0	2.0	4	5			NARANJA	1		#ff8c00	#000000
6015	1456	2	Legislaci??n Minera	0.0	2.0	5	3			NARANJA	1		#ff8c00	#000000
59	1128	1	Representaciones Gr??ficas	4.0	2.0	1	3	P		NARANJA	1		#ff8c00	#000000
60	1127	1	Programaci??n B??sica	2.0	2.0	1	4	P		NARANJA	1		#ff8c00	#000000
6823	1068	10	Ingenier??a de Perforaci??n de Pozos	2.0	4.0	6	1	L, P		AZUL	1		#0000ff	#f0ffff
7216	2710	14	Evaluaci??n de la Calidad del Aire	2.0	3.0	7	2	L+		AZUL	1		#0000ff	#f0ffff
6882	1225	11	Manufactura I	4.0	2.0	3	5	L+		AZUL	1		#0000ff	#f0ffff
6317	2705	5	Redes de Telecomunicaciones	0.0	4.0	7	3			AZUL	1		#0000ff	#f0ffff
6321	2813	5	Sistema de Radiocomunicaciones I	0.0	4.0	8	1			AZUL	1		#0000ff	#f0ffff
6893	1472	11	T??cnicas de Programaci??n	2.0	4.0	5	4	L		AZUL	1		#0000ff	#f0ffff
6323	2814	5	Tecnolog??as de Interconexi??n de Redes	0.0	4.0	8	3			AZUL	1		#0000ff	#f0ffff
6329	2962	5	Regulaci??n de las Telecomunicaciones	0.0	3.0	9	3			AZUL	1		#0000ff	#f0ffff
6949	3083	11	Temas Selectos de Ingenier??a de Dise??o I	0.0	4.0	8, 10	27		OPT	OPTATIVA	0		#f0ffff	#000000
6950	3084	11	Temas Selectos de Ingenier??a de Dise??o II	0.0	4.0	8, 10	28		OPT	OPTATIVA	0		#f0ffff	#000000
6951	3085	11	Temas Selectos de Ingenier??a de Mec??nica I	0.0	4.0	8, 10	29		OPT	OPTATIVA	0		#f0ffff	#000000
6952	3086	11	Temas Selectos de Ingenier??a de Mec??nica II	0.0	4.0	8, 10	30		OPT	OPTATIVA	0		#f0ffff	#000000
6961	1789	11	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	6, 8	1		OPT	CSYH	0		#f0ffff	#000000
6964	1791	11	M??xico Naci??n Multicultural	0.0	2.0	6, 8	4		OPT	CSYH	0		#f0ffff	#000000
6030	0	2	Seminario Optativo Sociohuman??stico	2.0	0.0	7	6		OPT_1	VERDE	1		#32cd32	#000000
6082	944	3	Costos y Evaluaci??n de Proyectos	2.0	2.0	4	5			NARANJA	1		#ff8c00	#000000
7299	2916	1	Integraci??n de Proyectos	2.0	1.0	10	5			AZUL	1		#0000ff	#f0ffff
6010	1625	2	Fisicoqu??mica	0.0	4.0	4	4			CYAN	1		#00ffff	#000000
6085	129	3	Din??mica de Sistemas F??sicos	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
6420	2815	6	Introducci??n al Tratamiento de Se??ales	0.0	4.0	8	1			CYAN	1		#00ffff	#000000
6206	1317	4	Estructura de Datos y Algoritmos II	2.0	4.0	3	5			CYAN	1		#00ffff	#000000
6212	119	4	Estructuras Discretas	0.0	4.0	4	5			CYAN	1		#00ffff	#000000
6213	1503	4	Estructura y Programaci??n de Computadoras	0.0	4.0	5	1			CYAN	1		#00ffff	#000000
6215	442	4	Lenguajes Formales y Aut??matas	0.0	4.0	5	3			CYAN	1		#00ffff	#000000
6217	1531	4	Ingenieria de Software	0.0	4.0	5	5			CYAN	1		#00ffff	#000000
6881	1322	11	Cinem??tica y Din??mica	0.0	4.0	3	4			AMARILLO	1		#ffff00	#000000
7061	1225	13	Manufactura I	4.0	2.0	2	4	L+		AZUL	1		#0000ff	#f0ffff
7213	2611	14	Evaluaci??n de la Calidad del Agua	2.0	3.0	6	5	L+		AZUL	1		#0000ff	#f0ffff
6597	3021	8	Metodolog??as para la Planeaci??n	2.0	2.0	5	4	P		AZUL	1		#0000ff	#f0ffff
6598	1225	8	Manufactura I	4.0	2.0	5	5	L+		AZUL	1		#0000ff	#f0ffff
6603	507	8	Ingenier??a de Manufactura	2.0	4.0	6	4	L+		AZUL	1		#0000ff	#f0ffff
6609	619	8	Planeaci??n y Control de la Producci??n	2.0	4.0	7	4	L		AZUL	1		#0000ff	#f0ffff
6618	572	8	Automatizaci??n Industrial	4.0	2.0	9	1	L		AZUL	1		#0000ff	#f0ffff
6621	2917	8	Pr??cticas Profesionales para Ingenier??a Industrial	12.0	0.0	9	4	P+		AZUL	1		#0000ff	#f0ffff
6970	0	11	Asignatura(s) del ??rea de Ciencias Sociales y Humanidades en Otras Facultades de la UNAM	6.0	0.0	6, 8	10		OPT	CSYH	0		#f0ffff	#000000
6971	2200	11	Movilidad I	0.0	2.0	7, 8, 9, 10	1		OPT	MOVILIDAD	0		#f0ffff	#000000
6972	2201	11	Movilidad II	0.0	3.0	7, 8, 9, 10	2		OPT	MOVILIDAD	0		#f0ffff	#000000
6973	2202	11	Movilidad II	0.0	3.0	7, 8, 9, 10	3		OPT	MOVILIDAD	0		#f0ffff	#000000
6974	2203	11	Movilidad IV	0.0	3.0	7, 8, 9, 10	4		OPT	MOVILIDAD	0		#f0ffff	#000000
6975	2204	11	Movilidad V	0.0	3.0	7, 8, 9, 10	5		OPT	MOVILIDAD	0		#f0ffff	#000000
6564	2093	7	Paleontolog??a Estratigr??fica	4.0	2.0	10	13	L	OPT	INGENIERIA_A	0		#f0ffff	#000000
6054	3093	2	Fen??menos Artificiales	0.0	4.0	9, 10	3		OPT	OPTATIVA	0		#f0ffff	#000000
6668	2206	8	Movilidad VII	0.0	4.0	7, 9, 10	7		OPT	MOVILIDAD	0		#f0ffff	#000000
6669	2207	8	Movilidad VIII	0.0	4.0	7, 9, 10	8		OPT	MOVILIDAD	0		#f0ffff	#000000
6174	3019	3	Seguridad de Reactores Nucleares	0.0	4.0	9, 10	12		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6175	2009	3	Temas Selectos de Sistemas Energ??ticos	0.0	3.0	9, 10	13		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6176	3023	3	Uso Eficiente en Equipos de Servicio	0.0	4.0	9, 10	14		OPT	ENERGETICOS_OPT	0		#f0ffff	#000000
6179	1057	3	Desarrollo de Habilidades Directivas	2.0	2.0	3	3		OPT	COMPETENCIAS	0		#f0ffff	#000000
6182	3022	3	Relaciones Laborales y Organizacionales	2.0	2.0	3	6		OPT	COMPETENCIAS	0		#f0ffff	#000000
6183	1789	3	Ciencia, Tecnolog??a y Sociedad	0.0	2.0	3	1		OPT	CSYH	0		#f0ffff	#000000
6184	1790	3	Introducci??n al An??lisis Econ??mico Empresarial	0.0	2.0	3	2		OPT	CSYH	0		#f0ffff	#000000
6185	1055	3	Literatura Hispanoamericana Contemporanea	0.0	3.0	3	3		OPT	CSYH	0		#f0ffff	#000000
6186	1791	3	M??xico Naci??n Multicultural	0.0	2.0	3	4		OPT	CSYH	0		#f0ffff	#000000
6515	1433	7	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
6705	1413	9	Introducci??n a la Econom??a	0.0	4.0	6	6			VERDE	1		#32cd32	#000000
6708	1052	9	??tica Profesional	2.0	2.0	7	3			VERDE	1		#32cd32	#000000
6715	2080	9	Recursos y Necesidades de M??xico	0.0	4.0	8	5			VERDE	1		#32cd32	#000000
6709	1734	9	Ingenier??a Econ??mica	0.0	4.0	7	4			NARANJA	1		#ff8c00	#000000
7089	1779	13	Psicolog??a M??dica	0.0	4.0	7	2			MORADO	1		#8a2be2	#000000
7094	1895	13	Aspectos Legales en las Organizaciones de la Atenci??n M??dica	0.0	4.0	8	1			MORADO	1		#8a2be2	#000000
7095	1896	13	Instalaciones Hospitalarias	0.0	4.0	8	2			MORADO	1		#8a2be2	#000000
6413	1413	6	Introducci??n a la Econom??a	0.0	4.0	6	6			VERDE	1		#32cd32	#000000
6905	1413	11	Introducci??n a la Econom??a	0.0	4.0	7	5			VERDE	1		#32cd32	#000000
6916	1052	11	??tica Profesional	2.0	2.0	9	5			VERDE	1		#32cd32	#000000
6922	2080	11	Recursos y Necesidades de M??xico	0.0	4.0	8	5			VERDE	1		#32cd32	#000000
7011	1413	12	Introducci??n a la Econom??a	0.0	4.0	5	6			VERDE	1		#32cd32	#000000
7012	1052	12	??tica Profesional	2.0	2.0	6	1			VERDE	1		#32cd32	#000000
6513	1222	7	Cultura y Comunicaci??n	2.0	0.0	3	6			VERDE	1		#32cd32	#000000
7028	2080	12	Recursos y Necesidades de M??xico	0.0	4.0	8	6			VERDE	1		#32cd32	#000000
6582	1222	8	Cultura y Comunicaci??n	2.0	0.0	2	6			VERDE	1		#32cd32	#000000
6689	1222	9	Cultura y Comunicaci??n	2.0	0.0	3	6			VERDE	1		#32cd32	#000000
7093	1052	13	??tica Profesional	2.0	2.0	7	6			VERDE	1		#32cd32	#000000
7031	1960	12	Pr??cticas Profesionales	4.0	1.0	9	6	P		AZUL	1		#0000ff	#f0ffff
6542	1061	7	Geolog??a Aplicada a la Ingenier??a Civil	3.0	3.0	9	1	P		AZUL	1		#0000ff	#f0ffff
6830	1987	10	Sistemas Artificiales de Producci??n	0.0	6.0	7	3	P+		AZUL	1		#0000ff	#f0ffff
6833	1989	10	Terminaci??n y Mantenimiento de Pozos	2.0	4.0	8	1	L+, P+		AZUL	1		#0000ff	#f0ffff
6834	1090	10	Simulaci??n Matem??tica de Yacimientos	1.0	4.0	8	2	L		AZUL	1		#0000ff	#f0ffff
6840	1991	10	Conducci??n y Manejo de la Producci??n de los Hidrocarburos	0.0	4.0	9	3	P+		AZUL	1		#0000ff	#f0ffff
6565	2094	7	Petrof??sica y Registros Geof??sicos en Pozos	2.0	4.0	10	14	P	OPT	INGENIERIA_A	0		#f0ffff	#000000
6567	1090	7	Simulaci??n Matem??tica de Yacimientos	1.0	4.0	10	16	L	OPT	INGENIERIA_A	0		#f0ffff	#000000
6571	2099	7	Yacimientos Minerales y T??cnicas Anal??ticas	3.0	3.0	10	20	L, P	OPT	INGENIERIA_A	0		#f0ffff	#000000
7248	2972	14	Dise??o de Sistemas Descentralizados de Suministro y Tratamiento de Agua	0.0	3.0	9*	1		OPT	CALIDAD_AGUA	0		#f0ffff	#000000
7250	2973	14	Estudios Sanitarios de Playas Marinas	0.0	3.0	10	3		OPT	CALIDAD_AGUA	0		#f0ffff	#000000
6976	2205	11	Movilidad VI	0.0	3.0	7, 8, 9, 10	6		OPT	MOVILIDAD	0		#f0ffff	#000000
6977	2206	11	Movilidad VII	0.0	4.0	7, 8, 9, 10	7		OPT	MOVILIDAD	0		#f0ffff	#000000
6978	2207	11	Movilidad VIII	0.0	4.0	7, 8, 9, 10	8		OPT	MOVILIDAD	0		#f0ffff	#000000
6979	2208	11	Movilidad IX	0.0	4.0	7, 8, 9, 10	9		OPT	MOVILIDAD	0		#f0ffff	#000000
6188	1793	3	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	3	6		OPT	CSYH	0		#f0ffff	#000000
6189	1794	3	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	3	7		OPT	CSYH	0		#f0ffff	#000000
6190	1795	3	Taller Sociohumanistico- Creatividad	2.0	0.0	3	8		OPT	CSYH	0		#f0ffff	#000000
6191	1796	3	Taller Sociohumanistico- Liderazgo	2.0	0.0	3	9		OPT	CSYH	0		#f0ffff	#000000
7104	0	13	Optativa de la Ingenier??a Aplicada en Sistemas Biom??dicos	0.0	4.0	10	4		OPT_1	AZUL	1		#0000ff	#f0ffff
6694	0	9	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
6670	2208	8	Movilidad IX	0.0	4.0	7, 9, 10	9		OPT	MOVILIDAD	0		#f0ffff	#000000
6671	2209	8	Movilidad X	0.0	4.0	7, 9, 10	10		OPT	MOVILIDAD	0		#f0ffff	#000000
6672	2210	8	Movilidad XI	2.0	4.0	7, 9, 10	11		OPT	MOVILIDAD	0		#f0ffff	#000000
6387	1327	6	Geolog??a F??sica	3.0	3.0	2	4	L, P		CYAN	1		#00ffff	#000000
6393	487	6	Mineralog??a	3.0	3.0	3	4	L		CYAN	1		#00ffff	#000000
6394	1438	6	T??cnicas Geol??gicas de Campo	2.0	2.0	3	5	P+		CYAN	1		#00ffff	#000000
7105	0	13	Optativa del ??rea M??dica Biol??gica	0.0	4.0	10	5		OPT_1	MORADO	1		#8a2be2	#000000
7087	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	6	6		OPT_1	VERDE	1		#32cd32	#000000
6588	0	8	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	3	6		OPT_1	VERDE	1		#32cd32	#000000
6395	1122	6	Fundamentos de Programaci??n	2.0	4.0	3	6	L		NARANJA	1		#ff8c00	#000000
6980	2209	11	Movilidad X	0.0	4.0	7, 8, 9, 10	10		OPT	MOVILIDAD	0		#f0ffff	#000000
6981	2210	11	Movilidad XI	2.0	4.0	7, 8, 9, 10	11		OPT	MOVILIDAD	0		#f0ffff	#000000
6485	1584	6	Geoestad??stica	0.0	4.0	7, 10	4		OPT	SISMOLOGIA	0		#f0ffff	#000000
7052	1796	12	Taller Sociohumanistico- Liderazgo	2.0	0.0	3, 7	9		OPT	CSYH	0		#f0ffff	#000000
6639	3073	8	Comercio Internacional	2.0	2.0	7, 9, 10	1	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6640	3065	8	Costos Log??sticos y Sistemas de Transporte	2.0	2.0	7, 9, 10	2	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6641	1060	8	Envase y Enbalaje	2.0	2.0	7, 9, 10	3	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6642	3066	8	Inteligencia de Negocios	2.0	2.0	7, 9, 10	4	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6643	3067	8	Log??stica Inversa	2.0	2.0	7, 9, 10	5	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6644	3068	8	Temas Selectos de la Gesti??n de la Cadena de Suministros	2.0	2.0	7, 9, 10	6	P	OPT	SUMINISTROS	0		#f0ffff	#000000
6647	972	8	Dise??o y Manufactura Asistidos por Computadora	2.0	4.0	7, 9, 10	3	L+	OPT	PRODUCCION	0		#f0ffff	#000000
6648	3070	8	Ergonom??a del Trabajo	2.0	2.0	7, 9, 10	4	P	OPT	PRODUCCION	0		#f0ffff	#000000
6650	3072	8	Manufactura Lean	2.0	2.0	7, 9, 10	6	P	OPT	PRODUCCION	0		#f0ffff	#000000
6651	1087	8	Seguridad Industrial	2.0	2.0	7, 9, 10	7	P	OPT	PRODUCCION	0		#f0ffff	#000000
6652	3074	8	Sistemas de Producci??n Avanzados	2.0	2.0	7, 9, 10	8	P	OPT	PRODUCCION	0		#f0ffff	#000000
7107	1424	13	Matem??ticas Avanzadas	2.0	3.0	5	1		OPT	INSTRUMENTACION_CB	0		#f0ffff	#000000
7117	1783	13	Ergonom??a	0.0	4.0	8	5		OPT	INSTRUMENTACION_SB	0		#f0ffff	#000000
6824	1983	10	Productividad de Pozos	0.0	4.0	6	2	P+		AZUL	1		#0000ff	#f0ffff
7000	0	12	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	3	6		OPT_1	VERDE	1		#32cd32	#000000
7075	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
7081	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	5	6		OPT_1	VERDE	1		#32cd32	#000000
6424	1052	6	??tica Profesional	2.0	2.0	8	5			VERDE	1		#32cd32	#000000
6795	1121	10	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6800	1220	10	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6801	1221	10	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6802	1228	10	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6805	1325	10	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6811	1436	10	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6812	1433	10	An??lisis Num??rico	0.0	4.0	4	2			AMARILLO	1		#ffff00	#000000
6817	1569	10	Estad??stica	0.0	4.0	5	1			AMARILLO	1		#ffff00	#000000
7106	2080	13	Recursos y Necesidades de M??xico	0.0	4.0	10	6			VERDE	1		#32cd32	#000000
7231	1052	14	??tica Profesional	2.0	2.0	9	5			VERDE	1		#32cd32	#000000
7184	1124	14	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	4			VERDE	1		#32cd32	#000000
6904	1734	11	Ingenier??a Econ??mica	0.0	4.0	7	4			NARANJA	1		#ff8c00	#000000
6501	54	7	Dibujo	2.0	2.0	1	4			NARANJA	1		#ff8c00	#000000
6507	1067	7	Geometr??a Descriptiva Aplicada	2.0	2.0	2	5			NARANJA	1		#ff8c00	#000000
7027	1684	12	Gesti??n Ambiental	0.0	3.0	8	5			NARANJA	1		#ff8c00	#000000
6575	1129	8	Ingenier??a Industrial y Productividad	0.0	2.0	1	4			NARANJA	1		#ff8c00	#000000
6677	2212	9	Introducci??n a la Ingenier??a Mec??nica	2.0	2.0	1	5			NARANJA	1		#ff8c00	#000000
7203	1506	14	Geolog??a	0.0	4.5	5	1			NARANJA	1		#ff8c00	#000000
6177	2103	3	Calidad	0.0	4.0	3	1		OPT	COMPETENCIAS	0		#f0ffff	#000000
5961	3036	1	Temas Especiales de Estructuras II	0.0	4.5	10	7		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5962	3037	1	Bordos y Presas	0.0	4.5	10	1		OPT	GEOTECNIA	0		#f0ffff	#000000
5963	3038	1	Din??mica de Suelos	0.0	3.0	10	2		OPT	GEOTECNIA	0		#f0ffff	#000000
5964	3039	1	Estructura de Pavimentos	0.0	3.0	10	3		OPT	GEOTECNIA	0		#f0ffff	#000000
5965	3040	1	Fundamentos de Mec??nica de Rocas	0.0	3.0	10	4		OPT	GEOTECNIA	0		#f0ffff	#000000
5966	3041	1	Mec??nica de Suelos Aplicada	0.0	4.5	10	5		OPT	GEOTECNIA	0		#f0ffff	#000000
5967	3042	1	Temas Especiales de Geotecnia I	0.0	3.0	10	6		OPT	GEOTECNIA	0		#f0ffff	#000000
5968	3043	1	Temas Especiales de Geotecnia II	0.0	4.5	10	7		OPT	GEOTECNIA	0		#f0ffff	#000000
5969	3044	1	Agua Subterranea	0.0	4.5	10	1		OPT	HIDRAULICA	0		#f0ffff	#000000
5970	3045	1	Dise??o Hidr??ulico de Estructuras de Riego por Gravedad	0.0	3.0	10	2		OPT	HIDRAULICA	0		#f0ffff	#000000
5971	3046	1	Hidr??ulica de Rios	0.0	3.0	10	3		OPT	HIDRAULICA	0		#f0ffff	#000000
5972	2061	1	Hidra??lica Urbana	0.0	4.5	10	4		OPT	HIDRAULICA	0		#f0ffff	#000000
5973	3047	1	Ingenier??a de Costas	0.0	3.0	10	5		OPT	HIDRAULICA	0		#f0ffff	#000000
6429	2080	6	Recursos y Necesidades de M??xico	0.0	4.0	9	5			VERDE	1		#32cd32	#000000
6089	1413	3	Introducci??n a la Econom??a	0.0	4.0	6	1			VERDE	1		#32cd32	#000000
126	0	1	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	4	6		OPT_1	VERDE	1		#32cd32	#000000
7067	1320	13	Bioqu??mica	0.0	4.0	3	4			MORADO	1		#8a2be2	#000000
7074	1434	13	Biolog??a Celular y Tisular	2.0	2.0	4	5			MORADO	1		#8a2be2	#000000
7080	1571	13	Introducci??n a la Anatom??a y Fisiolog??a I	0.0	4.0	5	5			MORADO	1		#8a2be2	#000000
65	1506	1	Geolog??a	0.0	4.5	2	4			NARANJA	1		#ff8c00	#000000
6402	1569	6	Estad??stica	0.0	4.0	5	1			AMARILLO	1		#ffff00	#000000
6388	1067	6	Geometr??a Descriptiva Aplicada	2.0	2.0	2	5			NARANJA	1		#ff8c00	#000000
6907	510	11	Instrumentaci??n	0.0	4.0	8	2			AZUL	1		#0000ff	#f0ffff
7010	1534	12	Introducci??n a Bases de Datos Espaciales	0.0	3.0	5	5			AZUL	1		#0000ff	#f0ffff
7017	1581	12	Hidr??ulica e Hidrolog??a	0.0	4.5	7	1			AZUL	1		#0000ff	#f0ffff
7030	1854	12	Proyecto Geom??tico	0.0	3.0	9	5			AZUL	1		#0000ff	#f0ffff
7032	1947	12	Administraci??n de Proyectos	0.0	3.0	9	7			AZUL	1		#0000ff	#f0ffff
7225	2818	14	Contaminaci??n por Ruido y Control	0.0	3.0	8	5			AZUL	1		#0000ff	#f0ffff
7222	2819	14	Control de Emisiones a la Atm??sfera	0.0	3.0	8	2			AZUL	1		#0000ff	#f0ffff
5974	3048	1	Modelaci??n Computacional en Hidr??ulica	0.0	3.0	10	6		OPT	HIDRAULICA	0		#f0ffff	#000000
5975	3049	1	Temas Especiales de Hidr??ulica I	0.0	3.0	10	7		OPT	HIDRAULICA	0		#f0ffff	#000000
5976	3050	1	Temas Especiales de Hidr??ulica II	0.0	4.5	10	8		OPT	HIDRAULICA	0		#f0ffff	#000000
5977	3051	1	Edificios Sustentables	0.0	3.0	10	1		OPT	ISYA	0		#f0ffff	#000000
5978	3052	1	Energ??as Renovables en Edificios	0.0	3.0	10	2		OPT	ISYA	0		#f0ffff	#000000
5979	3053	1	Ingenier??a para el Manejo Sustentable del Agua en Edificios	0.0	3.0	10	3		OPT	ISYA	0		#f0ffff	#000000
5980	3055	1	Proyectos Sustentables de Energ??a	0.0	3.0	10	4		OPT	ISYA	0		#f0ffff	#000000
5981	3054	1	Plantas de Tratamiento de Agua Para Consumo Humano	0.0	3.0	10	5		OPT	ISYA	0		#f0ffff	#000000
5982	3056	1	Temas Especiales de Ambiental I	0.0	3.0	10	6		OPT	ISYA	0		#f0ffff	#000000
5983	3057	1	Temas Especiales de Ambiental II	0.0	4.5	10	7		OPT	ISYA	0		#f0ffff	#000000
5984	3058	1	Aeropuertos	0.0	4.5	10	1		OPT	SPYT	0		#f0ffff	#000000
5985	3059	1	Carreteras	0.0	4.5	10	2		OPT	SPYT	0		#f0ffff	#000000
5986	3060	1	Creatividad para Ingenieros	0.0	3.0	10	3		OPT	SPYT	0		#f0ffff	#000000
5987	3061	1	Ferrocarriles	0.0	3.0	10	4		OPT	SPYT	0		#f0ffff	#000000
5988	3062	1	Puertos	0.0	4.5	10	5		OPT	SPYT	0		#f0ffff	#000000
6982	1120	12	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
145	32	1	Abastecimiento de Agua Potable	0.0	3.0	7	6			AZUL	1		#0000ff	#f0ffff
146	2800	1	Alcantarillado Sanitario y Pluvial	0.0	3.0	8	1			AZUL	1		#0000ff	#f0ffff
148	2801	1	Dimensionamiento de Elementos Estructurales	0.0	3.0	8	3			AZUL	1		#0000ff	#f0ffff
149	152	1	Cimentaciones	0.0	4.5	8	4			AZUL	1		#0000ff	#f0ffff
150	234	1	Edificaci??n	0.0	3.0	8	5			AZUL	1		#0000ff	#f0ffff
151	2803	1	Ingenier??a de Tr??nsito	0.0	3.0	8	6			AZUL	1		#0000ff	#f0ffff
6019	1466	2	Prospecci??n y Exploraci??n Minera	0.0	3.0	6	1			AZUL	1		#0000ff	#f0ffff
6028	2088	2	Geotecnia de Excavaci??n	0.0	4.0	7	4			AZUL	1		#0000ff	#f0ffff
6029	1584	2	Geoestad??stica	0.0	4.0	7	5			AZUL	1		#0000ff	#f0ffff
6034	1939	2	Instalaciones Minero-Metal??rgicas	0.0	4.0	8	4			AZUL	1		#0000ff	#f0ffff
6038	2960	2	Dise??o de Operaciones Metal??rgicas	0.0	4.0	9	2			AZUL	1		#0000ff	#f0ffff
6042	2965	2	Dise??o de Operaciones Mineras	0.0	4.0	10	1			AZUL	1		#0000ff	#f0ffff
6101	2901	3	Procesamiento Digital de Se??ales	0.0	4.0	8	3			AZUL	1		#0000ff	#f0ffff
6102	423	3	Instalaciones El??ctricas	0.0	4.0	8	4			AZUL	1		#0000ff	#f0ffff
6107	1016	3	Subestaciones El??ctricas	0.0	4.0	9	4			AZUL	1		#0000ff	#f0ffff
6113	627	3	Plantas Generadoras	0.0	4.0	10	4			AZUL	1		#0000ff	#f0ffff
6026	2701	2	Explotaci??n de Minas Subterraneas	0.0	4.0	7	2	P+		AZUL	1		#0000ff	#f0ffff
6027	2703	2	Preparaci??n y Concentraci??n de Minerales	0.0	4.0	7	3	P+		AZUL	1		#0000ff	#f0ffff
5990	3063	1	Temas Especiales de Sistemas II	0.0	4.5	10	7		OPT	SPYT	0		#f0ffff	#000000
6047	1792	2	Seminario Sociohumanistico: Historia y Prospectiva de la Ingenier??a	2.0	0.0	4, 7	1		OPT	CSYH	0		#f0ffff	#000000
6048	1793	2	Seminario Sociohumanistico: Ingenier??a y Pol??ticas P??blicas	2.0	0.0	4, 7	2		OPT	CSYH	0		#f0ffff	#000000
6049	1794	2	Seminario Sociohumanistico: Ingenier??a y Sustentabilidad	2.0	0.0	4, 7	3		OPT	CSYH	0		#f0ffff	#000000
6050	1795	2	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 7	4		OPT	CSYH	0		#f0ffff	#000000
6051	1796	2	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 7	5		OPT	CSYH	0		#f0ffff	#000000
6052	3091	2	Cierre de Operaciones Mineras	0.0	4.0	9, 10	1		OPT	OPTATIVA	0		#f0ffff	#000000
6056	3094	2	Minerales no Met??licos	0.0	4.0	9, 10	5		OPT	OPTATIVA	0		#f0ffff	#000000
6057	3095	2	Molienda Fina y Ultrafina	0.0	4.0	9, 10	6		OPT	OPTATIVA	0		#f0ffff	#000000
6058	948	2	Temas Selectos	0.0	4.0	9, 10	7		OPT	OPTATIVA	0		#f0ffff	#000000
5959	3034	1	Puentes	0.0	4.5	10	5		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5949	3025	1	Introduccion a la Gerencia de Proyectos	0.0	3.0	10	1		OPT	CONSTRUCCION	0		#f0ffff	#000000
5950	3026	1	Preparaci??n de Concursos de Obra P??lbica	0.0	3.0	10	2		OPT	CONSTRUCCION	0		#f0ffff	#000000
5951	3027	1	Seguridad y Productividad en las Obras	0.0	3.0	10	3		OPT	CONSTRUCCION	0		#f0ffff	#000000
5952	3028	1	Supervision de Obras	0.0	3.0	10	4		OPT	CONSTRUCCION	0		#f0ffff	#000000
5953	3029	1	Temas Especiales de la Construcci??n I	0.0	3.0	10	5		OPT	CONSTRUCCION	0		#f0ffff	#000000
5954	3030	1	Temas Especiales de la Construcci??n II	0.0	4.5	10	6		OPT	CONSTRUCCION	0		#f0ffff	#000000
5955	274	1	Estructuras de Concreto	0.0	4.5	10	1		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5956	3032	1	Estructuras de Mamposteria	0.0	3.0	10	2		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5957	3031	1	Estructuras de Acero	0.0	4.5	10	3		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5958	3033	1	Ingenieria S??smica	0.0	3.0	10	4		OPT	ESTRUCTURAS	0		#f0ffff	#000000
5960	3035	1	Temas Especiales de Estructuras I	0.0	3.0	10	6		OPT	ESTRUCTURAS	0		#f0ffff	#000000
6627	2080	8	Recursos y Necesidades de M??xico	0.0	4.0	10	5			VERDE	1		#32cd32	#000000
6386	1228	6	Mec??nica	0.0	6.0	2	3			AMARILLO	1		#ffff00	#000000
6390	1325	6	Ecuaciones Diferenciales	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6391	1321	6	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6396	1436	6	Probabilidad	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6794	1120	10	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
7195	1335	14	Fisicoqu??mica para Ingenier??a Ambiental	0.0	4.0	3	5			AMARILLO	1		#ffff00	#000000
6868	1120	11	??lgebra	0.0	4.0	1	1			AMARILLO	1		#ffff00	#000000
6869	1121	11	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6873	1220	11	??lgebra Lineal	0.0	4.0	2	1			AMARILLO	1		#ffff00	#000000
6874	1221	11	C??lculo Integral	0.0	4.0	2	2			AMARILLO	1		#ffff00	#000000
6875	1223	11	Est??tica	0.0	4.0	2	3			AMARILLO	1		#ffff00	#000000
6878	1436	11	Probabilidad	0.0	4.0	3	1			AMARILLO	1		#ffff00	#000000
6879	1321	11	C??lculo Vectorial	0.0	4.0	3	2			AMARILLO	1		#ffff00	#000000
6884	1569	11	Estad??stica	0.0	4.0	4	1			AMARILLO	1		#ffff00	#000000
6886	1433	11	An??lisis Num??rico	0.0	4.0	4	3			AMARILLO	1		#ffff00	#000000
6887	1424	11	Matem??ticas Avanzadas	2.0	3.0	4	4			AMARILLO	1		#ffff00	#000000
6983	1121	12	C??lculo y Geometr??a Anal??tica	0.0	6.0	1	2			AMARILLO	1		#ffff00	#000000
6799	1222	10	Cultura y Comunicaci??n	2.0	0.0	1	6			VERDE	1		#32cd32	#000000
6822	1055	10	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	6			VERDE	1		#32cd32	#000000
6883	1222	11	Cultura y Comunicaci??n	2.0	0.0	3	6			VERDE	1		#32cd32	#000000
6987	1124	12	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	6			VERDE	1		#32cd32	#000000
6797	54	10	Dibujo	2.0	2.0	1	4			NARANJA	1		#ff8c00	#000000
6798	1126	10	Introducci??n a la Ingenier??a Petrolera	0.0	2.0	1	5			NARANJA	1		#ff8c00	#000000
6818	1666	10	Programaci??n Avanzada	2.0	2.0	5	2			NARANJA	1		#ff8c00	#000000
7186	1230	14	Introducci??n al Estudio del Medio Ambiente	0.0	3.0	2	2			NARANJA	1		#ff8c00	#000000
7226	2820	14	Evaluaci??n Ambiental Estrat??gica	0.0	3.0	8	6			MORADO	1		#8a2be2	#000000
7214	2610	14	Econom??a Ambiental y Ecolog??a	0.0	3.0	6	6			MORADO	1		#8a2be2	#000000
6994	1222	12	Cultura y Comunicaci??n	2.0	0.0	2	7			VERDE	1		#32cd32	#000000
7063	1222	13	Cultura y Comunicaci??n	2.0	0.0	2	6			VERDE	1		#32cd32	#000000
6200	1124	4	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	2	4			VERDE	1		#32cd32	#000000
6288	1124	5	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	2	4			VERDE	1		#32cd32	#000000
6383	1124	6	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	5			VERDE	1		#32cd32	#000000
6683	1124	9	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	2	6			VERDE	1		#32cd32	#000000
6810	1124	10	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	3	5			VERDE	1		#32cd32	#000000
6871	1124	11	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	4			VERDE	1		#32cd32	#000000
7056	1124	13	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	4			VERDE	1		#32cd32	#000000
6065	1124	3	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	4			VERDE	1		#32cd32	#000000
6502	1124	7	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	5			VERDE	1		#32cd32	#000000
6576	1124	8	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	5			VERDE	1		#32cd32	#000000
6599	1413	8	Introducci??n a la Econom??a	0.0	4.0	5	6			VERDE	1		#32cd32	#000000
61	1124	1	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	1	5			VERDE	1		#32cd32	#000000
178	2080	1	Recursos y Necesidades de M??xico	0.0	4.0	9	5			VERDE	1		#32cd32	#000000
114	1222	1	Cultura y Comunicaci??n	2.0	0.0	2	6			VERDE	1		#32cd32	#000000
6604	2602	8	Contabilidad Financiera y Costos	0.0	4.0	6	5			NARANJA	1		#ff8c00	#000000
6611	3022	8	Relaciones Laborales y Organizacionales	0.0	4.0	7	6			NARANJA	1		#ff8c00	#000000
188	1760	1	Administraci??n en Ingenier??a	0.0	3.0	10	1			NARANJA	1		#ff8c00	#000000
6021	1464	2	Fundamentos de Metalurgia Extractiva	0.0	4.0	6	3			CYAN	1		#00ffff	#000000
6022	1583	2	Mec??nica de Rocas	0.0	4.0	6	4			CYAN	1		#00ffff	#000000
6023	1441	2	Mec??nica de Fluidos	0.0	4.0	6	5			CYAN	1		#00ffff	#000000
6025	2702	2	Mac??nica Aplicada y Elementos de Construcci??n	0.0	4.0	7	1			CYAN	1		#00ffff	#000000
6031	2809	2	Gesti??n Ambiental en Mineria	4.0	0.0	8	1			CYAN	1		#00ffff	#000000
6037	2961	2	Introducci??n al Dise??o de Operaciones Mineras	0.0	4.0	9	1			CYAN	1		#00ffff	#000000
6108	145	3	El??ctronica de Potencia	0.0	4.0	9	5			CYAN	1		#00ffff	#000000
139	1052	1	??tica Profesional	2.0	2.0	6	6			VERDE	1		#32cd32	#000000
6024	1055	2	Literatura Hispanoamericana Contemporanea	0.0	3.0	6	3			VERDE	1		#32cd32	#000000
6036	1052	2	??tica Profesional	2.0	2.0	8	6			VERDE	1		#32cd32	#000000
6046	2080	2	Recursos y Necesidades de M??xico	0.0	4.0	10	5			VERDE	1		#32cd32	#000000
6006	1124	2	Redacci??n y Exposici??n de Temas de Ingenier??a	2.0	2.0	3	6			VERDE	1		#32cd32	#000000
6109	1052	3	??tica Profesional	2.0	2.0	9	6			VERDE	1		#32cd32	#000000
6114	2080	3	Recursos y Necesidades de M??xico	0.0	4.0	10	5			VERDE	1		#32cd32	#000000
6035	2807	2	Administraci??n Aplicada a la Miner??a	0.0	4.0	8	5			NARANJA	1		#ff8c00	#000000
6041	2959	2	An??lisis y Evaluaci??n de Proyectos de Inversi??n	0.0	4.0	9	5			NARANJA	1		#ff8c00	#000000
6043	2964	2	Gesti??n de Seguridad e Higiene	0.0	4.0	10	2			NARANJA	1		#ff8c00	#000000
191	2915	1	Ingenier??a del Transporte II	0.0	3.0	10	4			AZUL	1		#0000ff	#f0ffff
\.


--
-- TOC entry 2963 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera (id, clave, nombre, year, date_actualizacion) FROM stdin;
5	111	Ingenier??a en Telecomunicaciones	2016	2020-12-15 14:15:47.772-06
6	112	Ingenier??a Geof??sica	2016	2020-12-15 14:15:47.772-06
7	113	Ingenier??a Geol??gica	2016	2020-12-15 14:15:47.772-06
8	114	Ingenier??a Industrial	2016	2020-12-15 14:15:47.772-06
9	115	Ingenier??a Mec??nica	2016	2020-12-15 14:15:47.772-06
10	117	Ingenier??a Petrolera	2016	2020-12-15 14:15:47.772-06
11	124	Ingenier??a Mecatr??nica	2016	2020-12-15 14:15:47.772-06
12	125	Ingenier??a Geom??tica	2016	2020-12-15 14:15:47.772-06
13	135	Ingenier??a en Sistemas Biom??dicos	2016	2020-12-15 14:15:47.772-06
14	137	Ingenier??a Ambiental	2016	2020-12-15 14:15:47.772-06
16	190	Ingenier??a Aeroespacial	2021	2020-12-15 14:15:47.772-06
2	108	Ingenier??a de Minas y Metalurgia	2016	2022-02-16 21:46:48.406-06
3	109	Ingenier??a El??ctrica Electr??nica	2016	2022-02-16 21:56:40.574-06
4	110	Ingenier??a en Computaci??n	2016	2022-02-16 22:48:23.485-06
1	107	Ingenier??a Civil	2016	2022-02-16 23:54:25.42-06
\.


--
-- TOC entry 2975 (class 0 OID 24818)
-- Dependencies: 215
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (id, estado, descripcion) FROM stdin;
1	activo	Usuario activo
3	borrado	Usuario eliminado
4	proceso	Usuario en proceso de activacion
2	unavilable	deshabilitado
\.


--
-- TOC entry 2986 (class 0 OID 49572)
-- Dependencies: 226
-- Data for Name: nota_mapa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nota_mapa (id, carrera, orden, simbolo, leyenda) FROM stdin;
1	0	1	(L+)	Indica laboratorio por separado
4	0	2	(L)	Indica laboratorio incluido
5	0	3	(P+)	Indica pr??cticas por separado
6	0	4	(P)	Indica pr??cticas incluidas
7	0	5	t	Indica horas te??ricas
8	0	6	p	Indica horas pr??cticas
9	0	7	T	Indica total de horas
10	0	8	-	Indica seriaci??n obligatoria
11	1	1	1.	PARA CURSAR LA ASIGNATURA DE PROYECTOS Y LAS OPTATIVAS ES REQUISITO CUBRIR AL MENOS 390 CR??DITOS  DEL PLAN DE ESTUDIOS.
12	1	2	2.	SE DEBER??N CURSAR AL MENOS 18 CR??DITOS DE ASIGNATURAS OPTATIVAS DE UNO DE LOS SEIS CAMPOS DISCIPLINARIOS.
13	1	3	3.	SE DEBER??N CURSAR POR LO MENOS 12 CR??DITOS DE UNA O DOS DE LOS CINCO CAMPOS DISCIPLINARIOS RESTANTES.
14	1	4	4.	EL ALUMNO DEBER?? CUBRIR COMO M??NIMO 6 CR??DITOS DE ASIGNATURAS OPTATIVAS SOCIOHUMAN??STICAS. PODRA HACERLO CURSANDO DOS ASIGNATURAS DE 2 Y 4 CR??DITOS, RESPECTIVAMENTE, COMO LO INDICA EL MAPA CURRICULAR, O BIEN, MEDIANTE OTRAS COMBINACIONES PARA EFECTOS DE LA APLICACION DEL BLOQUE M??VIL, DEBER?? CONSIDERARSE LA UBICACI??N DEL SEMESTRE EN EL QUE SE ENCUENTRA LA SEGUNDA ASIGNATURA OPTATIVA SOCIOHUMAN??STICA.
15	1	5	5.	LA NOMENCLATURA (L)  QUE APARECE EN ALGUNAS DE LAS ASIGNATURAS, INDICA HORAS PR??CTICAS DE LABORATORIO O VISITAS A PROYECTOS DE INGENIER??A, SIN VALOR EN CR??DITOS.
\.


--
-- TOC entry 2985 (class 0 OID 41321)
-- Dependencies: 225
-- Data for Name: optativa_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_asignatura (id, tabla, asignatura) FROM stdin;
10	2	5949
11	2	5950
12	2	5951
13	2	5952
14	2	5953
15	2	5954
16	3	5955
17	3	5956
18	3	5957
19	3	5958
20	3	5959
21	3	5960
22	3	5961
23	4	5962
24	4	5963
25	4	5964
26	4	5965
27	4	5966
28	4	5967
29	4	5968
30	5	5969
31	5	5970
32	5	5971
33	5	5972
34	5	5973
35	5	5974
36	5	5975
37	5	5976
38	6	5977
39	6	5978
40	6	5979
41	6	5980
42	6	5981
44	6	5983
45	7	5984
46	7	5985
47	7	5986
48	7	5987
49	7	5988
50	7	5989
51	7	5990
43	2	5955
52	2	5955
67	10	5940
68	10	5941
69	10	5942
70	10	5943
71	10	5944
72	10	5945
73	10	5946
74	10	5947
75	10	5948
\.


--
-- TOC entry 2981 (class 0 OID 41287)
-- Dependencies: 221
-- Data for Name: optativa_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_categoria (id, container, orden, titulo, nota_head, nota_foot) FROM stdin;
2	1	3	Construcci??n	Nota: asignaturas del plan de Estudios, campos disciplinarios	
3	1	4	Estructuras		
4	1	5	Geotecnia		
5	1	6	Hidr??ulica		
6	1	7	Ingenier??a Sanitaria y Ambiental		
7	1	8	Sistemas, Planeaci??n y Transporte		
15	1	1	Optativas de Ciencias Sociales y Humanidades		
\.


--
-- TOC entry 2979 (class 0 OID 41265)
-- Dependencies: 219
-- Data for Name: optativa_container; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_container (id, carrera, orden, titulo, nota_head, nota_foot) FROM stdin;
1	1	1	Asignaturas Optativas		* Semestre(s) recomendado(s)
\.


--
-- TOC entry 2983 (class 0 OID 41304)
-- Dependencies: 223
-- Data for Name: optativa_tabla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_tabla (id, categoria, orden, titulo, nota_head, nota_foot) FROM stdin;
2	2	1			
3	3	1			
4	4	1			
5	5	1			
6	6	1			
7	7	1			
10	15	1			
\.


--
-- TOC entry 2973 (class 0 OID 24807)
-- Dependencies: 213
-- Data for Name: rol_acceso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol_acceso (id, rol, descripcion) FROM stdin;
0	developer	Developer de la aplicacion
1	tester	tester de la aplicaion
2	qa	qa de la aplicacion\n
3	root\n	god of api
4	admin	Administrador de los usuarios de la aplicaci??n
5	visual	visualizador de los campos de todas las asignatura
6	academico	Academico capaz de editar las asignaturas
7	mapa	visualizador con solo acceso a generar mapa visual
\.


--
-- TOC entry 2969 (class 0 OID 16420)
-- Dependencies: 209
-- Data for Name: seriacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seriacion (id, carrera, asignatura, asignatura_seriada, color) FROM stdin;
24	1	57	62	BLACK
25	1	58	63	BLACK
26	1	58	64	BLACK
27	1	63	115	BLACK
28	1	63	116	BLACK
29	1	64	117	BLACK
30	1	64	118	BLACK
31	1	115	122	BLACK
32	1	117	129	BLACK
33	1	118	124	BLACK
34	1	119	125	BLACK
35	1	121	134	BLACK
36	1	121	137	BLACK
37	1	123	130	BLACK
38	1	124	131	BLACK
39	1	125	132	BLACK
40	1	128	134	BLACK
41	1	129	135	BLACK
42	1	129	141	BLACK
43	1	130	136	BLACK
44	1	132	144	BLACK
45	1	133	140	BLACK
46	1	134	140	BLACK
47	1	137	151	BLACK
48	1	137	147	BLACK
49	1	140	187	BLACK
50	1	140	174	BLACK
51	1	141	175	BLACK
52	1	142	148	BLACK
53	1	143	149	BLACK
54	1	144	150	BLACK
55	1	147	175	BLACK
56	1	148	176	BLACK
57	1	150	188	BLACK
58	1	151	187	BLACK
59	1	187	191	BLACK
\.


--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 210
-- Name: Acceso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Acceso_id_seq"', 12, true);


--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 216
-- Name: Access_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Access_token_id_seq"', 18, true);


--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 204
-- Name: Agrupacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Agrupacion_id_seq"', 78, true);


--
-- TOC entry 3009 (class 0 OID 0)
-- Dependencies: 206
-- Name: Asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Asignatura_id_seq"', 7503, true);


--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 202
-- Name: Carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carrera_id_seq"', 16, true);


--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 214
-- Name: Estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Estado_id_seq"', 5, true);


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 212
-- Name: Rol_acceso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_acceso_id_seq"', 1, false);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 208
-- Name: Seriacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Seriacion_id_seq"', 59, true);


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 227
-- Name: nota_mapa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nota_mapa_id_seq', 23, true);


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 224
-- Name: optativa_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_asignatura_id_seq', 75, true);


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 220
-- Name: optativa_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_categoria_id_seq', 15, true);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 218
-- Name: optativa_container_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_container_id_seq', 3, true);


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 222
-- Name: optativa_tabla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_tabla_id_seq', 10, true);


--
-- TOC entry 2804 (class 2606 OID 24804)
-- Name: acceso Acceso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT "Acceso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2792 (class 2606 OID 16409)
-- Name: agrupacion Agrupacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT "Agrupacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2796 (class 2606 OID 16417)
-- Name: asignatura Asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "Asignatura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2790 (class 2606 OID 16401)
-- Name: carrera Carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "Carrera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2810 (class 2606 OID 24826)
-- Name: estado Estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "Estado_pkey" PRIMARY KEY (id);


--
-- TOC entry 2808 (class 2606 OID 24815)
-- Name: rol_acceso Rol_acceso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_acceso
    ADD CONSTRAINT "Rol_acceso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2800 (class 2606 OID 16425)
-- Name: seriacion Seriacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT "Seriacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2794 (class 2606 OID 16435)
-- Name: agrupacion agrupacion_agrupacion_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT agrupacion_agrupacion_unique UNIQUE (agrupacion);


--
-- TOC entry 2806 (class 2606 OID 33080)
-- Name: acceso mail_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT mail_unique UNIQUE (mail);


--
-- TOC entry 2825 (class 2606 OID 49586)
-- Name: nota_mapa nota_mapa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nota_mapa
    ADD CONSTRAINT nota_mapa_pkey PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 41326)
-- Name: optativa_asignatura optativa_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asignatura_pkey PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 41295)
-- Name: optativa_categoria optativa_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT optativa_categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 41270)
-- Name: optativa_container optativa_container_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT optativa_container_pkey PRIMARY KEY (id);


--
-- TOC entry 2819 (class 2606 OID 41312)
-- Name: optativa_tabla optativa_tabla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT optativa_tabla_pkey PRIMARY KEY (id);


--
-- TOC entry 2797 (class 1259 OID 16441)
-- Name: fki_agrupacion_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_agrupacion_fkey ON public.asignatura USING btree (agrupacion);


--
-- TOC entry 2801 (class 1259 OID 33072)
-- Name: fki_asignatura_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asignatura_fkey ON public.seriacion USING btree (asignatura);


--
-- TOC entry 2802 (class 1259 OID 33078)
-- Name: fki_asignatura_seriada_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asignatura_seriada_fkey ON public.seriacion USING btree (asignatura_seriada);


--
-- TOC entry 2798 (class 1259 OID 33039)
-- Name: fki_carrera_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_carrera_fkey ON public.asignatura USING btree (carrera);


--
-- TOC entry 2814 (class 1259 OID 41301)
-- Name: fki_categoria_container_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_categoria_container_fkey ON public.optativa_categoria USING btree (container);


--
-- TOC entry 2811 (class 1259 OID 41284)
-- Name: fki_container_carrera_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_container_carrera_fkey ON public.optativa_container USING btree (carrera);


--
-- TOC entry 2820 (class 1259 OID 41338)
-- Name: fki_optativa_asigantura_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_optativa_asigantura_fkey ON public.optativa_asignatura USING btree (asignatura);


--
-- TOC entry 2821 (class 1259 OID 41332)
-- Name: fki_optativa_tabla_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_optativa_tabla_fkey ON public.optativa_asignatura USING btree (tabla);


--
-- TOC entry 2817 (class 1259 OID 41318)
-- Name: fki_tabla_categoria_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_tabla_categoria_fkey ON public.optativa_tabla USING btree (categoria);


--
-- TOC entry 2826 (class 2606 OID 16436)
-- Name: asignatura agrupacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES public.agrupacion(agrupacion) NOT VALID;


--
-- TOC entry 2828 (class 2606 OID 33067)
-- Name: seriacion asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2829 (class 2606 OID 33073)
-- Name: seriacion asignatura_seriada_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_seriada_fkey FOREIGN KEY (asignatura_seriada) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2827 (class 2606 OID 33062)
-- Name: asignatura carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 2827
-- Name: CONSTRAINT carrera_fkey ON asignatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT carrera_fkey ON public.asignatura IS 'llave foranea al id de carrera';


--
-- TOC entry 2830 (class 2606 OID 41274)
-- Name: optativa_container carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 2832 (class 2606 OID 41296)
-- Name: optativa_categoria categoria_container_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT categoria_container_fkey FOREIGN KEY (container) REFERENCES public.optativa_container(id) NOT VALID;


--
-- TOC entry 2831 (class 2606 OID 41279)
-- Name: optativa_container container_carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT container_carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 2835 (class 2606 OID 41333)
-- Name: optativa_asignatura optativa_asigantura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asigantura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2834 (class 2606 OID 41327)
-- Name: optativa_asignatura optativa_tabla_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_tabla_fkey FOREIGN KEY (tabla) REFERENCES public.optativa_tabla(id) NOT VALID;


--
-- TOC entry 2833 (class 2606 OID 41313)
-- Name: optativa_tabla tabla_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT tabla_categoria_fkey FOREIGN KEY (categoria) REFERENCES public.optativa_categoria(id) NOT VALID;


-- Completed on 2022-02-24 21:50:45

--
-- PostgreSQL database dump complete
--

