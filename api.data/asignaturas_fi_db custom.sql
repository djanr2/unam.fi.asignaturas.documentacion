PGDMP         2                z            ASIGNATURAS_FI_DB    12.1    12.1 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    ASIGNATURAS_FI_DB    DATABASE     �   CREATE DATABASE "ASIGNATURAS_FI_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 #   DROP DATABASE "ASIGNATURAS_FI_DB";
                postgres    false            �           0    0    DATABASE "ASIGNATURAS_FI_DB"    COMMENT     
  COMMENT ON DATABASE "ASIGNATURAS_FI_DB" IS 'Base de datos para administrar el tomo I de las carreras de la facultad de ingeniería. Con esta base de datos se lograra mostrar en un sistema web los mapas curriculares asi como los links a loa PDF de las asignaturas.';
                   postgres    false    2993            �            1259    24796    acceso    TABLE     c  CREATE TABLE public.acceso (
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
    DROP TABLE public.acceso;
       public         heap    postgres    false            �            1259    24794    Acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Acceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Acceso_id_seq";
       public          postgres    false    211            �           0    0    Acceso_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Acceso_id_seq" OWNED BY public.acceso.id;
          public          postgres    false    210            �            1259    24843    acceso_token    TABLE     �   CREATE TABLE public.acceso_token (
    id bigint NOT NULL,
    usuario character varying(40),
    token character varying(700),
    created timestamp with time zone,
    lifespan timestamp with time zone
);
     DROP TABLE public.acceso_token;
       public         heap    postgres    false            �            1259    24841    Access_token_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Access_token_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Access_token_id_seq";
       public          postgres    false    217            �           0    0    Access_token_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Access_token_id_seq" OWNED BY public.acceso_token.id;
          public          postgres    false    216            �            1259    16404 
   agrupacion    TABLE     �   CREATE TABLE public.agrupacion (
    id bigint NOT NULL,
    agrupacion character varying(20),
    nombre character varying(150)
);
    DROP TABLE public.agrupacion;
       public         heap    postgres    false            �            1259    16402    Agrupacion_id_seq    SEQUENCE     |   CREATE SEQUENCE public."Agrupacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Agrupacion_id_seq";
       public          postgres    false    205            �           0    0    Agrupacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Agrupacion_id_seq" OWNED BY public.agrupacion.id;
          public          postgres    false    204            �            1259    16412 
   asignatura    TABLE     �  CREATE TABLE public.asignatura (
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
    DROP TABLE public.asignatura;
       public         heap    postgres    false            �            1259    16410    Asignatura_id_seq    SEQUENCE     |   CREATE SEQUENCE public."Asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Asignatura_id_seq";
       public          postgres    false    207            �           0    0    Asignatura_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Asignatura_id_seq" OWNED BY public.asignatura.id;
          public          postgres    false    206            �            1259    16396    carrera    TABLE     �   CREATE TABLE public.carrera (
    id bigint NOT NULL,
    clave numeric(4,0),
    nombre character varying(70),
    year numeric(4,0),
    date_actualizacion timestamp with time zone
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    16394    Carrera_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Carrera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Carrera_id_seq";
       public          postgres    false    203            �           0    0    Carrera_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Carrera_id_seq" OWNED BY public.carrera.id;
          public          postgres    false    202            �            1259    24818    estado    TABLE     �   CREATE TABLE public.estado (
    id integer NOT NULL,
    estado character varying(10),
    descripcion character varying(50)
);
    DROP TABLE public.estado;
       public         heap    postgres    false            �            1259    24816    Estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Estado_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Estado_id_seq";
       public          postgres    false    215            �           0    0    Estado_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Estado_id_seq" OWNED BY public.estado.id;
          public          postgres    false    214            �            1259    24807 
   rol_acceso    TABLE     �   CREATE TABLE public.rol_acceso (
    id integer NOT NULL,
    rol character varying(10),
    descripcion character varying(50)
);
    DROP TABLE public.rol_acceso;
       public         heap    postgres    false            �            1259    24805    Rol_acceso_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Rol_acceso_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Rol_acceso_id_seq";
       public          postgres    false    213            �           0    0    Rol_acceso_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Rol_acceso_id_seq" OWNED BY public.rol_acceso.id;
          public          postgres    false    212            �            1259    16420 	   seriacion    TABLE     �   CREATE TABLE public.seriacion (
    id bigint NOT NULL,
    carrera bigint,
    asignatura bigint,
    asignatura_seriada bigint,
    color character varying(10)
);
    DROP TABLE public.seriacion;
       public         heap    postgres    false            �            1259    16418    Seriacion_id_seq    SEQUENCE     {   CREATE SEQUENCE public."Seriacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Seriacion_id_seq";
       public          postgres    false    209            �           0    0    Seriacion_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Seriacion_id_seq" OWNED BY public.seriacion.id;
          public          postgres    false    208            �            1259    49572 	   nota_mapa    TABLE     �   CREATE TABLE public.nota_mapa (
    id bigint NOT NULL,
    carrera bigint NOT NULL,
    orden numeric(2,0),
    simbolo character varying(15),
    leyenda text
);
    DROP TABLE public.nota_mapa;
       public         heap    postgres    false            �            1259    49576    nota_mapa_id_seq    SEQUENCE     y   CREATE SEQUENCE public.nota_mapa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.nota_mapa_id_seq;
       public          postgres    false    226            �           0    0    nota_mapa_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.nota_mapa_id_seq OWNED BY public.nota_mapa.id;
          public          postgres    false    227            �            1259    41321    optativa_asignatura    TABLE     n   CREATE TABLE public.optativa_asignatura (
    id integer NOT NULL,
    tabla bigint,
    asignatura bigint
);
 '   DROP TABLE public.optativa_asignatura;
       public         heap    postgres    false            �            1259    41319    optativa_asignatura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.optativa_asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.optativa_asignatura_id_seq;
       public          postgres    false    225            �           0    0    optativa_asignatura_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.optativa_asignatura_id_seq OWNED BY public.optativa_asignatura.id;
          public          postgres    false    224            �            1259    41287    optativa_categoria    TABLE     �   CREATE TABLE public.optativa_categoria (
    id integer NOT NULL,
    container bigint,
    orden numeric(2,0),
    titulo text DEFAULT ''::text NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);
 &   DROP TABLE public.optativa_categoria;
       public         heap    postgres    false            �            1259    41285    optativa_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.optativa_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.optativa_categoria_id_seq;
       public          postgres    false    221            �           0    0    optativa_categoria_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.optativa_categoria_id_seq OWNED BY public.optativa_categoria.id;
          public          postgres    false    220            �            1259    41265    optativa_container    TABLE       CREATE TABLE public.optativa_container (
    id integer NOT NULL,
    carrera bigint,
    orden numeric(2,0),
    titulo character varying(200) DEFAULT ''::character varying NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);
 &   DROP TABLE public.optativa_container;
       public         heap    postgres    false            �            1259    41263    optativa_container_id_seq    SEQUENCE     �   CREATE SEQUENCE public.optativa_container_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.optativa_container_id_seq;
       public          postgres    false    219            �           0    0    optativa_container_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.optativa_container_id_seq OWNED BY public.optativa_container.id;
          public          postgres    false    218            �            1259    41304    optativa_tabla    TABLE       CREATE TABLE public.optativa_tabla (
    id integer NOT NULL,
    categoria bigint,
    orden numeric(2,0),
    titulo character varying(200) DEFAULT ''::character varying NOT NULL,
    nota_head text DEFAULT ''::text NOT NULL,
    nota_foot text DEFAULT ''::text NOT NULL
);
 "   DROP TABLE public.optativa_tabla;
       public         heap    postgres    false            �            1259    41302    optativa_tabla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.optativa_tabla_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.optativa_tabla_id_seq;
       public          postgres    false    223            �           0    0    optativa_tabla_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.optativa_tabla_id_seq OWNED BY public.optativa_tabla.id;
          public          postgres    false    222            �
           2604    24799 	   acceso id    DEFAULT     h   ALTER TABLE ONLY public.acceso ALTER COLUMN id SET DEFAULT nextval('public."Acceso_id_seq"'::regclass);
 8   ALTER TABLE public.acceso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    24846    acceso_token id    DEFAULT     t   ALTER TABLE ONLY public.acceso_token ALTER COLUMN id SET DEFAULT nextval('public."Access_token_id_seq"'::regclass);
 >   ALTER TABLE public.acceso_token ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    16407    agrupacion id    DEFAULT     p   ALTER TABLE ONLY public.agrupacion ALTER COLUMN id SET DEFAULT nextval('public."Agrupacion_id_seq"'::regclass);
 <   ALTER TABLE public.agrupacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16415    asignatura id    DEFAULT     p   ALTER TABLE ONLY public.asignatura ALTER COLUMN id SET DEFAULT nextval('public."Asignatura_id_seq"'::regclass);
 <   ALTER TABLE public.asignatura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16399 
   carrera id    DEFAULT     j   ALTER TABLE ONLY public.carrera ALTER COLUMN id SET DEFAULT nextval('public."Carrera_id_seq"'::regclass);
 9   ALTER TABLE public.carrera ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    24821 	   estado id    DEFAULT     h   ALTER TABLE ONLY public.estado ALTER COLUMN id SET DEFAULT nextval('public."Estado_id_seq"'::regclass);
 8   ALTER TABLE public.estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    49578    nota_mapa id    DEFAULT     l   ALTER TABLE ONLY public.nota_mapa ALTER COLUMN id SET DEFAULT nextval('public.nota_mapa_id_seq'::regclass);
 ;   ALTER TABLE public.nota_mapa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �
           2604    41324    optativa_asignatura id    DEFAULT     �   ALTER TABLE ONLY public.optativa_asignatura ALTER COLUMN id SET DEFAULT nextval('public.optativa_asignatura_id_seq'::regclass);
 E   ALTER TABLE public.optativa_asignatura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �
           2604    41290    optativa_categoria id    DEFAULT     ~   ALTER TABLE ONLY public.optativa_categoria ALTER COLUMN id SET DEFAULT nextval('public.optativa_categoria_id_seq'::regclass);
 D   ALTER TABLE public.optativa_categoria ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    41268    optativa_container id    DEFAULT     ~   ALTER TABLE ONLY public.optativa_container ALTER COLUMN id SET DEFAULT nextval('public.optativa_container_id_seq'::regclass);
 D   ALTER TABLE public.optativa_container ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    41307    optativa_tabla id    DEFAULT     v   ALTER TABLE ONLY public.optativa_tabla ALTER COLUMN id SET DEFAULT nextval('public.optativa_tabla_id_seq'::regclass);
 @   ALTER TABLE public.optativa_tabla ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    24810    rol_acceso id    DEFAULT     p   ALTER TABLE ONLY public.rol_acceso ALTER COLUMN id SET DEFAULT nextval('public."Rol_acceso_id_seq"'::regclass);
 <   ALTER TABLE public.rol_acceso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16423    seriacion id    DEFAULT     n   ALTER TABLE ONLY public.seriacion ALTER COLUMN id SET DEFAULT nextval('public."Seriacion_id_seq"'::regclass);
 ;   ALTER TABLE public.seriacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �          0    24796    acceso 
   TABLE DATA           y   COPY public.acceso (id, date_creacion, date_actualizacion, usuario, mail, password_ciphed, rol, estado, key) FROM stdin;
    public          postgres    false    211   �       �          0    24843    acceso_token 
   TABLE DATA           M   COPY public.acceso_token (id, usuario, token, created, lifespan) FROM stdin;
    public          postgres    false    217   7�       �          0    16404 
   agrupacion 
   TABLE DATA           <   COPY public.agrupacion (id, agrupacion, nombre) FROM stdin;
    public          postgres    false    205   �       �          0    16412 
   asignatura 
   TABLE DATA           �   COPY public.asignatura (id, clave, carrera, nombre, horas_practicas, horas_teoricas, semestre, orden, nota, optativa, agrupacion, tamano, enlace_pdf, color, color_text) FROM stdin;
    public          postgres    false    207   ~�       �          0    16396    carrera 
   TABLE DATA           N   COPY public.carrera (id, clave, nombre, year, date_actualizacion) FROM stdin;
    public          postgres    false    203   ��       �          0    24818    estado 
   TABLE DATA           9   COPY public.estado (id, estado, descripcion) FROM stdin;
    public          postgres    false    215   [�       �          0    49572 	   nota_mapa 
   TABLE DATA           I   COPY public.nota_mapa (id, carrera, orden, simbolo, leyenda) FROM stdin;
    public          postgres    false    226   ��       �          0    41321    optativa_asignatura 
   TABLE DATA           D   COPY public.optativa_asignatura (id, tabla, asignatura) FROM stdin;
    public          postgres    false    225   g�       �          0    41287    optativa_categoria 
   TABLE DATA           `   COPY public.optativa_categoria (id, container, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    221   8�       �          0    41265    optativa_container 
   TABLE DATA           ^   COPY public.optativa_container (id, carrera, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    219   &�       �          0    41304    optativa_tabla 
   TABLE DATA           \   COPY public.optativa_tabla (id, categoria, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    223   z�       �          0    24807 
   rol_acceso 
   TABLE DATA           :   COPY public.rol_acceso (id, rol, descripcion) FROM stdin;
    public          postgres    false    213   ��       �          0    16420 	   seriacion 
   TABLE DATA           W   COPY public.seriacion (id, carrera, asignatura, asignatura_seriada, color) FROM stdin;
    public          postgres    false    209   ��       �           0    0    Acceso_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Acceso_id_seq"', 12, true);
          public          postgres    false    210            �           0    0    Access_token_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Access_token_id_seq"', 18, true);
          public          postgres    false    216            �           0    0    Agrupacion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Agrupacion_id_seq"', 78, true);
          public          postgres    false    204            �           0    0    Asignatura_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Asignatura_id_seq"', 7503, true);
          public          postgres    false    206            �           0    0    Carrera_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Carrera_id_seq"', 16, true);
          public          postgres    false    202            �           0    0    Estado_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Estado_id_seq"', 5, true);
          public          postgres    false    214            �           0    0    Rol_acceso_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Rol_acceso_id_seq"', 1, false);
          public          postgres    false    212            �           0    0    Seriacion_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Seriacion_id_seq"', 59, true);
          public          postgres    false    208            �           0    0    nota_mapa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.nota_mapa_id_seq', 23, true);
          public          postgres    false    227            �           0    0    optativa_asignatura_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.optativa_asignatura_id_seq', 75, true);
          public          postgres    false    224            �           0    0    optativa_categoria_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.optativa_categoria_id_seq', 15, true);
          public          postgres    false    220            �           0    0    optativa_container_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.optativa_container_id_seq', 3, true);
          public          postgres    false    218            �           0    0    optativa_tabla_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.optativa_tabla_id_seq', 10, true);
          public          postgres    false    222            �
           2606    24804    acceso Acceso_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT "Acceso_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.acceso DROP CONSTRAINT "Acceso_pkey";
       public            postgres    false    211            �
           2606    16409    agrupacion Agrupacion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT "Agrupacion_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.agrupacion DROP CONSTRAINT "Agrupacion_pkey";
       public            postgres    false    205            �
           2606    16417    asignatura Asignatura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT "Asignatura_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT "Asignatura_pkey";
       public            postgres    false    207            �
           2606    16401    carrera Carrera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT "Carrera_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT "Carrera_pkey";
       public            postgres    false    203            �
           2606    24826    estado Estado_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT "Estado_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.estado DROP CONSTRAINT "Estado_pkey";
       public            postgres    false    215            �
           2606    24815    rol_acceso Rol_acceso_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.rol_acceso
    ADD CONSTRAINT "Rol_acceso_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.rol_acceso DROP CONSTRAINT "Rol_acceso_pkey";
       public            postgres    false    213            �
           2606    16425    seriacion Seriacion_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT "Seriacion_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.seriacion DROP CONSTRAINT "Seriacion_pkey";
       public            postgres    false    209            �
           2606    16435 '   agrupacion agrupacion_agrupacion_unique 
   CONSTRAINT     h   ALTER TABLE ONLY public.agrupacion
    ADD CONSTRAINT agrupacion_agrupacion_unique UNIQUE (agrupacion);
 Q   ALTER TABLE ONLY public.agrupacion DROP CONSTRAINT agrupacion_agrupacion_unique;
       public            postgres    false    205            �
           2606    33080    acceso mail_unique 
   CONSTRAINT     M   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT mail_unique UNIQUE (mail);
 <   ALTER TABLE ONLY public.acceso DROP CONSTRAINT mail_unique;
       public            postgres    false    211            	           2606    49586    nota_mapa nota_mapa_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.nota_mapa
    ADD CONSTRAINT nota_mapa_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.nota_mapa DROP CONSTRAINT nota_mapa_pkey;
       public            postgres    false    226                       2606    41326 ,   optativa_asignatura optativa_asignatura_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asignatura_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.optativa_asignatura DROP CONSTRAINT optativa_asignatura_pkey;
       public            postgres    false    225                        2606    41295 *   optativa_categoria optativa_categoria_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT optativa_categoria_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.optativa_categoria DROP CONSTRAINT optativa_categoria_pkey;
       public            postgres    false    221            �
           2606    41270 *   optativa_container optativa_container_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT optativa_container_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.optativa_container DROP CONSTRAINT optativa_container_pkey;
       public            postgres    false    219                       2606    41312 "   optativa_tabla optativa_tabla_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT optativa_tabla_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.optativa_tabla DROP CONSTRAINT optativa_tabla_pkey;
       public            postgres    false    223            �
           1259    16441    fki_agrupacion_fkey    INDEX     P   CREATE INDEX fki_agrupacion_fkey ON public.asignatura USING btree (agrupacion);
 '   DROP INDEX public.fki_agrupacion_fkey;
       public            postgres    false    207            �
           1259    33072    fki_asignatura_fkey    INDEX     O   CREATE INDEX fki_asignatura_fkey ON public.seriacion USING btree (asignatura);
 '   DROP INDEX public.fki_asignatura_fkey;
       public            postgres    false    209            �
           1259    33078    fki_asignatura_seriada_fkey    INDEX     _   CREATE INDEX fki_asignatura_seriada_fkey ON public.seriacion USING btree (asignatura_seriada);
 /   DROP INDEX public.fki_asignatura_seriada_fkey;
       public            postgres    false    209            �
           1259    33039    fki_carrera_fkey    INDEX     J   CREATE INDEX fki_carrera_fkey ON public.asignatura USING btree (carrera);
 $   DROP INDEX public.fki_carrera_fkey;
       public            postgres    false    207            �
           1259    41301    fki_categoria_container_fkey    INDEX     `   CREATE INDEX fki_categoria_container_fkey ON public.optativa_categoria USING btree (container);
 0   DROP INDEX public.fki_categoria_container_fkey;
       public            postgres    false    221            �
           1259    41284    fki_container_carrera_fkey    INDEX     \   CREATE INDEX fki_container_carrera_fkey ON public.optativa_container USING btree (carrera);
 .   DROP INDEX public.fki_container_carrera_fkey;
       public            postgres    false    219                       1259    41338    fki_optativa_asigantura_fkey    INDEX     b   CREATE INDEX fki_optativa_asigantura_fkey ON public.optativa_asignatura USING btree (asignatura);
 0   DROP INDEX public.fki_optativa_asigantura_fkey;
       public            postgres    false    225                       1259    41332    fki_optativa_tabla_fkey    INDEX     X   CREATE INDEX fki_optativa_tabla_fkey ON public.optativa_asignatura USING btree (tabla);
 +   DROP INDEX public.fki_optativa_tabla_fkey;
       public            postgres    false    225                       1259    41318    fki_tabla_categoria_fkey    INDEX     X   CREATE INDEX fki_tabla_categoria_fkey ON public.optativa_tabla USING btree (categoria);
 ,   DROP INDEX public.fki_tabla_categoria_fkey;
       public            postgres    false    223            
           2606    16436    asignatura agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES public.agrupacion(agrupacion) NOT VALID;
 D   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT agrupacion_fkey;
       public          postgres    false    207    205    2794                       2606    33067    seriacion asignatura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;
 C   ALTER TABLE ONLY public.seriacion DROP CONSTRAINT asignatura_fkey;
       public          postgres    false    207    2796    209                       2606    33073 !   seriacion asignatura_seriada_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seriacion
    ADD CONSTRAINT asignatura_seriada_fkey FOREIGN KEY (asignatura_seriada) REFERENCES public.asignatura(id) NOT VALID;
 K   ALTER TABLE ONLY public.seriacion DROP CONSTRAINT asignatura_seriada_fkey;
       public          postgres    false    2796    209    207                       2606    33062    asignatura carrera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.asignatura
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;
 A   ALTER TABLE ONLY public.asignatura DROP CONSTRAINT carrera_fkey;
       public          postgres    false    2790    207    203            �           0    0 %   CONSTRAINT carrera_fkey ON asignatura    COMMENT     ]   COMMENT ON CONSTRAINT carrera_fkey ON public.asignatura IS 'llave foranea al id de carrera';
          public          postgres    false    2827                       2606    41274    optativa_container carrera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;
 I   ALTER TABLE ONLY public.optativa_container DROP CONSTRAINT carrera_fkey;
       public          postgres    false    2790    219    203                       2606    41296 +   optativa_categoria categoria_container_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_categoria
    ADD CONSTRAINT categoria_container_fkey FOREIGN KEY (container) REFERENCES public.optativa_container(id) NOT VALID;
 U   ALTER TABLE ONLY public.optativa_categoria DROP CONSTRAINT categoria_container_fkey;
       public          postgres    false    2813    219    221                       2606    41279 )   optativa_container container_carrera_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_container
    ADD CONSTRAINT container_carrera_fkey FOREIGN KEY (carrera) REFERENCES public.carrera(id) NOT VALID;
 S   ALTER TABLE ONLY public.optativa_container DROP CONSTRAINT container_carrera_fkey;
       public          postgres    false    203    2790    219                       2606    41333 ,   optativa_asignatura optativa_asigantura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_asigantura_fkey FOREIGN KEY (asignatura) REFERENCES public.asignatura(id) NOT VALID;
 V   ALTER TABLE ONLY public.optativa_asignatura DROP CONSTRAINT optativa_asigantura_fkey;
       public          postgres    false    207    225    2796                       2606    41327 '   optativa_asignatura optativa_tabla_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_asignatura
    ADD CONSTRAINT optativa_tabla_fkey FOREIGN KEY (tabla) REFERENCES public.optativa_tabla(id) NOT VALID;
 Q   ALTER TABLE ONLY public.optativa_asignatura DROP CONSTRAINT optativa_tabla_fkey;
       public          postgres    false    223    225    2819                       2606    41313 #   optativa_tabla tabla_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.optativa_tabla
    ADD CONSTRAINT tabla_categoria_fkey FOREIGN KEY (categoria) REFERENCES public.optativa_categoria(id) NOT VALID;
 M   ALTER TABLE ONLY public.optativa_tabla DROP CONSTRAINT tabla_categoria_fkey;
       public          postgres    false    2816    223    221            �   @  x����N�0���}�Z�����PU�(��c'mJ��-�OO: +/��#�t)�R�P�RH��J�.��M~n�}>g�+[.��.c�+/�qVk�I!En���H. (7R �o�EX��.���&�P��0Sr�@L��p��o��0��2�S���PW�EX���^�N5+g�O����Xm����Pr�7� +��Y�uMA�B`J�)�����[�׵�p����@��NCf�at�����qk[=9PԄwªX��vt��j= =�}���t�q�B�Pu:N����Ul�f�i�h��z�b|=�q�F��2$�8I�K��T      �   �  x�U�Ɏ�@ ��>Eߍ-���t2.  ���KQ��;h���s���g�,Lqق?q�8�?IU�N�6s�S^`
��~`QP�=X�A�zYQ�f�T����x2�
F���.�r�k�H�7�x̢�S�[��u`���Mq��A���o W�y4qKD�+��ڶ�):� U$����ݖ;�F�=���۩���X��q�h�UX%�U9)t���:򒌘F��a���Po��Cyf��kj���]xޗ�GHw�y|tit�ܥ۫c�3iM5�T��ݞ8e!;j�oއ�՞J"�j��U���ߏ�i����%��:�i3 t5�'��5u�X�qě��;żߤ��LlR;����/z�"?��~��ξ��o������Ԭ���Z:�~,L�T���y��r"��~q�����0�Y�`�J��ⸯ5�ddq���]2�����~������L      �   [  x��SKn�0]�N��R���D
$�A �H�0Ц��qz�^�á$�ɢ+߼�<>e�{nU��׷���|����|z>��4�\�sx�IҶ�Bs�����|�����������zN*��c*���ք�3x������~�uLn�߆F;oG!�ѡY��$���;B2�I�Њ��r�S��c�D
Pn�ܰ�V ;)�5z�5r��	�a�L/ۙ�\�g3UN�<��gN���[��-xRK��^	C��Yxj��K-T�<g`����)h �(����IJ)��(�]ư�h��`:�ً<�n�#�EhV�S#���+1�*���#tf��!#�<��t3����	m�)�G���Z�2�wR+i"b��q�v�9ִ���
�X�%��Au��-�Ѱ�7=��qѣdX�&�5�\����F*,mon�Q�ӽ�����[�J�H�2� 8����e��D�9+�O	+�hA�ɨSvN���ίx��mVP,d���#ˠ�t/'�%���fǲ��F�UW��dAeyO��z:,�������|��u
C����
�YUu-m^3�y,�mDS���ӗ$I�O)J[      �      x���Ms�6�6���+2����v{H��w'�Te�(�t%UM���p�$�:��:?j\���,f5��y�E/&�����9 H�I�T�o�m�]y	��9�ᙨ&iʒ	����Ȿ[�&�w�$��I��M&''����_�o��g��$������o�,�I�gBʘ�֫��a�|��i~?�0-%���	�)2)�(���\��/�-���C=�n�g����	�t����$�	�*6IY*%��m��<�f�_�9���k	��}ᓐ'لI.W��l5��-��i�����MO��f��t1���)|�75�WxOd"�R�U�ӗ���E3�
AO�f�=Y�/�����|)7��r�k��Og��I\})����n���z�i�� o�;B#y��}P>#qfSM�ϗ�lѮ�-A[����|���w���L ��l�y�mc5&W((@�p�]��>W��nv7_�f�cJ��d��,��	�_����}���l�Y5�����>����^�3�4)��ۿ	���A+�2y����fY����9Nպ�����'�W����//�NO>����t��$�a��H�jR��\�O�����oX};M!�����ܞ:���K$���f1{خιWE��$���&?�Gz��e���Mn��_��/��Ӌ��%w�|37��V��w��"ãcý��_�X������Q��߃E�N����_��|��H��/R�٢���������^�[�	V��a䟽?;����GQ!�
!U�3�j���s)YY���~�,�GX�����Ŋ�.I��o��M�$��鮾�?�+"�G�8�G���4��ϰ��J~���1��U��c�}H|��?���K�"8o��^����U}�����-ywF%'�ԥ�g4E��+��z���	����Y��|�
�|�ۙ6o�������C( �ѓ����l�<eo�{����yY�� -��#�S>Q'F�<e�/f��z3_?5�?�"��*��eҦ)������O/�K�M��y�p�n�Tn�#^�R��c�W\�R��b�Wݰ���:肕�ϱ�\�޾P��A�}h�ם)H���GF��G�:��֥�.y��Qd�㗆���*�w�^����xw�u{��
m�X�?Xŵ�e��IUe�%���A�$��IR��(����s�<�f�>��8���z9��L�bY��i�3����v̘')�&�^bT��8p?��"��J<�·m�����.f��#�e��u��}����/�
6V�� �bf�ܟ���i���0K�qs�Q�|u�%�l!p,lӅp����bR�r�c��FQߧyR��r
�YF�z�%,�B���������q��-���ߜ�����GN�������L���4N�O�',cx2V�R}?o�Pd��،��f�\%$pN����l�C����s�C���{�����>��n��y.����(���U��젧n}�cK�_��pU�ϵ��m>�>b>���x�.e�^�n����$��������]�I�u��^5�Z�H�ɕW��H��sv�=K/�;��
>s�@d�D���
���of���4��'i!Ŧ��D�Y��f�4�&�9\�����ZL�ͧ��Y䧗�������@�Ep˖rMRrے�}�K�v�D��;'�JԸP)���N��K�W�t�g�i��p�]A4���f9�O��O���An���nk2-�dA�%V	�92ݓ������/g����ļ�T$tSԄ��n�r�~�+Oy)}Z����լ�˲�'��'��f�>3��!�ϝ#_S/���NOVdClWT��T"�!+�;��y�l�W��O1�����'wrclk0�-H2��8��Y�ẚ�������|�l&�(�:U�?7�����7�&%0jKR*&eKtVo���/�&ȷ�<������A9i���R��wđɸ�"�#����������"��{Z>�v#m���ή��H��(���aH�=+ˮ���J�Ƀ(��������-?lI�����@<4k�����d��2��o�^����]��.���xp��/��ZF��W��p�|�<��@9�a�"ɋ�_/��Н�~�"ƧJ#d���e��l'�h����M�E��Z�\����2��
�t����^uV�`�n��Ln���>��iY�֞��RΝ�U[N!k����OXRhZN�W���F}VuַKu�ɧZ��}_~[������
6�_.\P?�藟N���~��7�z��<䛙<��.,�o���|s���;��[�BZ�{�6O[�:�#��uad�������S~��T`S:����N+',i�s�VD����1����s?��A����X<�3�qD	��TX{ᷫ��r�O��EU=�ʛt<~�5i�H���0Ѧ�gI��RV��Ad4�V�A����%~{�S��\ȗ?����s��S|�<�ɠ�h�^�|��w{�9k�����-���G���O��Q�J}5e��x+�(
�L���*ً�Twn�r�2}N~y�NjHU�>�߇S�)3i�W\�\z1pЕK�����=����9r�
��b�*�ꑄD[�r��-Φ߿����m��q9��E�Gi�Q�Ȣ@ ���J���-wՎ[�[�q�Y�M�]Y�E�r� ���"9R������u�H7��/"EY�I�Gu�r�r�VQPhr���xM�ٯ0p��z"�(���^��ܝ������B�RS����a��/WGF1=o���f���Y�;��t���=��C�z�-��:�V�4���X���"�J�7W'��'��nF�VP���⯝K�U!�T���d�_LN�e�L����f�$�s��p��7痧��l��F��x��Η�拖m�&�"K�XD�oȧ
���!7P�|�<����3�!�7�C�@$L��˻�TCCG놜�� ������+�w������?}���.	6E�̖k]������#	���j�I���VGV�#�J��]�������M���rc��}�-q�֝�WvAۧ��7g�#c��.ÂQ|྘_~��a���s ^�@E��5O���\%<�QqrI�)a��=|�^�s⴦y��Ⴎ��v���0U�����_�'�Gy6O�{����������h7�����yZQ�d��2�]�D���6c���|��B�2D����w���5����M������_ؠ��J��,ЗQS�)�I��lo���g\wj����G=��P�wm9p��\�I	��j>�\�%An�o���� �����]�ҭ���[�>��	�L$kPdz�cQ7���_Na�.K8�?�2���9�2�qǷ]��Ӑ�5_n�zd��Z {���j��~���ѓ�$�*d�=��ύ�������P^/H���F�U:?N�C�z:[m�^�wF־յ<�9��u�F{7���Cf�����GhG�&m��g#� ��)��Tm��Q��^��(�R!��:�����������Y��N�\�=��8 (J%���E����r�-�E5e:F��r��#�98u8��)�Od��XZ�#L�~y�W�'ʨX�	��Ou,�� �LI�~��tW{�85. �rԆN����9 �G(e�>�!��i�,�˼�Krw�`���	G�'S'�B�#�'S+�{�z���Q�E��1����|a%s��է*^���\j��*Vj�}A��y�B���o9"����x�Ϫ��*t)��<�u�|�w�ouB�����	�����R�'c?;�%�y������i�X�փ��R/)��L"�G�������t�A�n���ܝ{�N�:OqT73��"�̌ u3����.^�M)ZE�$���e�z�n��_0����]�Ȋj��`��B��v2�Z��O֯����[��c)���i��Ӑ���,��(q-�8=��Q2Br2��b�s����������n���v3���#t��&g_f�mW?z�!��֮����e��Yȼ����!�T��F�9d��~�tgh�v�QEcY��9�5�8�^(�J�E�ze�c��+ ��]l��h9���|R&�E��UfZޡ�TaU���S��sM��
|R��2��JS��^-�    G@�މUQU_H_v���rʗ�˓��m�T����˨���62�l	�o#�<�8�U����Ng��V_���V �ᣔI�>*�c�P+���VC%�|��b���e%��ۺ���ɑ;p�rr:so� ��Kߖ��5*��&rOt�y@�<�J�c!r����	T�K$�^~�.�]Kqx�v!H�ݺd�"�إH=U:n�l���ܬ6��<҆�ۑN�Λ�z�崼�iڥG���O�U�q��>o��q�x�K':�9�ơ~0&��?��7`�{���Te��!�h�,u�g���A����(	�\���(�5�f�)�<捹�X_��WPs��@QiG��X�"�O�V9x��i	�]��/z��H\�ː��L����Xm4�7.�j����Js��z�y*������j&co����_���m|L��C�%�,(Ţ������n� �8����v7wy<tl"8Kld49�˗ݣ��e���Op�gv���vm�~�3�(��wZ/wU��a^�vsm����#N���I7k7�`Ý�w���O�@$��yI#�Ju���/oF�$dl�A���1�{�3�h���ɏ���zRם���d!ok�4j�
���j�0���nm~A�h�����
�m�W�����TF.�EĒ�o@톛�q�"��yh���TʲD�֎QSN�[�Z.�?�s�l6�םa���W%��B���W��Nl9e��d7�<'��n����I'���P�>8��$�Ѡ��75쫴�wۖ(�{��1G#ZE{q�m�ĝ�q'f�� �B����Y�v�t����.����g5:��H5��]6���_��������{���k�x���9��nDD�]'�>��ߩGo����������0�.� G��2= �)��is��y���]z��~��x���`��fEq�� �\B�<=o7d�(D9i0�b�d�6�KHO���4��Ӵw�Q�k�O�~坅��Q����@�#���׺���G]	uٰ�.�|���Zӓ�7+�Y�|~:��}��ۊ=�
X���ۺ��*�j}*�enО�2^w&؄S�������n�������`�τ��*ƍIu#vh7�M�qݧ;T{
�`ͨ,�[	�0_T�d��pY��J���kH6)G��/f,�m�O��g�։�x$���a�B	׼�G���b��q��!FJ)U�#{]�#�zd���)��qP!4R#�Q
���-;��&��Z�^M�#�FLc��*��^��ܚ��M���K�K�4�0���X��X��<�� ��a��ρ�y4����J�e`��o�f��n8��k���R_��7?�0�/�<�j�=V��}�O��P�#���ɇ�qdN¹���M�b�bO⧫�����g��aC�S��ŧp���ޭ?�� F/9(}���('4��3,G�*��ڤ��t�Z��b��!�0�#cey��D�'�О�B�vU��<�<B�LH������
�ǜ��� Px�A��
?��ϳe#�'���*�"���*�gA���-ͦ1�`�Y�{��d�'΃"q+F_��Z���ԕB����+�<7�W=�s�uI��|���We������H���_w��>F��A�:�t�Hˉ��\��:T�
��v�Xԫ]���j$�{�ˠ���O����܁�>6��*$9�*�s��eI�b0�7B��L��e(6���<$4��rزux�cC9���{�U_1� u}�-G�l��G��^R��t5�r��4Ũp�d�6�G|�>E�s�����pzbT<H2X�4��-ҦV�/�1����C`#��%���|H�i������#za@*M_b5�@�+S�X�I�ˇ�c�Ɍ�\_�记�D�K����eQ�0�zedv���5���Ղ�j�"J,R7e��#7��^�X���`��D�Ŵ%�U�1+���<��8�n����ǻ���Uju��W�*8��kߩ!�=.G����|Ϗ�����Di)��j�٨���r�y�:Fw4�(�8Ye�:�;�cN_YhX� �	A'�,�LL��z�"���
��*@����<&*��[k}nphi���@�e�vzQU�\%R���γ���E����um�*N>�MܖOY�ڮv����bi�d��N��Z!��&k��dĤ�3!��{�?u.K@����z�LޮԢhw�6�c�|�q��Ai?��	2�����i�1���E!��ꕌs-/M���IwKφTE}��/��v#�n� a{7{Z���W�(*��@qh�Q�s>�%Mm�/.?��?s�fDN9EOι-��	* ��uV�[��$4P7�+�UƉU����f���T��9T�3"�	ꌟ� {%��Bm��ͫJ�9�~N�d�Z ^S-��0��W""�BU�aՂ�����ǂ6��Z�T��W
��/�>��Vw�]l*_�}�.6���>j����c� >�>�q��Os_���f�0z}Q��ڌ塛Q ���:����)�'d:9�>.��i!.c�XZ6ە=ȷfI�ƞ7��g�]���x�
��z��Q ���S�����M�2�liO컏� -��&�7�D_�#?6�'�=}��YN@xF=�x�6���Zn��"��[y��8�����nn�?^�}����(R�a0���_k}���$E[�Y�NǄ��D��d�u��Nŷ�rX���P4_�t �e�e��Eg{�F�5�ф��/ߝ����q�E,�Fe�2��A|�y�5SSA�H�H�P�)�U��B��!�j&���S.���찉����P�(�F�I�����ď�J�<^v��VB�?��#���i��(%�qJ5_-���7��
��@Fy�Ȣ�C��KS�'f���E���F$ᇰ�����燋��e��,�X	�
�p3j��_h�B�VA��H]s����i��ikx��;fq�mj�fk���jB�0��
Ԋ�񟬨=B�7��B�Ov���`�/������^��6z�ꘫ�^�=^������~2�%D>��]ڐݴ���wg�Ϯ�O~�Hp�Ӣ�������ٗ�Ie�X�����!p4@'�0h�7ݼ[�tM��G�k&��0�6���І�v��E#m����"���DG5y�՘Fk��]�Q�_��	jjs��J��C%�Z�G�}��2-�b�V�Guz��N67���}4����5�A���*WW�&��u�%���d4���T��`	t��Y��{n��p/�T
��
�T�&�Ԋ�R��h*Z��r��C��˿��Ny�'йE�>D��D����ں(�<�1�Q�$��E>�^�ǜD�5�*
�t�[h��Q �	4q�/�S���!����S���J�+Z'�Dn=��e-��QO���:h?(fOS3��(;�JqQ��~�'n}iN �Y�T�V7��^vtԝ�o�*_�|8���a�H�ĥea�O���#.PP!�}-�ݙ��Ff*0���6ON�3���<̞��Mq���b��9�}��Yro�0��z�&'2��R����0���0v�ax�Z!�k�ae�v�Ǟ�j���^x�`��!C��i�$;&�!���
'<Ҕ*<<T7�6=�?>y� ئ���F��	q!c�7�cb��S@UI��r��`���uE�]�8 >�:z<��w"����7Ce��t>�����$7�L�#���i�Ew�$fM��I{��b���(��O�KF)��(\NF��v��]8T��2�43f���ӷHc�KgJ]*k1߂)�'�8G����0Z��Y)���|�r�D�7f��PL"p��Л��u�4�����]�A��PȆh���ځ�e7Ą�&w6}����	"�ET��E��X��^��B���5+�\=Jw�ז���PEi r���`�ꗹ�K�����_^��f�.&ճ!�d����z�D\�1O�:��0"�S0J�7o��]��!u��y��حM��b�Y4t4)v�,�i�^��_͗��>�c7����"5e�ά�.��    9�$�eu�,��NK��M�%���כ�r�I�P�j�K��tG��F���"�X�v;���5/�ܶ�>[�O��f���gZz�=T\�t�u�G�i��o��&Vs�8�r� ��j�8��eGDZcB��b���O��.�Xԉ���M�l��ȇF�@�p���{����/�	�����7J�u��~h�z	��tM�mɊ��w���±�t��<F4l~UX������D������ogq:�	��P�t|��6[wE�8�՟r���]�˜�Ӷ�_K���:��m�~8Ɣ����_]��;t|���z��y9�cIB�/=�w��SH�_7����;;�'�~���q��Æ��z�hɚ<��`�	//��ni��[��H,15ZQ��a.��t�x�Xe;
�{��qiqB�Ҡ���P#d��0�'W��!�Y�A�/t%%�!�PX�u���Y�z�#��;�KN*͌5c����c��y�Rv��|J��>�wj��1�I���Ȥ>�ݐ�Vwbu�/�2�AJ�f��4�.K��J��	�d�LbD�~�q`�vB,2�K�d[įB�|Th��/rb]h���b�)�s�J4��95�M'�!�Ɵ'�����A�9]��soZ^ج?����|wv���Ol���0|C�A�p N*�+��U����������M7��'?�G>vo��ը� ���b��)��Ѕԣ1�d�*�J]B=UJ,�2��}S?���������Fx�R��ґ8\v����@]'�ᜒ����<s
���Wָ���9T��@^6���!��C%^{e��g�������Ԛ�`o���H�%j��]o3�������6d2v�H�Zxf4�!���ύ�cy�A˯ T�o����Dq�fo����C��>��о/PR�Tf�f�kIl���@�b@_\���.���G9����od�mf՘�1RzcP���ybYq�����]�T|y�Ɵ�]B|g�55"4]d%}��:u���B���nq��R*܈`�|���ѥu�0m��
��Vw[��N���Z��V����yn�>[�Џ�i�����I�ȧ2���2��F_ �.4TP�{Y�A���v��}�n ��	&Cy�"���4�������<l5a<%�DF?.�P
�&�pB�xDIc\��u;}��>�5���
o��y�qm�C�L�T�1m~��xbx6^q�c��1:�<��R���:�s�QQ�:=�'$��OX)l`Ҿ�7$��o(�C���1��T�zW*��o� 1�?X�J�<���AB�i�c���,��9N�̝ K�h�!���|��t�#���J?]+�EJ��[�xkEq�Q!KDAS�f��ơ�� ��$1��SL]���u�0k����W���59�!Z��8�>�]�9�+"c���`_Ҡ�i���3i0V�J�|.)>��b1Nz��J����%��u�x@W842̝:x��0�F�_��\o��a�+�>/�����Մ5��U�4�LO6O���j&�B�E2��
N���H�AB�s�����v��G � �?�,3��3-�4�u�7hFMW�5z$l�,�A7D}=}��Wv�����9��Pi��z�ӽȭ{�D���h4�!UX�sl���<	�lD%�Z�})�Y4�'�F�hӓ�"�8&�kĩG�Q�T#�b=�?)���~��r��>��J����3R�z*��|�R���� L��*�]%�SzDx1����k�2�\��h�������aQ���Mٵ(�����|��;�E�p#��(��e9��8)�P�QqYI|�h��8�R#�g\�6a?����Aa��O:Vn۷B �l�6�s2v�e�h	FqFZa}.dD�!��eሣ��#.��]4��%qO���%X�t�ߜߜ}�Ny�phQ�+.]���W�a�ҕ^��A{�g��o�<32Nd�A��v��k�f�de]3����,��f�P���@l]�~X�'�h'SWX���B҈|��eq҈�2s�}ڕ��I�`����g~��L��dl�'L��W�Fj��
�U��=./*O�D����e�U}��fz"�m�L�%�R	Y_�!@%緊v~��+T�OQ����ì���!�U����Y/��N2Jƴ���
;�njs��'4�<�p����ׯ�%X�i�9�ϵ�sm�m�+OK�|G�<�f���Ãkz���6��jo�~���H��ojEnf?���O�K��_Z�~���yH���~�Ə��JMzn�!I�<"�[TftM���^#��&����3�R�ip?b{0�,՚�������R�il߻�=8�F
7M�{����H+Y g�����~8�/�q����48�-4^�^~��,�38���t^�P �]P����9�5u���Np�3���f�5&$ia���R�q��@���0�9v�u�h���A!�ʲĉ=k�X��T�9~Ht����~�􆪨@ד���B!�ɗ��!�|������,�"���-����\���reJFp���vr���<o2Q�(�2q�������z9�1��֡�{��T;�5m^!F�[���*vU=������Kr&�z2�.�*��
�[����#�X�§P��,�y��*X��F4�K��],x�\�*VǮw�\7)z$R���*l=�߇L���}�V��?|��D�sbh���,e0h2�����Q�Y�|���ڎ��|�
�g�6�~�����"&�1a�����TIr��˕c�/r`�s1q��+�XʫZ�n�-�;��	<F8؇K�� j�^В�b��V��~�8�06I4�a�|/�y�����n'�T��4��ӵ��s�e�猑+0��B��M�m�Θ��uOY������(y�ݘ�nVC���$+��7%��ˮ�q��R�4^U���ŋ�ʍ�d��eK����DB%=��C)N-)jR/U~��HjQQs�@L��B����&Bd6��̦�) E�*�Y�5u�5j��2M�p�I���!j���\�"h��\M������P��]���EEMwTS�*GԎ��9z4�(uw����Ӳ��N��%�;:7�H2�%��N�Ǯ{���Q��*i&�c�ꟛv��nӑN�G���e3�Д�vF�E����2�Kю��m�ѱ�U�c3�-j��ƻ0�6iA��^���p���)� c���)j���(i2
�W����ѕ^y�3��I|����w_b�'g��Cm�1�c)p��	�O�(m�s]�(�3�{sA�%�]�Y@Z����y�����DV
ƾ��đ�b_p������д����b��Ԯ��Y�l�����i0�ozn=��Պ
��Y����>�E�M���<i_�*P'Tpq�T�N�].��)�HV(ɞ�/� �g!�S3��h�˘w$A^9�j
�l
.u�HJn���*�{����lr��'((�'@*��MjLD��=��?�{[����&�r[������K'(
��(�8Y�o��5pg�u�<?؜�U2c(�J`>�p��,hz������n�/ߏ�"= ��Ү`?VB:� ��j�v�6�r����B���k��SJ�Ԝ��;�js*2sQ�2��v.2:�q��o����	�oM�uV�����ˈVe����N�h4eFY�N\{��!pWΑ���wD���ojP�/r��v��^����͹�}f�S��ˉ�_0�X�N�\%5���@q��0ﰔ�N�I	���cx�=����s{rm��������l�.��)�DFmՀ�׆�=uE��!���
�=�>��3���|����)e��]b���_d6o�/⪣!����NQ�Z-���T�R��#�e��#����^v��o���^~�NR�?O�z7<�P�)h�Ǝ�`��`���bV���}���|<VU�LYQ�MkfZG�&�:Y2&�譶z����,f%���%�8w����.�^�9��C��,��f�y[K����� ]O�N�ӮK������nU�^�Ϩ%*��z<`�{����Y�
�j�-��d�}V��`��ql�	��`U�0pjkԺ��^�t �������    n`��L �N�̶��e�?.�5B�۔�ϔ�k3/7T�o	�װ�_�a�n�y��V���o}��'w�Joum[dZ��RBxfBQ�[��꾏����u������G�H�� ��]�1����(��ɋ[�Y���ƺ�-����{���v"�Q���v�t�e��Y��c���E�E7�]������f��5]<�^~s�V�����kz"9��p|W�}F؝(��ZM�]��u�7BQ`jY��eg��Ο����B��Eny�5��U�k�'��/q�e�44��ӈ ��,2� M��A(OY���W����V�(-4�s�c���hݣ�k�g�/�w�SB#?=����C`��('��NN�`X��[���sW-�xn�<�����&�M
�y8�&���,�G���b�f��MH��ە��l'�{�(n�T�0L-P��@X:`5L�lS/�{��`l`0�ݭ޲"�z��c|4���G�k��\�%~摞GI�	k������R$-2�#�^D
c��_����uL�#bxA�����S
�iE� �\�o��T'��ѭ���/���u�9M���m9�O&ה�	ֆ8?$:�8�������Ǳ�.���_򰅱xa����<��Wב��fPf�w�z��N��߻I��l�;J��#���� W����}^��
��B��������SG��v��۸D�ŧ�& ������.o�ň�{��, ��u`�Bۢ�:�UFt{~��"�4S�t<�(� uZ6��.}0�����Pif���2�@��௽j��"��a7�R��H�%�6VR�H�Y��*����mP1������i �]q�rF�$(�Kh|���w�z�m��z��'�Es�9�۹�?mwg��&j1f^�8���K/�����N2d?���
)�?���X�q
V-)TJ5�@	h��!T[�qèf��)��7��ӄ
�;y|'	�M�����f��6DF��.�j
NR�f�e\QHݵAc�)N�"�!�"N�ȸ��~�ձ�[G����y�X׈W��zT��v6Ġ��T������Y4�L �2\U��*��ĉ&�P;��:���Y������d��K��ۢ������f?�u=��\�dA��PP\����n6KN��
K�=Vx� KmU�/MUmT���m�M�PډBg7R+j�d���r�zr���@��(����{ F-r��8����u����8$tfI)�!0	�
]/������9�K�d]��r�/��/d�쎆��ق�3�#�A!�-_�+��Z�_{��"F�HUW�:���D2"U-iO�C��!#R���|�b�cD�����O��; (��"Q��� ����d���"�,Kџ
��m%U��s�x}&^��Ǥ��8�(�7���*��9M�Ð��Z�ҿ\t	�b���p���y=���M���w���N��"q�-�8��j����ނ���<��&�2�L��.T�W!�`�03m����}ʀa��b0��W��T����}�+Ps��+������EL���p��9����跴Z��p�]ƾ�+�z�ꠇ+����4�z"r�u�ܨ����EU����m�X�u�G	�i9F+W�N���FͧlrSK9w����b��lb �A*`��~����֨Ь���7+y�?#�Kؔ�l�]N�^���?��Mg���VX��A�Fg<�|��"�#��w$��I�g���jb&����{���n�
�4��a�Eb\��"��+�c�~L@�T��g�Ij�a��P�ST�ʮ)��#��"/����[AU%QR x������6�{;_lVf2������HmP�&힞|��ݛ�=?駳Ty~z����[&͛��gn���1Y9M��e��l�V�F�G��Ь���W�5��@�V�W ���/pz>�4;ނu�F_<L�Kz	.�8��3�ʶ�!�zhpȨ���+�m,B����[LZ�a�ؕ�x�=~��.��� f�j��o�y��uwJ����ӂ�����f�a�8�TZ�ؙ\�F�s뙼�aJ�0Q��	5T��
H�XO��ξ"s�n�^��8�;�ۍ�:�~�A��y�K.ҨTzP̺����Fu|Uݡs�a�������6ZÐ��%���[<�ƍ�3�ΖV.�P��>A0]H��[R��М89�Vk]�N?���d���f}����"����3W[ɪ~�q~����������0����}۽�|��ȕ�9�by'Os �V����m��1�-�g���x>��?R�J5s'���4��v���p�*Q&�IzťT6()�?���:se{Cc��(�( ߴz�{��s-�Ƚ�qӰ�.ۗn��G�0"[��]���j����ZA_QF��:(ݒ-��M�.ו�����[�,��[��,G������vBu�4�X�*�1�n)��-M�I�2K�ؙ��,_�m�5S����%�(�"��l�<ciM�g�~.�r'���7Ԙ����ch�	=����� �҆�ׯu�ߌ�4U(�Q��ʖ[ ���&���{�(���G?W?t��Ng�y�ɽ#_�_�!�=�s�n���J���?�>��E�W��+�4����N��g?�Х�T� �;���\b�N���Z��W�^@g�#D�
��!Tb,��"���n�䕰�@�����
�Y��,��E7=�}�8X[�*B���s���� c�f`i�j���e�wo�/�E�v������)��hf1����Eư�Tc�PY8If�e��T��/ݪ�_	Ұj���[����8i��M��~�8],a�t� ������p�Ŋ<3\����n��� Ԇߙ����:"9�RqY�������OT4ce
��mA�|�k)3  *�J���z�B�/��/R,�Q��C��~��`҂\�6C�R�r�>Xs
ۤlKȶP	RJ�ȶ4
ږ��i�_:���D��>so}6?�B
\@�xV��S�qp�rJ9�A{��ǲ�<�=^L����Ƀ2a��L��io���ٰ��0�d�(/P)�O(!!��ޙ<U��;�*X����×���9����!p���+��H� ��$�;�%Q�m��b�J�D�_ͽ����r�߳q%��]Ul�,B������H57<Rw�.Y������Nqjab�u����J<���$���4
覙׻!��/��e��yz�� ?���A���%Ǉ�m�뷀��D�QnS�ΆF��ʧ4<�)�S�� ��0�.��L;���q�8��G?x�h�{�������Dk���:U7>��8��ȴ߼�S�~�������.C�����+�:ZY�V�U����"�b�ΫV���5�������U�� s]u%C�,)�a�Vk� @:�ĺ*�<]%1�w�P[W4#X��[�^�ɏౖ��+����;����#�}���!��m;e�g�/t���ᴀ�Jk���|��t��X�H�C��Q����ݽn���8�Q����鞒E��i^�r��}�eۏ���jrr����Ffs�:��D�x���U�Yr���ݣ��4�bRW��ȑ$�P�TwٛS���������f,F3/���,C���>���D��
.%��L�_��l�����#W*�SS;��"ꄂk2QTo{1����3�P��A��9E\�&<|��J�K��8����O�nd��0�'�k�qYo��'� ��-1�L�G)�iƀd��(��߼�}�s���wȢ��9WD��5<���
�/��}���2?h��PT��jmMs��=�������?'�N��!�Z�1��
��Z�Ԙ�"DR�Ϳ�PF�lE4�����b��!I���	�4q.z��c���r@c�ň��4U^�|�jZ�h���)"d"GU���ն��9�z����X4�����=:n� �K�~�Z ��c�ֺI��!�+N�ӁY��{��Y!U}�ܤ�i�\��7��G�9�Q�|g��U�r�q��i��2L�:�    T�ӹ��j�H'�Bk�hm"�۽H�i[ξ�'��LoW��|���a���J���b����Ҁ�k�s&���̑�7c��}�b�N��<:�7�f�u���פ-0�Zj3ӯ���_�� S�HJ�5_�Q�P��ɫ� \����r�Hr<KE{�s�T9��:?�Y6LQ�fc�(�E����́*s�(ɼ��"L�ˉh!u0W�I�-��^�GĄ�I��t{����,��0��;�X�Ɉik *38R�y��3=����Z;�;L0���m�޷o�������x|P��3T��أ[�pr�@q��My��{�{���66�����țI�"'��	v�lԫ�j��S�;�L��u��(ҁQ���#~���c�R�vG�Ü�W�*+�R!��އ<��4�R�-"��S�P�e� �?Z��A���Dwƃ(b�(*�c�HM�h������(��vS���I�����>�m/�;+fa�.�s��: ��}�!u��ط��@�6�07x���(E��.�?48��I��TD��U��S��lC"��645.K�q������J��P�h��K���t�ix/��H�0Ά�N��Eou�薢"��Q#�����`2��/�t���f��qV�1.��;�)�كm���U%��i-�慶	��t�
��x���<�ƥ;'ϻ��$��2��2�q�eFa�M��T��ȯ��Y��A��ݹ��2���#�3��I��
���u��7�Ͻ��d:��-�#�N�
`�6^kI���{���?�/��MF\�+�dl׷<w�.����9�E�<w@��B���Gؓ�S7č ؎�d�w{�]��Ed�����q6}�7�hY0l"��w�������M�oVM�`\��{@'��N��F�mW6ҮD�le�-=$���t���-)R:ι���p뗫yˈ+�[�����m�E�'%�9�>��E�x�#���H�I������V�b�dT�Nb^�������""�a:|�]����'���RB�f�
h|�E�u�Z��v�]�����8��v�x��0!��Ԇ�\�a���k3��_�-��cE�H$���Д��Z'3���ш�&���f��g�u iO�����Z�<�KI2�= 8�������wVW;�`6�
дD��j�4X��۷<�ʠ��!�ٮ~&�a�� l��#)# �Y�}�z�.��z��;�����B��i2ޟ�f�E��%9�������Y�.���L�P�)�n�ջ3�qz�� WJN�$F[�dq?��JW���5�7.�_�*������!���j�n>i*����]�Z����S�>tr��B������h�Z�o��2cbs]aх��۩VE���U����
�DU7��ٿ$B*���nO�I� : ���LRl����q��I{`<��^�`��=��Io`L�H�T�
��ZHz`��H*��ҕZ�p��ӣ� s
����`�f6���>BK#���'�����S*�q�R�@r��aD]�yHl
��-�����b=w�lݞ��s�~)2\Rm1���^}�H���g��7`�
�\ ''�l�iQ��� YJ�C�����d� ����������m�`el�O�J~Q�ٙQ��m���������ۤ��r����_���c����U��d�O�/�-��Fj���ǧH���"O��^J�����4WL��*�;�-���i&�b�|���r)`������꜆$J.Na�N���.fk��t��=,O
��~v���8컥ɫ�;Z���3@�������gup�����ôzF|��x�]��DqUPL����
���'*m�8���C�����Ռs3Fk΂܆c�{������7����A��M���}�nmb�ȏ�N!��WM#����δ�D	�b�e]j�D:��x�B�BIG����n���nR?�M�˔�x'�1��)�	�+F8����Q��nt&	�B<}X����6D~��+�h�WJ�Ԅ����wL���TwM��#�"������8iG���M�n�ّ~�]�WJh'�Cq\ϳ�� ��y�l:���exìF_q,��fcI{�33J��IX���HaםB�׎�~��)�T��@�¤������/�IC9^Y�^�Щ�X#������Q�O�A�i����ʩB�|o���x�@�e����qX]�'�;���v���f��=_��*��6Ku.{�vPa{�iT(%�	M�wi�l�|���کz�1�Z�r"��MW�:y^5_���[�p�yHJ�7]���v�[�JQ�\����Ù�6�i֘����	�Q�����l�|Ku�}5��~������xc� �O�B��yƈ�(	��%��.���k�\��B�#r{}	��aьZ��O��_}�د�͈���	��o����L�����;z'�H�l�t�M��0J�$��bFc�����Tߗw`1ͬ��BϼP��L�om� �l�[SX�y1*�z��J=6�S��i�P3���ҏ(Ib�[3έ px�%�_���x&�CM�%��>i-����R�3�"Ss>錎^�Y���us�l�:��3�Q�'��YQPf�d��"�\)
'7z�De��I�� s��;wT���@OdU�ړV/x�����>tTK o\��r�2b�ZY��=�+�=U��#��JOq@��
Uy�x]�)"�<m�#RWx��x�Pu�g����Y�`�Q=���x'�u������������p@h&�|&{5�t�>U�R�L�~�r�C����v����8�:ک<*T����������'2�u��$�F+C�գ��6lL�B�
wۃ+Ӄ4޲�
2.cx��������g�Ҿ>�L�}&�Q���w��6�u;�1�^�V�F�Z�	gꐢ�����]r?J?���CòT��ɢ�Y�+��&|Z�LA��a:�"��Mu.�������Ү$��D���&Q���vd�l��BF<Xtl���U�հ�[^/	����=�Q\V!�,k��������n�d�v��l�)ä�^�d�AՄ
����$�wc,G{��C{�ε��˯cD���Qf��<R��rm�<r'Co[�),h����>�3.,j5����[��}�������GĔ�,#YAk���^P�	��	���tK>�6O�ü������ʆ�ɫ���c)��,AֻE����&m�T�b�Gq��E�K���Үf�;7��1LE����㞅"Jiv��Q
`�Ѵ;9�w�KQ���"w�8Y��ǅR����V���������iUF"�Lw��A��I:f�ϹX�Kq�X�3��-��������ڞٛ���`P�j�a��U�:_Q
g��@P�jW_��8Qю+~�]gw�x�,nƏv���h��Nq�������p7v�4ǉ&�\���a@��=ݭ�"5zu�&���VE0琛��!��`�!79��	ZE0琛�Ñ����� ��h�f���ӈ T7�15�V6r�Vٓ��U8���z/�� �<r�Ś�c�榻|�V��B�z��V���VQȾ�z�2�B��k4E��W�����y��9M���^���J�u��lh�����H`>:X�`ڀ0r�t2��C������9�KO_Q���`�"��_ʥ�hi�`��kF�`�s�p������%��O~JGj�j��H�7tV]T �*�<�.2+������-е��w{��Z�ooY.~���v�-�oV#Z�u%�`�[$n�(P���"���s!�pX	���S��tIO��kz�dP)=H������Y�&9������r�Q�7�����{x�rz=9p�B�@m���m�zn4����I��Ѥ���#��`
�X	����I\V�	,+�3�s��M�P����3����(��Ш��Z'�=n�[F��ǹ�L'"(��̡�R�',c�qM�x`R�ŀ��9��ë#@����P)�?^��A��>�)�|H��]p�!!�(ѧX�vrw�~ؔ6���!;�� ;�����-��-~�@�cH�2��9�s`    Q9A}�"˕����	�I[�˂)O�9�������v�tCN��'�z[f�<�2#�o�o�Ą�&F�Z�R�	�2<�n>3[Y��:�.Q�k�'�T���-x��)�`'ʤ{sJ4�᪉<AY0M�E@�ˉ3(�M񵻚��)B�'D�>���ܴZ	��-��2�n���z!�rW����=a��� ȠM|�*�|^QH�c1X
�u,x�Q� ���(|C�p�j���J�PZP��N��h{���'n�J�!� O\�58o����RW��R���˼b��+M%�1�ݣM�T4:G�}�r��O8qa)���	ᤱL@y���dQ�hp�'yru&C���<�/38�;M�._�I�MiUc|XW�gJ% �[��U	�������FԥҶ�GY��� �Z}�������%pDX��lң�8�M5�k�AoA����9O��=h��y
�ߑ����./�a��K����|AG��\jҜ��a�A�r�!SU�2���)H�����|-�VӲ���
�ߑÐ�BL�оܮ�d�I�	�i��q�D�rM.�p��&�Ȩ�e��R&��.�{;�Ԏ�{�cd%7v���;C]O�P{�qd�>BpJZ�N�:mVF�����w,�v���e�8��Ή�6��m"&������dBI��Ma6MU׈��+}Y&:D��5�Ń�O	���"�т;c��X��|�KI0�,s��T�.t�[�N9U~���0"�=V�:�$�p�M��7Oѥ]׸qT��,�?�n���p_�<I��%�3|7{��\����ꌠl(�(�1+�sQٌ��M꣺��[GќA�2J�����;���G�[`��h�ݸ�ѿ����
)�4����v;ؒ���iPH��
;�-� S�qL���u1��p�-g|��|��>T�4h��5M����5Z!&A�ʨf�*�ཌZ�*��$�׹bI���W,���wENe �C�-�7ۻ��^4-a�f2��H�I�ǝ<RkC>4���A`ci&vr
_�]ѷ�n޺4�>c4����#���a������n�sWr)̀���cޣ?�Z�{��@R�YOC�@��uh�Qpt��� �m��~ݙ��b��8����8��<��
Ć o_B?�Ee�!x������\�3�*�
H"m����ڼy���9p����������c��<Iu�y���N5��ҳ��t?UGB� ����"���,�SD��?M� C����1��e��.�v�ʳT��U��͢�-<��f*Y��@�"�V�b%�O,z*)�~5&�g[C4RUߛ_(x�
�a�)*OU1	�}����O��p�Ӱ�_��H%�?`�������N}�N���%׋ ��R�T�O�+k�x���� �Q:���$�"I�o�0�$�4"f�}Y#�g��wڷ\ jAt����ۗ���h�6z���fx¼�Yc(C�!�1�V�z������3Z�nLB�'����2�/�X��'"�n͌��iGUT��H���R�A,vtEe�
]|_]}eY�WM�AKʏĦ���D�`DG�F滹��M��:�;�1��=j
g��<'��Zyocٳ��H0d�y�3#��6b�0ԑ�N���m���V���"�8����3;(� �'g8?i1��b�]A�|5��,���A��H(�tn�V�PJmݯ�{�Yπ6��y��=�W���[T����*�|�&	���U�v����l3��J ���SP<�;AA`�_��}���+N�*�����3i�9#��aw�鄺�S��#�f���"W�J�܌D���,'��nv:ZmVc
�y��l9�E�8��A�P����=z�I�<E��-X3�3�Ap��Z@N��e��Y�$['�A�����}X�� 0ZzҎ6&'��q�E�$�T���^n`T��p���\ȏN.���wh�D��͒Du|���QJ�vZ�@���O���7"�A`��Q7�Y��Y��,Nb�YO�A�y��sW��"F`�f����J�y^�X�5��]lH|��Z��ه��󓟆�����@��mhC�WK[�nQg]�)7���V-�5p16���/G�,#[��W��K�9%��|K1�L����/��j��Mn����������˛qH=vB��٠}׺k�Ath�����le�h]?���>A���0�y���k��h�	�v������I�-�J���(t�Z���:��F�a�wA��nQ�gw�J���I���%�
F�xQ0Iij< P��D�l Qv�(�JK�©,=�
ʑe0b~�z��G>����q �}r�W~q旒
B\�!��VR�hʨB="��E�-�8�+�]z��Q�$�g�kwZ���Q���� CB�>��KrB����z:Ut��	z55�F�Ь�Q��	��=�Kpŋ�f���a��2�r� 9�1����cWJ��m��W�OQ�Az�})(�No{��� ��z[�{[��3��=��O�L;bO@�r҈U^I�,�J��^����*��ux�H�����y9;��wm�����1�pq��I<�c�R7�/�
/� ���t�}����6�z)2PWw[������64������iޝJ	��˷Ӏx��D=�S�G�f��;5R�$��2�1?Ԧ&���D�$~n�N�D�
��{?[�mW=���]
8�2�a�O���¹[CFq��+��֫�(��ΐ
�pυS��`�@�T ��v�iCm����ӍPE$���Y�B��G�@�Z��61q�h�4Z����Gv�2Wm�M����wG��@�A۬Ƴ�����@-f_�]�`S�ueH	��1������ؚ��Bũ=�N`Y��V�T�j_�̨x33�m��o����,3Qv�Q�Af��\�*�K�('<s�(%*I��p���J3�G�.3Qb&i\�񆟄�}���j�A4&���ڹ����c�r���i�L�3$�I:�����Ӊ�Jwf4�	՟�]�,��w*2 b�.X�ʼ�}m��FB��ស��6�+�]5x ���)zA��4=��I�}Y��K��ֱ���0�	�w����1�ŉ	�B��(Ks��.��T(���0#�T�������q۽*S��]��~/���9�P{���� ����2��R���op)���������$b�tE��|�8�p~s{}9�I�ݞ��DS5�=�,=/Q�[ bk���>��@l��g�/�5��ϖw�����Y�T$]9W�]�xn�G|����<Z8�q$�۵�iZ�ٮ�"Z,����n��hƤ"�D;����Σ��mG�G�y�k�ӓ5�,Q�4+�:�{ôt5Wחo>���J��]L�~��ͼw�ミ($��M�6�;��g��
��F-�w9Nv�X�ت� ���J+65�E���R"/=�F�`�;#�0a��h��9�"FB�ħ�}F7�6$nd,l����ay�B�MI˝�d&G�O�L�*���c�J��]g"ZC��)0+�`E�}O���s����kP)�����
I�$z�l�5��Ťz�m�}�<��$B!l_(<;�SStƨ9��~kr�o�땢���YěQ��x���12�*h���u�� S���gC>T|i�4�M���'���2�t�-��"U=�j�c�0ks�g�<Ӹa}G�vC}]����W��5�Y��r���I�ܤ�c�=���B���Dv&���2W��S�K
V{
A6�꡺��c���!�i$�R6\���uV�[� �5!$M�n�k�E}D|O���0^6�h��k2b@�YˡNb�mk6γ���(�����Q��l�=6��Y�!:W �ma�iߝ]ޞ�~��(��h���o�h�_Y�8����Ad�f_�O+����D�
���!�n��|q'��J�Q���}��P��&�S�[@n�M}���ܹ�<N4�{�W�D���lĿ�n� Ǐ��Fhd����zt�������E)��t}�����] ,�;	��sBR�n5�҂j�T��R�I�Lm�����Cm�`�7{������-�5�#�ἡ忏 G  �ER���E�D�eV�N�G$�#j����C�o�=�v��Ot�9eUɱ�~�ۄ��߾���|h���i��.f+��k�U���D�4ڔ�d�v��>�j}��s,x���M�C�I��8����sa�{&h�f7��Pz	5��Y>�;�~�VB�lH�9���]v�p���Ǳ/�*p�����Q�s(-�\S�("g�%%�!2U����1'�_ӵ%O����jt/���� �|B�ހ�έ�He�jh�����(PS�b�������͂�����Ã��$���u���ܠ�&��s��\�"R:�̛Kw��2R<|d�&g4E���bjo��j?��qL��z�I�'������Jno�\x��\���@�K��n[hFUf!��#\��u������/9�Yz����6�M���c(�[�" �z��/�� <�c�F�z���Q@i�:�`z��8�'��y�֫�$�v+o�~Ĕ���h>HhW50͎ ������>��<q��=|+e �V�a�yP��&W��R�ͱd�N�X���R7�k<�
T����ο��whCg��x�|S�@����dq��/W���(Ī��g���L^�4�#�;@Y��)���]4a �9F)�d�N�O�B�J/�V
<<mX��#�7b��#eҷxd)d ��o�1r~儮UNy{5��J�u4��D�:��B��T,:�Ă�r?��sɄ��,a����W�}�X�*���Ćv�;5%*�����x�S�?xЁEe6*�Rqf+�b+?��~��ŸX�.�Ob������`� [He�3����	�^G*�%)�N7�;|^��* p{��a��w5��W�aXX55mӹÊ��Jl����G�U���ո6�U�����+烄p�EE��|,��V1�����Ě{���9 �V'r��	AHjC�O�D���1!iuC���Z��2�#̭!��J��D��O&T%e3ܤS�UNk����i��G��K�=mP	�a�N�k@(.Z�f!���l��%��}\���y����ư��/��h� "=Q0HJ3����-7��;L�e��V�Y��x�u��w_������B��0N�e�(���D�Ԇ�Q\���g��Lu�^�m�[��J�!��_|�̂y�!�<B$B!6�/T��Ss	DoJ�h2��*q�?��"όȝ���|iK5��4r��	��'���5��헰\�,ݕ{r/�=�I�X���2�ٖ����n�pGÔ�5���; ����~y��?Y�Ƃ�� �Ăa�UDނ�-t��Y���Y�T���D���a��EJ���y�	)f�����?@�G����������L��W�`�X���	�i�\�ǳ�qD�Ը�tx7�`�����6m�p���Õ�R�5
)��S�c�;�A�%NpDړ�{RT�����T�Є.=�E�:d�}@z����Q^ס˩W��S�5�� B% y���7�ITd����B�aQ�N+�^�b=3{Ӣ�b�[���Gw8:l*��-z�&eA)���0�v�uE��������L���̤<�5S�)�[R��|o�)U&�/�=0m����'(��Y�k���'�@ȝ9+K����td���8����h�k�#`�R�=��p%Yh6���;��
���
����Q�|��ɟ����B���V!�b���JC�v�F�n�П�ĩ0� �f���ï�IpO$�2�tYOJ��X�֢��1$t	���H��hR�.=���U7:Uo�0�z�|!7�?���)�l]����
M�(�'8��E	�j�0�B����}!z�M�x� ��%��1m��W����A]���6�WCF��j2�;�ǡ��\q&��v�mf@Q� ��ȒZ�א�&�Q5fq�b����䘤��Q��I�E�Z����c� �!��^ڤ+0�d���:
f��D��YBqQ��O�%.�BR�W���l�	��]��Vߦ�<F��w������fE��|���u�~�'�i���Oi����Q��^�@|�V��:bauGۤ������ݿ�ۿ��	o��      �   X  x���1j�0@g��@��,َ�6��!Ph�.���d���d̐)G�������#0�Iz_2�dmwh�pj2�����n�F7����3(����dB�T�ʫ�/X�������pHq�.�pλ9pM���ݎ�w�i��K�eoP����10��~A����b�s�]8�ۜ/�ͺp��"�BN��j�]3d��Lǭ����S{(�
݇A�g䧿�d1���aO���s������-fc��ԓ�0����Ayʌ��u.Xy�P��<Om8jzC��D}3�?&I&��J\LT�4�����+����� ����	�%�2_���
%��2��y��?.J      �   `   x�M�I
�0 ��+���+޼�m�@m���U*�qf`F W�)��R5q�)��9$�8�:οͫ�� 'q��I <睬)�e�3=,%      �   �  x��TKn�0\S��2EU!�/ɒ�؄ E*�d @7�c��Ȑ�t�EV9Aϐ#�bJQl�^^�����>9&�$&��'"���UE7�c�V����mZ�[o��zj��@�"����g��)���۶����nwʷ r�9�;]���������ݯ����k�d{Z>7�_�b��}��O�ė(_�/cy�n�jUwoϴy����� �I��H�,����Y�eN�jV�x�
�[� xa}@�Q���K�	G��/���A{b��L�Lh��7����w*}+��ӞQ��L�qQO``B&q�D���|P��GL�?�;v�B���(����r��E:.s%5����S2=��d`F�ɩr�����e��ܜ�A6�`�^q��E10Uf��^x���݋��.�g`g�4we�t��
ə��>ũ�1.�2�H:��s��dBo7�9��"�E���3��{b%/�!�H��!�J����ӣ3A
���#�v����ܰaH���~1e�K��_�R��d�v2�Y�w�I�Խ]NdH�b��7���%�CNܖ:=��1���1�qLs2�z�A\]�������L����t�o8fvg|9����o�A~K����� �o��Hᅅ�IM�La1��qbQ�-
��/ b
      �   �   x�5ѻu`!Q�
f�c �Ǌ�ȻV�6��:y0�Tsɰ�K)��[#�
kia[j�H����Ӛ�K���+�S
��ėTxK�R�G��uu�ԓpɈ��H)���XR--b�u�đ69�Cڧ=I��L)�}�䒊li�[j�H��ҡ���-���?�6�]���u���A�c��Xt<.:�����?�?�S�      �   �   x��=N1�k�9 B�ѡՊ�����$��RƉg%���8�\�T�>????� 8fiZ{<�	�f�'�����+6)��P��=rnw>�T��.��ap���i5\����^(+a4�3��3�:���aa{c�ȕ��ο�GV�E�ퟧ/&QL�<��FnJZ�wG��7�GEi%W%�˥ފ��m}��(��c����ҹOv,b�%��s��N[l      �   D   x�3�4B�����ĒҢ�b���Ē̲�bNN-�����⒢T�bM������Լ�Ĕ| �+F��� {��      �   1   x�-ɹ  �x]��O3�_���4A�����P�д0���y��=��      �   �   x�e�Mj�@���)t���t�1�3��G�h�E��#�b�quB��{��Y�Rl��wGY�0�\4qR��]�Gg�]a�_��c���+4�>T-�}E���'�pZ�zo�m;jN�/�4���ϵ�;�5�r���O�Fu���:��X�/���8ˤ��tw�|Y�ڹ��?`���_�JnňS�Q����.m]���W{4      �   �   x�M�A��0��c�bK��#����߁f��p�@�u�楖����~<_G�Y�	�\`$�ǵ���"Hnױ��"S�&�Hm:n�(��BF��̉�D��������U�h;�\L��&Q.��BQ.���$�?�N{t�$�	����h7�5N{��ޢ=J]^N{�ވ�h�=?�\�N{O�8��.��0d�G�����zA{4�������h���=T枧=TnU���z���w���w      