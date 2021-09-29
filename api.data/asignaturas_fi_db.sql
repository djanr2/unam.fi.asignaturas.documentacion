--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2021-09-29 16:40:09

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
-- TOC entry 2972 (class 0 OID 0)
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
-- TOC entry 2973 (class 0 OID 0)
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
-- TOC entry 2974 (class 0 OID 0)
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
    enlace_pdf character varying(200)
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
-- TOC entry 2975 (class 0 OID 0)
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
-- TOC entry 2976 (class 0 OID 0)
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
-- TOC entry 2977 (class 0 OID 0)
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
-- TOC entry 2978 (class 0 OID 0)
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
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 208
-- Name: Seriacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Seriacion_id_seq" OWNED BY public.seriacion.id;


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
-- TOC entry 2980 (class 0 OID 0)
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
    titulo character varying(200),
    nota_head text,
    nota_foot text
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
-- TOC entry 2981 (class 0 OID 0)
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
    titulo character varying(200),
    nota_head text,
    nota_foot text
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
-- TOC entry 2982 (class 0 OID 0)
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
    titulo character varying(200),
    nota_head text,
    nota_foot text
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
-- TOC entry 2983 (class 0 OID 0)
-- Dependencies: 222
-- Name: optativa_tabla_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.optativa_tabla_id_seq OWNED BY public.optativa_tabla.id;


--
-- TOC entry 2764 (class 2604 OID 24799)
-- Name: acceso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso ALTER COLUMN id SET DEFAULT nextval('public."Acceso_id_seq"'::regclass);


--
-- TOC entry 2767 (class 2604 OID 24846)
-- Name: acceso_token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso_token ALTER COLUMN id SET DEFAULT nextval('public."Access_token_id_seq"'::regclass);


--
-- TOC entry 2761 (class 2604 OID 16407)
-- Name: agrupacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion ALTER COLUMN id SET DEFAULT nextval('public."Agrupacion_id_seq"'::regclass);


--
-- TOC entry 2762 (class 2604 OID 16415)
-- Name: asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public."Asignatura_id_seq"'::regclass);


--
-- TOC entry 2760 (class 2604 OID 16399)
-- Name: carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera ALTER COLUMN id SET DEFAULT nextval('public."Carrera_id_seq"'::regclass);


--
-- TOC entry 2766 (class 2604 OID 24821)
-- Name: estado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public."Estado_id_seq"'::regclass);


--
-- TOC entry 2771 (class 2604 OID 41324)
-- Name: optativa_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura ALTER COLUMN id SET DEFAULT nextval('public.optativa_asignatura_id_seq'::regclass);


--
-- TOC entry 2769 (class 2604 OID 41290)
-- Name: optativa_categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria ALTER COLUMN id SET DEFAULT nextval('public.optativa_categoria_id_seq'::regclass);


