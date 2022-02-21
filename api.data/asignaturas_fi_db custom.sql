PGDMP         
                 z            ASIGNATURAS_FI_DB    12.1    12.1 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    color character varying(25)
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
    public          postgres    false    211   ��       �          0    24843    acceso_token 
   TABLE DATA           M   COPY public.acceso_token (id, usuario, token, created, lifespan) FROM stdin;
    public          postgres    false    217   �       �          0    16404 
   agrupacion 
   TABLE DATA           <   COPY public.agrupacion (id, agrupacion, nombre) FROM stdin;
    public          postgres    false    205   �       �          0    16412 
   asignatura 
   TABLE DATA           �   COPY public.asignatura (id, clave, carrera, nombre, horas_practicas, horas_teoricas, semestre, orden, nota, optativa, agrupacion, tamano, enlace_pdf, color) FROM stdin;
    public          postgres    false    207   L�       �          0    16396    carrera 
   TABLE DATA           N   COPY public.carrera (id, clave, nombre, year, date_actualizacion) FROM stdin;
    public          postgres    false    203   U�       �          0    24818    estado 
   TABLE DATA           9   COPY public.estado (id, estado, descripcion) FROM stdin;
    public          postgres    false    215   ��       �          0    49572 	   nota_mapa 
   TABLE DATA           I   COPY public.nota_mapa (id, carrera, orden, simbolo, leyenda) FROM stdin;
    public          postgres    false    226   -�       �          0    41321    optativa_asignatura 
   TABLE DATA           D   COPY public.optativa_asignatura (id, tabla, asignatura) FROM stdin;
    public          postgres    false    225   ��       �          0    41287    optativa_categoria 
   TABLE DATA           `   COPY public.optativa_categoria (id, container, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    221   ��       �          0    41265    optativa_container 
   TABLE DATA           ^   COPY public.optativa_container (id, carrera, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    219   ��       �          0    41304    optativa_tabla 
   TABLE DATA           \   COPY public.optativa_tabla (id, categoria, orden, titulo, nota_head, nota_foot) FROM stdin;
    public          postgres    false    223   ��       �          0    24807 
   rol_acceso 
   TABLE DATA           :   COPY public.rol_acceso (id, rol, descripcion) FROM stdin;
    public          postgres    false    213   �       �          0    16420 	   seriacion 
   TABLE DATA           W   COPY public.seriacion (id, carrera, asignatura, asignatura_seriada, color) FROM stdin;
    public          postgres    false    209   ��       �           0    0    Acceso_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Acceso_id_seq"', 12, true);
          public          postgres    false    210            �           0    0    Access_token_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Access_token_id_seq"', 18, true);
          public          postgres    false    216            �           0    0    Agrupacion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Agrupacion_id_seq"', 78, true);
          public          postgres    false    204            �           0    0    Asignatura_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Asignatura_id_seq"', 7499, true);
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
�YUu-m^3�y,�mDS���ӗ$I�O)J[      �      x���Ks9�&���a֛��Y9�w��wL���5QT���Vۘ��+҂�x�����^�jv�Ӳ�h�]m����8<dV�CRp<��;ߑB5�</��=���~z�����Q�����G������w�.���E�/��$ES��2/u����v�����&w����~1����Qa�#1z�o	IU�c bT��������I۰UݰJ7�8]=,�f��oA��~��L�M�o>�P��"�u÷��\�v�_����t���=!��]J�]O_����ѨF�3��d�w�����tq;�����d�q6]���@Qg��=}�6��Ηz`?N���������b2��3��"I`��*u9ʋ`����S=UY���VWh�|��ޯ�����L�r!2�����n�UZҴ��F�Y��C�bh�
��s�Y_c�
�řw�|��<2Cg���NoP�;>y���M�={�Ӆ�����̈��j���_Oޓ�,�PH�%��Z��ԒK��|�?�v�����Sѧ0}*�Y�>/������z5R��d��n�a������8X�0Ez�8�"���zC,W3�;���5TZ���V�r1]��̾LWt�ӵ'f�� ˢħO6Ӈ�oX�����d�^�5�JABʴ�� ������l=~�}x���j��0��0T^k	��=�],���ޮ�>��*2�U�I��d�C��v.+����jy���=������|7��i�/��Ͽ�U��29O���+���Þ��=���w�xj�u�Z�����s�E%�Á��2�{�G}]�z<����&V�>�j��(�!J��*�$�����
.^�
V��ϳ�˖E�vYDzYʡ/��5(�xtke���׳j������jh{fYn.�b��1yI�.�vI��ZS��s�f�~\�g��W���&����a���m����	���m���>�F�>�.�OG�h�%WzTM�ռ����m���%��:0�E�Z�T-���=�Z��<�r5����x�D�k�h*��~���:_|Y���>!�$���P>|<�x�����x�U����}�����m�y*�~��֏~��R��&��ַn�����i|���M�ӌ�����^��'�E��4������7�����w}��㳇��t=i7��[�r����o���&���Oz?LK�!�m>YLh���ԖVc���}y�����_1��v�.�s=�����1���2
Z=��G,i���>L�����A�f�3����������{�u�QWU�U��Ď�|EQ����z���_7P'�^'2�D���N������өm�|�W��5�8�ϧ�H�_Ƨ��DOOOT��!J�z7������'��Uzy��@/έމ�.y3��i� �t=}���mgN�ݣ�}���P�mr�p3�ъM�.�wBI�R�������`<�,�_;A%�<�]��o&������	��$0����q��O��Ӱ�跒h�	}?�Ǣ����?A��Z�78����/��=���+��j��!��:I�bၜ����L�����N��ڻ7��	����2��5�J�x%l����e�Q�j~�=̲�Zch���i}&�d���34�.���ƪD�1�*�e������=�n�.�;��~�#(��QV�A�L
�r�W��3���'��d�6z�8N�ˤ��0s��[�{�:��Ҩ��E6s������GZ�Z�B	���q�
�-g���=�/�I�������|�\��G�#�<�ES`K��]�L}��y�e+q��詃�^�4f2ԫLF5�Fq�ѫ��=u���U��Î^��'G�Ƞ�p��p���
f2��:��U�޼�A�_){��Y~eo����W�歏\~E7/���0��k�^�Z��_��ui��>v����EP��"���l���M����>V�x����W�O���)�����`�O�YAa������1nv�K��!��$��͋� Y�7��c+�Tj�k#'��{�
��~�Ƈ�ݜ�Z����g�'��OO~���[:r����]��J��1?L+mj���c�����}��Æ&�ȗ����)z9hS��4��7�"�%��|���^K�%�E2(:o���ή�a���^`���"Z��D�#���D�Y#*����A��nh��|/s"���h��v�� ��/�}�>n�.�$�-P�Ƚ�����������~қҴ�uT��ͯN�[�(�����݅�����<w�Kvp�����k^����j���%:�2)9���PM//
{��Y�Lp��O����D��
ā�ͻRB�h�3(o�[rĞ����>+F��B��Xc��x����^@B�����*�¹'"5��u����o�5?	U^F��ڏ��b�v$�&���Q�"� �1�&kϋLM%͢H5�q�PZ�ngr[����&���r�	�|\w3{�N�E�0��*]!�{��q3q��������ӿlw��<�����g�s���wvX6$�d=�_Pj=v������Y��W��
_UAI�� }�ޯ��}�f�;X�����[��f5��!���sԵ�{���1b�
��]��t���/QA^�>�xe}Y��|�+��|��DN�������f>����Dܺ9d朂-���,�*�'5Z�Ply�ء�VVl����)d�#e&��2���U�����s2����|ky�rL4��ˏ^t�6Ow,L�i�jsJCO�w?��"�!�={����Q�黝�n�++�p3��蛿�!]<�+߻<��/玽�
}����E����~1�˛U{��&�+�[/B��4�~��r������-�_�L��g�>Η�.�yA��T+B'7z�7KoE�G�+QkH5��nD
g+術�vu?����="|��yF��d�9��Z�𯺱�x�R��CX 8�e�{�n���"��Q����x6d�B��L��rc�-�Iq�],�	�l7Z�ܴ�7؍\���F`#\�nW�G�5_�4�?�5��vÈ�U�p:��\������>��:�b (�9V̂4�V��F��Q����ȷ~ߤ>��Zk+]�]o�/9.NP�*E(�F�o����j=YC�0]hiy=�]i����z5��]X`�z��je���j�/����  ����ăU�v�x;t�*�*�D���E���Y���2�#e&_[-S)3=c���cdiZh~�Ё�׏ǑB���e] �h�W����4��a��U���NA�$�0��
N��w������59����yɉ�l���]q�����݀=�û��ޝ�r�k+߷F�k���������0��}\!*��y���@wz�����?��g0_�h���'Bj�MH҇�M��������(��W݊����{*-�V	d�T��|�1O�Ib1M���..m}��kwu��ZA3w�X����~��-�pl���nqm5*X�a������Z����~�p<����:mQ��=B>F� ��E�=�z�/�F�:hLvQ�'VdH��H¯q��f�f��]9!��|q��Z�S=ɔ�n�8��������wg׮��H������a_��<�2UB& �"�����n��AO�$�c�����������'�����{'.�M&�b��
���}X�z�苡^��PC�C/�t���)^�WiM�hN��)÷c�ӡN�G��E�cD=�8j��JVI.�cd�U0���V8e!���5��Ǎg��W�� P�>P�����H��Si��Ę���`Cw�y�����T��>�x�K�Йl6��At���������^+����L�U��������~b=��-��V��.7��}?�����5��޽_ʽ�9'Yy.IG�'�����L�[Yi����|_�ˣ� s�4n׭"v�e�8��]M�f�����CB�BJ����5[�5v�o7�AȬ�e��u��u�������{�F�����zPp1�t�N�x��~w��E����M�d)�1~OX<r�y���)��+�mMh����^kpy�V����l/���囪W���ɽs�*����
U($DԔ��    rNg�sZ��H�jM�?;ޝ�?��gI��Roo��z �/6����(��ۯ<����ǫ�wgW'V�Q�F���!��g�_	\�$�����М�20zZ�M_mM�!�2��Oeuߵ��j�uf���6?�9�'�w����9[e_p�,�	� g^a����{�����w���7ϒhѦ	��z^\�?�&9F8,�Q^�	��kW6�=�Z�em���~u0�}����sY��c�0��AЃ�Sp��{�}\>����T��0-�L�6��r���9)d���/��`�Y�1a�S�����?eN����b���p����e�#'��fa,���8p�_0{�6sgJ�ai�|����ZZý�~i˿�NV���Bx3�+!�
��}�4ڥ�n�A)D��m�"q�'T|��kd��9�.�� �;�2�8���.���B	�ຨJ��`{[� K�r_�9a�r }�CQ1�BO )of7�_��v���T����5��}�zA�|�J ���� pt�p33�f_˟��\]�xv������dҽ
w��l���؟����b (����������rӝ��@1(��.�N9���� 9!J�,�� 
$%\B�*<9J(��ky��J(����?�J8�z~S���Gգ���k�>�aH \}��1���"@P���7ێ�:ܮ�88�|	�]�,!2�|)��X
��Dr�Bb�k�2���<��f��O�7]?Nn�4�"uA7����R�TK�M�ӷc�D���5 �dZA��%z��7ٻ�9G����r�\�F�\m<��/Ƞ�8A� ��Ɔ*�z`���?e�P9YQ?ª��S����m��r�iu3Y,;+O��mt��K��+���<#9/��RHdA��b��p�;^T0��m
�
��ɭ���~�/���>v��8o8��3
��6!Ix?��[��F�SO�>�y��{�y��B-�eiu�P��J��������:_�H ������3SDZ�p^�jo/@�^��!O��ґg`�R��n�ʒ��j�$��lb��)���n\��̑	x1�������@���&v޻L�_��� A˯-n��v��x�K�N]�__5�jR�A��~�S�'Z�D7��o�d7�~K�3���3H�\u<�Z�p} �'��lGF�Fo��^�k+X�@{m���Z��|�j��wP�w##�`�(��>k��k���:U�p X&}�m��*y�����+-���)!G���g��d���%'�[���f�ݵ�z��Մ��Jo�|1�js۰�%�WA{z���U��B{��~��m[�jHa�rJ)0&>���1�Е���9�>{i�۫*A��"� ӯ�|�S�>ب_�}<���|������k'Q%����f��e6��Yqc%k���^۸4�]�
i]�1@B5��LSj)����H�!�Z�T�{"��b�ݼ�q�X�z��0xe�"Z:�å�q^:�Z5ƨYZ�?7�3o���Ii(�'��R}���I���V*3za�(�:�f�\W�l���%ml=Cf�tq*`��˴bTԆ���`�S�N`���~VdB��
��ߴ�7�����lO����)�
g
a��BX�
�"����>�"��)��O/7GPĕ1E\C�	�G:eU����l|zca3��.C4�Spd88�L��	��}p�.�����.�� ���c �m�,Y�[���5�����Z'L�Ҵs�Ydл��kڔZ �/I�����ʞ��e����Ћ��hs�j�.p�tFrt����S99=>�nV�*�Wȋ /v�n��ؒ�pKZ�\���p�'7J�A���o��z�#e���)����q����� z����h�D5k�ٷޚ��o����-9�ך���*|�|��'�� ���og���.���2��PG���,�`��U�[R_AҰJ6{�J�1��ʰJ6��*YƬ�JԆUr��X%�3t�V�C:I�J�1��"����A��e�*�y��J�1��*)�	kx��jEl�#�֏���$%�y�+Ǥ#s�J�e��`��wc�r��V&?Z�G��y�D�Q�6�5� �"N�5ĽX�Q�~ Ქ�q���g_؃�J+!�[����.����I.��;0�D��b�r(6o$Ȅ�ڤ����J�M��
�QQ�"LSK���0ք�L�F�E���M���2zYߢ��%8�:��༃�y�)���z���q�/����I$��<�M���>�)�J�����@�a��4 M�kxݬ-��Z"y�h�!��̃�,I��+t�v�
r�KA����Ze��U"�_�Ie�`���H@	�����'�R�)�o����������kX�K�c���FT�9{��j/�Q0"@���Ɛkq����wӻ����'�z����о��i%�5D�d�yq�������*����{L�i9� ~�d>(�����E9�.�s8g�H�r7M,���ł�%��Q>3#R�"��Y���&?�0����h��M��ڶ���i4Cm��Z[�a�����6G�2h�o*�U�Ȫ�iȂ_8@�b_���w��N�n\���7�Z��N���l�G�-8��I�m����*��t*�m�o,�;���B���QM���P�8�z���z���o@-�ȉ�:�9�e�r)JYJq~�WF R�숓���۲��%���˃$G���Q���}Dwh$��=��ly��H8��j
�����feR)��	�zӏ��-L�/~�G`%�)p=���޺�﶐���"k�L����f���8E���/���t���k=��u{dCnJ~��z�V[�\m�wZ�W�/cDFk��5��˺��b�eL ���I�b'u]�:&�4s��ZE^j���(��}T�@j�:��N��D"L.���Y����d��μ[R
�IE����2��\v����V���{5!y���[#{��$? X,�fc���\M���M$��#�3O2�o�U
�e������y�- *�{1�m��������2�iw��w�dU��{>��-`�%~���AAL��{Uz>ʷ	�Oc�7�O:2H�����3�U*��Ws3yx�}���
U��8�y�����IZC�q%"Wd�y��"���7�	E���:7^��@�p���7�k}[P��U�sr̂j�R�ziebP$���&�䥤�%K����x����!���)�Z_��t�UsR{���^��ܱ�eb�k��gM[N��Mx�y�׍��5S�OxY7�J̨�aDo_pOJ��C<U���^���/*���(Y=���z�@�NS�i$9���F؉]�J&���t'%��ˎRD�e	�⌸�vq+���a:�,QH�`vO��ӏ����8Dkӆ-N>}��к��r?UN�z�0�]����UpBJռЫX8��|��&�N�����(��^-��
�Ѥ�00k	[��+�t�ƍ�vIo�#tm����JA$�"gf�: 8��eܻ��y�!�d��*V���s��ܭV�+��ʩX�
���N�h�R�S.Nm&.N�:�?n �0UY�L��He�B�Z�+�Hۙ|�P� S�Dh�<Ӡa��r3��]~��?��w���4Te��!3��>^iM�H�5U�y(�O�����}RS'���ޏdnc`�|�h�ղ���J���������܉�n��I�&7���:����lch��M�O��p������T(�B���B�]�ׯ8&�q��$�-�=���k�&%o�Z|sǐs��
�����2�><�����aXt7�3�vUa�pX��W�h����e��u�R��^(_}��!�,���}���쑠?\NW��)�s��$2������o���]����E*F5֕0�"-�U�E*�2�Ui�E;�: `�bS]U`tP/)��#[
:�a�;8b�b�R])1�c�TV��z�T$�d���^��~�~�ؒ�7��SX��jF��ͧ�4}qk}���mR����ˁ�{�vL�oW�����n |��ȉ��AuMi��Hn���!��	���joY(�t��W�6�    &�J^x��Zٛ��#��`��]2dւ�B
(�8�Ϲ)�8y������O�0'�rY��T�#ES�|�R�d�z޸��2]Rv�8}a/��Ʃ��BhD$��u�.���9�D���q{�'Ť�����R@:��AL���~�Ӻ5�s�A��8p�J[��=�f~�%<yy!C�y��u��},DPQl�mMl�А�ش���I"AL�P)FT��Do��ɭ�N��nI��/��}Q��<�Q�T ����gQ����v���KW��~m_p�M�x=\P��Y����Γ@/�.��  �mS�¯����^n��Ȋ�����SFJ�"4q{�B��g��ѪH%�'F�����1�T��e�_�ƨ�{'�T����?{=�FL�#v>�)�^����8R��L���(��Z�<���σ���k��d�ǟxs�v>�u��oY�MB�A7��0x�7�xR�e�������޶Ֆ.�'����f,ޤ�fs�̱l�4;�f���m;�3>:a,���T��_s�O�F�ߞ�%��j��ߜ�"־����Z�섓��	$��(�<��,��l��� ,��"�jl_��M���vn�rMW�movN�Օ��;~��S�(��P�"JG<��=D֠��;H�:��Z�K;H��(�6�H����
�V�����0�����U&�Ƥ��bD䎀o1r.~Æ���E��_�$��O8KY'9r���S��]߮E(���߮�7`����"ʕ�&��7�9%�Y_�ֿ��:�cgUV� �[�¸��{Q�k�kZ%x�l����� %���ͷG�v�X����UΏ����e���^��Ze�"�v�P����6��pqb�׈�+�����'G�.����u�t�|Q�bf�%Wa"� �k�A�l� ���ȣ� �tc����IOB'$q�L�
|M0wm�˵�.1�r��&fP��
�FT^�u��I���o��t��`�U��L�t>���Ho��|!LC�kҔ��8立��r��~q�&��JUZR<��+���Z�ob��ұ�f�I�=<�����MD ��	��
�ߌ�@�7�2����=�����u���u������}����A�҂�R� ��\W��zSw|����|>j��
�v���
e�CEt���0-��h�+��D�F�~�7���=u�S;���������n��H0R����r��ӖP��m{�w�r�Y�����gI�u7]�����?���;ÄO���V�I���R����_`���Qh]�X��h�6�����6��НE7D� p2J�[��]ε�ǯ!ϹAȵ��u�e��<h�7GIf�|gMf��5䒉��O�v�5V��%����$j���N��:dN�,5�؜�^��!�YC��RI/o�'����2W�W�e����@l��|k�y�h�c^��/r����ʦ,���vǠ��v���U���;��?�l��쨿�F�յ�mU5��S��t_7r��Z"�P��^�]������K=E�e����k���0h�d������g;�o)9��yF�ϣw�
�c}o�s~�B*j�bfRx��;>��nɻd��z�O�� ��+��%��{���5IB)9���eD�9����N=�M�zrGʐK���KH�7X?]h_E���l_�m@L����NM4ߍ=}�/�wz��Ә�`�0�3�{��2���9��k�O�Av�n��";��N'��q�&��7��@��&�8����&m8���O�&S8���X*�����ޟ��d����R���a B(��e}E���������1�g�D"h�}F��@C\�*1��s����K���_���K<�*�"��!�Ql����y�3���tyy(F��@�LbDee��z-U���h?\]��tځ}$(S�R�Z	y�B`��:	�*���I��QԪ� �G��C����끲a����Z�4��.
̺����D�L4�W���Ⱥ�����"$q�<�����V}��d�O��TH���sE)_�,���T���z�얉>HlW�RF��w��j~���O�Z�[�$�F�jwXjߔ)I��A�*h'�J���P��%�I�)����˶@ב�q.��#X��C=^\~>w���m��&$xM��+F-��n)-�#x-���G-�B#X���S��n#xݦ��G-��#jN4���GR��.D�u�����.����I�2h�g���!?	[v�gޑ:��%6�ɘq���&���m��j����N[��T	yx�ܲ�&�����?�q9VEjT��Ψ:�����}�Pd)�eȩ�*�j|g@9�v;=�W��JXT�$]
�;߭�?�tr��g6�d7E_�wA����7�R:VYm���e�GI5tT�1�<����az�U��P6ք7Q�֥��в�rB���-��No�0]m����p���̀���BV!{��؃�m�Z\[ԹGI�I��@JK��998���������C�����l30��6���3 _hLa'�}x4�%�,��٭q�N�j��;>6��eM���P��zN��1�_�?�f����.�UAM��|�&(�
K6�-f<r�O���\)zfw��:�H��rcp����2�tc��vF�RXr��^��� �����ǋ����zj��S��C+�g��ѯ�(��e3X֠J�5�Lq��VV�-31�bt=�#���k1F�z��[��Q�bQ�oW�aJ���\����қ� o24�};�����=Ї��ĳI[]�(�4���Uz�0*�)�_���g/gע"X�E[L��!p�/�h��������,	)H����[����rʠ�1��\�%=���Ϫb�("G��|�}UH�6A9�EU;���.Rg�*�x�����t�a ��H�x�t��`��|����HS��s)u8	�m�`)��G�}y�����(3�I����n8��L�ѻRN�-����b㜽t����/=�����Q݆�/�e�*~p��"!.m��2�����Wy��R8e�FC����,�ݥ��ͯ*<���'������㈨�S>���[+�>>��\Y5'	gEU�cz2�W�tщ}��f�y|�uN0���KiP���*�����'G�TX	=(m��2�^-N*���[���F��pv�����\'n�����L������o��`T��v1aWìv���r�4�mO�t�А<޲�|��X[{�?�@BYi\���7t�H3�_w����g��Q�� �B�K-�����SAV+h�γ���Ӱ��=\�¡�]y�n8�qWM��<.�!U�PR���;����,��[�#'KTEHC�j��w���$ǰn}����ԁ����N��}����яg��|z���AD;�d~;!R�9���K�,�|�կ��n	F @'"��d>-���{��﬙�����i���B=px�Mm�n��Y�y���ʱ%E�{;�A�	:���<� <�)rɖ�Ze��E$SY�h�'x���9��ڂH���
Ss#ꮱ`��� �RG}���U���$�ώ���M-R*cokCE�1t�x�5E��tʢ6�g�g�I�����U�dE[>2��ef��a6�K�W�����S͑�|	�� r���.�2��py޴��3��O7D��g[��>W.O&�SFr�.�0����r{��;�=M&t��aKX������z��J�[-�&�З�� A�����[}9�}~:7��I���LL�/��%�&ks(�E�T��]X������\ �\�Zwyp�CH
�{�X�	��RaMN�{�-�Ͽ�q7A�%����a�n��-_Y*��碩2S��S;� �n����/� i��E��K��e$�Sb�&����-�@�k��C�>/��k}A���~�b\L�x�����%�E�l��ԗ@6k�D�^S���Ak=���i�v6߬\yC��#M�.H8w(;����.� RSEi�?�Cԯ��A������ �т�'vʃ	Ә���0d���s�~t�SeHRL5����l6Q���]�]U;��e���|��8�    kd+T^P�Mg�ަP���"̳a��ziv�R،1��P������]��ߙ�3/��6/�Ň�l;q�����$L"���ۉY/��m/����c0���JsЉ�>����NP�󴈁�j�]��T+�û����2�^/�q�>SՂ�"~T�x��"ύQ�Z~���W����:�?�le/	W+��!�S[׾����4p^�K�hC�%
l:����j�uz�7/�;�/Fk$��3��D8�a
A ���t}�R���fm��aO <(p|��vt�1f�ur܅��c��3u��!���f�@���s�09�l3����������3���2�h		9�[����9�����N�*^k�'[�!W�����߯���S%s��A��b:TLx8�.�9��rEz���3�����������.[1�	@q����0����n�L�NZ|�6�����c!~=�ё50׭=�+)M�L�d7�D��)�e�0e�����8OG�sC�G�,�5;}h��ybs���n��~·7���ks���{�4T�������dj>���]�>�`G�Z[�GY��{2��j��J	$���#"|sA<�@}�Q�wrNt����E\���"|�6|[9�z����Gp��H�(�1�nDw���7^�w7�O֔�
��Q��`��rhC~coՅ���A�#�(� ����L��&�oQ`������Z�'�N�ji\r�Qe+� _��Lu���ao+�Q�?,W_|j��#H���e�z�+p[�s^,��I�L�1��H?���}��a��k�{��� ��m��2�~���.c�������C�'uy��ѓɗ��'�����g:����i�n�F]���:���%�� ~��E��k���8��Q��j�&lH�ۆ=�`�մ�e��1"e��P��Gct8
w���'��
c�o��ǂm_�*[D�CLb��[�5��U��PK+�]���yB�� ��2`zޏ����PM�d���{�.�zFc��Vz,3�0l*d�E$h���%]�_��}�]\^��1'��7S����5*�52jw��=Lr��6f��g�A�U�h�����6������QAg6����t�V60Vr�KD����Y�||�9:HM.��.�N�M�z
���2���c#H�ANr�;9���IlqE�$z��9�#�uAbU y��Q���c0y��#��Q9��������Z�Cu���,ܡ��Ђ�|�P�.ҡ�`%�	�0��(�&�8Hh�]�$E��ĵ%Di!�a�&..!����!Q1�E���HZe��\A�Δ��_��]�Ƈ>7Ӎ�@��ǁ���r�� �IdY\#���N}�� *k�-Z��������wg�n�J�S�U|wO�"�U����WA�A�C��A��3��n�ya�ߠ;��N�;1|����ke���X��/(�|�V�zS�h�x�{�B���*�CE�G�%���c):������˾k��'^+:痧����\Ԣ��lw�>A���B�ȯ�l�ڇ�ݬ7��i�����p��!�Y���Hj�S0��)�{�/X� ���6���kZ�v�:W��3� <�cЗ^����^��;S�q�^q�1ŵ��P��ƨ�'���~nzq%��C�����駳����'l�P���aT�j����Y��-i� 덞?�D����8(��b�PXk)-�,&sE��ez�������5X�'sѷ��[a�W&$�	&����2�tn�'�y�Y��
��JU�2m[lf�3��WGUZ�P[5Y�;�Nr����'�L��_8 h��p�UMMA�;"G�C;L����"� �g9�\�kݭ�,��}���u�8���!+'��=�LoZ�r��B��rwt ��`-8���J�y]M���J�e��4��<TOq2G������Hۏ�Z�W2�N<2j���r�g�0�e]iP�%�z���WXe��a��A�dC�p���K�ѲN8AAH��&�������ɰb���5���z��~����$FEx�5c<��	cq�Ba|���M�h�(���早�3/��**���EۡA�~A���;Z\�A�����Ք�r�h�9�s��狴�[.V{I�"E�ie���<���nL����ޗX:_�K(ī��R:_�1D�U�k)��e_Z�*���������U�k)�����ɫ��R:_�k��V���t���D���R:_�A|�U�k� N�r�]�XA��r�Be���7�)ϾN�[/�&,�`��e��vh�Z��)����.�U�N���|�	(
%(@s��$�I��U����K�bU�� ����*?s��a��m����R����;��T_0(��� �}�5+�8(�t�pX���SH�B٭^�/A�`J�2�2?hfB�ך`V��L/`V;4S�)Z*R5K�ӗ�捱�ċ���4 �]��dV�7��B���6����Yk�ܣ�����ڶ|-��̾�[�_e+WD�m��'��V�����-�g~�Ȼ"�D�V7��[Bǎ)�f�/�L�� ��ũY[� j��j����դ#P7�q��V��z�ad���	ƽ$Ef��.wY+UAߥ1�|�Ύ�TT�H��Z�{f��@da�.�]��Wf�����M�#��`h��{ۛ��%/�F�8,��F�2�J$>U�
��6M�@�Զ�n�]�w��o��-QW�΂%m-�0km��F�!5��&-v+�l�e`])
��H�{і��^_B�� ��H�����q%��bК�D��J*C�-�m!��_�&P�\�ΤN������;O7Ae�*C����.=�ú���y���@M�/���_I��˦�8��S8���9�H#��1�f���k����F�i_�f��C2%�zʺ�VΜ�Z�U�V�n�7�&�*�Il���#n���g	_��
U9vL�	#`<�U���~<�k�� g�(�\W,(��d� �<6���7ſ��~�J5��0�^�]�9P���C	,��i�K��U���4�4��O���ժ��D�UĔ+)s�+��@�R��k=x"�i���~�����E��!v�j��Aô �������)�zk���f1���� F�dbUb� �$�����o��yD�M�4q>��9�+5�M��[�m�-b�+$q��jG�� 
V�WD��Dٯtۺ}L9{
����,�	e/r�	;�q?U��pk���Θ��Z�<���8G�꞉8@,�H����u�@�X�J��o�;i��vb@X� \�T�d��H ����p�N���%n�?�J��	�y�b�d���Ս~zۺy��l�l�Q=�܇�3�C��~S�n�_ �����Kh��0�E�����
��HHW>��"n]S�������7k��`}�u����!:���>�z�QV뤍�CEdn�n<�v_8؃:�L��5�lM��T��W�����b�FU�NY��ӓ�bi��X�rs�H_���_ƊZ��,FE.TT:r��r����]%V�4jG>�vԮ�	+�
l�=2Y��7,����±=��7�-��jWلG%��
�L�K�+~��H|�����P�]G6�f�.���":��o�
�.H��-��6"��6���.ޗ.�=/]Q�|o�Ai�Wz��F����y< 2,?P$[X�����4/���r�{F�����T�{0�(�4�,Qw�rww@��:��ōT���!����G0nH�o��9$b\��F6�倬8d\�!�FE��y�����ԃ�C�?��{;�>ry[z�?�?� |Z;-�5�G���M9[�	t=m(�8��#ST)�I�Ru|lE'٘�J�^"��NZDiK;�|i'_[�I��l������K`�=�
�۬��^�e[�}�V:�5���X�؏g��Ϯ�O~>q�@2Ԡ�;�^�p��܅V��I|ˉ�s��w={h��<q�j0�=�2=l쩬j��D �P[D����"B�:3U��{�Y.�W��5vq�{���_�m�`T�N� ,��v�!1݊*:	��d��ʀ�md��f��(�7^Z�"��    L?ҾM��trƎs8g��6��f���i�S�i��U��e��Ф5P�Ԉ�P �E�ۺ� ��37��x��Mo*^li����P'`���T(��UR������sp1��du����&5%
fRo��2oe"�VeTd��������A�_�A.�t��lb�?���[���f8��*��dm�7��-�^)��΢�[��0�m&!�x�4n�R��͍@�g���[w���I�B���v�T�sR��$m%���$�OlIA-Bْ�y���/��-�eԶ�`��-�a�ʆ
���3Sd��V�M���r9[X.P\����V���js�^��b+D8{NM}t-P� ���+<,��M�XܔL��O��3Gi����^����*H{�ښ���%�rk鞊W�)�T �|͞��B�S��=�݊�X3e��}�]Z�{�	�ŊI7Њ+��ȑ���ǵ�a�����]�V�{�ͷ:, TpSz��h��%di>1-V2�*ex. &�V`��Yr��Y�pG�	��I"� C�(bt���U!%cu��?6V�&��U=0�߄�f[�xi��]�VK�F��_�8~���Ҧ�J���dE����w�p4"?�N����I�A�� ����-�N�H�9[�L�_1"-^1��с������̃
���LJ�j�(��~��º'��*-ǖ��
<Z}[ujC�;E���,xm�^���n9���+q:��i���co�x�Q��N��2)���R����URv�
=M��JrkR�R�e�E%�����U#��ZZ�8�4���v|�p���7�-i����MR��ѺӲ�U&�Ҫ ��ś<�j�Lm�Én�m(�Ɗ�փ�$`��Q �#���~W4�ъ��j��s��qC�.�6�s�(=�� b��"�PUW�H��~�}�Lã���5i�=� �v��S���;`�U�K[�gi�	K�9 ����P���H4�C�"	�Ǽ8����6�I�1>-�n�=K�On�#��:���W󁝼��kE	S3d�i�����X�[!urʻ�	���z5�N{W�#%J�aS�UfH����ަ�J��P,�,����ޣ���M��DN��Xk#d3Ն�)�����k\��Nʡܴo����I���)�؄��&-�|�x���n���Mp��j��3��3�;S4�"Ow!L�^�����<�ׇD��-�~;�e �JI�y���{v6pi-M��S
�ޟ��0��Ҭ�K%]_��]���ݼ�A��v�8�ݐ{���M�QrK��֨�D���gPQ~h}�l��0����(�^�����G3�իdK� l�NrF��[,�{s~jmU�p�0ʑ���n�Ѽ�����T//��ϱ��F���Z�K��E��L��`�d���s�9\�����'-�\.�KVpGDf%%�FI�ߍ���2Jia�" u�X�������aeF�;܌qb�R��.%��K9QQ��� ���{UĔ�1*ؚ������)�WT�57 ��R�#�M?|��Q:%�NY�Qu�܀��D@e�E,�9�*�=�},i�ȃ6�����S:�T=Z_ ��O���~�+�TY9/S�xoW߶Bْ�Y
�^���{�SѤ�諡�~���W�8����9W��H["����ٿ_���֫D��n%!F��7v�+�x܃�w�VBX��臯8@+�!:T�ۓG��5!�����g~����bu���2D޽*eO�ϓ�r��W@sl���!�頪�fӫH�e7[����z���C������Z��eHT^����?GgލA���)���,*dm��̖(?!%�Ë(��>PŻ�m����@(/��w9jo4_w��D��!��U��!;Û`�$������OU��T� ��L��%���_��Y�p;�=t��ch���Y��޶
}o�P�5tր�T�''��WFa�7l�eb<��R�����K�~)z�\8"�U�l'�	��6Z$6OaK�M�pv����廴�2��sxy*->xS$�ekL|)��`��EW�v��Mn�I��jZ�c'�Kr�"�6Eu������������bswT�dV*S�T��r��VkC�O��
kA�{["N�@�ز@�iW��y�B�AߵT�����.߷t�D��e ���,����?����٘�����~G��X����x�I���u�}Q@fDC�]�Ղ�	Z>L�6����[}���<'Yɝ;��һ{��v5[,	D�w�r��\y�B���傷���+�b�R��Ȅ	�A$�&��ZH������YT#U�f{�ʦ?���m���jK��+�U`�/���E���k3�Z�`�D��)y|��G��&SR���w5�#1�H
i>{�Qwu;Ή�DrX�_���1kE���j
��J
�ll]��������n��AE��м�z���vU�z��������_�\;�0I��LѴ�l�_7��F�"��A����W˛��-�(���N�׶Ihe�'�?�Z�?0=����O�7/+��F��z������ީ,��􄊄�Zߔ_t5~��6��#˄���\�ev�]�{��0����$�
	�9�^Q���^ʏ���M�7�<��~����ǳ�����E��^?�]���n�5u������5�}��C��FJ*�N��Ok�x�W�W<���p�����7�Ro��2��dc0qOc_m�.Wi��8,)������ǧ���qi	�;��)�K� �4u@���ؘ�]4U���CԤFPkY��.�o���
���� 2�Z`f
\�]�-DC��Ե����C��i�^XG��I�Ñ/b>ѫ[�p����ESY�}���^�n����m_���^�{��A��p؋�UO�>�UH/�4��I_�Kd���������Բ;��R1W�:^X�$��ݖ���q�3W)����N����-�+����XQ���]r^���r��_�_�=ks���
�ި8���Kع1[�5���/=���-����=10ٜ�V�=ح:����^Gv��//L��TS�Wn�5C�w]��ч��Ukt%b�uɦ�qE샕��B_#�iP�[4��z���7�H|bzI|��Ց]�VS�+��ʏHSo:ǭ�׃l䘗�����^�P;ģ�W�J��^X �<��M�,UB�|[�\�b&��Զ"E��i���bAj+���^6
��_�����C�������h�)s������ռ����"C���'�e	h)�~Ӗ�J@�M��8�	2�<�zr��7��_���c���0��r(j��܎�m���5T�BXq�T_N�j%iLU�95
�	7ZO��W���圁e�̙�e��"3�\g��ZK3+�AY�0),�����i� ��_�~s -ڂh�cp@�EZ M��
΁g���_Y	�3�7���5��H�@I?���|�0#������ ���2R��2��b�D8wi��]�fUWE^ ���0��]� �\�hGt�'i���,�﫾)����_C�kȦ�LO�d���i�ڢi���א�"���M!C�nl^*����R��Z����^�Ȳ1�܈
�j�+�8)��j-�;6#ʢ�%�Ya�x}�����7�	n�@�%?���HbĺU�_m�s!�$+q{��!�D�5��D�S�{�S8�
�Ũi�sv�4��x�
 �if;����d�0���s��Ta�-�VU�U�jU2�j���(�19�e�$OQ&�ua�n,w�	�~�F=�*P�#�!(�_���ˉ��Z�Kk�Y)�nU�T?��R��֫w�qF����9kz
C*sؑ�B]��x�]�X��(sR�|T��>����7r��U�1Q$���2y�#Qٯ(}gK�j%o�k���߈p�,h�����N$�Z���k>��ؼs�$C�A��4���Y������ ��z�e�?&�����<ڊ.ł�p�2W��C,�0W��̕T�lF�4�\�k(o*������7*#\Q&b@{�.x����w]5����^	q 7��8��g^��V�L�C�ކ{��D
c$a��    �Xv;�PN| �Q�J?��@���f�d��)�N��I̪"�B�t|�U%��K	=Z�!u;z��1��$�z��[��9c1�!\�w�-�;f̃�U��%>F�-3b8\^$_�˴NQ��J)�i�� �0��4������RV���Nҗq�J)wi��.�-�Rj�:�,7D+g�����m"��h�+b�^G��x���Yc�����L��:��(m8�#T��݇6:
 *�����Oi|`�4�Hhh�5�eQ�h��{(�Ft�zB�eb��1���6#��ru⳪�0�>%U�z7.�ޥQz�F�~*r�CGA���S�v�^q�Z#��s�ǯ�PS�ع�3�5��ɱg�u)&׸`�'?wOL]�-T����s]:'�ݛ����-�2V�bK���{6Q�Xv�HDoE�߮�
��T�a���D�N��q�N�̊��0CaRU�fMP�����"-�;�9���2�ֻ�ٍ����]e����+����v�6�Z��#MT*����`[��v� �Jr���z&�+�%�<�����:�xz~¥�)i��$"$��1��� �i� ���طm\�P�ũ�CA!?��*�Q��D��@����*��NET����L�<����J�u 2�������F��ە�	��<%�#2��p0O���i������!�Jz��}W�����������+��w}Ov�>	wR�;j�g"c��3��>��1tC4�
���̕����f8]��\Qp#�r8ƚ���B1�P���G�U(-"2�xYt��i��ݍr��ӏ��:�@�"�3�a�������o��.?��������t[��Z ��k+	�����0�:{�b�!�(�$p��=+���6d�.Ґ3@K��c���LO4H���Gdt�J&dv�.YܒG�`��kMY��ۛ�/lW�XO>�s��\u�j�9����vn3#�-�y�M�D���j�@��"���Q'�,��� �'�� ����O���"��2�;����ki�b�ܥ�:D\�=]x�7avB,�v{��
�lK�����|dFV[�@֟��*X<UN����_��1i��>s�:�ʦ!l����_�֔�¥�� :�ҁw�5��K	�j�"��\@��\ƒp�+2�5�iY���K�\��-h?>v�d��H=�����3_�>�ܻ�p��/��<���j����:��^��G��>"�ʴ�9]��p����;(��f3����b�*��w �8V���-�Fؼp��>�V�?���J��֌�VƓBULe��pӊ�Ս.H�=�j9��#I�2��N�7q�%��Y�DVPP��d�4t�˘j�|SO(�1�bTt��G�jHͥg�
��:��j�6B@/&�Q���E*�r��4��(���f^��>�Lȕ�������IV�@ˈE5|��7�Io�8C͆�"~4�2(v�Q�����@�����zR�"���EF���Z �����w-�������_,������^�Os}�������&���^��ז�������!��V�&�^C��%�q�E�y�����=[�2��Y�W-2L��E�z���S���ɓ)�M�	"H�0�{�B�7i��Բ�?P�I���i��� ��=}$������J�"��k���/���+ �8y�F#";&ә����j�\�M81AР�%�# ��A/g0{�&7c"F9���QR󑒔p�46B�|Yis�tnFyH�*���c60�K0���n�� )ϛ/��KE��/�^��@��A���+��~�c��o�wU
�g3˰o㠮�y�)k��А��ޜ~����=*˖�B�$�%�����3�ϲC�IFț;0z��
����p�җt�.^�3=*?i� ���t:9 W_�U�/��������2$�iOb×�݌$�pI��|�&�tC*�)v����;����o4�*0_���Gr�E6 	����f��@�'I0�ѣ�����o��^4������K|2|u�����/��pO:���N��3(X�.B�4n�%��գ0 3F^��V�D:�V��&�l��K�wR)�_�9x=�O�'�+1w�ܥN���V_֓��'��p��'X@�{L֡�k�Eω\�!B�g����'���N_��ُ���K�pGR��a폼����+:�0s�Y��9�Dyw3��m��
����R���QC�s8�؎c���Dg��(m�=9{�U>��ݜ{�7��?�TrA�#l�i���D�GeJ�8���|���)���fU�!����u�1Da8��ޔt>�1!\'-Խ��sHwx��� �PI����y1��v�O!�gG���l��\]�����T��Z�-�s?uLn��I�X�/1u�m�eX��+3R���+�5z5*��Bwb]F��A[���-H>-�L��-�:-b�i��(E���x8+��k;�K�S��@}'���U���@^��L���h���2@�/� �|��Q'-����`*�%7�\u��K1���ZI���zk� ����W�V�.��zYB��je����D�PV4���O��p���+$aW&����	�<n���R`��&��4U�OKWyf��sqX�?/� ȐF3�D�"f�MZfihq�&-l��W��Z⣳0�F����Ҕ^����!��e��
��L�G�S��2�j��"��FI�TU;f�o��:��Q)*���@�}��.��}��_(��z^PM����d��[d��N��m�π�є`�FQ#yp�H��Vyf6HH=�{Eb4;�U��n�&ks�F�Lki^��T>�!��C�| cz�?%<�B�P닥MP6��؉=b*������hz��<9��D|Q������^v���Nf�������8��lb������/.WC$�Oo�X�:�R���BpHۆ��͛�9�������������Ы]�D�O����r�C)��$�~�tu\���_Ք��$?��P[��*������R����m�����JWa�e���xӢ]u��Ց��E��B��#�B���'|��Yq�7WQ�c�ud��~\5�׉�ב-W5��$tp쿎̹�)]�c�ud�U�
WT�\˧�Tƹ�H��C��
�TU��˜d�;U�Z����IZK2�kй�9��-�0\�#�cd�+_�������T��*:���p'����2�Z� ���A����E,�b�o�5hиUe��.�X���t�E$E�{.|ܣ޸.��o�pDiPl^�W�� ��M"�.>�����!���a����n*��]���v�<of_���B"��
*?W�x��+����3�}�pEZ ��H�Wu�^��i���`��eA��bvA�k�4�ԉ���s�Oe���:#f�`���N�N�Q�j8G~�	�0[@8hP�A%�_�	jr�i	[Z�^�R�K��b`KOD��ɬ��cs���r�-��0�-��K��40~P�ġ͙�9k��͙���T�n���͉;���ͩ�����g����k�ޜT��*�7�І$�so�]Kum�G{��HEM�#�^O��+yB�+���)�bJ��s~���Z���8a_���4�G�%q�_�?�(�hk���!�jr�3zG����/6�z]�:�;F�$�Յe�̜/D��$����.�z�%@ujQ��c=.˳͒�r����O�{6�e����Ҽ�Պ<`g��A �>�j�y;��*���T��X9A+��t>�_�T�Бxr*-��,���A1�����0���R����W.����~�j^��q7{��Y5����S\Numc���Hd~�z��:/��+b���/N�́���
<�_�N9������x1w�yE��L��BdlY
}�~IyU��ޜꎋ�HJ�','&a��F��MᢝT�S���ux�N���d��l�_��[8Ax)+�\��������E���%Q�Z�l��q�l&����^ZN@f��=���9�/L3���l�$�(�0|h��CA�D��� �  _�DUI�]��la���rG��=���t����;qu�v�I�8R�HU�Q���z�RQrcn�^=����dWYad���*���R������Ƽ(a�"^3E$ZS�A��������W�-3����繻��GRd�)�\�_Y�I��@!�#���T�݆��hv�Ғҍ2~��W���-W��#��Y�AW�K�َ�_�ݕ�d���3�=��ց��e����0UH��ߙ�w���{&AohDw7]X�;�K0ƳK����zG�g>v-A�FT0uD�$���QB�M�Wf3k���.ފ������ݱ��L�V6�؉Ϥ�����Z��&��]��>�a�_Z4y���ΔUry&���9�:7(��C��qL����Y�3DB���|��p�l��N�e��$�PX��f���v�'CX�B+�/!C�jə=:���^��(�:��wӆ�zh����'�.*�_ɳ���a��ǪU���-�`�J���yq:{��/=;�;`�LDa�VћQ�TQ�P�ŻCo��o$���tNpI�>c=���#�4{Z�am8y-a&������H�����4"��Q�7����5Y�!�����g�����
D�
����Yq��,��� �M��e��-��g�˕��k3�r��뷫,\��n¼rԻ�)'����ޘ� )�I� �p�d��2jC�8��6���덹�õރg�B��*$��G�?8��Z���m�`��ۺ=�iN��\L\s��%cLs6rV����q J*X��7�����$!H�
�Ex?����nx�98'�@���Y��su�{�t_BN%"���Y'x�[9�8i�#TXD� �;e��l�C`�I���d���r�晝�A0v�j���@,v�;i������I"˖��oئ����+ �(����f@>*���?�~� A_��a��ߟp�"-Fk���1�mp���������^V��      �   X  x���1j�0@g��@��,َ�6��!Ph�.���d���d̐)G�������#0�Iz_2�dmwh�pj2�����n�F7����3(����dB�T�ʫ�/X�������pHq�.�pλ9pM���ݎ�w�i��K�eoP����10��~A����b�s�]8�ۜ/�ͺp��"�BN��j�]3d��Lǭ����S{(�
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