--
-- TOC entry 2768 (class 2604 OID 41268)
-- Name: optativa_container id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container ALTER COLUMN id SET DEFAULT nextval('public.optativa_container_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 41307)
-- Name: optativa_tabla id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla ALTER COLUMN id SET DEFAULT nextval('public.optativa_tabla_id_seq'::regclass);


--
-- TOC entry 2765 (class 2604 OID 24810)
-- Name: rol_acceso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_acceso ALTER COLUMN id SET DEFAULT nextval('public."Rol_acceso_id_seq"'::regclass);


--
-- TOC entry 2763 (class 2604 OID 16423)
-- Name: seriacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion ALTER COLUMN id SET DEFAULT nextval('public."Seriacion_id_seq"'::regclass);


--
-- TOC entry 2952 (class 0 OID 24796)
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
-- TOC entry 2958 (class 0 OID 24843)
-- Dependencies: 217
-- Data for Name: acceso_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acceso_token (id, usuario, token, created, lifespan) FROM stdin;
12	djanr2@hotmail.com	S7Bl7lyCEw2zbOA13fa76GDtFdmFmJeScX4HdRkmmmFmiqoeFVnMOFIhu6kc/bvyaiKZQKQ2MlMsrRe6IAp7NketsEaBycOHplkabpbKrvE2RAbe4fXtZ2iE3g+RucVXkRyiQnXchYQ9LGUFOO8FFL7PbuFGX7Wc5pnCB4JnKesfdf5ErBzmVGucFa958FFvvAHJRQGbFoilMoPjav0XNHxaMN589X0qEvbaFN1KL7tGRGFIqDLfEgkC3QLHvRXtCdTDnjRccsJCR5eUqIOnCjBVPKZk83yXyLWjI6zZOrS4E+9PGdWAxJnQHgEi8xmyL9XwnSspOdxf/SAwuNUWn98a+e0yzdjqu2XVL5gaFiMvbpeiMXPP7Y8aXQzh5WqjigTcOcpPZ/OHTUIqrXWeyuIVs7sOYx0FDqbhse3eay5zq/+crhJ+XRcynP2ZNmL6co69EvlmabnzcyyhWmSBIQ==	2020-12-18 20:44:32.097-06	2021-01-25 04:44:32.097-06
\.


--
-- TOC entry 2946 (class 0 OID 16404)
-- Dependencies: 205
-- Data for Name: agrupacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agrupacion (id, agrupacion, nombre) FROM stdin;
1	AMARILLO	Ciencias Básicas
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
-- TOC entry 2948 (class 0 OID 16412)
-- Dependencies: 207
-- Data for Name: asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignatura (id, clave, carrera, nombre, horas_practicas, horas_teoricas, semestre, orden, nota, optativa, agrupacion, tamano, enlace_pdf) FROM stdin;
6229	0	4	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	8	1	 	OPT_1	VERDE	1	 
6237	0	4	Optativa de Campo de Profundización	0.0	4.0	9	4	 	OPT_1	AZUL	1	 
6239	0	4	Asignaturas OPTATIVA de Campo de Profundización	0.0	40.0	10	1	 	OPT_1	AZUL	5	 
6240	1789	4	Ciencia, Tecnología y Sociedad	0.0	2.0	8	1	 	OPT	CSYH	0	 
6241	1790	4	Introducción al Análisis Económico Empresarial	0.0	2.0	8	2	 	OPT	CSYH	0	 
6242	1055	4	Literatura Hispanoamericana Contemporanea	0.0	3.0	8	3	 	OPT	CSYH	0	 
6243	1791	4	México Nación Multicultural	0.0	2.0	8	4	 	OPT	CSYH	0	 
6244	1792	4	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	8	5	 	OPT	CSYH	0	 
6245	1793	4	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	8	6	 	OPT	CSYH	0	 
6246	1794	4	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	8	7	 	OPT	CSYH	0	 
6247	1795	4	Taller Sociohumanistico- Creatividad	2.0	0.0	8	8	 	OPT	CSYH	0	 
6248	1796	4	Taller Sociohumanistico- Liderazgo	2.0	0.0	8	9	 	OPT	CSYH	0	 
6249	1765	4	Dispositivos de Almacenamiento y Entrada-Salida	2.0	3.0	9, 10	1	L	OPT	OSC	0	 
6250	2901	4	Procesamiento Digital de Señales	0.0	4.0	9, 10	2	 	OPT	OSC	0	 
6251	2914	4	Sistemas de Control	2.0	4.0	9, 10	3	L	OPT	OSC	0	 
6252	2927	4	Sistemas Embebidos Avanzados	2.0	3.0	9, 10	4	 	OPT	OSC	0	 
6253	2928	4	Administración de Proyectos TIC	0.0	4.0	9, 10	1	 	OPT	IS	0	 
6254	2929	4	Redes de Datos Avanzadas	0.0	4.0	9, 10	2	 	OPT	IS	0	 
6255	2930	4	Criptografía	0.0	4.0	9, 10	3	 	OPT	IS	0	 
6256	2931	4	Negocios Electrónicos y Desarrollo Web	0.0	4.0	9, 10	4	 	OPT	IS	0	 
6257	1866	4	Administración de Redes	2.0	3.0	9, 10	1	L	OPT	TIC	0	 
6258	2932	4	Análisis y Procesamiento Inteligente de Textos	0.0	4.0	9, 10	2	 	OPT	TIC	0	 
6259	2933	4	Minería de Datos	0.0	4.0	9, 10	3	 	OPT	TIC	0	 
6260	2934	4	Seguridad Informática Básica	0.0	4.0	9, 10	4	 	OPT	TIC	0	 
6261	2944	4	Administración de Centros de Tecnología de la Información	0.0	4.0	10	1	 	OPT	OPTATIVA	0	 
6262	2945	4	Administración de Servicios de Internet	0.0	4.0	10	2	 	OPT	OPTATIVA	0	 
6263	2946	4	Arquitectura Cliente Servidor	0.0	3.0	10	3	 	OPT	OPTATIVA	0	 
6264	2947	4	Bases de Datos Distribuidas	0.0	4.0	10	4	 	OPT	OPTATIVA	0	 
6265	2948	4	Computación Grafica Avanzada	0.0	4.0	10	5	 	OPT	OPTATIVA	0	 
6266	674	4	Cómputo Móvil	0.0	3.0	10	6	 	OPT	OPTATIVA	0	 
6267	2949	4	Física Cuántica	0.0	4.0	10	7	 	OPT	OPTATIVA	0	 
6268	2950	4	Procesamiento del Lenguaje Natural	0.0	3.0	10	8	 	OPT	OPTATIVA	0	 
6269	1916	4	Procesamiento Digital de Imagenes	0.0	4.0	10	9	 	OPT	OPTATIVA	0	 
6270	1018	4	Procesamiento Digital de Voz	0.0	4.0	10	10	 	OPT	OPTATIVA	0	 
6271	2951	4	Programación Masiva en Arquitectutra Unificada	0.0	4.0	10	11	 	OPT	OPTATIVA	0	 
6272	2952	4	Proyecto de Investigacion para Ingeniería en Computación	0.0	3.0	10	12	 	OPT	OPTATIVA	0	 
6273	517	4	Reconocimiento de Patrones	0.0	3.0	10	13	 	OPT	OPTATIVA	0	 
6274	2953	4	Robots Móviles	0.0	3.0	10	14	 	OPT	OPTATIVA	0	 
6275	2954	4	Seguridad Informática Avanzada	2.0	3.0	10	15	L	OPT	OPTATIVA	0	 
6276	2955	4	Seminario de Titulación para Ingenieros en Computación	0.0	3.0	10	16	 	OPT	OPTATIVA	0	 
6277	2956	4	Temas Selectos de Ingeniería en Computación I	0.0	3.0	10	17	 	OPT	OPTATIVA	0	 
6278	2957	4	Temas Selectos de Ingeniería en Computación II	0.0	3.0	10	18	 	OPT	OPTATIVA	0	 
6279	2958	4	Temas Selectos de Ingeniería en Computación III	0.0	4.0	10	19	 	OPT	OPTATIVA	0	 
6226	434	4	Compiladores	0.0	4.0	7	4	 		AZUL	1	 
6322	0	5	Asignatura de Campo de Profundización	0.0	3.0	8	2	 	OPT_1	AZUL	1	 
6327	0	5	Asignatura de Campo de Profundización	0.0	3.0	9	1	 	OPT_1	AZUL	1	 
6328	0	5	Asignatura de Campo de Profundización	0.0	3.0	9	2	 	OPT_1	AZUL	1	 
6289	1227	5	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		NARANJA	1	 
7372	1120	16	Álgebra	0.0	4.0	1	1			AMARILLO	1	
7373	1121	16	Cálculo y Geometría Analítica	0.0	6.0	1	2			AMARILLO	1	
7374	1123	16	Química	2.0	4.0	1	3	L+		AMARILLO	1	
7375	1130	16	Fundamentos de Física	2.0	2.0	1	4	L		AMARILLO	1	
7376	1144	16	Introducción a Ingeniería Aeroespacial	0.0	2.0	1	5			NARANJA	1	
7377	1124	16	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	6			VERDE	1	
7378	1220	16	Álgebra Lineal	0.0	4.0	2	1			AMARILLO	1	
7379	1221	16	Cálculo Integral	0.0	4.0	2	2			AMARILLO	1	
7380	1223	16	Estática	0.0	4.0	2	3			AMARILLO	1	
7381	1245	16	Medio Ambiente Aeroespacial	0.0	2.0	2	4			CYAN	1	
7382	1122	16	Fundamentos de Programación	2.0	4.0	2	5	L		NARANJA	1	
7383	1219	16	Dibujo Industrial	4.0	2.0	2	6	L		NARANJA	1	
7384	1337	16	Fundamentos de Probabilidad y Estadística	0.0	4.0	3	1			AMARILLO	1	
7385	1321	16	Cálculo Vectorial	0.0	4.0	3	2			AMARILLO	1	
7386	1325	16	Ecuaciones Diferenciales	0.0	4.0	3	3			AMARILLO	1	
7387	1322	16	Cinemática y Dinámica	0.0	4.0	3	4			AMARILLO	1	
6012	0	2	Taller Optativo Sociohumanístico	2.0	0.0	4	6	 	OPT_1	VERDE	1	 
7388	1437	16	Termodinámica	2.0	4.0	3	5	L+		AMARILLO	1	
6333	0	5	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	9	7	 	OPT_1	VERDE	1	 
6334	1789	5	Ciencia, Tecnología y Sociedad	0.0	2.0	9	1	 	OPT	CSYH	0	 
6335	1790	5	Introducción al Análisis Económico Empresarial	0.0	2.0	9	2	 	OPT	CSYH	0	 
6336	1055	5	Literatura Hispanoamericana Contemporanea	0.0	3.0	9	3	 	OPT	CSYH	0	 
6337	1791	5	México Nación Multicultural	0.0	2.0	9	4	 	OPT	CSYH	0	 
6338	1792	5	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	9	5	 	OPT	CSYH	0	 
6339	1793	5	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	9	6	 	OPT	CSYH	0	 
6340	1794	5	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	9	7	 	OPT	CSYH	0	 
6341	1795	5	Taller Sociohumanistico- Creatividad	2.0	0.0	9	8	 	OPT	CSYH	0	 
6342	1796	5	Taller Sociohumanistico- Liderazgo	2.0	0.0	9	9	 	OPT	CSYH	0	 
6343	2300	5	Fundamentos de Radioelectrónica Espacial	0.0	3.0	8, 9	1	 	OPT	ESPACIALES	0	 
6344	2301	5	Fundamentos de Sistemas de Comandos y Manejo de Información	0.0	3.0	8, 9	2	 	OPT	ESPACIALES	0	 
6345	2302	5	Innovación Tecnología y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	3	 	OPT	ESPACIALES	0	 
6346	2303	5	Introducción al Análisis de Compatibilidad Electromagnética	0.0	3.0	8, 9	4	 	OPT	ESPACIALES	0	 
6347	2304	5	Proyecto de Investigación para Telecomunicaciones	0.0	3.0	8, 9	5	 	OPT	ESPACIALES	0	 
6348	2305	5	Temas Selectos de Normalización y Desarrollo Industrial	0.0	3.0	8, 9	6	 	OPT	ESPACIALES	0	 
6349	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	7	 	OPT	ESPACIALES	0	 
6350	2311	5	Codificación Multimedia	0.0	3.0	8, 9	1	 	OPT	RADIOCOMUNICACION	0	 
6351	2302	5	Innovación Tecnología y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2	 	OPT	RADIOCOMUNICACION	0	 
6352	2304	5	Proyecto de Investigación para Telecomunicaciones	0.0	3.0	8, 9	3	 	OPT	RADIOCOMUNICACION	0	 
6353	2055	5	Radiodifusión	0.0	3.0	8, 9	4	 	OPT	RADIOCOMUNICACION	0	 
6354	2309	5	Redes Embebidas Inalámbricas	0.0	3.0	8, 9	5	 	OPT	RADIOCOMUNICACION	0	 
6355	2305	5	Temas Selectos de Normalización y Desarrollo Industrial	0.0	3.0	8, 9	6	 	OPT	RADIOCOMUNICACION	0	 
6356	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	7	 	OPT	RADIOCOMUNICACION	0	 
6357	2312	5	Transmisión Multimedia	0.0	3.0	8, 9	8	 	OPT	RADIOCOMUNICACION	0	 
6358	2302	5	Innovación Tecnología y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	1	 	OPT	POLITICA	0	 
6359	2307	5	Política y Legislación de las Telecomunicaciones	0.0	3.0	8, 9	2	 	OPT	POLITICA	0	 
6360	2304	5	Proyecto de Investigación para Telecomunicaciones	0.0	3.0	8, 9	3	 	OPT	POLITICA	0	 
6361	2308	5	Tecnologías para la Sociedad de la Información	0.0	3.0	8, 9	4	 	OPT	POLITICA	0	 
6362	2305	5	Temas Selectos de Normalización y Desarrollo Industrial	0.0	3.0	8, 9	5	 	OPT	POLITICA	0	 
6363	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	6	 	OPT	POLITICA	0	 
6364	2313	5	Antenas Reconfigurables y Arreglos de Antenas	0.0	3.0	8, 9	1	 	OPT	RADIOFRECUENCIA	0	 
6365	2302	5	Innovación Tecnología y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2	 	OPT	RADIOFRECUENCIA	0	 
7389	1222	16	Cultura y Comunicación	2.0	0.0	3	6			VERDE	1	
7390	1443	16	Análisis de Sistemas y Señales	2.0	4.0	4	1	L+		AZUL	1	
7391	1414	16	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	
7392	1433	16	Análisis Numérico	0.0	4.0	4	3			AMARILLO	1	
7393	1424	16	Matemáticas Avanzadas	2.0	3.0	4	4			AMARILLO	1	
7394	1476	16	Fundamentos de Macánica de Vuelo	0.0	3.0	4	5			CYAN	1	
7395	0	16	Optativa de Ciencias Sociales y Humanidades	0.0	3.0	4	6		OPT_1	VERDE	1	
7396	1592	16	Análisis de Circuitos Eléctricos	2.0	4.0	5	1	L+		CYAN	1	
7397	879	16	Teoría Electromagnetica	2.0	4.0	5	2	L+		CYAN	1	
7398	1477	16	Derecho Aéreo Y Espacial	0.0	3.0	5	3			NARANJA	1	
7399	462	16	Mecánica de Fluidos I	2.0	4.0	5	4	L+		CYAN	1	
7400	1570	16	Ingeniería de Materiales	2.0	4.0	5	5	L+		CYAN	1	
7401	1413	16	Introducción a la Economía	0.0	4.0	5	6			ROSA	1	
7402	1618	16	Dispositivos y Circuitos Electrónicos	2.0	4.0	6	1	L+		CYAN	1	
7403	1686	16	Sistemas de Comunicaciones	2.0	3.0	6	2			CYAN	1	
7404	508	16	Modelado de Sistmas Físicos	0.0	4.0	6	3			CYAN	1	
7405	2614	16	Ingeniería Térmica	0.0	4.0	6	4			CYAN	1	
7406	1540	16	Mecánica de Sólidos	0.0	4.0	6	5			CYAN	1	
7407	1052	16	Ética Profesional	2.0	2.0	6	6			VERDE	1	
7408	1617	16	Diseño Digital	2.0	4.0	7	1	L+		CYAN	1	
7409	2714	16	Fundamentos de Sistemsa Electrónicos Analógicos	2.0	4.0	7	2	L+		CYAN	1	
7410	551	16	Control Automático	0.0	4.0	7	3			CYAN	1	
7411	2713	16	Aerodinámica	0.0	3.0	7	4			AZUL	1	
7412	2715	16	Vibraciones	0.0	3.0	7	5			AZUL	1	
7413	1955	16	Evaluación de Proyectos de Inversión	0.0	4.0	7	6			ROSA	1	
6075	0	3	Optativa de Competencias Profesionales	2.0	2.0	3	4	 	OPT_1	NARANJA	1	 
6077	0	3	Optativa(s) de Ciencias Sociales y Humanidades	2.0	2.0	3	6	 	OPT_1	VERDE	1	 
6366	2314	5	Introducción a los Sistemas Embebidos	0.0	3.0	8, 9	3	 	OPT	RADIOFRECUENCIA	0	 
6367	2304	5	Proyecto de Investigación para Telecomunicaciones	0.0	3.0	8, 9	4	 	OPT	RADIOFRECUENCIA	0	 
6368	2315	5	Redes Ópticas y Acceso	0.0	3.0	8, 9	5	 	OPT	RADIOFRECUENCIA	0	 
6369	2309	5	Redes Embebidas Inalámbricas	0.0	3.0	8, 9	6	 	OPT	RADIOFRECUENCIA	0	 
6370	2305	5	Temas Selectos de Normalización y Desarrollo Industrial	0.0	3.0	8, 9	7	 	OPT	RADIOFRECUENCIA	0	 
6371	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	8	 	OPT	RADIOFRECUENCIA	0	 
6372	674	5	Cómputo Móvil	0.0	3.0	8, 9	1	 	OPT	REDES	0	 
6373	2302	5	Innovación Tecnología y prospectiva de las Telecomunicaciones	0.0	3.0	8, 9	2	 	OPT	REDES	0	 
6374	2310	5	Tecnologías e Interconexión de Redes	0.0	3.0	8, 9	3	 	OPT	REDES	0	 
6375	2304	5	Proyecto de Investigación para Telecomunicaciones	0.0	3.0	8, 9	4	 	OPT	REDES	0	 
6376	2309	5	Redes Embebidas Inalámbricas	0.0	3.0	8, 9	6	 	OPT	REDES	0	 
6377	2305	5	Temas Selectos de Normalización y Desarrollo Industrial	0.0	3.0	8, 9	7	 	OPT	REDES	0	 
6378	2306	5	Temas Selectos de Telecomunicaciones	0.0	3.0	8, 9	8	 	OPT	REDES	0	 
7414	2830	16	Fundamenteos de Antenas y Sistemas de Radiotranceptores	2.0	3.0	8	1	L+		AZUL	1	
7415	1860	16	Transferencia de Calor	2.0	4.0	8	2	L+		CYAN	1	
6416	0	6	Asignatura de Campo de Profundización	0.0	4.0	7	3	 	OPT_1	AZUL	1	 
7416	2811	16	Aviónica I	0.0	3.0	8	3			AZUL	1	
7417	2831	16	Sistemas de Repulisión	0.0	3.0	8	4			AZUL	1	
6419	0	6	Optativa de Otras Asignaturas Convenientes	0.0	2.0	7	6	 	OPT_1	NARANJA	1	 
7418	2828	16	Estructuras Aeroespaciales	0.0	3.0	8	5			AZUL	1	
7419	2812	16	Desarrollo de Emprendedores	2.0	3.0	8	6			ROSA	1	
6422	0	6	Asignatura de Campo de Profundización	0.0	4.0	8	3	 	OPT_1	AZUL	1	 
7420	2980	16	Modelado Basado en Diseño	6.0	2.0	9	1	L		AZUL	1	
7421	0	16	Obligatoria de Elección del Campo de Profundización	0.0	4.0	9	2		OPT_1	AZUL	1	
7422	0	16	Obligatoria de Elección del Campo de Profundización	0.0	4.0	9	3		OPT_1	AZUL	1	
6224	1535	4	Diseño Digital VLSI	2.0	3.0	7	2	L		CYAN	1	 
6427	0	6	Asignatura de Campo de Profundización	0.0	4.0	9	3	 	OPT_1	AZUL	1	 
6227	1686	4	Sistemas de Comunicaciones	2.0	3.0	7	5	 		CYAN	1	 
6295	1138	5	Principios Prácticos de Electrónica	4.0	2.0	3	6	L		CYAN	1	 
6301	1454	5	Sistemas y Señales	0.0	4.0	4	5	 		CYAN	1	 
6302	1453	5	Sistemas Digitales	2.0	3.0	4	6	 		CYAN	1	 
6432	0	6	Asignatura de Campo de Profundización	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
6433	0	6	Asignatura de Campo de Profundización	0.0	4.0	10	4	 	OPT_1	AZUL	1	 
6434	1789	6	Ciencia, Tecnología y Sociedad	0.0	2.0	5	1	 	OPT	CSYH	0	 
6435	1790	6	Introducción al Análisis Económico Empresarial	0.0	2.0	5	2	 	OPT	CSYH	0	 
6436	1055	6	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	3	 	OPT	CSYH	0	 
6437	1791	6	México Nación Multicultural	0.0	2.0	5	4	 	OPT	CSYH	0	 
6438	1792	6	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	5	5	 	OPT	CSYH	0	 
6439	1793	6	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	5	6	 	OPT	CSYH	0	 
6440	1794	6	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	5	7	 	OPT	CSYH	0	 
6441	1795	6	Taller Sociohumanistico- Creatividad	2.0	0.0	5	8	 	OPT	CSYH	0	 
6442	1796	6	Taller Sociohumanistico- Liderazgo	2.0	0.0	5	9	 	OPT	CSYH	0	 
6443	1323	6	Programación Orientada a Objetos	2.0	4.0	7	1	L	OPT	OPTATIVA	0	 
6444	1227	6	Estructura de Datos y Algoritmos I	2.0	4.0	6, 7	2	L	OPT	OPTATIVA	0	 
6445	1691	6	Electrónica Básica	2.0	4.0	6, 7	3	L	OPT	OPTATIVA	0	 
6446	510	6	Instrumentación	0.0	4.0	6, 7	4	 	OPT	OPTATIVA	0	 
6447	1448	6	Geodesia I	2.0	4.0	6, 7	5	P	OPT	OPTATIVA	0	 
6448	1647	6	Sistemas de Posicionamiento Global	2.0	3.0	7	6	P	OPT	OPTATIVA	0	 
6449	1955	6	Evaluación de Proyectos de Inversión	0.0	4.0	6, 7	7	 	OPT	OPTATIVA	0	 
6450	1871	6	Geología Aplicada a la Minería	3.0	3.0	7, 10	1	P	OPT	E_MINERA	0	 
6451	1139	6	Exploración Geoquímica Minera	0.0	4.0	7, 10	2	 	OPT	E_MINERA	0	 
6452	1026	6	Percepción Remota Aplicada	0.0	4.0	7, 10	3	 	OPT	E_MINERA	0	 
6453	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	E_MINERA	0	 
6455	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	E_MINERA	0	 
6456	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	E_MINERA	0	 
6457	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	E_MINERA	0	 
6458	1088	6	Hidrogeología	3.0	3.0	7, 10	1	L, P	OPT	HIDROGEOLOGIA_1	0	 
6460	2092	6	Modelación Numérica y Computacional de Acuíferos	0.0	4.0	7, 10	3	 	OPT	HIDROGEOLOGIA_1	0	 
6461	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	HIDROGEOLOGIA_1	0	 
6463	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_1	0	 
6464	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	HIDROGEOLOGIA_1	0	 
6303	1461	5	Fundamentos de Procesos Aleatorios	0.0	3.0	5	1	 		CYAN	1	 
6304	1458	5	Campos y Ondas	0.0	4.0	5	2	 		CYAN	1	 
6305	1463	5	Teoría de Circuitos	2.0	3.0	5	3	L+		CYAN	1	 
6306	1459	5	Dispositivos de Radiofrecuencia	2.0	4.0	5	4	L+		CYAN	1	 
6307	1462	5	Fundamentos de Sistemas de Comunicaciones	2.0	4.0	5	5	L+		CYAN	1	 
6308	1460	5	Elementos de Control	0.0	3.0	5	6	 		CYAN	1	 
6309	1682	5	Medios de Transmisión	2.0	3.0	6	1	L+		CYAN	1	 
6311	1470	5	Introducción a la Codificación de Fuente y Canal	0.0	3.0	6	3	 		CYAN	1	 
6312	1467	5	Circuitos de Radiofrecuencia	2.0	4.0	6	4	L+		CYAN	1	 
6313	109	5	Comunicaciones Digitales	2.0	4.0	6	5	L+		CYAN	1	 
6315	1773	5	Antenas	2.0	3.0	7	1	L+		CYAN	1	 
6318	2706	5	Transmisores y Receptores	2.0	4.0	7	4	L+		CYAN	1	 
6319	1774	5	Dispositivos de Microondas I	2.0	3.0	7	5	L+		CYAN	1	 
5993	424	2	Geología General	3.0	3.0	1	3	L, P		CYAN	1	 
6086	1592	3	Análisis de Circuitos Eléctricos	2.0	4.0	5	4	L+		CYAN	1	 
6087	1594	3	Física de Semiconductores	0.0	4.0	5	5	 		CYAN	1	 
6088	1624	3	Energía e Impacto Ambiental	0.0	4.0	5	6	 		CYAN	1	 
6414	2707	6	Introducción al Diseño de Filtros Digitales	0.0	4.0	7	1	 		CYAN	1	 
6218	840	4	Sistemas Operativos	0.0	4.0	6	1	 		CYAN	1	 
6696	1521	9	Elementos de Mecánica del Medio Continuo	0.0	4.0	5	2	 		CYAN	1	 
6698	2500	9	Materiales II	2.0	4.0	5	4	L+		CYAN	1	 
6523	1574	7	Mineralogía Óptica	3.0	3.0	5	4	L		CYAN	1	 
6524	1572	7	Geología Estructural	0.0	4.0	5	5	P		CYAN	1	 
6526	1576	7	Geomorfología	0.0	4.0	6	1	 		CYAN	1	 
6527	1575	7	Geología de Campo y Cartografía	2.0	2.0	6	2	P+, P		CYAN	1	 
6528	1677	7	Petrología Metamórfica	3.0	3.0	6	3	L, P		CYAN	1	 
6529	1690	7	Petrología Ígnea	3.0	3.0	6	4	L, P		CYAN	1	 
6530	1577	7	Prospeción Geofísica y Registros en Pozos	3.0	3.0	6	5	 		CYAN	1	 
6465	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	HIDROGEOLOGIA_1	0	 
6466	1066	6	Geología del Petróleo	3.0	3.0	7, 10	1	P	OPT	E_PETROLERA	0	 
6467	1023	6	Sismología Aplicada a la Exploración Petrolera	0.0	4.0	7, 10	2	 	OPT	E_PETROLERA	0	 
6468	1024	6	Procesamiento de Datos Sísmicos Petroleros	0.0	4.0	7, 10	3	 	OPT	E_PETROLERA	0	 
6469	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	E_PETROLERA	0	 
6471	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	E_PETROLERA	0	 
6472	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	E_PETROLERA	0	 
6473	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	E_PETROLERA	0	 
6474	1580	6	Geología Ambiental	0.0	4.0	7, 10	1	 	OPT	HIDROGEOLOGIA_2	0	 
6475	2095	6	Riesgo Geológico	0.0	4.0	7, 10	2	 	OPT	HIDROGEOLOGIA_2	0	 
6476	1026	6	Percepción Remota Aplicada	0.0	4.0	7, 10	3	 	OPT	HIDROGEOLOGIA_2	0	 
6477	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	HIDROGEOLOGIA_2	0	 
6532	1850	7	Metalogenia	3.0	3.0	7	1	P		CYAN	1	 
6534	1579	7	Tectónica	0.0	4.0	7	3	P		CYAN	1	 
6535	1729	7	Petrología Sedimentaria	3.0	3.0	7	4	L, P		CYAN	1	 
6538	1583	7	Mecánica de Rocas	0.0	4.0	8	2	 		CYAN	1	 
6992	1218	12	Topografía II	0.0	4.5	2	5	 		CYAN	1	 
6399	1137	6	Petrología	2.0	2.0	4	4	L		CYAN	1	 
6400	1468	6	Introducción a la Geofísica	2.0	4.0	4	5	P		CYAN	1	 
6401	824	6	Sedimentología	2.0	2.0	4	6	L, P		CYAN	1	 
6403	2504	6	Variable Compleja Aplicada a la Geofísica	0.0	4.0	5	2	 		CYAN	1	 
6404	531	6	Mecánica del Medio Continuo	0.0	4.0	5	3	 		CYAN	1	 
6405	2503	6	Teoría del Potencial Aplicada a la Geofísica	0.0	4.0	5	4	 		CYAN	1	 
6406	1727	6	Estratigrafía	0.0	4.0	5	5	P		CYAN	1	 
6408	2605	6	Análisis Espectral de Señales	0.0	4.0	6	1	 		CYAN	1	 
6409	2606	6	Física de Ondas	0.0	4.0	6	2	 		CYAN	1	 
6410	1572	6	Geología Estructural	0.0	4.0	6	3	P		CYAN	1	 
6411	2607	6	Fundamentos de Toría Electromagnética	0.0	4.0	6	4	 		CYAN	1	 
6894	1409	11	Termofluidos	2.0	4.0	5	5	L+		CYAN	1	 
6895	1691	11	Electrónica Básica	2.0	4.0	6	1	L		CYAN	1	 
6896	507	11	Ingeniería de Manufactura	2.0	4.0	6	2	L+		CYAN	1	 
6897	1659	11	Mecanismos	0.0	4.0	6	3	 		CYAN	1	 
6716	0	9	Obligatorias de Elección del Campo de Profundización y/u OPTATIVA**	40.0	0.0	9	1	 	OPT_1	AZUL	6	 
6717	0	9	Obligatorias de Elección del Campo de Profundización y/u OPTATIVA**	40.0	0.0	10	1	 	OPT_1	AZUL	6	 
6718	572	9	Automatización Industrial	4.0	2.0	9	1	L	OPT	AUTOMATIZACION	0	 
6719	1996	9	Circuitos Digitales	2.0	4.0	9	2	L	OPT	AUTOMATIZACION	0	 
6192	1120	4	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6899	508	11	Modelado de Sistmas Físicos	0.0	4.0	6	5	 		CYAN	1	 
6479	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_2	0	 
6480	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	HIDROGEOLOGIA_2	0	 
6481	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	HIDROGEOLOGIA_2	0	 
6482	1028	6	Fuente Sísmica	0.0	4.0	7, 10	1	 	OPT	SISMOLOGIA	0	 
6483	1143	6	Análisis de Registros Sísmicos	0.0	4.0	7, 10	2	 	OPT	SISMOLOGIA	0	 
6720	972	9	Diseño y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+	OPT	AUTOMATIZACION	0	 
7423	0	16	Obligatoria de Elección del Campo de Profundización	0.0	4.0	9	4		OPT_1	AZUL	1	
7424	0	16	Obligatoria de Elección del Campo de Profundización	0.0	3.0	9	5		OPT_1	AZUL	1	
6219	1645	4	Diseño Digital Moderno	2.0	4.0	6	2	L+		CYAN	1	 
6901	1996	11	Circuitos Digitales	2.0	4.0	7	1	L		CYAN	1	 
6902	1973	11	Sistemas Electrónicos Lineales	0.0	4.0	7	2	 		CYAN	1	 
6903	1782	11	Diseño de Elementos de Máquinas	0.0	4.0	7	3	 		CYAN	1	 
6910	551	11	Control Automático	0.0	4.0	8	5	 		CYAN	1	 
7005	1449	12	Procesos Fotogramétricos	3.0	4.5	4	5	L		CYAN	1	 
7006	1543	12	Modelación Metemática	0.0	3.0	5	1	 		CYAN	1	 
7007	1750	12	Cartografía	2.0	3.0	5	2	L		CYAN	1	 
7009	1533	12	Geodesia II	3.0	4.5	5	4	P		CYAN	1	 
7013	1637	12	Teoría de los Errores	0.0	3.0	6	2	 		CYAN	1	 
7015	1646	12	Geodesia III	0.0	4.5	6	4	 		CYAN	1	 
6511	1329	7	Paleontología General	2.0	2.0	3	4	L		CYAN	1	 
6512	1327	7	Geología Física	3.0	3.0	3	5	L, P		CYAN	1	 
7018	1548	12	Cálculo de Ajustes	0.0	3.0	7	2	 		CYAN	1	 
7020	1689	12	Percepción Remota I	3.0	3.0	7	4	L		CYAN	1	 
7083	192	13	Estudio del Trabajo	2.0	4.0	6	2	 		CYAN	1	 
7084	1540	13	Mecánica de Sólidos	0.0	4.0	6	3	 		CYAN	1	 
7088	1807	13	Instrumentación y Control	0.0	4.0	7	1	 		CYAN	1	 
6586	1540	8	Mecánica de Sólidos	0.0	4.0	3	4	 		CYAN	1	 
6593	1570	8	Ingeniería de Materiales	2.0	4.0	4	5	L+		CYAN	1	 
6692	2400	9	Materiales I	2.0	4.0	4	4	L+		CYAN	1	 
7211	2608	14	Conductos a Presión y a Superficíe Libre	3.0	3.0	6	3	L		CYAN	1	 
6803	424	10	Geología General	3.0	3.0	2	4	L, P		CYAN	1	 
6808	1331	10	Geología y Yacimientos de Fluidos	0.0	4.0	3	4	P		CYAN	1	 
6813	1441	10	Mecánica de Fluidos	0.0	4.0	4	3	 		CYAN	1	 
6814	1442	10	Propiedades de los Fluidos Petroleros	2.0	4.0	4	4	L		CYAN	1	 
6815	1440	10	Geología y Geoquímica del Petroleo	3.0	3.0	4	5	P		CYAN	1	 
6819	1588	10	Bombeo y Compresión de Hidrocarburos	0.0	4.0	5	3	 		CYAN	1	 
6820	1589	10	Principios de Mecánica de Yacimientos	0.0	4.0	5	4	 		CYAN	1	 
6826	1981	10	Comportamiento de Yacimientos	0.0	6.0	6	4	 		CYAN	1	 
7206	1886	14	Ecología e Ingeniería	0.0	3.0	5	4	 		CYAN	1	 
7218	2711	14	Gestión Integral de Residuos Sólidos Urbanos	0.0	3.0	7	4	 		CYAN	1	 
7209	2612	14	Hidrología Superficial	0.0	4.5	6	1	 		CYAN	1	 
7217	2712	14	Operaciones y Procesos Unitarios	3.0	3.0	7	3	L		CYAN	1	 
7204	2505	14	Transferencia de Masa y Energía	0.0	3.0	5	2	 		CYAN	1	 
7210	2613	14	Transporte y Dispersión de Contaminantes Atmosféricos	0.0	3.0	6	2	 		CYAN	1	 
6484	1030	6	Sismología de Movimientos Fuertes	0.0	4.0	7, 10	3	 	OPT	SISMOLOGIA	0	 
6487	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	SISMOLOGIA	0	 
6488	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	SISMOLOGIA	0	 
6489	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	SISMOLOGIA	0	 
6490	1061	6	Geología Aplicada a la Ingeniería Civil	3.0	3.0	7, 10	1	P	OPT	HIDROGEOLOGIA_3	0	 
6491	2943	6	Mecánica de Suelos para Ciencias de la Tierra	0.0	4.0	7, 10	2	 	OPT	HIDROGEOLOGIA_3	0	 
6492	1032	6	Sismología Aplicada a la Geotecnia	0.0	4.0	7, 10	3	 	OPT	HIDROGEOLOGIA_3	0	 
6493	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	HIDROGEOLOGIA_3	0	 
6495	1583	6	Mecánica de Rocas	0.0	4.0	7, 10	6	P	OPT	HIDROGEOLOGIA_3	0	 
6496	1141	6	Temas Selectos de Ingeniería Geofísica I	0.0	4.0	7, 10	7	 	OPT	HIDROGEOLOGIA_3	0	 
6497	1142	6	Temas Selectos de Ingeniería Geofísica II	0.0	4.0	7, 10	8	 	OPT	HIDROGEOLOGIA_3	0	 
6459	2089	6	Hidrogeología de Contaminantes	0.0	4.0	7, 10	2	 	OPT	HIDROGEOLOGIA_1	0	 
6462	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_1	0	 
6470	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	E_PETROLERA	0	 
6478	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_2	0	 
6486	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	SISMOLOGIA	0	 
6494	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	HIDROGEOLOGIA_3	0	 
6548	0	7	Optativa	0.0	4.0	10	2	 	OPT_1	AZUL	1	 
6549	0	7	Optativa	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
6550	0	7	Optativa	0.0	4.0	10	4	 	OPT_1	AZUL	1	 
6552	2081	7	Equipos y Herramientas de Perforación de Pozos	0.0	4.0	10	1	P+	OPT	INGENIERIA_A	0	 
6553	2082	7	Exploración Geotérmica	0.0	4.0	10	2	 	OPT	INGENIERIA_A	0	 
6554	2083	7	Exploración y Evaluación de Aguas Subterraneas	0.0	4.0	10	3	 	OPT	INGENIERIA_A	0	 
6555	2084	7	Geología Marina	0.0	4.0	10	4	 	OPT	INGENIERIA_A	0	 
6556	2085	7	Geología Urbana	0.0	4.0	10	5	 	OPT	INGENIERIA_A	0	 
6557	2086	7	Geomecánica	0.0	4.0	10	6	 	OPT	INGENIERIA_A	0	 
6721	549	9	Máquinas Eléctricas	2.0	4.0	10	4	L	OPT	AUTOMATIZACION	0	 
6722	992	9	Ingeniería de Diseño	2.0	4.0	9	1	L+	OPT	DISENO	0	 
6723	971	9	Diseño del Producto	0.0	4.0	10	2	 	OPT	DISENO	0	 
6724	972	9	Diseño y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+	OPT	DISENO	0	 
6725	2923	9	Ingeniería Asistida por Computadora	2.0	4.0	9	4	L+	OPT	DISENO	0	 
6726	2920	9	Dirección de Poyectos	2.0	2.0	10	5	P	OPT	DISENO	0	 
6727	2924	9	Manufactura III	2.0	4.0	9	1	L+	OPT	MANUFACTURA	0	 
6728	2925	9	Materiales III	2.0	4.0	9	2	L+	OPT	MANUFACTURA	0	 
6729	126	9	Diseño de Herramental	2.0	4.0	9	3	L+	OPT	MANUFACTURA	0	 
6730	547	9	Máquinas de Desplazamiento Positivo	0.0	4.0	9	1	 	OPT	TERMOFLUIDOS	0	 
6731	900	9	Turbomaquinaria	0.0	4.0	9	2	 	OPT	TERMOFLUIDOS	0	 
6732	2926	9	Sistemas Termoenergéticos	2.0	2.0	9	3	L	OPT	TERMOFLUIDOS	0	 
6733	1789	9	Ciencia, Tecnología y Sociedad	0.0	2.0	4	1	 	OPT	CSYH	0	 
6734	1790	9	Introducción al Análisis Económico Empresarial	0.0	2.0	4	2	 	OPT	CSYH	0	 
6735	1055	9	Literatura Hispanoamericana Contemporanea	0.0	3.0	4	3	 	OPT	CSYH	0	 
6736	1791	9	México Nación Multicultural	0.0	2.0	4	4	 	OPT	CSYH	0	 
6737	1792	9	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	4	5	 	OPT	CSYH	0	 
6738	1793	9	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	4	6	 	OPT	CSYH	0	 
6739	1794	9	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	4	7	 	OPT	CSYH	0	 
6740	1795	9	Taller Sociohumanistico- Creatividad	2.0	0.0	4	8	 	OPT	CSYH	0	 
6741	1796	9	Taller Sociohumanistico- Liderazgo	2.0	0.0	4	9	 	OPT	CSYH	0	 
6742	2802	9	Ahorro de Energía	0.0	4.0	9, 10	1	 	OPT	OPTATIVA	0	 
6743	21	9	Aire Acondicionado y Refrigeración	2.0	4.0	9, 10	2	L	OPT	OPTATIVA	0	 
6744	2922	9	Análisis por Elementos Finitos	2.0	4.0	9, 10	3	L+	OPT	OPTATIVA	0	 
6745	1198	9	Automatización Avanzada	4.0	2.0	9, 10	4	L	OPT	OPTATIVA	0	 
6746	572	9	Automatización Industrial	4.0	2.0	9, 10	5	L	OPT	OPTATIVA	0	 
6747	1009	9	Biomecánica	2.0	4.0	9, 10	6	L	OPT	OPTATIVA	0	 
6748	1996	9	Circuitos Digitales	2.0	4.0	9, 10	7	L	OPT	OPTATIVA	0	 
6749	997	9	Deterioro de Materiales	0.0	4.0	9, 10	8	 	OPT	OPTATIVA	0	 
6750	2920	9	Dirección de Poyectos	2.0	2.0	9, 10	9	P	OPT	OPTATIVA	0	 
6751	126	9	Diseño de Herramental	2.0	4.0	9, 10	10	L+	OPT	OPTATIVA	0	 
6752	2074	9	Diseño de Sistemas Térmicos	0.0	4.0	9, 10	11	 	OPT	OPTATIVA	0	 
6753	971	9	Diseño del Producto	0.0	4.0	9, 10	12	 	OPT	OPTATIVA	0	 
6754	563	9	Diseño Mecatrónico	2.0	4.0	9, 10	13	L	OPT	OPTATIVA	0	 
6755	3078	9	Diseño Sustentable	0.0	4.0	9, 10	14	 	OPT	OPTATIVA	0	 
6756	972	9	Diseño y Manufactura Asistidos por Computadora	2.0	4.0	9, 10	15	L+	OPT	OPTATIVA	0	 
6757	2923	9	Ingeniería Asistida por Computadora	2.0	4.0	9, 10	16	L+	OPT	OPTATIVA	0	 
6758	3071	9	Ingeniería Automotriz I	0.0	4.0	9, 10	17	 	OPT	OPTATIVA	0	 
6759	3080	9	Ingeniería Automotriz II	0.0	4.0	9, 10	18	 	OPT	OPTATIVA	0	 
6760	992	9	Ingeniería de Diseño	2.0	4.0	9, 10	19	L+	OPT	OPTATIVA	0	 
6761	354	9	Ingeniería de Procesos Industriales	0.0	4.0	9, 10	20	 	OPT	OPTATIVA	0	 
6762	999	9	Ingeniería de Superficies	0.0	4.0	9, 10	21	 	OPT	OPTATIVA	0	 
6763	2924	9	Manufactura III	2.0	4.0	9, 10	22	L+	OPT	OPTATIVA	0	 
6764	547	9	Máquinas de Desplazamiento Positivo	0.0	4.0	9, 10	23	 	OPT	OPTATIVA	0	 
6765	549	9	Máquinas Eléctricas	2.0	4.0	9, 10	24	L	OPT	OPTATIVA	0	 
6766	2925	9	Materiales III	2.0	4.0	9, 10	25	L+	OPT	OPTATIVA	0	 
6767	2200	9	Movilidad I	0.0	2.0	9, 10	26	 	OPT	OPTATIVA	0	 
6768	2201	9	Movilidad II	0.0	3.0	9, 10	27	 	OPT	OPTATIVA	0	 
6769	2202	9	Movilidad II	0.0	3.0	9, 10	28	 	OPT	OPTATIVA	0	 
6770	2203	9	Movilidad IV	0.0	3.0	9, 10	29	 	OPT	OPTATIVA	0	 
6771	2204	9	Movilidad V	0.0	3.0	9, 10	30	 	OPT	OPTATIVA	0	 
6772	2205	9	Movilidad VI	0.0	3.0	9, 10	31	 	OPT	OPTATIVA	0	 
6773	2206	9	Movilidad VII	0.0	4.0	9, 10	32	 	OPT	OPTATIVA	0	 
6774	2207	9	Movilidad VIII	0.0	4.0	9, 10	33	 	OPT	OPTATIVA	0	 
6775	2208	9	Movilidad IX	0.0	4.0	9, 10	34	 	OPT	OPTATIVA	0	 
6776	2209	9	Movilidad X	0.0	4.0	9, 10	35	 	OPT	OPTATIVA	0	 
6777	2210	9	Movilidad XI	2.0	4.0	9, 10	36	 	OPT	OPTATIVA	0	 
6778	3081	9	Plantas Termoeléctricas y Sistemas de Cogeneración	0.0	4.0	9, 10	37	 	OPT	OPTATIVA	0	 
6779	2135	9	Robótica	2.0	4.0	9, 10	38	L	OPT	OPTATIVA	0	 
6780	3064	9	Sistemas de Manufactura Flexible	2.0	3.0	9, 10	39	L	OPT	OPTATIVA	0	 
6781	2137	9	Sistemas de Mejoramiento Ambiental	0.0	4.0	9, 10	40	 	OPT	OPTATIVA	0	 
6782	2926	9	Sistemas Termoenergéticos	2.0	2.0	9, 10	41	L	OPT	OPTATIVA	0	 
6783	3083	9	Temas Selectos de Ingeniería de Diseño I	0.0	4.0	9, 10	42	 	OPT	OPTATIVA	0	 
6784	3084	9	Temas Selectos de Ingeniería de Diseño II	0.0	4.0	9, 10	43	 	OPT	OPTATIVA	0	 
6785	3085	9	Temas Selectos de Ingeniería de Mecánica I	0.0	4.0	9, 10	44	 	OPT	OPTATIVA	0	 
6786	3086	9	Temas Selectos de Ingeniería de Mecánica II	0.0	4.0	9, 10	45	 	OPT	OPTATIVA	0	 
6787	3087	9	Temas Selectos de Ingeniería en Materiales y Manufactura I	0.0	4.0	9, 10	46	 	OPT	OPTATIVA	0	 
6788	3088	9	Temas Selectos de Ingeniería en Materiales y Manufactura II	0.0	4.0	9, 10	47	 	OPT	OPTATIVA	0	 
6789	3089	9	Temas Selectos de Mecatrónica I	0.0	4.0	9, 10	48	 	OPT	OPTATIVA	0	 
6790	3090	9	Temas Selectos de Mecatrónica II	0.0	4.0	9, 10	49	 	OPT	OPTATIVA	0	 
6791	2077	9	Temas Selectos de Termofluidos I	0.0	4.0	9, 10	50	 	OPT	OPTATIVA	0	 
6792	2078	9	Temas Selectos de Termofluidos II	0.0	4.0	9, 10	51	 	OPT	OPTATIVA	0	 
6793	900	9	Turbomaquinaria	0.0	4.0	9, 10	52	 	OPT	OPTATIVA	0	 
6890	1550	11	Análisis de Circuitos	2.0	4.0	5	1	L		CYAN	1	 
6891	1570	11	Ingeniería de Materiales	2.0	4.0	5	2	L+		CYAN	1	 
6892	1540	11	Mecánica de Sólidos	0.0	4.0	5	3	 		CYAN	1	 
6985	1110	12	Prácticas de Topografía I	5.0	0.0	1	4	 		CYAN	1	 
6831	0	10	Optativa(s) de Ciencias Sociales y Humanidades	0.0	2.0	7	4	 	OPT_1	VERDE	1	 
6986	1114	12	Topografía I	0.0	4.5	1	5	 		CYAN	1	 
6993	1217	12	Prácticas de Topografía II	5.0	0.0	2	6	 		CYAN	1	 
6999	1334	12	Fotogrametría	3.0	4.5	3	5	L		CYAN	1	 
7004	1448	12	Geodesia I	2.0	4.0	4	4	P		CYAN	1	 
6836	0	10	Optativa	0.0	4.0	8	4	 	OPT_1	AZUL	1	 
7068	1734	13	Ingeniería Económica	0.0	4.0	3	5	 		CYAN	1	 
7076	1550	13	Análisis de Circuitos	2.0	4.0	5	1	L		CYAN	1	 
7077	1570	13	Ingeniería de Materiales	2.0	4.0	5	2	L+		CYAN	1	 
7082	1691	13	Electrónica Básica	2.0	4.0	6	1	L		CYAN	1	 
7207	1887	14	Ingeniería de los Procesos Biológicos	2.0	2.0	5	5	L		CYAN	1	 
7205	2502	14	Mecánica de Fluidos para Ingeniería Ambiental	0.0	4.0	5	3	 		CYAN	1	 
6843	0	10	Optativa	0.0	4.0	9	6	 	OPT_1	AZUL	1	 
6596	1409	8	Termofluidos	2.0	4.0	5	3	L+		CYAN	1	 
6600	1784	8	Estadística Aplicada	0.0	4.0	6	1	 		CYAN	1	 
6601	1550	8	Análisis de Circuitos	2.0	4.0	6	2	L		CYAN	1	 
6606	1691	8	Electrónica Básica	2.0	4.0	7	1	L		CYAN	1	 
6607	339	8	Investigación de Operaciones I	0.0	4.0	7	2	 		CYAN	1	 
6849	0	10	Optativa	0.0	4.0	10	6	 	OPT_1	AZUL	1	 
6850	1789	10	Ciencia, Tecnología y Sociedad	0.0	2.0	7	1	 	OPT	CSYH	0	 
6851	1790	10	Introducción al Análisis Económico Empresarial	0.0	2.0	7	2	 	OPT	CSYH	0	 
6842	1052	10	Ética Profesional	2.0	2.0	9	5	 		VERDE	1	 
6608	1734	8	Ingeniería Económica	0.0	4.0	7	3	 		CYAN	1	 
6612	2805	8	Instalaciones Industriales	0.0	4.0	8	1	 		CYAN	1	 
6613	1747	8	Investigación de Operaciones II	0.0	4.0	8	2	 		CYAN	1	 
6623	2921	8	Simulación	2.0	2.0	10	1	L		CYAN	1	 
6592	192	8	Estudio del Trabajo	2.0	4.0	4	4	L		CYAN	1	 
6695	1550	9	Análisis de Circuitos	2.0	4.0	5	1	L		CYAN	1	 
118	275	1	Estructuras Isostáticas	0.0	4.5	3	4	 		CYAN	1	 
124	465	1	Mecánica de Materiales I	0.0	4.5	4	4	L		CYAN	1	 
127	1555	1	Fundamentos de Mecánica del Medio Continuo	0.0	3.0	4	7	 		CYAN	1	 
128	387	1	Ingeniería de Sistemas I	0.0	3.0	5	1	L		CYAN	1	 
129	1402	1	Hidráulica Basica	0.0	4.5	5	2	L		CYAN	1	 
130	1595	1	Ingeniria Ambiental I	0.0	3.0	5	3	L		CYAN	1	 
131	466	1	Macánica de Materiales II	0.0	4.5	5	4	L		CYAN	1	 
134	1731	1	Ingeniería de Sistemas II	0.0	4.5	6	1	L		CYAN	1	 
135	1730	1	Hidráulica de Maquinas y Transitorios	0.0	4.5	6	2	L		CYAN	1	 
137	2600	1	Estadística Aplicada a Ingeniería Civil	0.0	3.0	6	4	 		CYAN	1	 
138	1601	1	Comportamiento de Suelos	0.0	4.5	6	5	L		CYAN	1	 
140	642	1	Planeación	0.0	3.0	7	1	 		CYAN	1	 
141	1507	1	Hidráulica de Canales	0.0	4.5	7	2	L		CYAN	1	 
142	1703	1	Análisis Estructural	0.0	4.5	7	3	 		CYAN	1	 
143	1714	1	Mecánica de Suelos	0.0	4.5	7	4	L		CYAN	1	 
147	379	1	Hidrología	0.0	4.5	8	2	 		CYAN	1	 
7425	2080	16	Recursos y Necesidades de México	0.0	4.0	9	6			VERDE	1	
7426	0	16	Optativa de Elección del Campo de Profundización	0.0	3.0	10	3		OPT_1	AZUL	1	
7427	0	16	Optativa de Elección del Campo de Profundización	0.0	3.0	10	4		OPT_1	AZUL	1	
7428	0	16	Optativa de Elección del Campo de Profundización	0.0	3.0	10	5		OPT_1	AZUL	1	
7429	0	16	Optativa de Ciencias Económico Administrativas	0.0	3.0	10	6		OPT_1	ROSA	1	
7430	1055	16	Literatura Hispanoamericana Contemporanea	0.0	3.0		0		OPT		0	
7431	1789	16	Ciencia, Tecnología y Sociedad	0.0	2.0		0		OPT		0	
7432	1790	16	Introducción al Análisis Económico Empresarial	0.0	2.0		0		OPT		0	
7433	1791	16	México Nación Multicultural	0.0	2.0		0		OPT		0	
7434	1792	16	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0		0		OPT		0	
7435	1793	16	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0		0		OPT		0	
6407	0	6	Optativa de Ciencias Sociales y Humanidades	2.0	2.0	5	6	 	OPT_1	VERDE	1	 
6412	0	6	Optativa de Otras Asignaturas Convenientes	0.0	4.0	6	5	 	OPT_1	NARANJA	1	 
6852	1791	10	México Nación Multicultural	0.0	2.0	7	3	 	OPT	CSYH	0	 
6853	1792	10	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	7	4	 	OPT	CSYH	0	 
6854	1793	10	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	7	5	 	OPT	CSYH	0	 
6855	1794	10	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	7	6	 	OPT	CSYH	0	 
6856	1795	10	Taller Sociohumanistico- Creatividad	2.0	0.0	7	7	 	OPT	CSYH	0	 
6857	1796	10	Taller Sociohumanistico- Liderazgo	2.0	0.0	7	8	 	OPT	CSYH	0	 
6858	956	10	Aseguramiento de Flujo	0.0	4.0	8, 9 y 10	1	 	OPT	OPTATIVA	0	 
6859	960	10	Caracterización Estática y Dinámica de Yacimientos Naturalmente Fracturados	0.0	4.0	8, 9 y 10	2	 	OPT	OPTATIVA	0	 
6860	970	10	Comercialización de Crudo y Gas Natural	0.0	4.0	8, 9 y 10	3	 	OPT	OPTATIVA	0	 
6861	977	10	Fracturamiento Hidráulico	0.0	4.0	8, 9 y 10	4	 	OPT	OPTATIVA	0	 
6862	978	10	Metrología Aplicada a la Medición de Caudal o Volúmen de Hidrocarburos Gaseosos y Líquidos	0.0	4.0	8, 9 y 10	5	P	OPT	OPTATIVA	0	 
6863	979	10	Métodos Geofísicos para Petroleros	0.0	4.0	8, 9 y 10	6	 	OPT	OPTATIVA	0	 
6864	2011	10	Perforación de Pozos en Aguas Profundas	0.0	4.0	8, 9 y 10	7	 	OPT	OPTATIVA	0	 
6865	2013	10	Registros en Pozo Entubado	0.0	4.0	8, 9 y 10	8	 	OPT	OPTATIVA	0	 
6866	2067	10	Simulación Numérica de Yacimientos Naturalmente Fracturados	0.0	4.0	9 y 10	9	 	OPT	OPTATIVA	0	 
6867	2069	10	Yacimientos de Gas de Baja Permeabilidad	0.0	4.0	9 y 10	10	P	OPT	OPTATIVA	0	 
7436	1794	16	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0		0		OPT		0	
7437	992	16	Ingeniería de Diseño	2.0	4.0		0	L+	OPT		0	
7438	1059	16	Desarrollo Empresarial	2.0	2.0		0	P	OPT		0	
7439	1281	16	Administración de la Innovación Tecnológica	0.0	0.0		0		OPT		0	
7440	1282	16	Formación de Directivos	0.0	0.0		0		OPT		0	
7441	1283	16	Desarrollo de Proyectos Tecnológicos	0.0	0.0		0		OPT		0	
6900	0	11	Optativa(s) de Cinecias Sociales y Humanidades	2.0	2.0	6	6	 	OPT_1	VERDE	1	 
7442	1284	16	Emprendimiento E Incubadoras de Tecnología	0.0	0.0		0		OPT		0	
7443	1285	16	Fundamentos de Inteligencia Emocional	0.0	0.0		0		OPT		0	
7444	1286	16	Propiedad Intelectual	0.0	0.0		0		OPT		0	
7445	1287	16	Relaciones y Comercio Internacional	0.0	0.0		0		OPT		0	
7446	1288	16	Temas Selectos de Ciencias Económico Administrativas	0.0	0.0		0		OPT		0	
7447	1795	16	Taller Sociohumanistico- Creatividad	2.0	0.0		0		OPT		0	
7448	1796	16	Taller Sociohumanistico- Liderazgo	2.0	0.0		0		OPT		0	
6908	0	11	Asignatura Optativa	0.0	4.0	8	3	 	OPT_1	AZUL	1	 
7449	2200	16	Movilidad I	0.0	2.0		0		OPT		0	
7450	2201	16	Movilidad II	0.0	3.0		0		OPT		0	
6911	0	11	Optativa(s) de Cinecias Sociales y Humanidades	2.0	2.0	8	6	 	OPT_1	VERDE	1	 
7451	2202	16	Movilidad III	0.0	3.0		0		OPT		0	
7452	2203	16	Movilidad IV	0.0	3.0		0		OPT		0	
7453	2204	16	Movilidad V	0.0	3.0		0		OPT		0	
7454	2205	16	Movilidad VI	0.0	3.0		0		OPT		0	
7455	2206	16	Movilidad VII	0.0	4.0		0		OPT		0	
6917	0	11	Asignatura Optativa	0.0	4.0	10	1	 	OPT_1	AZUL	1	 
6918	0	11	Asignatura Optativa	0.0	4.0	10	2	 	OPT_1	AZUL	1	 
6919	0	11	Asignatura Optativa	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
6920	0	11	Asignatura Optativa	0.0	4.0	10	4	 	OPT_1	AZUL	1	 
6921	0	11	Asignatura Optativa	0.0	4.0	10	5	 	OPT_1	AZUL	1	 
7456	2207	16	Movilidad VIII	0.0	4.0		0		OPT		0	
6923	1780	11	Acústica y Óptica	2.0	4.0	8, 10	1	L	OPT	OPTATIVA	0	 
6924	1198	11	Automatización Avanzada	4.0	2.0	10	2	L	OPT	OPTATIVA	0	 
6925	2035	11	Control Aplicado	2.0	3.0	10	3	L	OPT	OPTATIVA	0	 
6926	2909	11	Control Avanzado	2.0	4.0	10	4	L+	OPT	OPTATIVA	0	 
6927	2806	11	Dinámica de Maquinaria	2.0	4.0	8, 10	5	L+	OPT	OPTATIVA	0	 
6928	971	11	Diseño del Producto	0.0	4.0	8, 10	6	 	OPT	OPTATIVA	0	 
6929	992	11	Ingeniería de Diseño	2.0	4.0	8, 10	7	L+	OPT	OPTATIVA	0	 
6930	2805	11	Instalaciones Industriales	0.0	4.0	8, 10	8	 	OPT	OPTATIVA	0	 
6931	406	11	Inteligencia Artificial	0.0	4.0	10	9	 	OPT	OPTATIVA	0	 
6932	574	11	Introducción a Sistemas No Lineales	0.0	4.0	10	10	 	OPT	OPTATIVA	0	 
6933	3064	11	Sistemas de Manufactura Flexible	2.0	3.0	8, 10	11	L	OPT	OPTATIVA	0	 
6934	2137	11	Sistemas de Mejoramiento Ambiental	0.0	4.0	8, 10	12	 	OPT	OPTATIVA	0	 
6935	619	11	Planeación y Control de la Producción	2.0	4.0	8, 10	13	L	OPT	OPTATIVA	0	 
6936	192	11	Estudio del Trabajo	2.0	4.0	8, 10	14	 	OPT	OPTATIVA	0	 
6937	2804	11	Diseño de la Cadena de Suministros	0.0	4.0	8, 10	15	 	OPT	OPTATIVA	0	 
6938	143	11	Diseño de Sistemas Productivos	0.0	4.0	8, 10	16	 	OPT	OPTATIVA	0	 
6939	1057	11	Desarrollo de Habilidades Directivas	2.0	2.0	8, 10	17	P	OPT	OPTATIVA	0	 
6940	18	11	Administración	2.0	2.0	8, 10	18	P	OPT	OPTATIVA	0	 
6941	1115	11	Sistemas de Comercialización	2.0	2.0	8, 10	19	P	OPT	OPTATIVA	0	 
6942	2920	11	Dirección de Poyectos	2.0	2.0	8, 10	20	P	OPT	OPTATIVA	0	 
6943	1074	11	Legislación Industrial	2.0	2.0	8, 10	21	P	OPT	OPTATIVA	0	 
7457	2208	16	Movilidad IX	0.0	4.0		0		OPT		0	
6944	1009	11	Biomecánica	2.0	4.0	8, 10	22	L	OPT	OPTATIVA	0	 
6945	3071	11	Ingeniería Automotriz I	0.0	4.0	8, 10	23	 	OPT	OPTATIVA	0	 
6946	462	11	Mecánica de Fluidos I	2.0	4.0	8, 10	24	L+	OPT	OPTATIVA	0	 
6947	2926	11	Sistemas Termoenergéticos	2.0	2.0	8, 10	25	L	OPT	OPTATIVA	0	 
6948	3077	11	Temas Selectos de Dirección y Creación de Empresas	2.0	2.0	8, 10	26	P	OPT	OPTATIVA	0	 
6949	3083	11	Temas Selectos de Ingeniería de Diseño I	0.0	4.0	8, 10	27	 	OPT	OPTATIVA	0	 
6950	3084	11	Temas Selectos de Ingeniería de Diseño II	0.0	4.0	8, 10	28	 	OPT	OPTATIVA	0	 
6951	3085	11	Temas Selectos de Ingeniería de Mecánica I	0.0	4.0	8, 10	29	 	OPT	OPTATIVA	0	 
6952	3086	11	Temas Selectos de Ingeniería de Mecánica II	0.0	4.0	8, 10	30	 	OPT	OPTATIVA	0	 
6953	3007	11	Temas Selectos de Ingeniería Biomédica	0.0	3.0	8, 10	31	 	OPT	OPTATIVA	0	 
6954	3068	11	Temas Selectos de la Gestión de la Cadena de Suministros	2.0	2.0	8, 10	32	P	OPT	OPTATIVA	0	 
6955	3087	11	Temas Selectos de Ingeniería en Materiales y Manufactura I	0.0	4.0	8, 10	33	 	OPT	OPTATIVA	0	 
6956	3088	11	Temas Selectos de Ingeniería en Materiales y Manufactura II	0.0	4.0	8, 10	34	 	OPT	OPTATIVA	0	 
6957	3089	11	Temas Selectos de Mecatrónica I	0.0	4.0	8, 10	35	 	OPT	OPTATIVA	0	 
6958	3090	11	Temas Selectos de Mecatrónica II	0.0	4.0	8, 10	36	 	OPT	OPTATIVA	0	 
6959	2077	11	Temas Selectos de Termofluidos I	0.0	4.0	8, 10	37	 	OPT	OPTATIVA	0	 
6960	2078	11	Temas Selectos de Termofluidos II	0.0	4.0	8, 10	38	 	OPT	OPTATIVA	0	 
6961	1789	11	Ciencia, Tecnología y Sociedad	0.0	2.0	6, 8	1	 	OPT	CSYH	0	 
6962	1790	11	Introducción al Análisis Económico Empresarial	0.0	2.0	6, 8	2	 	OPT	CSYH	0	 
6963	1055	11	Literatura Hispanoamericana Contemporanea	0.0	3.0	6, 8	3	 	OPT	CSYH	0	 
6964	1791	11	México Nación Multicultural	0.0	2.0	6, 8	4	 	OPT	CSYH	0	 
6965	1792	11	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	6, 8	5	 	OPT	CSYH	0	 
6966	1793	11	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	6, 8	6	 	OPT	CSYH	0	 
6967	1794	11	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	6, 8	7	 	OPT	CSYH	0	 
6968	1795	11	Taller Sociohumanistico- Creatividad	2.0	0.0	4	8	 	OPT	CSYH	0	 
6969	1796	11	Taller Sociohumanistico- Liderazgo	2.0	0.0	4	9	 	OPT	CSYH	0	 
6970	0	11	Asignatura(s) del Área de Ciencias Sociales y Humanidades en Otras Facultades de la UNAM	6.0	0.0	6, 8	10	 	OPT	CSYH	0	 
6971	2200	11	Movilidad I	0.0	2.0	7, 8, 9, 10	1	 	OPT	MOVILIDAD	0	 
6972	2201	11	Movilidad II	0.0	3.0	7, 8, 9, 10	2	 	OPT	MOVILIDAD	0	 
6973	2202	11	Movilidad II	0.0	3.0	7, 8, 9, 10	3	 	OPT	MOVILIDAD	0	 
6974	2203	11	Movilidad IV	0.0	3.0	7, 8, 9, 10	4	 	OPT	MOVILIDAD	0	 
6975	2204	11	Movilidad V	0.0	3.0	7, 8, 9, 10	5	 	OPT	MOVILIDAD	0	 
6976	2205	11	Movilidad VI	0.0	3.0	7, 8, 9, 10	6	 	OPT	MOVILIDAD	0	 
6977	2206	11	Movilidad VII	0.0	4.0	7, 8, 9, 10	7	 	OPT	MOVILIDAD	0	 
6978	2207	11	Movilidad VIII	0.0	4.0	7, 8, 9, 10	8	 	OPT	MOVILIDAD	0	 
6979	2208	11	Movilidad IX	0.0	4.0	7, 8, 9, 10	9	 	OPT	MOVILIDAD	0	 
6980	2209	11	Movilidad X	0.0	4.0	7, 8, 9, 10	10	 	OPT	MOVILIDAD	0	 
6981	2210	11	Movilidad XI	2.0	4.0	7, 8, 9, 10	11	 	OPT	MOVILIDAD	0	 
7458	2209	16	Movilidad X	0.0	4.0		0		OPT		0	
7459	2210	16	Movilidad XI	2.0	4.0		0		OPT		0	
7460	1246	16	Aeroelasticidad	0.0	0.0		0		OPT		0	
7461	1247	16	Aviónica II	0.0	0.0		0		OPT		0	
7462	1248	16	Hidráulica Industrial	0.0	0.0		0		OPT		0	
7463	1249	16	Procesos de Manufactura de Aviones	0.0	0.0		0		OPT		0	
7464	1250	16	Pruebas de Certificación Aeronáutica	0.0	0.0		0		OPT		0	
7465	1265	16	Análisis y Diseño de una Misión Espacial	0.0	0.0		0		OPT		0	
7466	1266	16	Elementos de Diseño de Sistemas Espaciales	0.0	0.0		0		OPT		0	
7467	1267	16	Lanzadores	0.0	0.0		0		OPT		0	
7468	1268	16	Mecánica Orbital	0.0	0.0		0		OPT		0	
7469	1269	16	Pruebas de Certificación Espacial	0.0	0.0		0		OPT		0	
7470	1937	16	Microprocesadores y Microcontroladores	2.0	4.0		0	L+	OPT		0	
7471	991	16	Análisis por Elementos Finitos	0.0	0.0		0		OPT		0	
7472	1251	16	Aeronaves No Tripuladas	0.0	0.0		0		OPT		0	
7473	1252	16	Comunicaciónes de Aeronaves	0.0	0.0		0		OPT		0	
7474	1253	16	Dinámica de Aeronaves con Propulsión Axial o Rotatoria	0.0	0.0		0		OPT		0	
7475	1254	16	Dinámica de Fluidos Computacional	0.0	0.0		0		OPT		0	
7476	1255	16	Elementos de Diseño de Aeronaves	0.0	0.0		0		OPT		0	
7477	1256	16	Manufactura Aditiva y Digital	0.0	0.0		0		OPT		0	
7478	1257	16	Modelado de Aeronaves	0.0	0.0		0		OPT		0	
7479	1258	16	Propulsión	0.0	0.0		0		OPT		0	
7480	1259	16	Sistemas de Navegación	0.0	0.0		0		OPT		0	
7481	1260	16	Temas Selectos de Materiales I	0.0	0.0		0		OPT		0	
7482	1261	16	Temas Selectos de Materiales II	0.0	0.0		0		OPT		0	
7483	1262	16	Temas Selectos de Tecnología Aeronáutica I	0.0	0.0		0		OPT		0	
7484	1263	16	Temas Selectos de Tecnología Aeronáutica II	0.0	0.0		0		OPT		0	
7485	1264	16	Temas Selectos de Tecnología Aeronáutica III	0.0	0.0		0		OPT		0	
6485	1584	6	Geoestadística	0.0	4.0	7, 10	4	 	OPT	SISMOLOGIA	0	 
7085	0	13	Obligatoria de elección de Ciencias de la ISBM	0.0	4.0	6	4	 	OBL_ELEC	CYAN	1	 
7486	426	16	Dispositivos Electrónicos Programables	0.0	4.0		0		OPT		0	
7487	1270	16	Análisis de Confiabilidad	0.0	0.0		0		OPT		0	
7488	1271	16	Comunicaciones Espaciales	0.0	0.0		0		OPT		0	
7022	0	12	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	7	6	 	OPT_1	VERDE	1	 
7489	1272	16	Elementos de Propulsión Espacial	0.0	0.0		0		OPT		0	
7490	1273	16	Ingeniería de Carga Útil	0.0	0.0		0		OPT		0	
7491	1274	16	Procesamiento y Manejo de Datos a Bordo	0.0	0.0		0		OPT		0	
7492	1275	16	Sistemas de Almacenamiento y Distribución de Energía	0.0	0.0		0		OPT		0	
7493	1276	16	Sistema de Estructura y Regulación Térmica	0.0	0.0		0		OPT		0	
7494	1277	16	Sistemas de Control de Orientación	0.0	0.0		0		OPT		0	
7029	0	12	Se deberán cursar al menos 24 créditos optativos, correspondientes a un mínimo de 3 asignaturas OPTATIVA	24.0	0.0	9	1	 	OPT_1	AZUL	4	 
7495	1278	16	Temas Selectos de Tecnología Espacial I	0.0	0.0		0		OPT		0	
7496	1279	16	Temas Selectos de Tecnología Espacial II	0.0	0.0		0		OPT		0	
7497	1280	16	Temas Selectos de Tecnología Espacial III	0.0	0.0		0		OPT		0	
7033	2068	12	Hidrografía	0.0	4.5	9	1	 	OPT	OPTATIVA	0	 
7034	2940	12	Preanálisis y Diseño de Proyectos Topográficos	0.0	4.5	9	2	 	OPT	OPTATIVA	0	 
7035	2941	12	Programación Aplicada a la Geomática	2.0	2.0	9	3	 	OPT	OPTATIVA	0	 
7036	2939	12	Métodos Geofísicos	3.0	3.0	9	4	 	OPT	OPTATIVA	0	 
7037	2938	12	Geomática Aplicada al Transporte	0.0	4.5	9	5	 	OPT	OPTATIVA	0	 
7038	2937	12	Geomática Aplicada al Ordenamiento Territorial	0.0	4.5	9	6	 	OPT	OPTATIVA	0	 
7039	2936	12	Cartografía Digital	3.0	3.0	9	7	 	OPT	OPTATIVA	0	 
7040	32	12	Abastecimiento de Agua Potable	0.0	3.0	9	1	 	OPT	GEOMATICA_I	0	 
7041	2800	12	Alcantarillado Sanitario y Pluvial	0.0	3.0	9	2	 	OPT	GEOMATICA_I	0	 
7042	2942	12	Topografía Aplicada a la Construcción de Edificaciones	0.0	4.5	9	1	 	OPT	GEOMATICA_II	0	 
7043	2935	12	Astronomía de Posición	3.0	3.0	9	2	 	OPT	GEOMATICA_II	0	 
7044	1789	12	Ciencia, Tecnología y Sociedad	0.0	2.0	3, 7	1	 	OPT	CSYH	0	 
7045	1790	12	Introducción al Análisis Económico Empresarial	0.0	2.0	3, 7	2	 	OPT	CSYH	0	 
7046	1055	12	Literatura Hispanoamericana Contemporanea	0.0	3.0	3, 7	3	 	OPT	CSYH	0	 
7047	1791	12	México Nación Multicultural	0.0	2.0	3, 7	4	 	OPT	CSYH	0	 
7048	1792	12	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	3, 7	5	 	OPT	CSYH	0	 
7049	1793	12	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	3, 7	6	 	OPT	CSYH	0	 
7050	1794	12	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	3, 7	7	 	OPT	CSYH	0	 
7051	1795	12	Taller Sociohumanistico- Creatividad	2.0	0.0	3, 7	8	 	OPT	CSYH	0	 
7052	1796	12	Taller Sociohumanistico- Liderazgo	2.0	0.0	3, 7	9	 	OPT	CSYH	0	 
7498	2301	16	Fundamentos de Sistemas de Comandos y Manejo de Información	0.0	3.0		0		OPT		0	
7499	2901	16	Procesamiento Digital de Señales	0.0	4.0		0		OPT		0	
7087	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	6	6	 	OPT_1	VERDE	1	 
7016	1652	12	Sistemas de Información Geográfica I	3.0	3.0	6	5	L		AZUL	1	 
6588	0	8	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	3	6	 	OPT_1	VERDE	1	 
7091	0	13	Obligatoria de elección de Ciencias de la ISBM	0.0	4.0	7	4	 	OBL_ELEC	CYAN	1	 
7092	0	13	Obligatoria de elección de Ciencias de la ISBM	0.0	4.0	7	5	 	OBL_ELEC	CYAN	1	 
7096	0	13	Obligatoria de elección de Ciencias de la ISBM	0.0	4.0	8	3	 	OBL_ELEC	CYAN	1	 
7097	0	13	Obligatoria de elección de Ciencias de la ISBM	0.0	4.0	8	4	 	OBL_ELEC	CYAN	1	 
7098	0	13	Optativa de Cinecias de la Ingeniería en Sistemas Biomédicos	0.0	4.0	8	5	 	OPT_ELEC	CYAN	1	 
7099	0	13	Optativa de Cinecias de la Ingeniería en Sistemas Biomédicos	0.0	4.0	8	6	 	OPT_ELEC	CYAN	1	 
7101	0	13	Optativa de la Ingeniería Aplicada en Sistemas Biomédicos	0.0	4.0	10	1	 	OPT_1	AZUL	1	 
7102	0	13	Optativa de la Ingeniería Aplicada en Sistemas Biomédicos	0.0	4.0	10	2	 	OPT_1	AZUL	1	 
7103	0	13	Optativa de la Ingeniería Aplicada en Sistemas Biomédicos	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
7104	0	13	Optativa de la Ingeniería Aplicada en Sistemas Biomédicos	0.0	4.0	10	4	 	OPT_1	AZUL	1	 
7105	0	13	Optativa del Área Médica Biológica	0.0	4.0	10	5	 	OPT_1	MORADO	1	 
7107	1424	13	Matemáticas Avanzadas	2.0	3.0	5	1	 	OPT	INSTRUMENTACION_CB	0	 
7108	1787	13	Amplificación y Filtrado de Señales Médicas	2.0	4.0	6, 7, 8	1	L	OPT	INSTRUMENTACION_CI	0	 
7109	1695	13	Análisis de Bioseñales	2.0	4.0	6, 7, 8	2	L	OPT	INSTRUMENTACION_CI	0	 
7110	1996	13	Circuitos Digitales	2.0	4.0	6, 7, 8	3	L	OPT	INSTRUMENTACION_CI	0	 
7111	1698	13	Mediciones Clinicas	2.0	4.0	6, 7, 8	4	L	OPT	INSTRUMENTACION_CI	0	 
7112	1699	13	Sistemas de Medición y Transductores Médicos	2.0	4.0	6, 7, 8	5	L	OPT	INSTRUMENTACION_CI	0	 
7113	2079	13	Biomateriales	2.0	4.0	8	1	L	OPT	INSTRUMENTACION_SB	0	 
7115	2103	13	Calidad	0.0	4.0	8	3	 	OPT	INSTRUMENTACION_SB	0	 
7116	1782	13	Diseño de Elementos de Máquinas	0.0	4.0	8	4	 	OPT	INSTRUMENTACION_SB	0	 
7117	1783	13	Ergonomía	0.0	4.0	8	5	 	OPT	INSTRUMENTACION_SB	0	 
7118	1955	13	Evaluación de Proyectos de Inversión	0.0	4.0	8	6	 	OPT	INSTRUMENTACION_SB	0	 
7119	339	13	Investigación de Operaciones I	0.0	4.0	8	7	 	OPT	INSTRUMENTACION_SB	0	 
7120	952	13	Optimización de Operaciones	0.0	4.0	8	8	 	OPT	INSTRUMENTACION_SB	0	 
7121	1786	13	Planeación y Control de Recursos Hospitalarios	2.0	4.0	8	9	L	OPT	INSTRUMENTACION_SB	0	 
7122	1780	13	Acústica y Óptica	2.0	4.0	5	1	L	OPT	BIOMECANICA_CB	0	 
7123	2079	13	Biomateriales	2.0	4.0	6, 7, 8	1	L	OPT	BIOMECANICA_CI	0	 
7125	1996	13	Circuitos Digitales	2.0	4.0	6, 7, 8	3	L	OPT	BIOMECANICA_CI	0	 
7126	1782	13	Diseño de Elementos de Máquinas	0.0	4.0	6, 7, 8	4	 	OPT	BIOMECANICA_CI	0	 
7127	1783	13	Ergonomía	0.0	4.0	6, 7, 8	5	 	OPT	BIOMECANICA_CI	0	 
7128	1787	13	Amplificación y Filtrado de Señales Médicas	2.0	4.0	8	1	L	OPT	BIOMECANICA_SB	0	 
7129	1695	13	Análisis de Bioseñales	2.0	4.0	8	2	L	OPT	BIOMECANICA_SB	0	 
7130	2103	13	Calidad	0.0	4.0	8	3	 	OPT	BIOMECANICA_SB	0	 
7131	1955	13	Evaluación de Proyectos de Inversión	0.0	4.0	8	4	 	OPT	BIOMECANICA_SB	0	 
7132	339	13	Investigación de Operaciones I	0.0	4.0	8	5	 	OPT	BIOMECANICA_SB	0	 
7133	1698	13	Mediciones Clinicas	2.0	4.0	8	6	L	OPT	BIOMECANICA_SB	0	 
7134	952	13	Optimización de Operaciones	0.0	4.0	8	7	 	OPT	BIOMECANICA_SB	0	 
7135	1786	13	Planeación y Control de Recursos Hospitalarios	2.0	4.0	8	8	L	OPT	BIOMECANICA_SB	0	 
7136	1699	13	Sistemas de Medición y Transductores Médicos	2.0	4.0	8	9	L	OPT	BIOMECANICA_SB	0	 
7137	1784	13	Estadística Aplicada	0.0	4.0	5	1	 	OPT	LOGISTICA_CB	0	 
7138	2103	13	Calidad	0.0	4.0	6, 7, 8	1	 	OPT	LOGISTICA_CI	0	 
6673	1120	9	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
7139	1955	13	Evaluación de Proyectos de Inversión	0.0	4.0	6, 7, 8	2	 	OPT	LOGISTICA_CI	0	 
7140	339	13	Investigación de Operaciones I	0.0	4.0	6, 7, 8	3	 	OPT	LOGISTICA_CI	0	 
7141	952	13	Optimización de Operaciones	0.0	4.0	6, 7, 8	4	 	OPT	LOGISTICA_CI	0	 
7142	1786	13	Planeación y Control de Recursos Hospitalarios	2.0	4.0	6, 7, 8	5	L	OPT	LOGISTICA_CI	0	 
7143	1787	13	Amplificación y Filtrado de Señales Médicas	2.0	4.0	8	1	L	OPT	LOGISTICA_SB	0	 
7144	1695	13	Análisis de Bioseñales	2.0	4.0	8	2	L	OPT	LOGISTICA_SB	0	 
7145	2079	13	Biomateriales	2.0	4.0	8	3	L	OPT	LOGISTICA_SB	0	 
7147	1996	13	Circuitos Digitales	2.0	4.0	8	5	L	OPT	LOGISTICA_SB	0	 
7148	1782	13	Diseño de Elementos de Máquinas	0.0	4.0	8	6	 	OPT	LOGISTICA_SB	0	 
7149	1783	13	Ergonomía	0.0	4.0	8	7	 	OPT	LOGISTICA_SB	0	 
7150	1698	13	Mediciones Clinicas	2.0	4.0	8	8	L	OPT	LOGISTICA_SB	0	 
7151	1699	13	Sistemas de Medición y Transductores Médicos	2.0	4.0	8	9	L	OPT	LOGISTICA_SB	0	 
7152	1797	13	Temas Selectos de Ingeniería en Sistemas Biomédicos I	0.0	4.0	10	1	 	OPT	BIOMEDICOS	0	 
7153	1798	13	Temas Selectos de Ingeniería en Sistemas Biomédicos II	0.0	4.0	10	2	 	OPT	BIOMEDICOS	0	 
7154	1799	13	Temas Selectos de Ingeniería en Sistemas Biomédicos III	0.0	4.0	10	3	 	OPT	BIOMEDICOS	0	 
7155	1897	13	Temas Selectos de Ingeniería en Sistemas Biomédicos IV	0.0	4.0	10	4	 	OPT	BIOMEDICOS	0	 
7156	1898	13	Temas Selectos de Ingeniería en Sistemas Biomédicos V	0.0	4.0	10	5	 	OPT	BIOMEDICOS	0	 
7157	1899	13	Temas Selectos de Ingeniería en Sistemas Biomédicos VI	0.0	4.0	10	6	 	OPT	BIOMEDICOS	0	 
7158	1977	13	Temas Selectos de Ingeniería en Sistemas Biomédicos VII	0.0	4.0	10	7	 	OPT	BIOMEDICOS	0	 
7159	1978	13	Temas Selectos del Área Médico Biológica	0.0	4.0	10	1	 	OPT	MB	0	 
7160	1789	13	Ciencia, Tecnología y Sociedad	0.0	2.0	4, 5, 6	1	 	OPT	CSYH	0	 
7161	1790	13	Introducción al Análisis Económico Empresarial	0.0	2.0	4, 5, 6	2	 	OPT	CSYH	0	 
7162	1055	13	Literatura Hispanoamericana Contemporanea	0.0	3.0	4, 5, 6	3	 	OPT	CSYH	0	 
7163	1791	13	México Nación Multicultural	0.0	2.0	4, 5, 6	4	 	OPT	CSYH	0	 
7164	1792	13	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	4, 5, 6	5	 	OPT	CSYH	0	 
7165	1793	13	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	4, 5, 6	6	 	OPT	CSYH	0	 
7166	1794	13	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	4, 5, 6	7	 	OPT	CSYH	0	 
7167	1795	13	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 5, 6	8	 	OPT	CSYH	0	 
7168	1796	13	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 5, 6	9	 	OPT	CSYH	0	 
7169	2200	13	Movilidad I	0.0	2.0	10	1	 	OPT	MOVILIDAD	0	 
7170	2201	13	Movilidad II	0.0	3.0	10	2	 	OPT	MOVILIDAD	0	 
7171	2202	13	Movilidad II	0.0	3.0	10	3	 	OPT	MOVILIDAD	0	 
7172	2203	13	Movilidad IV	0.0	3.0	10	4	 	OPT	MOVILIDAD	0	 
7173	2204	13	Movilidad V	0.0	3.0	10	5	 	OPT	MOVILIDAD	0	 
7174	2205	13	Movilidad VI	0.0	3.0	10	6	 	OPT	MOVILIDAD	0	 
7175	2206	13	Movilidad VII	0.0	4.0	10	7	 	OPT	MOVILIDAD	0	 
7176	2207	13	Movilidad VIII	0.0	4.0	10	8	 	OPT	MOVILIDAD	0	 
7177	2208	13	Movilidad IX	0.0	4.0	10	9	 	OPT	MOVILIDAD	0	 
7178	2209	13	Movilidad X	0.0	4.0	10	10	 	OPT	MOVILIDAD	0	 
7179	2210	13	Movilidad XI	2.0	4.0	10	11	 	OPT	MOVILIDAD	0	 
7146	1781	13	Biotermofluidos I	2.0	4.0	8	4	L+	OPT	LOGISTICA_SB	0	 
7219	0	14	Optativa de Otras Asignaturas Convenientes	0.0	3.0	7	5	 	OPT_1	NARANJA	1	 
7228	0	14	Obligatoria del campo de profundización	0.0	3.0	9	2	 	OPT_1	AZUL	1	 
7233	0	14	Obligatoria del campo de profundización	0.0	3.0	10	1	 	OPT_1	AZUL	1	 
7234	0	14	Obligatoria del campo de profundización	0.0	3.0	10	2	 	OPT_1	AZUL	1	 
7235	0	14	Optativa del campo de profundización	0.0	3.0	10	3	 	OPT_1	AZUL	1	 
7236	0	14	Optativa del campo de profundización	0.0	3.0	10	4	 	OPT_1	AZUL	1	 
7237	0	14	Optativa del campo de profundización	0.0	3.0	10	5	 	OPT_1	AZUL	1	 
7241	3008	14	Energías Renovables	0.0	4.0	10	3	 	OPT	CALIDAD_AIRE	0	 
7243	1624	14	Energía e Impacto Ambiental	0.0	4.0	10	2	 	OPT	CALIDAD_AIRE_OPT	0	 
7244	3052	14	Energías Renovables en Edificios	0.0	3.0	10	3	 	OPT	CALIDAD_AIRE_OPT	0	 
7245	3015	14	Introducción al Análisis Probabilístico de Seguridad	0.0	4.0	10	4	 	OPT	CALIDAD_AIRE_OPT	0	 
7251	1580	14	Geología Ambiental	0.0	4.0	10	1	 	OPT	CALIDAD_AGUA_OPT	0	 
7252	3053	14	Ingeniería para el Manejo Sustentable del Agua en Edificios	0.0	3.0	10	2	 	OPT	CALIDAD_AGUA_OPT	0	 
7253	2092	14	Modelación Numérica y Computacional de Acuíferos	0.0	4.0	10	3	 	OPT	CALIDAD_AGUA_OPT	0	 
7257	2809	14	Gestión Ambiental en Minería	0.0	4.0	10*	2	 	OPT	MANEJO	0	 
7260	1580	14	Geología Ambiental	0.0	4.0	10	2	 	OPT	MANEJO_OPT	0	 
7261	2092	14	Modelación Numérica y Computacional de Acuíferos	0.0	4.0	10	3	 	OPT	MANEJO_OPT	0	 
7266	1580	14	Geología Ambiental	0.0	4.0	10	3	 	OPT	GESTION	0	 
7269	2092	14	Modelación Numérica y Computacional de Acuíferos	0.0	4.0	10	3	 	OPT	GESTION_OPT	0	 
6809	2081	10	Equipos y Herramientas de Perforación de Pozos	0.0	4.0	3	5	P+	OPT	CYAN	1	 
7242	1199	14	Adaptación al Cambio Climático	0.0	3.0	10	1	 	OPT	CALIDAD_AIRE_OPT	0	 
7264	2978	14	Aprovechamiento y Valorización de Residuos	0.0	3.0	9*	1	 	OPT	GESTION	0	 
7239	2970	14	Control de la Combustión	0.0	3.0	9*	1	 	OPT	CALIDAD_AIRE	0	 
7240	2971	14	Cambio Climático	0.0	3.0	10*	2	 	OPT	CALIDAD_AIRE	0	 
7249	2974	14	Tratamiento de Aguas Residuales Industriales	0.0	3.0	10*	2	 	OPT	CALIDAD_AGUA	0	 
7275	3078	14	Diseño Sustentable	0.0	4.0	10	1	 	OPT	PLANEACION_OPT	0	 
7276	3051	14	Edificios Sustentables	0.0	3.0	10	2	 	OPT	PLANEACION_OPT	0	 
7277	3015	14	Introducción al Análisis Probabilístico de Seguridad	0.0	4.0	10	4	 	OPT	PLANEACION_OPT	0	 
7278	3055	14	Proyectos Sustentables de Energía	0.0	3.0	10	5	 	OPT	PLANEACION_OPT	0	 
7280	18	14	Administración	2.0	2.0	7	1	P	OPT	OPTATIVA	0	 
7281	2602	14	Contabilidad Financiera y Costos	0.0	4.0	7	2	 	OPT	OPTATIVA	0	 
7282	1057	14	Desarrollo de Habilidades Directivas	2.0	2.0	7	3	 	OPT	OPTATIVA	0	 
7284	2805	14	Instalaciones Industriales	0.0	4.0	7	5	 	OPT	OPTATIVA	0	 
7285	3025	14	Introduccion a la Gerencia de Proyectos	0.0	3.0	7	6	 	OPT	OPTATIVA	0	 
7286	3026	14	Preparación de Concursos de Obra Púlbica	0.0	3.0	7	7	 	OPT	OPTATIVA	0	 
7287	1918	14	Procesos Industriales	0.0	4.0	7	8	 	OPT	OPTATIVA	0	 
7288	3022	14	Relaciones Laborales y Organizacionales	0.0	4.0	7	9	 	OPT	OPTATIVA	0	 
7289	3028	14	Supervision de Obras	0.0	3.0	7	10	 	OPT	OPTATIVA	0	 
7290	1795	14	Taller Sociohumanistico- Creatividad	2.0	0.0	7	11	 	OPT	OPTATIVA	0	 
7291	1796	14	Taller Sociohumanistico- Liderazgo	2.0	0.0	7	12	 	OPT	OPTATIVA	0	 
7292	1789	14	Ciencia, Tecnología y Sociedad	0.0	2.0	3	1	 	OPT	CSYH	0	 
7293	1790	14	Introducción al Análisis Económico Empresarial	0.0	2.0	3	2	 	OPT	CSYH	0	 
7294	1055	14	Literatura Hispanoamericana Contemporanea	0.0	3.0	3	3	 	OPT	CSYH	0	 
7295	1791	14	México Nación Multicultural	0.0	2.0	3	4	 	OPT	CSYH	0	 
7296	1792	14	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	3	5	 	OPT	CSYH	0	 
7297	1793	14	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	3	6	 	OPT	CSYH	0	 
7298	1794	14	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	3	7	 	OPT	CSYH	0	 
7259	3092	14	Depósitos de Residuos Mineros	0.0	4.0	10	1	 	OPT	MANEJO_OPT	0	 
7267	3092	14	Depósitos de Residuos Mineros	0.0	4.0	10	1	 	OPT	GESTION_OPT	0	 
7026	1752	12	Percepción Remota II	3.0	3.0	8	4	L		CYAN	1	 
7274	1199	14	Adaptación al Cambio Climático	0.0	3.0	10	3	 	OPT	PLANEACION	0	 
7283	1059	14	Desarrollo Empresarial	2.0	2.0	7	4	P	OPT	OPTATIVA	0	 
7272	2981	14	Análisis de Ciclo de Vida	0.0	3.0	9*	1	 	OPT	PLANEACION	0	 
7268	1243	14	Gestión de residuos de Alto Impacto	0.0	3.0	10	2	 	OPT	GESTION_OPT	0	 
7258	2976	14	Manejo de Residuos Bioológicos-Infecciosos	0.0	3.0	10	3	 	OPT	MANEJO	0	 
7256	2975	14	Modelación Hidrogeoquímica en Medio Acuoso	0.0	3.0	9*	1	 	OPT	MANEJO	0	 
7270	1242	14	Seguridad Industrial y Protección Ambiental	0.0	3.0	10	4	 	OPT	GESTION_OPT	0	 
7262	1242	14	Seguridad Industrial y Protección Ambiental	0.0	3.0	10	4	 	OPT	MANEJO_OPT	0	 
7254	1236	14	Tecnologías Avanzadas para el Tratamiento de Agua	0.0	3.0	10	4	 	OPT	CALIDAD_AGUA_OPT	0	 
7271	1244	14	Temas Especiales de Gestión Integral de Residuos Sólidos	0.0	3.0	10	5	 	OPT	GESTION_OPT	0	 
7255	1239	14	Temas Especiales de Ingeniería de la Calidad del Agua	0.0	3.0	10	5	 	OPT	CALIDAD_AGUA_OPT	0	 
7247	1235	14	Temas Especiales de Ingeniería de la Calidad del Aire	0.0	3.0	10	6	 	OPT	CALIDAD_AIRE_OPT	0	 
7263	1241	14	Temas Especiales de Manejo de Materiales y Residuos Peligrosos	0.0	3.0	10	5	 	OPT	MANEJO_OPT	0	 
7279	2983	14	Temas Especiales de Planeación y Gestión Ambiental	0.0	3.0	10	6	 	OPT	PLANEACION_OPT	0	 
7265	2979	14	Tratamiento y Aprovechamiento de Biosólidos	0.0	3.0	10*	2	 	OPT	GESTION	0	 
7246	1234	14	Riesgo Ambiental Toxicológico	0.0	3.0	10	5	 	OPT	CALIDAD_AIRE_OPT	0	 
7273	1234	14	Riesgo Ambiental Toxicológico	0.0	3.0	10*	2	 	OPT	PLANEACION	0	 
7023	1649	12	Ingeniería Geomática	0.0	3.0	8	1	 		AZUL	1	 
7024	1679	12	Proyecto Geométrico de Obras de Infraestructura Lineal	0.0	4.5	8	2	 		AZUL	1	 
7025	1599	12	Fundamentos de Catastro	2.0	3.0	8	3	L		AZUL	1	 
6889	0	11	Taller Sociohumanístico	2.0	0.0	4	6	 	OPT_1	VERDE	1	 
6223	1537	4	Finanzas en la Ingeniería en Computación	0.0	3.0	7	1	 		NARANJA	1	 
6225	406	4	Inteligencia Artificial	0.0	4.0	7	3	 		AZUL	1	 
6228	1413	4	Introducción a la Economía	0.0	4.0	7	1	 		VERDE	1	 
6230	1672	4	Microcomputadoras	2.0	3.0	8	2	L+		AZUL	1	 
6231	1590	4	Computación Gráfica e Interacción Humano-Computadora	2.0	4.0	8	3	L+		AZUL	1	 
6232	1052	4	Ética Profesional	2.0	2.0	8	4	 		VERDE	1	 
6233	1598	4	Redes de Datos Seguras	2.0	6.0	8	5	L+		AZUL	1	 
6234	1867	4	Organización y Arquitectura de Computadoras	2.0	3.0	9	1	L+		AZUL	1	 
6235	1858	4	Fundamentos de Sistemas Embebidos	2.0	3.0	9	2	L		AZUL	1	 
6236	1959	4	Sistemas Distribuidos	0.0	4.0	9	3	 		AZUL	1	 
6238	2080	4	Recursos y Necesidades de México	0.0	4.0	9	5	 		VERDE	1	 
6281	1121	5	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6282	1123	5	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
6283	1130	5	Fundamentos de Física	2.0	2.0	1	4	L		AMARILLO	1	 
6284	1122	5	Fundamentos de Programación	2.0	4.0	1	5	L		NARANJA	1	 
6285	1220	5	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6286	1221	5	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6287	1228	5	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6290	1436	5	Probabilidad	0.0	4.0	3	1	 		AMARILLO	1	 
6291	1321	5	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6292	1325	5	Ecuaciones Diferenciales	0.0	4.0	3	3	 		AMARILLO	1	 
6293	1424	5	Matemáticas Avanzadas	2.0	3.0	3	4	 		AMARILLO	1	 
6294	1323	5	Programación Orientada a Objetos	2.0	4.0	3	5	L		NARANJA	1	 
6296	1222	5	Cultura y Comunicación	2.0	0.0	3	7	 		VERDE	1	 
6297	1451	5	Fundamentos de Óptica	2.0	2.0	4	1	L		AMARILLO	1	 
6298	1414	5	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
6299	1433	5	Análisis Numérico	0.0	4.0	4	3	 		AMARILLO	1	 
6300	1452	5	Introducción a la Física del Estado Sólido	0.0	4.0	4	4	 		AMARILLO	1	 
6314	1413	5	Introducción a la Economía	0.0	4.0	6	6	 		VERDE	1	 
6316	2704	5	Procesamiento de Señales Digitales en Tiempo Real	2.0	3.0	7	2	L+		AZUL	1	 
6317	2705	5	Redes de Telecomunicaciones	0.0	4.0	7	3	 		AZUL	1	 
6320	1052	5	Ética Profesional	2.0	2.0	7	6	 		VERDE	1	 
6321	2813	5	Sistema de Radiocomunicaciones I	0.0	4.0	8	1	 		AZUL	1	 
6323	2814	5	Tecnologías de Interconexión de Redes	0.0	4.0	8	3	 		AZUL	1	 
6324	1875	5	Sistemas de Comunicaciones Opticas I	2.0	3.0	8	4	L+		AZUL	1	 
6325	1874	5	Dispositivos de Microondas II	2.0	3.0	8	5	L+		AZUL	1	 
6326	2080	5	Recursos y Necesidades de México	0.0	4.0	8	6	 		VERDE	1	 
6329	2962	5	Regulación de las Telecomunicaciones	0.0	3.0	9	3	 		AZUL	1	 
6330	2963	5	Sistema de Radiocomunicaciones II	0.0	4.0	9	4	 		AZUL	1	 
5991	1120	2	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
5992	1121	2	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
5994	1131	2	Introducción a la Ingeniería de Minas y Metalurgía	0.0	2.0	1	4	 		NARANJA	1	 
5995	1222	2	Cultura y Comunicación	2.0	0.0	1	5	 		VERDE	1	 
5996	1220	2	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
5997	1221	2	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
7299	2916	1	Integración de Proyectos	2.0	1.0	10	7	 		AZUL	1	
6310	1469	5	Fundamentos y Aplicaciones para el Procesamiento Digital de Señales	0.0	3.0	6	2	 		CYAN	1	 
6222	1643	4	Administración de Proyectos de Software	0.0	4.0	6	5	 		CYAN	1	 
5999	1122	2	Fundamentos de Programación	2.0	4.0	2	4	L		NARANJA	1	 
6000	1125	2	Química de Ciencias de la Tierra	2.0	4.0	2	5	L+		AMARILLO	1	 
6001	1325	2	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6002	1321	2	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6003	1330	2	Fundamentos de Termodinámica y Electromagnetismo	2.0	4.0	3	3	L+		AMARILLO	1	 
6005	54	2	Dibujo	2.0	2.0	3	5	 		NARANJA	1	 
6007	1436	2	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
6008	1433	2	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
6009	1228	2	Mecánica	0.0	6.0	4	3	 		AMARILLO	1	 
6011	1067	2	Geometría Descriptiva Aplicada	2.0	2.0	4	5	 		NARANJA	1	 
6013	1569	2	Estadística	0.0	4.0	5	1	 		AMARILLO	1	 
6015	1456	2	Legislación Minera	0.0	2.0	5	3	 		NARANJA	1	 
6018	1413	2	Introducción a la Economía	0.0	4.0	5	6	 		VERDE	1	 
6331	1974	5	Redes Inalámbricas y Móviles	0.0	3.0	9	5	 		AZUL	1	 
6062	1120	3	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6063	1121	3	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6064	1123	3	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
6066	1122	3	Fundamentos de Programación	2.0	4.0	1	5	L		NARANJA	1	 
6067	1220	3	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6068	1221	3	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6069	1228	3	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6070	1222	3	Cultura y Comunicación	2.0	0.0	2	4	 		VERDE	1	 
6071	1227	3	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		NARANJA	1	 
6072	1437	3	Termodinámica	2.0	4.0	3	1	L+		AMARILLO	1	 
6073	1321	3	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6074	1325	3	Ecuaciones Diferenciales	0.0	4.0	3	3	 		AMARILLO	1	 
6076	1332	3	Modelos de Programación Orientada a Objetos	2.0	2.0	3	5	L		NARANJA	1	 
6078	1436	3	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
6079	1414	3	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
6080	1433	3	Análisis Numérico	0.0	4.0	4	3	 		AMARILLO	1	 
6082	944	3	Costos y Evaluación de Proyectos	2.0	2.0	4	5	 		NARANJA	1	 
6083	1593	3	Estadística para Ingeniería Eléctrica Electrónica	0.0	2.0	5	1	 		AMARILLO	1	 
6084	1780	3	Acústica y Óptica	2.0	4.0	5	2	L		AMARILLO	1	 
6415	2709	6	Prospección Sísmica I	0.0	4.0	7	2	 		AZUL	1	 
6982	1120	12	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
5998	487	2	Mineralogía	3.0	3.0	2	3	L		CYAN	1	 
6004	1137	2	Petrología	2.0	2.0	3	4	L		CYAN	1	 
6010	1625	2	Fisicoquímica	0.0	4.0	4	4	 		CYAN	1	 
6014	1457	2	Métodos de Medición Minero-Cartográficos	3.0	4.0	5	2	P		CYAN	1	 
6016	1455	2	Análisis Químico	4.0	2.0	5	4	L		CYAN	1	 
6017	1572	2	Geología Estructural	0.0	4.0	5	5	P		CYAN	1	 
6095	1617	3	Diseño Digital	2.0	4.0	7	2	L+		CYAN	1	 
6081	1443	3	Análisis de Sistemas y Señales	2.0	4.0	4	4	L+		CYAN	1	 
6085	129	3	Dinámica de Sistemas Físicos	0.0	4.0	5	3	 		CYAN	1	 
7000	0	12	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	3	6	 	OPT_1	VERDE	1	 
7079	0	13	Obligatoria de elección de Ciencias Básicas	0.0	4.0	5	4	 	OBL_ELEC	AMARILLO	1	 
6420	2815	6	Introducción al Tratamiento de Señales	0.0	4.0	8	1	 		CYAN	1	 
6090	879	3	Teoría Electromagnetica	2.0	4.0	6	2	L+		CYAN	1	 
6201	1227	4	Estructura de Datos y Algoritmos I	2.0	4.0	2	5	L		CYAN	1	 
6206	1317	4	Estructura de Datos y Algoritmos II	2.0	4.0	3	5	 		CYAN	1	 
6212	119	4	Estructuras Discretas	0.0	4.0	4	5	 		CYAN	1	 
6213	1503	4	Estructura y Programación de Computadoras	0.0	4.0	5	1	 		CYAN	1	 
6214	138	4	Dispositivos Electrónicos	2.0	4.0	5	2	L+		CYAN	1	 
7075	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	4	6	 	OPT_1	VERDE	1	 
6215	442	4	Lenguajes Formales y Autómatas	0.0	4.0	5	3	 		CYAN	1	 
6216	1473	4	Señales y Sistemas	2.0	3.0	5	4	L+		CYAN	1	 
6217	1531	4	Ingenieria de Software	0.0	4.0	5	5	 		CYAN	1	 
7081	0	13	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	5	6	 	OPT_1	VERDE	1	 
6417	2708	6	Prospección Gravimétrica y Magnetométrica	2.0	4.0	7	4	P+		AZUL	1	 
6418	1587	6	Geología de México	0.0	4.0	7	5	 		AZUL	1	 
6421	2817	6	Prospección Sísmica II	0.0	4.0	8	2	 		AZUL	1	 
6423	2816	6	Prospección Eléctrica	2.0	4.0	8	4	P+		AZUL	1	 
6424	1052	6	Ética Profesional	2.0	2.0	8	5	 		VERDE	1	 
6425	2094	6	Petrofísica y Registros Geofísicos en Pozos	2.0	4.0	9	1	P		AZUL	1	 
6426	2966	6	Inersion de Datos Geofísicos	0.0	4.0	9	2	 		AZUL	1	 
6428	2967	6	Prospección Electromagnética	2.0	4.0	9	4	P+		AZUL	1	 
6429	2080	6	Recursos y Necesidades de México	0.0	4.0	9	5	 		VERDE	1	 
6430	2969	6	Procesamiento de Datos Geofísicos	2.0	4.0	10	1	L		AZUL	1	 
6431	2968	6	Geofísica Integral	2.0	4.0	10	2	P		AZUL	1	 
6089	1413	3	Introducción a la Economía	0.0	4.0	6	1	 		VERDE	1	 
6193	1121	4	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6194	1123	4	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
6195	1130	4	Fundamentos de Física	2.0	2.0	1	4	L		AMARILLO	1	 
6196	1122	4	Fundamentos de Programación	2.0	4.0	1	5	L		NARANJA	1	 
6197	1220	4	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6198	1221	4	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6199	1228	4	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6202	1436	4	Probabilidad	0.0	4.0	3	1	 		AMARILLO	1	 
6203	1321	4	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6204	1325	4	Ecuaciones Diferenciales	0.0	4.0	3	3	 		AMARILLO	1	 
6205	1222	4	Cultura y Comunicación	2.0	0.0	3	4	 		VERDE	1	 
6207	1323	4	Programación Orientada a Objetos	2.0	4.0	3	6	L		NARANJA	1	 
6208	1445	4	Fundamentos de Estadística	0.0	4.0	4	1	 		AMARILLO	1	 
6209	1414	4	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
6210	1433	4	Análisis Numérico	0.0	4.0	4	3	 		AMARILLO	1	 
6211	1424	4	Matemáticas Avanzadas	2.0	3.0	4	4	 		AMARILLO	1	 
6697	1433	9	Análisis Numérico	0.0	4.0	5	3	 		AMARILLO	1	 
7196	0	14	Optativa de Ciencias Sociales y Humanidades	2.0	2.0	3	6	 	OPT_1	VERDE	1	 
7180	1127	14	Programación Básica	2.0	2.0	1	2	P		NARANJA	1	 
7181	1121	14	Cálculo y Geometría Analítica	0.0	6.0	1	3	 		AMARILLO	1	 
7182	1120	14	Álgebra	0.0	4.0	1	4	 		AMARILLO	1	 
7183	1128	14	Representaciones Gráficas	4.0	2.0	1	5	P		NARANJA	1	 
7185	1436	14	Probabilidad	0.0	4.0	2	1	 		AMARILLO	1	 
7187	1221	14	Cálculo Integral	0.0	4.0	2	3	 		AMARILLO	1	 
7188	1220	14	Álgebra Lineal	0.0	4.0	2	4	 		AMARILLO	1	 
7190	1222	14	Cultura y Comunicación	2.0	0.0	2	6	 		VERDE	1	 
7191	1569	14	Estadística	0.0	4.0	3	1	 		AMARILLO	1	 
7192	2211	14	Física Experimental	2.0	4.0	3	2	L		AMARILLO	1	 
7193	1321	14	Cálculo Vectorial	0.0	4.0	3	3	 		AMARILLO	1	 
7194	1325	14	Ecuaciones Diferenciales	0.0	4.0	3	4	 		AMARILLO	1	 
7197	2080	14	Recursos y Necesidades de México	0.0	4.0	4	1	 		VERDE	1	 
7198	1437	14	Termodinámica	2.0	4.0	4	2	L+		AMARILLO	1	 
7199	1228	14	Mecánica	0.0	6.0	4	3	 		AMARILLO	1	 
7200	1433	14	Análisis Numérico	0.0	4.0	4	4	 		AMARILLO	1	 
7202	1474	14	Biología	0.0	3.0	4	6	 		AMARILLO	1	 
7208	1413	14	Introducción a la Economía	0.0	4.0	5	6	 		VERDE	1	 
7215	1088	14	Hidrogeología	3.0	3.0	7	1	L, P		AZUL	1	 
7220	642	14	Planeación	0.0	3.0	7	6	 		MORADO	1	 
6699	901	9	Termodinámica Aplicada	0.0	4.0	5	5	 		CYAN	1	 
6700	2501	9	Sistemas de Conversion de Energía Térmica	2.0	0.0	5	6	 		CYAN	1	 
6701	1540	9	Mecánica de Sólidos	0.0	4.0	6	2	 		CYAN	1	 
6702	508	9	Modelado de Sistmas Físicos	0.0	4.0	6	3	 		CYAN	1	 
6703	2603	9	Manufactura II	2.0	4.0	6	4	L+		CYAN	1	 
6704	462	9	Mecánica de Fluidos I	2.0	4.0	6	5	L+		CYAN	1	 
6706	1691	9	Electrónica Básica	2.0	4.0	7	1	L		CYAN	1	 
6707	1659	9	Mecanismos	0.0	4.0	7	2	 		CYAN	1	 
6710	1756	9	Mecánica de Fluidos II	2.0	4.0	7	5	L+		CYAN	1	 
6711	1782	9	Diseño de Elementos de Máquinas	0.0	4.0	8	1	 		CYAN	1	 
6712	2806	9	Dinámica de Maquinaria	2.0	4.0	8	2	L+		CYAN	1	 
6713	1807	9	Instrumentación y Control	0.0	4.0	8	3	 		CYAN	1	 
6714	1860	9	Transferencia de Calor	2.0	4.0	8	4	L+		CYAN	1	 
6220	1644	4	Bases de Datos	2.0	6.0	6	3	L+		CYAN	1	 
6221	1562	4	Circuitos Eléctricos	2.0	3.0	6	4	L		CYAN	1	 
6516	824	7	Sedimentología	2.0	2.0	4	6	L, P		CYAN	1	 
6517	487	7	Mineralogía	3.0	3.0	4	4	L		CYAN	1	 
6518	1438	7	Técnicas Geológicas de Campo	2.0	2.0	4	5	P+		CYAN	1	 
6521	1573	7	Geoquímica	0.0	4.0	5	2	 		CYAN	1	 
6522	1727	7	Estratigrafía	0.0	4.0	5	3	P		CYAN	1	 
7114	1781	13	Biotermofluidos I	2.0	4.0	8	2	L+	OPT	INSTRUMENTACION_SB	0	 
7124	1781	13	Biotermofluidos I	2.0	4.0	6, 7, 8	2	L+	OPT	BIOMECANICA_CI	0	 
7248	2972	14	Diseño de Sistemas Descentralizados de Suministro y Tratamiento de Agua	0.0	3.0	9*	1	 	OPT	CALIDAD_AGUA	0	 
7250	2973	14	Estudios Sanitarios de Playas Marinas	0.0	3.0	10	3	 	OPT	CALIDAD_AGUA	0	 
6454	1578	6	Sistemas de Información Geográfica	3.0	3.0	7, 10	5	L	OPT	E_MINERA	0	 
6705	1413	9	Introducción a la Economía	0.0	4.0	6	6	 		VERDE	1	 
6708	1052	9	Ética Profesional	2.0	2.0	7	3	 		VERDE	1	 
6709	1734	9	Ingeniería Económica	0.0	4.0	7	4	 		NARANJA	1	 
6715	2080	9	Recursos y Necesidades de México	0.0	4.0	8	5	 		VERDE	1	 
6280	1120	5	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6515	1433	7	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
6519	1413	7	Introducción a la Economía	0.0	4.0	4	6	 		VERDE	1	 
6520	1569	7	Estadística	0.0	4.0	5	1	 		AMARILLO	1	 
6525	1055	7	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	6	 		VERDE	1	 
6531	1790	7	Introducción al Análisis Económico Empresarial	0.0	2.0	6	6	 		VERDE	1	 
6533	1578	7	Sistemas de Información Geográfica	3.0	3.0	7	2	L		AZUL	1	 
6536	1088	7	Hidrogeología	3.0	3.0	7	5	L, P		AZUL	1	 
6537	1871	7	Geología Aplicada a la Minería	3.0	3.0	8	1	P		AZUL	1	 
6539	1066	7	Geología del Petróleo	3.0	3.0	8	3	P		AZUL	1	 
6540	1580	7	Geología Ambiental	0.0	4.0	8	4	 		AZUL	1	 
6543	1585	7	Geología Histórica	0.0	4.0	9	2	 		CYAN	1	 
6827	1980	10	Caracterización Estática de Yacimientos	0.0	4.0	6	5	 		CYAN	1	 
6558	2087	7	Geoquímica Orgánica	0.0	4.0	10	7	 	OPT	INGENIERIA_A	0	 
6559	2088	7	Geotecnia de Excavación	0.0	4.0	10	8	 	OPT	INGENIERIA_A	0	 
6560	2089	7	Hidrogeología de Contaminantes	0.0	4.0	10	9	 	OPT	INGENIERIA_A	0	 
6561	2090	7	Mecánica de Suelos para Ciencias de la Tierra	0.0	4.0	10	10	 	OPT	INGENIERIA_A	0	 
6562	2091	7	Modelación Numérica en la Ingeniería Geológica	0.0	4.0	10	11	 	OPT	INGENIERIA_A	0	 
6563	2092	7	Modelación Numérica y Computacional de Acuíferos	0.0	4.0	10	12	 	OPT	INGENIERIA_A	0	 
6564	2093	7	Paleontología Estratigráfica	4.0	2.0	10	13	L	OPT	INGENIERIA_A	0	 
6565	2094	7	Petrofísica y Registros Geofísicos en Pozos	2.0	4.0	10	14	P	OPT	INGENIERIA_A	0	 
6566	2095	7	Riesgo Geológico	0.0	4.0	10	15	 	OPT	INGENIERIA_A	0	 
6567	1090	7	Simulación Matemática de Yacimientos	1.0	4.0	10	16	L	OPT	INGENIERIA_A	0	 
6568	2096	7	Temas Selectos de Ingeniería Geológica I	0.0	4.0	10	17	 	OPT	INGENIERIA_A	0	 
6569	2097	7	Temas Selectos de Ingeniería Geológica II	0.0	4.0	10	18	 	OPT	INGENIERIA_A	0	 
6570	2098	7	Temas Selectos de Ingeniería Geológica III	0.0	4.0	10	19	 	OPT	INGENIERIA_A	0	 
6571	2099	7	Yacimientos Minerales y Técnicas Analíticas	3.0	3.0	10	20	L, P	OPT	INGENIERIA_A	0	 
6605	0	8	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	6	6	 	OPT_1	VERDE	1	 
6610	0	8	Optativa	2.0	2.0	7	5	 	OPT_1	AZUL	1	 
6541	1582	7	Geología del Subsuelo	3.0	3.0	8	5	P		AZUL	1	 
6542	1061	7	Geología Aplicada a la Ingeniería Civil	3.0	3.0	9	1	P		AZUL	1	 
6544	1586	7	Proyectos de Ingeniería Geológica	0.0	4.0	9	3	 		AZUL	1	 
6545	1584	7	Geoestadística	0.0	4.0	9	4	 		AZUL	1	 
6546	1052	7	Ética Profesional	2.0	2.0	9	5	 		VERDE	1	 
6547	1587	7	Geología de México	0.0	4.0	10	1	 		AZUL	1	 
6551	2080	7	Recursos y Necesidades de México	0.0	4.0	10	5	 		VERDE	1	 
6828	1985	10	Perforación No Convencional	0.0	6.0	7	1	 		AZUL	1	 
6829	1986	10	Recuperación Secundaria y Mejorada	0.0	6.0	7	2	 		AZUL	1	 
6830	1987	10	Sistemas Artificiales de Producción	0.0	6.0	7	3	P+		AZUL	1	 
6832	1984	10	Caracterización Dinámica de Yacimientos	0.0	4.0	7	6	 		AZUL	1	 
6833	1989	10	Terminación y Mantenimiento de Pozos	2.0	4.0	8	1	L+, P+		AZUL	1	 
6834	1090	10	Simulación Matemática de Yacimientos	1.0	4.0	8	2	L		AZUL	1	 
6835	1988	10	Ingeniería de Yacimientos de Gas	0.0	4.0	8	3	 		AZUL	1	 
6837	1413	10	Introducción a la Economía	0.0	4.0	8	5	 		VERDE	1	 
6838	1990	10	Administración Integral de Yacimientos	0.0	4.0	9	1	 		AZUL	1	 
6839	1992	10	Econimía de los Hidrocarburos	0.0	2.0	9	2	 		AZUL	1	 
6840	1991	10	Conducción y Manejo de la Producción de los Hidrocarburos	0.0	4.0	9	3	P+		AZUL	1	 
6841	1861	10	Administración de la Seguridad Industrial y Protección Ambiental	0.0	3.0	9	4	 		NARANJA	1	 
6844	1994	10	Planeación y Evaluación de Proyectos Petroleros	2.0	2.0	10	1	 		NARANJA	1	 
6845	1995	10	Proyectos Integrales Petroleros	2.0	2.0	10	2	 		AZUL	1	 
6846	1993	10	Legislación de la Industria Petrolera	0.0	4.0	10	3	 		NARANJA	1	 
6847	1116	10	Temas Selectos de Ingeniería Petrolera	2.0	2.0	10	4	 		AZUL	1	 
6848	2080	10	Recursos y Necesidades de México	0.0	4.0	10	5	 		VERDE	1	 
6379	1120	6	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6380	1121	6	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6381	1125	6	Química de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1	 
6382	2211	6	Física Experimental	2.0	4.0	1	4	L		AMARILLO	1	 
6384	1220	6	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6385	1221	6	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6622	0	8	Optativa	2.0	2.0	9	5	 	OPT_1	AZUL	1	 
6624	0	8	Optativa	2.0	2.0	10	2	 	OPT_1	AZUL	1	 
6625	0	8	Optativa	2.0	2.0	10	3	 	OPT_1	AZUL	1	 
6626	0	8	Optativa	2.0	2.0	10	4	 	OPT_1	AZUL	1	 
6630	1789	8	Ciencia, Tecnología y Sociedad	0.0	2.0	3, 6	1	 	OPT	CSYH	0	 
6631	1790	8	Introducción al Análisis Económico Empresarial	0.0	2.0	3, 6	2	 	OPT	CSYH	0	 
6632	1055	8	Literatura Hispanoamericana Contemporanea	0.0	3.0	3, 6	3	 	OPT	CSYH	0	 
6633	1791	8	México Nación Multicultural	0.0	2.0	3, 6	4	 	OPT	CSYH	0	 
6634	1792	8	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	3, 6	5	 	OPT	CSYH	0	 
6635	1793	8	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	3, 6	6	 	OPT	CSYH	0	 
6636	1794	8	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	3, 6	7	 	OPT	CSYH	0	 
6637	1795	8	Taller Sociohumanistico- Creatividad	2.0	0.0	3, 6	8	 	OPT	CSYH	0	 
6638	1796	8	Taller Sociohumanistico- Liderazgo	2.0	0.0	3, 6	9	 	OPT	CSYH	0	 
6639	3073	8	Comercio Internacional	2.0	2.0	7, 9, 10	1	P	OPT	SUMINISTROS	0	 
6640	3065	8	Costos Logísticos y Sistemas de Transporte	2.0	2.0	7, 9, 10	2	P	OPT	SUMINISTROS	0	 
6641	1060	8	Envase y Enbalaje	2.0	2.0	7, 9, 10	3	P	OPT	SUMINISTROS	0	 
6642	3066	8	Inteligencia de Negocios	2.0	2.0	7, 9, 10	4	P	OPT	SUMINISTROS	0	 
6643	3067	8	Logística Inversa	2.0	2.0	7, 9, 10	5	P	OPT	SUMINISTROS	0	 
6644	3068	8	Temas Selectos de la Gestión de la Cadena de Suministros	2.0	2.0	7, 9, 10	6	P	OPT	SUMINISTROS	0	 
6645	1782	8	Diseño de Elementos de Máquinas	0.0	4.0	7, 9, 10	1	 	OPT	PRODUCCION	0	 
6646	971	8	Diseño del Producto	0.0	4.0	7, 9, 10	2	 	OPT	PRODUCCION	0	 
6647	972	8	Diseño y Manufactura Asistidos por Computadora	2.0	4.0	7, 9, 10	3	L+	OPT	PRODUCCION	0	 
6648	3070	8	Ergonomía del Trabajo	2.0	2.0	7, 9, 10	4	P	OPT	PRODUCCION	0	 
6649	3071	8	Ingeniería Automotriz I	0.0	4.0	7, 9, 10	5	 	OPT	PRODUCCION	0	 
6650	3072	8	Manufactura Lean	2.0	2.0	7, 9, 10	6	P	OPT	PRODUCCION	0	 
6651	1087	8	Seguridad Industrial	2.0	2.0	7, 9, 10	7	P	OPT	PRODUCCION	0	 
6652	3074	8	Sistemas de Producción Avanzados	2.0	2.0	7, 9, 10	8	P	OPT	PRODUCCION	0	 
6653	3064	8	Sistemas de Manufactura Flexible	2.0	3.0	7, 9, 10	9	L	OPT	PRODUCCION	0	 
6654	3075	8	Temas Selectos de Producción y Manufactura	2.0	2.0	7, 9, 10	10	 	OPT	PRODUCCION	0	 
6655	18	8	Administración	2.0	2.0	7, 9, 10	11	P	OPT	DIRECCION	0	 
6656	1057	8	Desarrollo de Habilidades Directivas	2.0	2.0	7, 9, 10	12	P	OPT	DIRECCION	0	 
6657	1059	8	Desarrollo Empresarial	2.0	2.0	7, 9, 10	13	P	OPT	DIRECCION	0	 
6658	3076	8	Finanzas Corporativas	2.0	2.0	7, 9, 10	14	P	OPT	DIRECCION	0	 
6659	1074	8	Legislación Industrial	2.0	2.0	7, 9, 10	15	P	OPT	DIRECCION	0	 
6660	1115	8	Sistemas de Comercialización	2.0	2.0	7, 9, 10	16	P	OPT	DIRECCION	0	 
6661	3077	8	Temas Selectos de Dirección y Creación de Empresas	2.0	2.0	7, 9, 10	17	P	OPT	DIRECCION	0	 
6662	2200	8	Movilidad I	0.0	2.0	7, 9, 10	1	 	OPT	MOVILIDAD	0	 
6663	2201	8	Movilidad II	0.0	3.0	7, 9, 10	2	 	OPT	MOVILIDAD	0	 
6664	2202	8	Movilidad II	0.0	3.0	7, 9, 10	3	 	OPT	MOVILIDAD	0	 
6665	2203	8	Movilidad IV	0.0	3.0	7, 9, 10	4	 	OPT	MOVILIDAD	0	 
6666	2204	8	Movilidad V	0.0	3.0	7, 9, 10	5	 	OPT	MOVILIDAD	0	 
6667	2205	8	Movilidad VI	0.0	3.0	7, 9, 10	6	 	OPT	MOVILIDAD	0	 
6668	2206	8	Movilidad VII	0.0	4.0	7, 9, 10	7	 	OPT	MOVILIDAD	0	 
6669	2207	8	Movilidad VIII	0.0	4.0	7, 9, 10	8	 	OPT	MOVILIDAD	0	 
6670	2208	8	Movilidad IX	0.0	4.0	7, 9, 10	9	 	OPT	MOVILIDAD	0	 
6671	2209	8	Movilidad X	0.0	4.0	7, 9, 10	10	 	OPT	MOVILIDAD	0	 
6672	2210	8	Movilidad XI	2.0	4.0	7, 9, 10	11	 	OPT	MOVILIDAD	0	 
6694	0	9	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	4	6	 	OPT_1	VERDE	1	 
6386	1228	6	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6388	1067	6	Geometría Descriptiva Aplicada	2.0	2.0	2	5	 		NARANJA	1	 
6389	1222	6	Cultura y Comunicación	2.0	0.0	2	6	 		VERDE	1	 
6390	1325	6	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6391	1321	6	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6392	1437	6	Termodinámica	2.0	4.0	3	3	L+		AMARILLO	1	 
6395	1122	6	Fundamentos de Programación	2.0	4.0	3	6	L		NARANJA	1	 
6396	1436	6	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
6387	1327	6	Geología Física	3.0	3.0	2	4	L, P		CYAN	1	 
6393	487	6	Mineralogía	3.0	3.0	3	4	L		CYAN	1	 
6394	1438	6	Técnicas Geológicas de Campo	2.0	2.0	3	5	P+		CYAN	1	 
5940	1789	1	Ciencia, Tecnología y Sociedad	0.0	2.0	4, 8	1	 	OPT	CSYH	0	 
5941	1790	1	Introducción al Análisis Económico Empresarial	0.0	2.0	4, 8	2	 	OPT	CSYH	0	 
5942	1055	1	Literatura Hispanoamericana Contemporanea	0.0	3.0	4, 8	3	 	OPT	CSYH	0	 
5943	1791	1	México Nación Multicultural	0.0	2.0	4, 8	4	 	OPT	CSYH	0	 
5944	1792	1	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	4, 8	5	 	OPT	CSYH	0	 
5945	1793	1	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	4, 8	6	 	OPT	CSYH	0	 
5946	1794	1	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	4, 8	7	 	OPT	CSYH	0	 
5947	1795	1	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 8	8	 	OPT	CSYH	0	 
5948	1796	1	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 8	9	 	OPT	CSYH	0	 
5949	3025	1	Introduccion a la Gerencia de Proyectos	0.0	3.0	10	1	 	OPT	CONSTRUCCION	0	 
5950	3026	1	Preparación de Concursos de Obra Púlbica	0.0	3.0	10	2	 	OPT	CONSTRUCCION	0	 
5951	3027	1	Seguridad y Productividad en las Obras	0.0	3.0	10	3	 	OPT	CONSTRUCCION	0	 
5952	3028	1	Supervision de Obras	0.0	3.0	10	4	 	OPT	CONSTRUCCION	0	 
5953	3029	1	Temas Especiales de la Construcción I	0.0	3.0	10	5	 	OPT	CONSTRUCCION	0	 
5954	3030	1	Temas Especiales de la Construcción II	0.0	4.5	10	6	 	OPT	CONSTRUCCION	0	 
5955	274	1	Estructuras de Concreto	0.0	4.5	10	1	 	OPT	ESTRUCTURAS	0	 
5956	3032	1	Estructuras de Mamposteria	0.0	3.0	10	2	 	OPT	ESTRUCTURAS	0	 
5957	3031	1	Estructuras de Acero	0.0	4.5	10	3	 	OPT	ESTRUCTURAS	0	 
5958	3033	1	Ingenieria Sísmica	0.0	3.0	10	4	 	OPT	ESTRUCTURAS	0	 
5959	3034	1	Puentes	0.0	4.5	10	5	 	OPT	ESTRUCTURAS	0	 
5960	3035	1	Temas Especiales de Estructuras I	0.0	3.0	10	6	 	OPT	ESTRUCTURAS	0	 
5961	3036	1	Temas Especiales de Estructuras II	0.0	4.5	10	7	 	OPT	ESTRUCTURAS	0	 
5962	3037	1	Bordos y Presas	0.0	4.5	10	1	 	OPT	GEOTECNIA	0	 
5963	3038	1	Dinámica de Suelos	0.0	3.0	10	2	 	OPT	GEOTECNIA	0	 
5964	3039	1	Estructura de Pavimentos	0.0	3.0	10	3	 	OPT	GEOTECNIA	0	 
5965	3040	1	Fundamentos de Mecánica de Rocas	0.0	3.0	10	4	 	OPT	GEOTECNIA	0	 
5966	3041	1	Mecánica de Suelos Aplicada	0.0	4.5	10	5	 	OPT	GEOTECNIA	0	 
5967	3042	1	Temas Especiales de Geotecnia I	0.0	3.0	10	6	 	OPT	GEOTECNIA	0	 
5968	3043	1	Temas Especiales de Geotecnia II	0.0	4.5	10	7	 	OPT	GEOTECNIA	0	 
5969	3044	1	Agua Subterranea	0.0	4.5	10	1	 	OPT	HIDRAULICA	0	 
5970	3045	1	Diseño Hidráulico de Estructuras de Riego por Gravedad	0.0	3.0	10	2	 	OPT	HIDRAULICA	0	 
5971	3046	1	Hidráulica de Rios	0.0	3.0	10	3	 	OPT	HIDRAULICA	0	 
5972	2061	1	Hidraúlica Urbana	0.0	4.5	10	4	 	OPT	HIDRAULICA	0	 
5973	3047	1	Ingeniería de Costas	0.0	3.0	10	5	 	OPT	HIDRAULICA	0	 
5974	3048	1	Modelación Computacional en Hidráulica	0.0	3.0	10	6	 	OPT	HIDRAULICA	0	 
5975	3049	1	Temas Especiales de Hidráulica I	0.0	3.0	10	7	 	OPT	HIDRAULICA	0	 
6397	1433	6	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
126	0	1	Optativa de Ciencias Sociales y Humanidades	2.0	0.0	4	6	 	OPT_1	VERDE	1	 
152	0	1	Optativa de Ciencias Sociales y Humanidades	0.0	2.0	8	7	 	OPT_1	VERDE	1	 
189	0	1	Se deberán cursar al menos 18 creditos optativos de una de las seis áreas	18.0	0.0	10	2	 	OPT_1	AZUL	2	 
190	0	1	Se deberán cursar al menos 12 creditos optativos de una o dos de las cinco áreas restantes	12.0	0.0	10	4	 	OPT_1	AZUL	2	 
5976	3050	1	Temas Especiales de Hidráulica II	0.0	4.5	10	8	 	OPT	HIDRAULICA	0	 
5977	3051	1	Edificios Sustentables	0.0	3.0	10	1	 	OPT	ISYA	0	 
5978	3052	1	Energías Renovables en Edificios	0.0	3.0	10	2	 	OPT	ISYA	0	 
5979	3053	1	Ingeniería para el Manejo Sustentable del Agua en Edificios	0.0	3.0	10	3	 	OPT	ISYA	0	 
5980	3055	1	Proyectos Sustentables de Energía	0.0	3.0	10	4	 	OPT	ISYA	0	 
5981	3054	1	Plantas de Tratamiento de Agua Para Consumo Humano	0.0	3.0	10	5	 	OPT	ISYA	0	 
5982	3056	1	Temas Especiales de Ambiental I	0.0	3.0	10	6	 	OPT	ISYA	0	 
5983	3057	1	Temas Especiales de Ambiental II	0.0	4.5	10	7	 	OPT	ISYA	0	 
5984	3058	1	Aeropuertos	0.0	4.5	10	1	 	OPT	SPYT	0	 
5985	3059	1	Carreteras	0.0	4.5	10	2	 	OPT	SPYT	0	 
5986	3060	1	Creatividad para Ingenieros	0.0	3.0	10	3	 	OPT	SPYT	0	 
5987	3061	1	Ferrocarriles	0.0	3.0	10	4	 	OPT	SPYT	0	 
5988	3062	1	Puertos	0.0	4.5	10	5	 	OPT	SPYT	0	 
5989	2700	1	Temas Especiales de Sistemas I	0.0	3.0	10	6	 	OPT	SPYT	0	 
5990	3063	1	Temas Especiales de Sistemas II	0.0	4.5	10	7	 	OPT	SPYT	0	 
6030	0	2	Seminario Optativo Sociohumanístico	2.0	0.0	7	6	 	OPT_1	VERDE	1	 
117	1322	1	Cinemática y Dinámica	0.0	4.0	3	3	 		AMARILLO	1	 
6039	0	2	Optativa	0.0	4.0	9	3	 	OPT_1	AZUL	1	 
6040	0	2	Optativa	0.0	4.0	9	4	 	OPT_1	AZUL	1	 
6044	0	2	Optativa	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
6045	0	2	Optativa	0.0	4.0	10	4	 	OPT_1	AZUL	1	 
6047	1792	2	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	4, 7	1	 	OPT	CSYH	0	 
6048	1793	2	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	4, 7	2	 	OPT	CSYH	0	 
6049	1794	2	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	4, 7	3	 	OPT	CSYH	0	 
6050	1795	2	Taller Sociohumanistico- Creatividad	2.0	0.0	4, 7	4	 	OPT	CSYH	0	 
6051	1796	2	Taller Sociohumanistico- Liderazgo	2.0	0.0	4, 7	5	 	OPT	CSYH	0	 
6052	3091	2	Cierre de Operaciones Mineras	0.0	4.0	9, 10	1	 	OPT	OPTATIVA	0	 
6054	3093	2	Fenómenos Artificiales	0.0	4.0	9, 10	3	 	OPT	OPTATIVA	0	 
6055	1088	2	Hidrogeología	3.0	3.0	9, 10	4	L, P	OPT	OPTATIVA	0	 
6056	3094	2	Minerales no Metálicos	0.0	4.0	9, 10	5	 	OPT	OPTATIVA	0	 
6057	3095	2	Molienda Fina y Ultrafina	0.0	4.0	9, 10	6	 	OPT	OPTATIVA	0	 
6058	948	2	Temas Selectos	0.0	4.0	9, 10	7	 	OPT	OPTATIVA	0	 
6059	914	2	Ventilacion	0.0	4.0	9, 10	8	 	OPT	OPTATIVA	0	 
6060	3097	2	Voladura de Rocas	0.0	4.0	9, 10	9	 	OPT	OPTATIVA	0	 
6061	2099	2	Yacimientos Minerales y Técnicas Análiticas	0.0	3.0	9, 10	10	 	OPT	OPTATIVA	0	 
6053	3092	2	Depósitos de Residuos Mineros	0.0	4.0	9, 10	2	 	OPT	OPTATIVA	0	 
6104	0	3	Asignatura del Campo de Profundización	0.0	4.0	9	1	 	OPT_1	AZUL	1	 
6105	0	3	Asignatura del Campo de Profundización	0.0	4.0	9	2	 	OPT_1	AZUL	1	 
6106	0	3	Asignatura del Campo de Profundización	0.0	4.0	9	3	 	OPT_1	AZUL	1	 
6110	0	3	Asignatura del Campo de Profundización	0.0	4.0	10	1	 	OPT_1	AZUL	1	 
6111	0	3	Asignatura del Campo de Profundización	0.0	4.0	10	2	 	OPT_1	AZUL	1	 
6112	0	3	Asignatura del Campo de Profundización	0.0	4.0	10	3	 	OPT_1	AZUL	1	 
6115	425	3	Circuitos Para Comunicaciones	2.0	4.0	9	1	L+	OPT	ELECTRONICA	0	 
6116	426	3	Dispositivos Electrónicos Programables	0.0	4.0	9	2	 	OPT	ELECTRONICA	0	 
6117	427	3	Introducción a la Tecnología Mems	0.0	4.0	9	3	 	OPT	ELECTRONICA	0	 
6118	1010	3	Sistemas Embebidos	0.0	4.0	9	4	 	OPT	ELECTRONICA	0	 
6119	428	3	Amplificadores para Microondas	0.0	3.0	10	1	 	OPT	ELECTRONICA_OPT	0	 
6120	700	3	Biomems y Dispositivos Lab on a Chip	0.0	3.0	10	2	 	OPT	ELECTRONICA_OPT	0	 
6121	767	3	Mems para Radiofrecuencia	0.0	3.0	10	3	 	OPT	ELECTRONICA_OPT	0	 
6122	768	3	Procesadores Multinúcleo	0.0	4.0	10	4	 	OPT	ELECTRONICA_OPT	0	 
6123	3001	3	Proyecto de Investigación de Ingeniería Eléctrica	0.0	3.0	9, 10	5	***	OPT	ELECTRONICA_OPT	0	 
6124	918	3	Sistemas Difusos	0.0	3.0	10	6	 	OPT	ELECTRONICA_OPT	0	 
6125	3002	3	Sistemas Electrónicos	2.0	3.0	10	7	L+	OPT	ELECTRONICA_OPT	0	 
6126	3003	3	Sistemas Operativos en Tiempo Real	0.0	4.0	10	8	 	OPT	ELECTRONICA_OPT	0	 
6127	2006	3	Temas Selectos de Electrónica	0.0	3.0	10	9	 	OPT	ELECTRONICA_OPT	0	 
6128	2904	3	Fisiología de los Sistemas Homeostáticos	2.0	3.0	9	1	L+	OPT	BIOMEDICA	0	 
6129	2905	3	Fisiología del Sistema Endócrino y Nervioso	2.0	3.0	9	2	L+	OPT	BIOMEDICA	0	 
6130	692	3	Fundamentos de Instrumentación Biomédica	2.0	3.0	9	3	L+	OPT	BIOMEDICA	0	 
6131	2906	3	Ingeniería Clínica	0.0	4.0	10	4	 	OPT	BIOMEDICA	0	 
6132	930	3	Aplicaciones de Optoelectrónica en Medicina	2.0	3.0	10	1	L+	OPT	BIOMEDICA_OPT	0	 
6133	607	3	Audiometría	0.0	3.0	10	2	 	OPT	BIOMEDICA_OPT	0	 
6134	949	3	Introducción a la Biofísica	0.0	3.0	10	3	 	OPT	BIOMEDICA_OPT	0	 
6135	754	3	Procesamiento Digital de Imágenes Médicas: Imagenología	2.0	3.0	10	4	L+	OPT	BIOMEDICA_OPT	0	 
6136	3001	3	Proyecto de Investigación de Ingeniería Eléctrica	0.0	3.0	9, 10	5	***	OPT	BIOMEDICA_OPT	0	 
6137	3006	3	Seguridad e Instalaciones Hospitalarias	0.0	4.0	10	6	 	OPT	BIOMEDICA_OPT	0	 
6138	955	3	Sistemas y Equipos Biomédicos Electrónicos	0.0	3.0	10	7	 	OPT	BIOMEDICA_OPT	0	 
6139	657	3	Telesalud	0.0	3.0	10	8	 	OPT	BIOMEDICA_OPT	0	 
6140	3007	3	Temas Selectos de Ingeniería Biomédica	0.0	3.0	10	9	 	OPT	BIOMEDICA_OPT	0	 
6141	967	3	Transductores Biomédicos	0.0	3.0	10	10	 	OPT	BIOMEDICA_OPT	0	 
6142	2900	3	Máquinas Eléctricas II	2.0	4.0	9	1	L+	OPT	ELECTRICA	0	 
6143	2907	3	Máquinas Eléctricas III	2.0	3.0	10	2	L	OPT	ELECTRICA	0	 
6144	636	3	Protección de Sistema Eléctricos	2.0	4.0	10	3	L+	OPT	ELECTRICA	0	 
6145	2003	3	Sistemas De Distribucion	0.0	3.0	10	4	 	OPT	ELECTRICA	0	 
6146	2908	3	Sistemas Eléctricos de Potencia II	2.0	4.0	9	5	L+	OPT	ELECTRICA	0	 
6147	1092	3	Automatizacion de Sistemas Eléctricos	2.0	3.0	9	1	L	OPT	ELECTRICA_OPT	0	 
6148	1099	3	Iluminación	0.0	3.0	9	2	 	OPT	ELECTRICA_OPT	0	 
6149	3001	3	Proyecto de Investigación de Ingeniería Eléctrica	0.0	3.0	9, 10	3	***	OPT	ELECTRICA_OPT	0	 
6150	2004	3	Sistemas de Transporte Eléctrico	0.0	3.0	9	4	 	OPT	ELECTRICA_OPT	0	 
6151	2008	3	Temas Selectos de Ingeniería Eléctrica	0.0	3.0	9	5	 	OPT	ELECTRICA_OPT	0	 
6152	2909	3	Control Avanzado	2.0	4.0	9	1	L+	OPT	CYR	0	 
6153	2910	3	Controladores Industriales Programables	2.0	3.0	9	2	L+	OPT	CYR	0	 
6154	2911	3	Robótica Industrial	2.0	3.0	9	3	L+	OPT	CYR	0	 
6155	678	3	Control Automático Industrial	2.0	3.0	10	1	L+	OPT	CYR_OPT	0	 
6156	1093	3	Control de Sistemas No Lineales	2.0	3.0	10	2	L+	OPT	CYR_OPT	0	 
6157	1095	3	Control Distribuido e Integración Scada	2.0	3.0	10	3	L+	OPT	CYR_OPT	0	 
6158	693	3	Instrumentación Virtual	2.0	3.0	10	4	L+	OPT	CYR_OPT	0	 
6159	3001	3	Proyecto de Investigación de Ingeniería Eléctrica	0.0	3.0	9, 10	5	***	OPT	CYR_OPT	0	 
6160	2902	3	Sistemas Embebidos en Instrumentación y Control	2.0	3.0	10	6	L+	OPT	CYR_OPT	0	 
6161	2903	3	Temas Selectos de Control y Robótica	0.0	3.0	10	7	 	OPT	CYR_OPT	0	 
6162	2912	3	Introduccion a los Sistemas Energéticos	0.0	4.0	9	1	 	OPT	ENERGETICOS	0	 
6163	3008	3	Energías Renovables	0.0	4.0	9, 10	1	 	OPT	ENERGETICOS_OPT	0	 
6164	3009	3	Fundamentos de Energía Nuclear	0.0	4.0	9, 10	2	 	OPT	ENERGETICOS_OPT	0	 
6165	3010	3	Herramientas Computacionales para la Optimación de Sistemas Energéticos	0.0	4.0	9, 10	3	 	OPT	ENERGETICOS_OPT	0	 
6166	3011	3	Ingeniería de Reactores Nucleares	0.0	4.0	9, 10	4	 	OPT	ENERGETICOS_OPT	0	 
6167	3012	3	Introducción a la Conversión de Energía	0.0	4.0	9, 10	5	 	OPT	ENERGETICOS_OPT	0	 
6168	3013	3	Introducción a la Física de Reactores Nucleares	0.0	4.0	9, 10	6	 	OPT	ENERGETICOS_OPT	0	 
6169	3014	3	Introducción al Ahorro y a la Gestión Energética	0.0	4.0	9, 10	7	 	OPT	ENERGETICOS_OPT	0	 
6170	3015	3	Introducción al Análisis Probabilístico de Seguridad	0.0	4.0	9, 10	8	 	OPT	ENERGETICOS_OPT	0	 
6171	3016	3	Planeación de Sistemas de Generación Eléctrica	1.0	3.0	9, 10	9	L	OPT	ENERGETICOS_OPT	0	 
6172	3017	3	Planeación e Instalación de Sistemas de Bioenergía	2.0	3.0	9, 10	10	L	OPT	ENERGETICOS_OPT	0	 
6173	3001	3	Proyecto de Investigación de Ingeniería Eléctrica	0.0	3.0	9, 10	11	***	OPT	ENERGETICOS_OPT	0	 
6174	3019	3	Seguridad de Reactores Nucleares	0.0	4.0	9, 10	12	 	OPT	ENERGETICOS_OPT	0	 
6175	2009	3	Temas Selectos de Sistemas Energéticos	0.0	3.0	9, 10	13	 	OPT	ENERGETICOS_OPT	0	 
6176	3023	3	Uso Eficiente en Equipos de Servicio	0.0	4.0	9, 10	14	 	OPT	ENERGETICOS_OPT	0	 
6177	2103	3	Calidad	0.0	4.0	3	1	 	OPT	COMPETENCIAS	0	 
6178	3020	3	Creatividad e Innovación	2.0	2.0	3	2	P	OPT	COMPETENCIAS	0	 
6179	1057	3	Desarrollo de Habilidades Directivas	2.0	2.0	3	3	 	OPT	COMPETENCIAS	0	 
6182	3022	3	Relaciones Laborales y Organizacionales	2.0	2.0	3	6	 	OPT	COMPETENCIAS	0	 
6183	1789	3	Ciencia, Tecnología y Sociedad	0.0	2.0	3	1	 	OPT	CSYH	0	 
6184	1790	3	Introducción al Análisis Económico Empresarial	0.0	2.0	3	2	 	OPT	CSYH	0	 
6185	1055	3	Literatura Hispanoamericana Contemporanea	0.0	3.0	3	3	 	OPT	CSYH	0	 
6186	1791	3	México Nación Multicultural	0.0	2.0	3	4	 	OPT	CSYH	0	 
6187	1792	3	Seminario Sociohumanistico: Historia y Prospectiva de la Ingeniería	2.0	0.0	3	5	 	OPT	CSYH	0	 
6188	1793	3	Seminario Sociohumanistico: Ingeniería y Políticas Públicas	2.0	0.0	3	6	 	OPT	CSYH	0	 
6189	1794	3	Seminario Sociohumanistico: Ingeniería y Sustentabilidad	2.0	0.0	3	7	 	OPT	CSYH	0	 
6190	1795	3	Taller Sociohumanistico- Creatividad	2.0	0.0	3	8	 	OPT	CSYH	0	 
6191	1796	3	Taller Sociohumanistico- Liderazgo	2.0	0.0	3	9	 	OPT	CSYH	0	 
6181	3021	3	Metodologías para la Planeación	2.0	2.0	3	5	P	OPT	COMPETENCIAS	0	 
6180	1059	3	Desarrollo Empresarial	2.0	2.0	3	4	P	OPT	COMPETENCIAS	0	 
6398	1414	6	Electricidad y Magnetismo	2.0	4.0	4	3	L+		AMARILLO	1	 
6402	1569	6	Estadística	0.0	4.0	5	1	 		AMARILLO	1	 
6413	1413	6	Introducción a la Economía	0.0	4.0	6	6	 		VERDE	1	 
6898	1964	11	Temas Selectos de Programación I	2.0	2.0	6	4	 		AZUL	1	 
6904	1734	11	Ingeniería Económica	0.0	4.0	7	4	 		NARANJA	1	 
6905	1413	11	Introducción a la Economía	0.0	4.0	7	5	 		VERDE	1	 
6906	549	11	Máquinas Eléctricas	2.0	4.0	8	1	L		AZUL	1	 
6907	510	11	Instrumentación	0.0	4.0	8	2	 		AZUL	1	 
6909	1059	11	Desarrollo Empresarial	2.0	2.0	8	4	P		NARANJA	1	 
6912	563	11	Diseño Mecatrónico	2.0	4.0	9	1	L		AZUL	1	 
6913	572	11	Automatización Industrial	4.0	2.0	9	2	L		AZUL	1	 
6914	972	11	Diseño y Manufactura Asistidos por Computadora	2.0	4.0	9	3	L+		AZUL	1	 
6915	2135	11	Robótica	2.0	4.0	9	4	L		AZUL	1	 
6916	1052	11	Ética Profesional	2.0	2.0	9	5	 		VERDE	1	 
6922	2080	11	Recursos y Necesidades de México	0.0	4.0	8	5	 		VERDE	1	 
7008	1542	12	Geología y Geomorfología	2.0	3.0	5	3	P		NARANJA	1	 
7010	1534	12	Introducción a Bases de Datos Espaciales	0.0	3.0	5	5	 		AZUL	1	 
7011	1413	12	Introducción a la Economía	0.0	4.0	5	6	 		VERDE	1	 
7012	1052	12	Ética Profesional	2.0	2.0	6	1	 		VERDE	1	 
7014	1647	12	Sistemas de Posicionamiento Global	2.0	3.0	6	3	P		AZUL	1	 
6498	1120	7	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6499	1121	7	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6500	1125	7	Química de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1	 
6501	54	7	Dibujo	2.0	2.0	1	4	 		NARANJA	1	 
6503	1220	7	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6504	1221	7	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6505	1228	7	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6506	1122	7	Fundamentos de Programación	2.0	4.0	2	4	L		NARANJA	1	 
6507	1067	7	Geometría Descriptiva Aplicada	2.0	2.0	2	5	 		NARANJA	1	 
6508	1325	7	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6509	1321	7	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6510	1328	7	Física	2.0	4.0	3	3	L		AMARILLO	1	 
6513	1222	7	Cultura y Comunicación	2.0	0.0	3	6	 		VERDE	1	 
6514	1436	7	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
7017	1581	12	Hidráulica e Hidrología	0.0	4.5	7	1	 		AZUL	1	 
7019	2070	12	Topografía de Yacimientos Minerales	2.0	3.0	7	3	P		AZUL	1	 
7021	1753	12	Sistemas de Información Geográfica II	3.0	3.0	7	5	L		AZUL	1	 
7027	1684	12	Gestión Ambiental	0.0	3.0	8	5	 		NARANJA	1	 
7028	2080	12	Recursos y Necesidades de México	0.0	4.0	8	6	 		VERDE	1	 
7030	1854	12	Proyecto Geomático	0.0	3.0	9	5	 		AZUL	1	 
7031	1960	12	Prácticas Profesionales	4.0	1.0	9	6	P		AZUL	1	 
7032	1947	12	Administración de Proyectos	0.0	3.0	9	7	 		AZUL	1	 
7086	1693	13	Introducción a la Anatomía y Fisiología I	2.0	4.0	6	5	L		MORADO	1	 
7089	1779	13	Psicología Médica	0.0	4.0	7	2	 		MORADO	1	 
7090	1778	13	Mecánica del Cuerpo Humano	2.0	4.0	7	3	L		MORADO	1	 
6572	1120	8	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6573	1121	8	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6574	1122	8	Fundamentos de Programación	2.0	4.0	1	3	L		NARANJA	1	 
6575	1129	8	Ingeniería Industrial y Productividad	0.0	2.0	1	4	 		NARANJA	1	 
6577	1220	8	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6578	1221	8	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6579	1223	8	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
6580	3020	8	Creatividad e Innovación	2.0	2.0	2	4	P		NARANJA	1	 
6581	1123	8	Química	2.0	4.0	2	5	L+		AMARILLO	1	 
6582	1222	8	Cultura y Comunicación	2.0	0.0	2	6	 		VERDE	1	 
6583	1325	8	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6584	1321	8	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6585	1322	8	Cinemática y Dinámica	0.0	4.0	3	3	 		AMARILLO	1	 
6587	1209	8	Dibujo Mecánico e Industrial	2.0	2.0	3	5	L		NARANJA	1	 
6589	1436	8	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
6590	1433	8	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
6591	1437	8	Termodinámica	2.0	4.0	4	3	L+		AMARILLO	1	 
6674	1121	9	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6675	1123	9	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
6676	2211	9	Física Experimental	2.0	4.0	1	4	L		AMARILLO	1	 
6677	2212	9	Introducción a la Ingeniería Mecánica	2.0	2.0	1	5	 		NARANJA	1	 
6678	1220	9	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6679	1221	9	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6680	1223	9	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
6681	1122	9	Fundamentos de Programación	2.0	4.0	2	4	L		NARANJA	1	 
6682	1209	9	Dibujo Mecánico e Industrial	2.0	2.0	2	5	L		NARANJA	1	 
6684	1436	9	Probabilidad	0.0	4.0	3	1	 		AMARILLO	1	 
6685	1321	9	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6686	1325	9	Ecuaciones Diferenciales	0.0	4.0	3	3	 		AMARILLO	1	 
6687	1322	9	Cinemática y Dinámica	0.0	4.0	3	4	 		AMARILLO	1	 
6688	1225	9	Manufactura I	4.0	2.0	3	5	L+		AZUL	1	 
6689	1222	9	Cultura y Comunicación	2.0	0.0	3	6	 		VERDE	1	 
6690	1569	9	Estadística	0.0	4.0	4	1	 		AMARILLO	1	 
6691	1414	9	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
7093	1052	13	Ética Profesional	2.0	2.0	7	6	 		VERDE	1	 
7094	1895	13	Aspectos Legales en las Organizaciones de la Atención Médica	0.0	4.0	8	1	 		MORADO	1	 
7095	1896	13	Instalaciones Hospitalarias	0.0	4.0	8	2	 		MORADO	1	 
7100	1976	13	Estancia	20.0	0.0	9	1	 		AZUL	1	 
7106	2080	13	Recursos y Necesidades de México	0.0	4.0	10	6	 		VERDE	1	 
7203	1506	14	Geología	0.0	4.5	5	1	 		NARANJA	1	 
7231	1052	14	Ética Profesional	2.0	2.0	9	5	 		VERDE	1	 
7212	2609	14	Conocimiento Territorial	2.0	3.0	6	4	L+		NARANJA	1	 
7225	2818	14	Contaminación por Ruido y Control	0.0	3.0	8	5	 		AZUL	1	 
7222	2819	14	Control de Emisiones a la Atmósfera	0.0	3.0	8	2	 		AZUL	1	 
7184	1124	14	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	4	 		VERDE	1	 
6794	1120	10	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6795	1121	10	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6796	1125	10	Química de Ciencias de la Tierra	2.0	4.0	1	3	L+		AMARILLO	1	 
6797	54	10	Dibujo	2.0	2.0	1	4	 		NARANJA	1	 
6798	1126	10	Introducción a la Ingeniería Petrolera	0.0	2.0	1	5	 		NARANJA	1	 
6799	1222	10	Cultura y Comunicación	2.0	0.0	1	6	 		VERDE	1	 
6800	1220	10	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6801	1221	10	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6802	1228	10	Mecánica	0.0	6.0	2	3	 		AMARILLO	1	 
6804	1122	10	Fundamentos de Programación	2.0	4.0	2	5	L		NARANJA	1	 
6805	1325	10	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6806	1321	10	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6807	1330	10	Fundamentos de Termodinámica y Electromagnetismo	2.0	4.0	3	3	L+		AMARILLO	1	 
6811	1436	10	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
6812	1433	10	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
6816	1439	10	Fluidos de Perforación	1.0	2.0	4	6	L		AZUL	1	 
6817	1569	10	Estadística	0.0	4.0	5	1	 		AMARILLO	1	 
6818	1666	10	Programación Avanzada	2.0	2.0	5	2	 		NARANJA	1	 
6821	1591	10	Registros Geofísicos en Pozos	2.0	4.0	5	5	 		AZUL	1	 
6822	1055	10	Literatura Hispanoamericana Contemporanea	0.0	3.0	5	6	 		VERDE	1	 
6823	1068	10	Ingeniería de Perforación de Pozos	2.0	4.0	6	1	L, P		AZUL	1	 
6824	1983	10	Productividad de Pozos	0.0	4.0	6	2	P+		AZUL	1	 
6825	1982	10	Flujo Multifásico en Tuberías	0.0	4.0	6	3	 		AZUL	1	 
7216	2710	14	Evaluación de la Calidad del Aire	2.0	3.0	7	2	L+		AZUL	1	 
7195	1335	14	Fisicoquímica para Ingeniería Ambiental	0.0	4.0	3	5	 		AMARILLO	1	 
7186	1230	14	Introducción al Estudio del Medio Ambiente	0.0	3.0	2	2	 		NARANJA	1	 
7189	1231	14	Química Inorgánica	2.0	4.0	2	5	L+		AMARILLO	1	 
7201	1475	14	Química Orgánica	2.0	4.0	4	5	L+		AMARILLO	1	 
7232	2825	14	Evaluación de Impacto Ambiental	0.0	3.0	9	6	 		AZUL	1	 
7238	2829	14	Evaluación de Riesgo Ambiental	0.0	3.0	10	6	 		AZUL	1	 
7224	2821	14	Gestión Integral de Residuos de Manejo Especial	0.0	3.0	8	4	 		AZUL	1	 
7221	2822	14	Materiales y Residuos Peligrosos	0.0	4.5	8	1	 		AZUL	1	 
7229	2823	14	Proyectos de Plantas de Tratamiento de Agua para Consumo Humano	0.0	4.5	9	3	 		AZUL	1	 
7223	2826	14	Proyectos de Plantas de Tratamiento de Agua Residual	0.0	4.5	8	3	 		AZUL	1	 
7230	2827	14	Sistemas de Recuperación de Recursos y Energía	0.0	3.0	9	4	 		AZUL	1	 
6868	1120	11	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
6869	1121	11	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6870	1123	11	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
6872	1122	11	Fundamentos de Programación	2.0	4.0	1	5	L		NARANJA	1	 
6873	1220	11	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6874	1221	11	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6875	1223	11	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
6876	2211	11	Física Experimental	2.0	4.0	2	4	L		AMARILLO	1	 
6877	1209	11	Dibujo Mecánico e Industrial	2.0	2.0	2	5	L		NARANJA	1	 
6878	1436	11	Probabilidad	0.0	4.0	3	1	 		AMARILLO	1	 
6879	1321	11	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6880	1325	11	Ecuaciones Diferenciales	0.0	4.0	3	3	 		AMARILLO	1	 
6881	1322	11	Cinemática y Dinámica	0.0	4.0	3	4	 		AMARILLO	1	 
6882	1225	11	Manufactura I	4.0	2.0	3	5	L+		AZUL	1	 
6883	1222	11	Cultura y Comunicación	2.0	0.0	3	6	 		VERDE	1	 
6884	1569	11	Estadística	0.0	4.0	4	1	 		AMARILLO	1	 
6885	1414	11	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
6886	1433	11	Análisis Numérico	0.0	4.0	4	3	 		AMARILLO	1	 
6887	1424	11	Matemáticas Avanzadas	2.0	3.0	4	4	 		AMARILLO	1	 
6888	1437	11	Termodinámica	2.0	4.0	4	5	L+		AMARILLO	1	 
6893	1472	11	Técnicas de Programación	2.0	4.0	5	4	L		AZUL	1	 
6983	1121	12	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
6984	1128	12	Representaciones Gráficas	4.0	2.0	1	3	P		NARANJA	1	 
6987	1124	12	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	6	 		VERDE	1	 
6988	1220	12	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
6989	1221	12	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
6990	1223	12	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
6991	1127	12	Programación Básica	2.0	2.0	2	4	P		NARANJA	1	 
6994	1222	12	Cultura y Comunicación	2.0	0.0	2	7	 		VERDE	1	 
6995	1325	12	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
6996	1321	12	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
6997	1322	12	Cinemática y Dinámica	0.0	4.0	3	3	 		AMARILLO	1	 
6998	1436	12	Probabilidad	0.0	4.0	3	4	 		AMARILLO	1	 
7001	1433	12	Análisis Numérico	0.0	4.0	4	1	 		AMARILLO	1	 
7002	1446	12	Electromagnetismo y Óptica	2.0	4.0	4	2	L		AMARILLO	1	 
7003	1447	12	Estadística Aplicada a la Ingeniería Geomática	0.0	2.0	4	3	 		AMARILLO	1	 
7053	1120	13	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
7054	1121	13	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
7055	1123	13	Química	2.0	4.0	1	3	L+		AMARILLO	1	 
7057	1122	13	Fundamentos de Programación	2.0	4.0	1	5	L		NARANJA	1	 
7058	1220	13	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
7059	1221	13	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
7060	1223	13	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
7061	1225	13	Manufactura I	4.0	2.0	2	4	L+		AZUL	1	 
7062	1224	13	Introducción a la Ingeniería en Sistemas Biomédicos	2.0	0.0	2	5	L		NARANJA	1	 
7063	1222	13	Cultura y Comunicación	2.0	0.0	2	6	 		VERDE	1	 
7064	1325	13	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
7065	1321	13	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
7066	1322	13	Cinemática y Dinámica	0.0	4.0	3	3	 		AMARILLO	1	 
7067	1320	13	Bioquímica	0.0	4.0	3	4	 		MORADO	1	 
7070	1433	13	Análisis Numérico	0.0	4.0	4	1	 		AMARILLO	1	 
7071	1414	13	Electricidad y Magnetismo	2.0	4.0	4	2	L+		AMARILLO	1	 
7072	1436	13	Probabilidad	0.0	4.0	4	3	 		AMARILLO	1	 
7073	1437	13	Termodinámica	2.0	4.0	4	4	L+		AMARILLO	1	 
7074	1434	13	Biología Celular y Tisular	2.0	2.0	4	5	 		MORADO	1	 
7078	1569	13	Estadística	0.0	4.0	5	3	 		AMARILLO	1	 
7080	1571	13	Introducción a la Anatomía y Fisiología I	0.0	4.0	5	5	 		MORADO	1	 
6200	1124	4	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	2	4	 		VERDE	1	 
6288	1124	5	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	2	4	 		VERDE	1	 
6383	1124	6	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	5	 		VERDE	1	 
6683	1124	9	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	2	6	 		VERDE	1	 
6810	1124	10	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	3	5	 		VERDE	1	 
6871	1124	11	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	4	 		VERDE	1	 
7056	1124	13	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	4	 		VERDE	1	 
7069	1209	13	Dibujo Mecánico e Industrial	2.0	2.0	3	6	L		NARANJA	1	 
7227	2824	14	Control de la Contaminación de Suelos y Acuíferos	0.0	3.0	9	1	 		AZUL	1	 
7226	2820	14	Evaluación Ambiental Estratégica	0.0	3.0	8	6	 		MORADO	1	 
7213	2611	14	Evaluación de la Calidad del Agua	2.0	3.0	6	5	L+		AZUL	1	 
7214	2610	14	Economía Ambiental y Ecología	0.0	3.0	6	6	 		MORADO	1	 
6065	1124	3	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	4	 		VERDE	1	 
6502	1124	7	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	5	 		VERDE	1	 
6576	1124	8	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	5	 		VERDE	1	 
6332	1059	5	Desarrollo Empresarial	2.0	2.0	9	6	P		NARANJA	1	 
6594	1569	8	Estadística	0.0	4.0	5	1	 		AMARILLO	1	 
6595	1414	8	Electricidad y Magnetismo	2.0	4.0	5	2	L+		AMARILLO	1	 
6597	3021	8	Metodologías para la Planeación	2.0	2.0	5	4	P		AZUL	1	 
6598	1225	8	Manufactura I	4.0	2.0	5	5	L+		AZUL	1	 
6599	1413	8	Introducción a la Economía	0.0	4.0	5	6	 		VERDE	1	 
6602	143	8	Diseño de Sistemas Productivos	0.0	4.0	6	3	 		AZUL	1	 
6603	507	8	Ingeniería de Manufactura	2.0	4.0	6	4	L+		AZUL	1	 
6604	2602	8	Contabilidad Financiera y Costos	0.0	4.0	6	5	 		NARANJA	1	 
6609	619	8	Planeación y Control de la Producción	2.0	4.0	7	4	L		AZUL	1	 
6611	3022	8	Relaciones Laborales y Organizacionales	0.0	4.0	7	6	 		NARANJA	1	 
6614	1955	8	Evaluación de Proyectos de Inversión	0.0	4.0	8	3	 		AZUL	1	 
6615	2804	8	Diseño de la Cadena de Suministros	0.0	4.0	8	4	 		AZUL	1	 
6616	1918	8	Procesos Industriales	0.0	4.0	8	5	 		AZUL	1	 
6617	1052	8	Ética Profesional	2.0	2.0	8	6	 		VERDE	1	 
6618	572	8	Automatización Industrial	4.0	2.0	9	1	L		AZUL	1	 
6619	2103	8	Calidad	0.0	4.0	9	2	 		AZUL	1	 
6620	2137	8	Sistemas de Mejoramiento Ambiental	0.0	4.0	9	3	 		AZUL	1	 
6621	2917	8	Prácticas Profesionales para Ingeniería Industrial	12.0	0.0	9	4	P+		AZUL	1	 
6627	2080	8	Recursos y Necesidades de México	0.0	4.0	10	5	 		VERDE	1	 
6628	2919	8	Análisis y Mejora de Procesos	2.0	2.0	10	6	P		AZUL	1	 
6629	2920	8	Dirección de Poyectos	2.0	2.0	10	7	P		AZUL	1	 
6693	1437	9	Termodinámica	2.0	4.0	4	5	L+		AMARILLO	1	 
57	1120	1	Álgebra	0.0	4.0	1	1	 		AMARILLO	1	 
58	1121	1	Cálculo y Geometría Analítica	0.0	6.0	1	2	 		AMARILLO	1	 
59	1128	1	Representaciones Gráficas	4.0	2.0	1	3	P		NARANJA	1	 
60	1127	1	Programación Básica	2.0	2.0	1	4	P		NARANJA	1	 
61	1124	1	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	1	5	 		VERDE	1	 
62	1220	1	Álgebra Lineal	0.0	4.0	2	1	 		AMARILLO	1	 
63	1221	1	Cálculo Integral	0.0	4.0	2	2	 		AMARILLO	1	 
64	1223	1	Estática	0.0	4.0	2	3	 		AMARILLO	1	 
65	1506	1	Geología	0.0	4.5	2	4	 		NARANJA	1	 
174	2156	1	Evaluación de Proyectos	0.0	3.0	9	1	 		AZUL	1	 
175	610	1	Obras Hidráulicas	0.0	4.5	9	2	 		AZUL	1	 
176	230	1	Diseño Estructural	0.0	4.5	9	3	 		AZUL	1	 
177	1935	1	Tratamiento de Aguas Residuales	0.0	4.5	9	4	L		AZUL	1	 
178	2080	1	Recursos y Necesidades de México	0.0	4.0	9	5	 		VERDE	1	 
187	2913	1	Ingeniería del Transporte I	0.0	3.0	9	6	 		AZUL	1	 
188	1760	1	Administración en Ingeniería	0.0	3.0	10	1	 		NARANJA	1	 
113	1229	1	Geomática Básica	3.0	3.0	2	5	 		AZUL	1	 
114	1222	1	Cultura y Comunicación	2.0	0.0	2	6	 		VERDE	1	 
115	1325	1	Ecuaciones Diferenciales	0.0	4.0	3	1	 		AMARILLO	1	 
116	1321	1	Cálculo Vectorial	0.0	4.0	3	2	 		AMARILLO	1	 
119	1407	1	Recursos de la Construcción	0.0	3.0	3	5	L		AZUL	1	 
120	1333	1	Sistemas Termodinámicos y Electromagnetismo	0.0	4.0	3	6	 		AMARILLO	1	 
121	1436	1	Probabilidad	0.0	4.0	4	1	 		AMARILLO	1	 
122	1433	1	Análisis Numérico	0.0	4.0	4	2	 		AMARILLO	1	 
123	1450	1	Sistemas Quimicos en Ingeniería	2.0	2.0	4	3	L+		AMARILLO	1	 
125	1444	1	Procedimientos Constructivos de Elementos de Estructuras	0.0	3.0	4	5	L		AZUL	1	 
132	1596	1	Programación y Presupuestación	0.0	3.0	5	5	 		AZUL	1	 
133	1413	1	Introducción a la Economía	0.0	4.0	5	6	 		VERDE	1	 
136	2601	1	Ingeniería Ambiental II	0.0	3.0	6	3	L		AZUL	1	 
139	1052	1	Ética Profesional	2.0	2.0	6	6	 		VERDE	1	 
144	1608	1	Movimiento de Tierras	0.0	3.0	7	5	L		AZUL	1	 
145	32	1	Abastecimiento de Agua Potable	0.0	3.0	7	6	 		AZUL	1	 
146	2800	1	Alcantarillado Sanitario y Pluvial	0.0	3.0	8	1	 		AZUL	1	 
148	2801	1	Dimensionamiento de Elementos Estructurales	0.0	3.0	8	3	 		AZUL	1	 
149	152	1	Cimentaciones	0.0	4.5	8	4	 		AZUL	1	 
150	234	1	Edificación	0.0	3.0	8	5	 		AZUL	1	 
151	2803	1	Ingeniería de Tránsito	0.0	3.0	8	6	 		AZUL	1	 
191	2915	1	Ingeniería del Transporte II	0.0	3.0	10	6	 		AZUL	1	 
6019	1466	2	Prospección y Exploración Minera	0.0	3.0	6	1	 		AZUL	1	 
6024	1055	2	Literatura Hispanoamericana Contemporanea	0.0	3.0	6	3	 		VERDE	1	 
6026	2701	2	Explotación de Minas Subterraneas	0.0	4.0	7	2	P+		AZUL	1	 
6027	2703	2	Preparación y Concentración de Minerales	0.0	4.0	7	3	P+		AZUL	1	 
6028	2088	2	Geotecnia de Excavación	0.0	4.0	7	4	 		AZUL	1	 
6029	1584	2	Geoestadística	0.0	4.0	7	5	 		AZUL	1	 
6032	2808	2	Explotación de Minas a Cielo Abierto	0.0	4.0	8	2	P+		AZUL	1	 
6033	2810	2	Hidro y Pirometalurgia	0.0	4.0	8	3	P+		AZUL	1	 
6034	1939	2	Instalaciones Minero-Metalúrgicas	0.0	4.0	8	4	 		AZUL	1	 
6035	2807	2	Administración Aplicada a la Minería	0.0	4.0	8	5	 		NARANJA	1	 
6036	1052	2	Ética Profesional	2.0	2.0	8	6	 		VERDE	1	 
6038	2960	2	Diseño de Operaciones Metalúrgicas	0.0	4.0	9	2	 		AZUL	1	 
6041	2959	2	Análisis y Evaluación de Proyectos de Inversión	0.0	4.0	9	5	 		NARANJA	1	 
6042	2965	2	Diseño de Operaciones Mineras	0.0	4.0	10	1	 		AZUL	1	 
6046	2080	2	Recursos y Necesidades de México	0.0	4.0	10	5	 		VERDE	1	 
6043	2964	2	Gestión de Seguridad e Higiene	0.0	4.0	10	2	 		NARANJA	1	 
6006	1124	2	Redacción y Exposición de Temas de Ingeniería	2.0	2.0	3	6	 		VERDE	1	 
6093	1998	3	Máquinas Eléctricas I	2.0	4.0	6	5	L+		AZUL	1	 
6097	1723	3	Amplificadores Electrónicos	2.0	4.0	7	4	L+		AZUL	1	 
6098	1936	3	Sistemas Eléctricos de Potencia I	2.0	4.0	7	5	L+		AZUL	1	 
6099	422	3	Automatización	2.0	4.0	8	1	L+		AZUL	1	 
6100	1937	3	Microprocesadores y Microcontroladores	2.0	4.0	8	2	L+		AZUL	1	 
6101	2901	3	Procesamiento Digital de Señales	0.0	4.0	8	3	 		AZUL	1	 
6102	423	3	Instalaciones Eléctricas	0.0	4.0	8	4	 		AZUL	1	 
6103	1822	3	Circuitos Integrados Analógicos	2.0	4.0	8	5	L+		AZUL	1	 
6107	1016	3	Subestaciones Eléctricas	0.0	4.0	9	4	 		AZUL	1	 
6109	1052	3	Ética Profesional	2.0	2.0	9	6	 		VERDE	1	 
6113	627	3	Plantas Generadoras	0.0	4.0	10	4	 		AZUL	1	 
6114	2080	3	Recursos y Necesidades de México	0.0	4.0	10	5	 		VERDE	1	 
6020	1465	2	Fundamentos para la Explotación de Minas	0.0	4.0	6	2	P+		CYAN	1	 
6021	1464	2	Fundamentos de Metalurgia Extractiva	0.0	4.0	6	3	 		CYAN	1	 
6022	1583	2	Mecánica de Rocas	0.0	4.0	6	4	 		CYAN	1	 
6023	1441	2	Mecánica de Fluidos	0.0	4.0	6	5	 		CYAN	1	 
6025	2702	2	Macánica Aplicada y Elementos de Construcción	0.0	4.0	7	1	 		CYAN	1	 
6031	2809	2	Gestión Ambiental en Mineria	4.0	0.0	8	1	 		CYAN	1	 
6037	2961	2	Introducción al Diseño de Operaciones Mineras	0.0	4.0	9	1	 		CYAN	1	 
6091	1997	3	Fundamentos de Control	2.0	4.0	6	3	L+		CYAN	1	 
6092	1618	3	Dispositivos y Circuitos Electrónicos	2.0	4.0	6	4	L+		CYAN	1	 
6094	558	3	Medición e Instrumentación 	2.0	3.0	7	1	L+		CYAN	1	 
6096	1999	3	Sistemas de Comunicaciones Electrónicas	2.0	4.0	7	3	L+		CYAN	1	 
6108	145	3	Eléctronica de Potencia	0.0	4.0	9	5	 		CYAN	1	 
\.


--
-- TOC entry 2944 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carrera (id, clave, nombre, year, date_actualizacion) FROM stdin;
2	108	Ingeniería de Minas y Metalurgia	2016	2020-12-15 14:15:47.772-06
3	109	Ingeniería Eléctrica Electrónica	2016	2020-12-15 14:15:47.772-06
4	110	Ingeniería en Computación	2016	2020-12-15 14:15:47.772-06
5	111	Ingeniería en Telecomunicaciones	2016	2020-12-15 14:15:47.772-06
6	112	Ingeniería Geofísica	2016	2020-12-15 14:15:47.772-06
7	113	Ingeniería Geológica	2016	2020-12-15 14:15:47.772-06
8	114	Ingeniería Industrial	2016	2020-12-15 14:15:47.772-06
9	115	Ingeniería Mecánica	2016	2020-12-15 14:15:47.772-06
10	117	Ingeniería Petrolera	2016	2020-12-15 14:15:47.772-06
11	124	Ingeniería Mecatrónica	2016	2020-12-15 14:15:47.772-06
12	125	Ingeniería Geomática	2016	2020-12-15 14:15:47.772-06
13	135	Ingeniería en Sistemas Biomédicos	2016	2020-12-15 14:15:47.772-06
14	137	Ingeniería Ambiental	2016	2020-12-15 14:15:47.772-06
1	107	Ingeniería Civil	2016	2021-01-03 00:30:55.1-06
16	190	Ingeniería Aeroespacial	2021	2020-12-15 14:15:47.772-06
\.


--
-- TOC entry 2956 (class 0 OID 24818)
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
-- TOC entry 2966 (class 0 OID 41321)
-- Dependencies: 225
-- Data for Name: optativa_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_asignatura (id, tabla, asignatura) FROM stdin;
1	1	5940
2	1	5941
3	1	5942
4	1	5943
5	1	5944
6	1	5945
7	1	5946
8	1	5947
9	1	5948
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
43	6	5982
44	6	5983
45	7	5984
46	7	5985
47	7	5986
48	7	5987
49	7	5988
50	7	5989
51	7	5990
\.


--
-- TOC entry 2962 (class 0 OID 41287)
-- Dependencies: 221
-- Data for Name: optativa_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_categoria (id, container, orden, titulo, nota_head, nota_foot) FROM stdin;
1	1	1	Optativas de Ciencias Sociales y Humanidades	\N	\N
2	1	3	Construcción	Nota: asignaturas del plan de Estudios, campos disciplinarios	\N
3	1	4	Estructuras	\N	\N
4	1	5	Geotecnia	\N	\N
5	1	6	Hidráulica	\N	\N
6	1	7	Ingeniería Sanitaria y Ambiental	\N	\N
7	1	8	Sistemas, Planeacion y Transporte	\N	\N
\.


--
-- TOC entry 2960 (class 0 OID 41265)
-- Dependencies: 219
-- Data for Name: optativa_container; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_container (id, carrera, orden, titulo, nota_head, nota_foot) FROM stdin;
1	1	1	Asignaturas Optativas	\N	* Semestre(s) recomendado(s)
\.


--
-- TOC entry 2964 (class 0 OID 41304)
-- Dependencies: 223
-- Data for Name: optativa_tabla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.optativa_tabla (id, categoria, orden, titulo, nota_head, nota_foot) FROM stdin;
1	1	1	\N	\N	\N
2	2	1	\N	\N	\N
3	3	1	\N	\N	\N
4	4	1	\N	\N	\N
5	5	1	\N	\N	\N
6	6	1	\N	\N	\N
7	7	1	\N	\N	\N
\.


--
-- TOC entry 2954 (class 0 OID 24807)
-- Dependencies: 213
-- Data for Name: rol_acceso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol_acceso (id, rol, descripcion) FROM stdin;
0	developer	Developer de la aplicacion
1	tester	tester de la aplicaion
2	qa	qa de la aplicacion\n
3	root\n	god of api
4	admin	Administrador de los usuarios de la aplicación
5	visual	visualizador de los campos de todas las asignatura
6	academico	Academico capaz de editar las asignaturas
7	mapa	visualizador con solo acceso a generar mapa visual
\.


--
-- TOC entry 2950 (class 0 OID 16420)
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
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 210
-- Name: Acceso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Acceso_id_seq"', 12, true);


--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 216
-- Name: Access_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Access_token_id_seq"', 16, true);


--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 204
-- Name: Agrupacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Agrupacion_id_seq"', 78, true);


--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 206
-- Name: Asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Asignatura_id_seq"', 7499, true);


--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 202
-- Name: Carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carrera_id_seq"', 16, true);


--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 214
-- Name: Estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Estado_id_seq"', 5, true);


--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 212
-- Name: Rol_acceso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_acceso_id_seq"', 1, false);


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 208
-- Name: Seriacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Seriacion_id_seq"', 59, true);


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 224
-- Name: optativa_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_asignatura_id_seq', 51, true);


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 220
-- Name: optativa_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_categoria_id_seq', 7, true);


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 218
-- Name: optativa_container_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_container_id_seq', 1, true);


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 222
-- Name: optativa_tabla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.optativa_tabla_id_seq', 7, true);


--
-- TOC entry 2787 (class 2606 OID 24804)
-- Name: acceso Acceso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT "Acceso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2775 (class 2606 OID 16409)
-- Name: agrupacion Agrupacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT "Agrupacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2779 (class 2606 OID 16417)
-- Name: asignatura Asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "Asignatura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2773 (class 2606 OID 16401)
-- Name: carrera Carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "Carrera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2793 (class 2606 OID 24826)
-- Name: estado Estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "Estado_pkey" PRIMARY KEY (id);


--
-- TOC entry 2791 (class 2606 OID 24815)
-- Name: rol_acceso Rol_acceso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol_acceso
    ADD CONSTRAINT "Rol_acceso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2783 (class 2606 OID 16425)
-- Name: seriacion Seriacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT "Seriacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2777 (class 2606 OID 16435)
-- Name: agrupacion agrupacion_agrupacion_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT agrupacion_agrupacion_unique UNIQUE (agrupacion);


--
-- TOC entry 2789 (class 2606 OID 33080)
-- Name: acceso mail_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT mail_unique UNIQUE (mail);


--
-- TOC entry 2806 (class 2606 OID 41326)
-- Name: optativa_asignatura optativa_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asignatura_pkey PRIMARY KEY (id);


--
-- TOC entry 2799 (class 2606 OID 41295)
-- Name: optativa_categoria optativa_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT optativa_categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2796 (class 2606 OID 41270)
-- Name: optativa_container optativa_container_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT optativa_container_pkey PRIMARY KEY (id);


--
-- TOC entry 2802 (class 2606 OID 41312)
-- Name: optativa_tabla optativa_tabla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT optativa_tabla_pkey PRIMARY KEY (id);


--
-- TOC entry 2780 (class 1259 OID 16441)
-- Name: fki_agrupacion_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_agrupacion_fkey ON public.asignatura USING btree (agrupacion);


--
-- TOC entry 2784 (class 1259 OID 33072)
-- Name: fki_asignatura_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asignatura_fkey ON public.seriacion USING btree (asignatura);


--
-- TOC entry 2785 (class 1259 OID 33078)
-- Name: fki_asignatura_seriada_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_asignatura_seriada_fkey ON public.seriacion USING btree (asignatura_seriada);


--
-- TOC entry 2781 (class 1259 OID 33039)
-- Name: fki_carrera_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_carrera_fkey ON public.asignatura USING btree (carrera);


--
-- TOC entry 2797 (class 1259 OID 41301)
-- Name: fki_categoria_container_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_categoria_container_fkey ON public.optativa_categoria USING btree (container);


--
-- TOC entry 2794 (class 1259 OID 41284)
-- Name: fki_container_carrera_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_container_carrera_fkey ON public.optativa_container USING btree (carrera);


--
-- TOC entry 2803 (class 1259 OID 41338)
-- Name: fki_optativa_asigantura_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_optativa_asigantura_fkey ON public.optativa_asignatura USING btree (asignatura);


--
-- TOC entry 2804 (class 1259 OID 41332)
-- Name: fki_optativa_tabla_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_optativa_tabla_fkey ON public.optativa_asignatura USING btree (tabla);


--
-- TOC entry 2800 (class 1259 OID 41318)
-- Name: fki_tabla_categoria_fkey; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_tabla_categoria_fkey ON public.optativa_tabla USING btree (categoria);


--
-- TOC entry 2807 (class 2606 OID 16436)
-- Name: asignatura agrupacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES public.agrupacion(agrupacion) NOT VALID;


--
-- TOC entry 2809 (class 2606 OID 33067)
-- Name: seriacion asignatura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2810 (class 2606 OID 33073)
-- Name: seriacion asignatura_seriada_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_seriada_fkey FOREIGN KEY (asignatura_seriada) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2808 (class 2606 OID 33062)
-- Name: asignatura carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 2808
-- Name: CONSTRAINT carrera_fkey ON asignatura; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON CONSTRAINT carrera_fkey ON public.asignatura IS 'llave foranea al id de carrera';


--
-- TOC entry 2811 (class 2606 OID 41274)
-- Name: optativa_container carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 2813 (class 2606 OID 41296)
-- Name: optativa_categoria categoria_container_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT categoria_container_fkey FOREIGN KEY (container) REFERENCES public.optativa_container(id) NOT VALID;


--
-- TOC entry 2812 (class 2606 OID 41279)
-- Name: optativa_container container_carrera_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT container_carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;


--
-- TOC entry 2816 (class 2606 OID 41333)
-- Name: optativa_asignatura optativa_asigantura_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asigantura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;


--
-- TOC entry 2815 (class 2606 OID 41327)
-- Name: optativa_asignatura optativa_tabla_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_tabla_fkey FOREIGN KEY (tabla) REFERENCES public.optativa_tabla(id) NOT VALID;


--
-- TOC entry 2814 (class 2606 OID 41313)
-- Name: optativa_tabla tabla_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT tabla_categoria_fkey FOREIGN KEY (categoria) REFERENCES public.optativa_categoria(id) NOT VALID;


-- Completed on 2021-09-29 16:40:10

--
-- PostgreSQL database dump complete
--

