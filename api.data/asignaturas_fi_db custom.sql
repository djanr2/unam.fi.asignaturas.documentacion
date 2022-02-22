PGDMP     *                     z            ASIGNATURAS_FI_DB    12.1    12.1 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    203   O�       �          0    24818    estado 
   TABLE DATA           9   COPY public.estado (id, estado, descripcion) FROM stdin;
    public          postgres    false    215   ��       �          0    49572 	   nota_mapa 
   TABLE DATA           I   COPY public.nota_mapa (id, carrera, orden, simbolo, leyenda) FROM stdin;
    public          postgres    false    226   '�       �          0    41321    optativa_asignatura 
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
    public          postgres    false    213   �       �          0    16420 	   seriacion 
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
g+術�vu?����="|��yF��d�9��Z�𯺱�x�R��CX 8�e�{�n���"��Q����x6d�B��L��rc�-�Iq�],�	�l7Z�ܴ�7؍\���F`#\�nW�G�5_�4�?�5��vÈ�U�p:��\������>��:�b (�9V̂4�V��F��Q����ȷ~ߤ>��Zk+]�]o�/9.VNV��(�{�s"\�U�l��e�}	O��[z�(��i�Ց2����)�����\��12�}-4?V����;�H�Co��.Uͫ���q �n���1��nM0��d�e�'AX����wx����[��ꬑ��|Y��4��ݹ��%ί���(���~>{wv�ɯ�|�(Џ�/��/��"pS��o�]p�b+�]���Ɂ���7������`� ��WB/�O��ּ�p}T��4�Ϯޜ�lQ�މ�Oy����>dXn��Si�0zJ T8�8T��=��[��i�G׀�����c�NV�>Lz���v��I��K��%�.,(o=^Og�����j�wB�n��M���b�_}��k���l��3��X?���~�֝����h�@������$����K�S	���H�i{Z�@��0�����M_�m�k������߮�f�`�~`E����$������a��Mb��w[��:œ��ƍ:�]89=?ywv��iЏd���_/��4�C(S%dN(r�HYޑ��J�MB9樍�Nޜ_�^^|�L��_�w�r��Q,�_�������w���U��1d:��N'����e{�ׄ��4`<�2|�v�Xjཆ�y��zP�:F�VQ��F9�ە�8FfZ�x�k�Sb��]3�|�x6��<���
���I�_�Ժ>Ő.^@)A���6t�CT�XPrL%��:�׸�w��e�xDw�N����N�y�ɔV5�?�:y��'֏]�R`!oh�w�r���"�+�+����/���[DF2r� X��9O�|�x��� �,�Ҥ�7y��G�^��!`ܮ[E�˴i5����p;nׁ뇄�;��m!j� k�,�{�n�{$�Y�T��7������駳���p���?:���b$���>����s�������ٛ��R�}c���x����S��WZɛ��ϰ��X���-��&9��^~��7U'����{gUnc���PH��)5@��n�    N����Z�v">�;y�ϒ�������� _lZ��Q���_y�󇳏W��ήN����i���i�k�����4)���9�99�_��0���ZlC�e�����c������:�'mv�sO�"�'-r�ʾ��UD2����������=������o�%�$bM%�#�����P�Mr��4�1���ַ׮l���8��ڸ����@
^�"E#ײ���ta.o����D�t1��|t=�q�H�aZ��^m ���3��7sR���_��c����-@�ʜL�%���v�I�+����$
ENz���X(Q�P�D�`��m�Δ���2#�tE��-��v{g�� �9��6.H����f�+VBl���bi�K{���R������O���q���W�a�]	�AFw|�c mΩ�O]]?�:V�uQ������>��e��sB��8@����bv��" R��n��,��c�����s)�kZ_��=�B$��� XsUgA����ff�	�;�?�����������'?�ɤ{^���t}O�?�)� :P�������WӇ�;�=�bP �i]��r 3�'rB�p9�AHJ�$��UXr�P�a��zٕP�e�-�ڕp����%n=?��G	\�}�� �$�~a���E`����o:*�u<�]�q`f�l�h9Bd*�R1�H*������<�ˑy���4��o�~���I�E�np�㇥6���& �o�H���/k �Fɴ�6�K�8so�w�s(�*1D}��d�d#�l��x:__���q�Ta�Ub/��hi�~,
�Z�r��~�U�G�\�i���v/����f�XvV�JN��2���GW����xFr^D	����"���d=�B��.�`&����ۓ[g��
_bk�}� qq�p·�lymB��~|ɷ ٍ���~}$
�������=�Z��8����l�L)Ѧ��t>�\��@����/Ӎg���<� ��^�ֽ��+T%"���%��@>�Z���U�%[��0Ij���8�S���ݸj/%�#�b�;;>����2wGM&��w���ƅ���_[����t���@��>��0j�դp��� �HO�J�n^���n`���g��Kg
���x�=�V�� �N�َ�ԍ�̳���V�x���
���p	���V����FF��O�}�,���u���O�L��ڒ�T��ǳ��gWZΉ�SB��������|ہZN����k1�|'�	#���>��b���a�K�����`��t{��C�d�۶2���F�P`L|_�c�a+��}s~}���6ַWU� �E��_���7�}�Q�'6�xvuq��ݧ�7��N�JF�	�����k����J86�|?6�!��qI*��Һ���j<L �&6�R2�G	�ӑ�.�4����D���Ļy?��m����ia��4E4�tb�K�<
d�j�Q��L~f�g�T	���P�O.w%�T	o�*�J�Tf�� O�u\͂���:Zw#K��z�8�56��T��{�gŨ�����Ъ6���V)C��Ȅ|��ۿi�Monmy�U؞�+Z+�S��fo���BEje��}<A\�) �^n� �+c���B��tʪ�ŧ������f��]�h����p`n�:4p�,"���"x]T��=��],� �U{�@��>HY�V�SAk.�'�c��N��%%i炳�W�״)� b_����j��=�ˀe�ˡQ[��j�6�]�����-���rrz|�ݬ�T���A^�����%ᖴB���'�On��.������G��A�S�~='z5*�bs� ����<ͤ�j��o�5V��n7.'!�Zr��5U��U8�t�>�O�5����*&�]ڃMe�}��ؑ�YP��ë�/������l��,cNI%��l^�S��9%����pWpJ�g(�1���t��,cNIE�����8%˘SR�R9$*�,cNIURZ���o�Պ.��Fڭ�	^IJ \9� W�IF愕�&����ƪeJ��Lv�Ύ&��(�Z�,m\k2A�5D��k�{�T��	�@�eK��|ycϾ���NBd����[]��œ\��w`��-���Pl�H�		�I���Q������L���E���4Y�ja�	?����V�n���6���&0�E��Kp�uf��y/b��!Rj��������_ 	L=�5rWjy��z�o}�S�GwSg�.��Yi@��wװ�Y[�˴D���Cљ!zY��2��W�"�<�Ɨ�0dKg��j��D��^�ʐ����6����C�OR�6S�+�La�-�%�u�5\sװ4t��Ǥ;4VՍ�fs�NW�^�+�`D(���y+�!���`#-�w����O��$@Ӎ�}i���J�+j���z��&����1���UZ9����"x<�r"A��|Ppӷ�V�2B]%fp�x���n�Xd��K.ˣ|fF��E껳 �B&L~�`LS�7��4�v��m�/X��h���+x���ö��m�m��eж�T�4T�Ua����p�DĽ���H��RݸDc�o��ȝ"�����~[�pR}��	�FM+�)�U���T2ۖ�X
wB������#�z9�q����K1폏߀Z|�u�s��r�R������Я�@���'����e	K~�%$�I�D��^W����H6�{j	��@ّpv�������ʤR"�1���3&I��9^����J�S�z��K�u3z<�m!SE�H�t]s�K��%$ �9�gq���_V��-�L;]�zF��Ȇ����=�j+��ڹ�Z�&
�,�_&ƈ�֞�j��u���ue�� ����Z�N꺲UL�g�X/����
��WQ�����Ԅu�%��C!�D�\�Uw�� +R������y���5�� %�>��ej���(1�����9�jB򤕩�F���-H~ �X&��~��/��V�˛HH�Glg�d���	���)� ��#����[@0T��b`�6�'�%><mEe4�����ɪ �38�| [��}K
�^ل*���!��� �|�ol���o��t�dP�S[�gB�T�O-Я�f����*�m����q�����#v�	(�����JD���:�Ex�oF�L3}un����[�DMo������z����U
ʥ��2��&�HnIi5L8�KI��p�#0U�d���C���S�G��V���k��`Iu��ùc�����Ϛ������j���m+��#��n���Q�(�޾�����0x�T���>S_TN5�z����ҁԝ�V%�Hr��͍���L8Y��N*Jߗ�������1O�bV컯�tHY�������[��ӄq�֦[�|�xy�u����~���$aܻ?�M�����y�W�p�[�R�M8�<��p�1'�E�Z,w$�3�Ita`���*#Wp�����@G�2�*S����HfE���u@p�!���wѡ�Ct�>@9ի�H粽�[�hWn_�S�J(.#ǝ Ѳ��#�\��L\�0u�� a�����Ñ�ԅ.�RW��*�3�N�6nA�r��>y�A����f<�����N��f7�i��p�CfU}�Қj�V	j��#�P�S���'���N2����4��� ;���>��e/k��H&�P���]������	%D/��Mn���=un�O����6u����2/��i�)�)��P2�.zwW�F���_qL��rEI>[T{^�Y�MJ�ܵ:��!�X9����ep}xЗ,#��ð�n�g�j²�Re� ���W��%�����P����Cf#XX�)�����#A+~���(�S�7��/�Id�+4߮�����{��T�j�+a�EZȫ�Te�����v�u �H�(�����^R#G�t �Hwp�H�h��Rb4$+���TW���H�����E����q%7n���FuՌI�Oki�����S�ۤ^?k���� �:��߮����� �pI��u����*,T�"�b	(C�$8h��޲P0��Ry� �m�Mĕ�8    �S��7��GR����dȬQ�PL5p��sStq���ۓӏ�aN�0	�V5F���5&�֥����qY�e���@i��$^B?�S	'�Ј�Q-�3\�s@�rè��|O�I)%.4����t�)�
�V���h�uk>�F��3p�P���#{���:Kx��B�����m�X�����ۚ�0�!��i}˅�D��l�R��^݉���[m���ݒ��_V��6�F�y�*�<6y)Z�7΢6死��l1���޵�ھ<�����z�,���a��q��'�^�\4��!ܦ��_#m��.6�A��������Eh*��څFQ���U�J
O�V�'���cV����#�J�Q�N�2!��z��&%F�|4�a+R��^y+%q6��u���)VP$h��y�}�Q�=��ɲ�?����|��8:�߲����nFsa� o*�2�V1]�k/�m�-]�?NZe���X�I����c��ivV�:���v�g|t�X�I��k��,�܍��=�K,���)�9�E�}\�I���	'��H$�Q�y�1�Y���b��A:X,�E��ؾT5^�*�������Z��8�V�+%w�\�<Q�I��E��x��{��A��w��u(M���v�v�+P�Il�*;5���H��a-+"���LԍI]M�
���b�\���������4I��>p��Nr�$ӷ����]�P����]�o�>�Q�OE�+uM
osJj��Z��u&��Ϊ��@�N�q��$�>��z״J>�%ز��qeeAJ�{כo���(��)L��-"�8�W���/�`?������E���ҡ�cC�m:q��� `��Wwo{<N�D]Huo��(��J�̈K��D��u��a���A.��G7@�����%v#J���NH�H����`�ں�kW]b��r�	L��8�U����'�=� k�	����d��>�T9��|��ˑ�x��2��$פ)y�x�OoA��BW��bM*ߕ�äx<DcW?������cc�2�F{x�}/[��@��P�%����o�e
��{����K�z���z�wSY��p7x݃d� ��HU�"�^�s����*'!*}�6#��(M-�ʜ7���P]a Z*�bV*ω����o���S{�Χv����է����O����`�jCQ�!�z��-�0}��N��������9'7�ϒ�n�47û��=�w�	�V[#�(�d�Ņ4�&��8[=L���.�������UmT����m<��;�n�VA�d�Ʒ��kI�_C�s��k�L�N�0~9�y��o��̺�Ί��/�j�%+�}�L��k�!�K"���I�.C�� }uȜ�'Y:j>�9����C���
�R��^��On3x{e�:��� d7VI9��a��~�:��Ǽ�O_�B���MYw'�Ag�r9�4�a�w*����x�Q�Z?�k�۪jz�����n�˵D�69�"��I�1�z���N���6jOa6�2��%/j��vL�Rr$��؟G������b��b�TԆ�̤�ګw|��ݒwɖ������2WW�KP���ayk��Rr�0<C->ʈ�s�hW��2zj� �䎔!�^-&;z��Rn�~�о�*'W�0�<,��S����8�
!�۝�h0�{��_,��܍�1	��ag�F_e&8��s^ז5���N�j�Tv:}�N����M>qo���/Lq��?.L�p���.M�p���T&9���(�?��ɴ�9�������@�P�����:c��ME)�ߙ`cF�&�6D.�d��$�����JUb�?��'��ŗ&�����՗x�UbE�DC`�خ����hgTA����P�hK�v�Ĉ�ʪ���Z��
��~��|���H8P�4�����\�uUp)�h.�$�U �Al7����%J��e��uVe�Ni(0�]�uWem�R�h���ÑueeeEH��y��=���f�ɨ�����d/�R�,Y����^�����-}�(خd���[��}���jKC�"��� I���
�Ծ)S����;U�NV���L�zOK��(Ss��m��#��\:�G��O�z���|������P9MH�PW�Z:�%�R$Z:-F�ZL9�Z:�F�
M��:�F�MU�Z:5G$Ԝ.h5u��H=�]�<j��e���]�;jY���e�0�-C~��.ϼ#u�5-Jlt�1����)L�����'������(��	:!���8�eyM����`�r��Ԩ���QujA�!�R��R�ːS�U�1��&��r�3�vz��*7����I�Vw�[9?~:��O�l
�n��j�6��7B��qo�t�����'��X��j�c�y��� �� �ԫ�5�+�l�	o��=�K�V�e���P�[~����ga��x����z��������B����.@����s���������srpmg! '�Y�L�����f`�m�'f�g �И�N���h�K�YJ	��[�x����w|l&0�ʚ�������|�cx�\����]ګ��j�!���MP��lN[�x�|�z7
=�R�0��8�uF�����$�&Ec�Ue$���K9�V��������AT]��������;��c�V��ؽ�_)QA�f��A�,k ��T߭8��[fb���z�Gz3��b���d��BO��Ţ߮�3.�ݹ\�|�7�# �dh�'�v?<�s1{��g���zQ�ip5'f��@aTfSb�{Y�^ήED0�F����C��_��ZGE%�K�/XR��e{�1����.��A%c&��0Kz(y��UŒPD�b�.��6�2.m�r���vNk{]��U.4������� r-	�����3�	���ni	8����R�p��<0 ��R*.-�^��`y)��Qfr�,d_���pF���ңw��[�B+��9{���ٿ_z
c�B!��!_���	T��4��7�EB\�r�eѹ9ĝ���Y�p�n���T�Y�+�K9��_	&Tx:Y�O���k3K7�Qe�|:�Փ�V�}|2�a��jNΊ����d��������Ͷ�$�l�`l)�ҠV?:U o�AUN����zPڸ�en�Z�*T"���z�3� U�
��'*-�N�x	Y)a�@�/ҹ-(= �T]�����b���Y�&���:�i�۞��4�!y�e�
Y����3���ҸzW�	o�x�f����w��R?�MA����Z���ŧ��:V"�0�g�1Z��a�9t{���C���p�㮚��y\�GC�"������]w�?NW�YPӷ2�GN4������պ��d#>YI�a��D�y��G�=t���?,;�l᩟��(I����s'*��v���vB�hs��'��X����_����@�ND02��|Z�'�-D�Zw9�Y3�5����u��`7��z���<�bk�z���cK�b-�v
��tjI�x/ x
S�"�--��8�*LՋH����bO�(��s*h9���"��F�]c���� &���$*3��4��3H\�A��+�Z�T��ֆ�B�b���Nk���Em�� ��;�4�3+����3Ɋ�,|d6���@��l��ʯ��˗ɧ�#I�6_�d9r�]Ze����i��fF�n
�r�϶��}�\�L(���P	\�a q����T+wp{�L�Ö�u?���t�����ZL7L��/�Σ��߷�r4��tn
��T����B_)K�m?L��P���򳻰$+A�S�@����<��臐���������BZ�/��:�n�~K�A%���8�>[��T~)�ESe�f��v"��t���_�AҮ
�!�t��H��Ğ?L��L-[z�L�,���}^�ƅ��������'Ÿ���&!;��Kz�����/�l�,ȉֽ�H�Ƀ�z:�����l�Y��VwG��]�p�Pv��;�]NA����Ї�_�Ճ�%@qCA�!�'O��1�өa�������r�<ʐ��jXw�%'�l,�
\�󻌻�vv�P5��q���&V��    ��!��$��M��I�E�gâ����쥰b0��j� 7[)����39�g^TGm ^֋?�v�H�1���I�DRw5��^/^��^����`(U���}D��%�]��j�i��^����V�w_5@�e�/�^���}��+a��E"$����*��E��0���˅!��k}u����^�VJ�C����}'Ç	�i��Y��ц�)J(�t�ѓ������o^�+v�_��H�sg��p(+�8� *W������?.a�ڔ	�Þ xP��@���:c����U��
g �P=CDa�r��÷=�xar��f�&
"#9��[����gl�We��rr�P	��s~?��{�6U���O��C��I���C��_�z�J�8-��Q�t���p�]�sr���� .�A3fpq���mW���]�b���"{��a>[k����:���"�m��9y/�B�z�% �#k`�[{�+VR��,�n>R���%Rb��a�>�s�q����t�0Ynkv*��8*�7���H�g�V���o�A��8�C�)9��i��������|�=2T��T}�������#�2����.d���^1H�H:s%�GD�4�<$�xЁ�*��D���"��M狸 ��D(��m��r��j5@��$���Q�c�(��>Uo�H�n*��)G`ݣNk�����І���:$������G�Q�A��#f��L�ߢ�?5f����:O*���Ҹ�ʣ�V�A�L�/"���	:��V&ң^X�������G�h����W�h�0.X�Ó��$)b��~u[��;�������0��AL��N�9e �z)��]Ʈ0ٷ�'��`O��^ͣ'�/g�O*9i���t2po35��T��d'u�AV�K6KA�f���B��q"ӣ���PMؐ��!z8���i� �~�=bD�[�����p�XSYN*PI,��bq�۾U��j��� 1��.��Iak>*��3
ġ��V������M��e���9/K���J�FJ��](\����k��Xfza�TȜ�H��c/K��=�L��(�7���:ycNj=)n�t�+KkT@kd���0�{.��R9nm�����"3���F!���=mbC���!t���l�7����@	�l`�
�h��.7k���
��	rt��\z�]�f���5�eҭ��F�̃��rw6r�	��
�I�6%s@G,�Ī@����
���`(�\�G��r6(#��=T/@=4�A˵����C0��Y�C�'ڡ�2,ԡz]�C�$J�a��PMq��00��I�إ�kK��B(��M\\B����C�b���=X�������X�)Y'��2\��}n�{�zE���%��t}@�Ȳ�F.����T�[�X���'��'�ή�̕�����0E�H�U���.�>�����gy�����Aw"՝Dwb��ˣ��nYk��/�_P�$�L���Ѹ������=U������KtS��Rt,�Oc/3��}��cO�Vt�/O//>!�չ�EE�'��v}��!s�4��_��\�ӻYo����?d[�����9B,������ާ`��S���_���y�m$x�9�״��u�.gLx�Ǡ/�x�-Z��w��%�̽��c�k}��PэQwOV������Jps���۫��Og�O�[�Oؤ�r')èd�@!���H[ҰA�=~���,���qPf_�<2>���RZ
YL8�6���&�/�X���k�O�o�ѷ�V�LH�Ld=�e���O������૕�   eڶ���g^��������j�wf��S7�O$�v˿p �: -�@�����w>D���v��{��E� n�rt��׺[wY�=�hG�o�@q���CVNJ�9{��޴����E�6��� ��,Zp'����z�Z+�iR�y���d���oA�ɑ���6��d>�xdԎ��%�~a�˺Ҡ�K��(	�ٯ������/�*Ɇ8�23'<�t�e�p����16MV�����%�a�n�'|k �����"CqI����sk�x�s�����҅ٛx��sQ����/S�g^$�UTnC�.�C����BI�w�<�$�ȩ3�3%�)��`7�4s�7憳�i�8\����E�d�ʲ��yD��=ܘBCI��/�t���P�W���t��c�ҫ��R:_˾��U�k)��啩ɫ��R:_˫ѓW���t��� ѭb_K�|-r�V���t����D���"A�Z�f����.�����0U{ohS�}�̷^ �MX�7�j�d���P���SF]�b�BS��+PJP���'IΓ�����їŪ.MA�)�U~�F�5��%�۰��ͥ��/�w^���`P��A���kV2qP��6�~٩���,�[�D_�:\���e�e~��&���5��|C�^�:8�vh�
S�T�j�
�/��co��[ui �����2o,���r%�m*���6��GY�����m�Z���Q�}�3�H��V���.۬)�Ob�,���![���a�wEƉ��nb?R���S ͨ!^�������S��H����/��IG�n"�lc	�RE�X�ȶ���{I��l�]�V��*�Kc���������+d��̸����}]~�䗯�* ]CK�(8G����ĉ��7�;K^p��qXnO�$ej� H|8��(�%�m��	�D�m;����`1��{�[� ��K.�>Z"a��P��Cj�gMZ�V<�����R��=:����-�����6AA1$�p���'2�JZ�Š5)�X�T��[��B���RM�ܹ��I����ǫ�w�n��T���c�]z��u'��S�"�́�^_ %w���חM5q� =�p��?hs��F^�b��R�g�:�ϯ/�Ӿ,�Z��dJ���u)��9ϵ�|�Rݢn�M2U*�؂q3�G�����4�3�r��gF�x������x��z�βQ" ���X>P(�'�Ʉ�yl��o����ؕj9a��s�2@y+*�X<�6�b��VQ�_ii���<kg�U������)WR�W5(��=�
9�z�D���a����ϻ�w�SC��C�4S��i�%e�#/��S��ֆ�y�bB9��4�~���0���A�Iny�W��n����.i�|T9s�Wj�Rݷ0ۢ[ĜWH�L�Վ������*K��_�u;��r�,F�-7Y62�^�Lv�%�~�.M���m��1	��yx��p�L�=q�X��ۣ��,�V��U��s�"*w��_��2��HA�����ny�@0;�&j�yK� 0�.�-/��Ũ�胷����u�z���&�z޹g4�d�q����"�@(a�!�;����%a�+�l/	i
�����|^QEܺ0�zKQ3_oo�(j���*.�LσCt��}�� ���I������-�x��6�p�uV�"�k0	�4�Z�D��,�%��T�����p?�'E��h�2�����Vg{���$%X��\��t�����`�3P�J6�HiԎ|P��]QV�,{
d�xKoX|I)A�c{"�o�["pyծ�	'�J ��<��M�zW�Ց*�B]%=&bw����l<͆]@'$H�;Dt$����]�n�[v�mD��m��}-\*�/]�{^�����܃�Я�m�tť��x@dX~�H��܃��ai(^"������K�ɩ,�`��Qbi8Y�����H1u��l��C:JE���(`ܐߘ�sHĸ�#ƍll	�Yqȸ�Cƍ�t	��������2�)�v�}���RzrA��vZ�k� ���r�~�z�P�qX�G6��RޓХ��"؊N�1Օ��D�����Җv���N��ƓQ�O9[�ɗ�{�`�Yx��R˶2���tnk��w�:N��ޟ�]���|��d�A�wr�r��1���u����r;�z��f�y���`�{rez��SY�<K� R���|G��E�Luf�`�� �\8�D7#j��<�B9g�>�����`��X09��Cb�Ut�5���)��Ⱦ�%�̡Q|o���E@9��~�}�"    4�����p�
�l��:E�Ӽ�.��3���{˖��Ik�r�� f�ַu1��gn
����T��Ҝ�A��N�j�ͩ,Pj���9Ga5w��$b����f��MjJ�$��6�e��D�ʨ�82���'}���<8��[�\��������1n�f���
p$��U;p��o��[��RǝEO��a>�LB���1h���^�3��"���/�-������?킩 ���I�J�9_I��ؒ�Z��%�DIA_[[P˨mm�<U[����sag�Ƞ/��6(�:���r��\��d	��6������C�V�p�����Z��A�)�WxX@/����)��M��F�g���K���;�U����5ɗ�K$���=��S��@���=%݅���U{J��f�lE����&�P���n�W͑#����k)	���e��Z� �@�otX ����\U�\9K��|bZ�d�U��\ L�����䐟��Ꭾ���0DZA�jQ�� Na	*$�BJ�� �l��M٫z`p�	�Ͷ8��r��2~����F���tq�����եM����Ɋd��y��hD~��]!���"�T/�:[|���s����'�0bDZ�b%��12@���ۙR����F��Q2��܉�uOb9UZ�-��x>����Ԇdw�
-�G�Y�&ڒ�F5�M�rZ��}W�$tb�����ޢ���|7�05�eR�O������{�� � *z����֤���R�J �9*+��F��-1���qiRɋ����ث�o�[�P�n_���?,+�u3�e�L4&��U�	 ��7y2�����ݼ5�P���	�JI� H=̣ �G��)���h
�u��`��:Aㆨ\�m���Qz�9jAĚ�E𡪮�����������GC�(�k�N'z�A��֣-�ڷ�w�\��1�����.�vr@D�Q)h	�"7a�hp�DE4�yq�ѕ9�mΓ��c|Z6�.V{���fG^/�'ur�ï�;y�׊�f���@C�����B��wU����j�����GJ6��æ��̐��4��M	�`�-�XY���սG�i��ŉ���
�F�f�/SB����׸BQ��C�i5�
S�Ó�4�Sb�	aMZ��1�7�%�=a�x7=�����I�g�i�g\w�h�E��B�d�T�%�y@��>p�[��v��@B�� �,0==��l��Z�D���?]�a���YחJ��O�$;�0�y?�	��qV�!��+����:��Q�e�Ϡ����0�,]a$\__�Q���__]U�fX�Wɖ�A��䌜#��X�+����ڪ���Ma�#{	�)R���yI7A?"��^^4i�c"ӍD7/����*ՋB//������T70���s�6*�T�OZ�\&<�.�����,JJ썒*�Wߍe��¬E@�б&��í�ʌ"w���F�Zs),\J�	�r��j��A^�����)�cT�57-���@S���fkn Z�a}�bG��~�Hw�,tJ���갹c�A���ʋXNr�U�{��X�6�m���ϧt<�z�� L9f�>����8�W<��:"r:^�$2�ޮ�m��%��:��F7���I�WC����$<0q��%z1s���7��D��������%�W�$��JB�Z{3n�W�������D��_q�V�7B t�(8�'�.�kB�7H����=���$�Q!Xe��{UʞƟ'���7x����zG�B��AU�ͦW�x�n�f3�)� ���n�3P;����ː��$8�)�10O�μ�A_S��YT��N�-Q~BJz�Qj�}��wW1�S[�P^P�r��h��z�)-�@iCZ��$eCv�7��I}��	������A��,K���Z�B�v�{��o��Ъ�-r����m��֡k�˩�ON,Q#����Eoت�
�x&���'��-ߗ��R�h�pD�6@�Njb�m�Hl�����*b/���wie~����TZ*|�H@�֘�R.�A�1����d���,���մ8�N$��E"�m��\oQ/�UI���3��ɬ:T��D�ɭ64 0ֆ���ւ(�� D�d�Z�e��Ӯ2��ޅd�.�k�J!��?^]�o鈉�)� ��3�Yfg��I���1�?�����:�	�`�Y�������1��� ̈��ī�<��|�.mDi���vc;xN�*�;wB��w����j�X�R���z2��6���%�o�݉'V$�#�䉑	؃H�MH���
�-&�L�s�ͳ�F�*��H�M�Fu��z��ՖR�W3��@_�ً\W%j�f�����"?S��tS�R	M�����jGbʑ�|�����v����P�&��c֊0�kC�~g�H�غ�ͧ�Os����(ۃ���y����'쪢��)j93,��[�ӿ^�vXa�nۙ�i�S�"�n\���E���F�㋯�7Ͽ[�Q�[�v�m5���8�N���2`z6�寣�.n^Vm�ʓ�����-���SY�)��		���)1��j�<[m��G�	�����$�����9Na\�4�H�Js����wa������^o�y0|W����Տg�%����&W�~̻4����'j��"�K�5��k��$���T:���G��V5��xzy���#�[o2��J�;d�%'���`�ƾ��]��PqXRZUݧ���O������wh=Sb;�$A
Di�4c�1�h��퇨I%��ֲ@)]|�fy�K�@d~1������[��K�kK7)����:����A�|�#_�.|�W���.|;���rO罈��E#�۾|]����T˃��}����j}����^�i������Lٛ�����+�e=v�Y˥b0�Pu���mI���-E���f�R^i=���rs}�[�W����T12����c�;��뿜/�@{����x�Qq
Y�=��sc��k2-�^z���[4K��K{:b`�9��z�[u&1齎�hS!^^�*�A�����k����-����J�H�M�-��+Л��FfӠ��hR=�3�o<�.�����(*_/�#����~W�ו���t�[y���1/;�/jIٯ��v�G��&����@>(yz��4X�����,���L�}�mE�.�%��=4ł�
VN�5"��l�~�4��6� S������:3R�[%�Z�N�y[+�E�q+N���Rr��-��\�:�q>d�y"��f�of���/J���-Da¡�P8�`۹]�z��k���������JҘ
��sj,n��Z��Z��9�b�3�%�"Ef&��"O��fV����yaRX0M��'��hAHS�D��@4Z����(��F�� �z_��h1<S���gto83��!j8�����&~H?��1`FJa3�a"��e�4\'`exi�*�p&��fϻ4ͪ���@���a֥��AL��ю��O����Yf�W}S�������אM�����D���}�E���e�!E\#��B�����Tb9/��������%1�l�ec
���W�q2R���Z\wlF�E�K"��������?<
o�=��E��K~Z�y; �.Ĉu��چ�BIV��*C�&ko�~���ʧp06�Q����ij��, J��v Z�����a�E��49(��6�[Э�d�4ժ,d�� A=Q�br�8I��L���z�X�����z�U�pG$CP�#�������H�R:ݪ`�~TA�:�W�J�>w�&ks��"�T�#%r��8]���d�b�Q�����}2F=u�?n�ģ��c�Hޡ�e�G$0��_Q�Ζ��J���w$�%��~Y�L�o�/��H������|�y�LI�ԃ*7i}	�"oA��A"�����LVSo#sy�]�U��e��	��X�a���+��ٌ�iT�f�P
�0T�����oTF��LĀ�H]��;P�6j���3�� n �q�ϼ�)��$���������H����vl    ���@p���~&�`[��fiS`�4S��UE�����,�J_�z2��C�v�X9c6I��0��1s�bC�\��[V=v̘�%�b9K|6��[$f�p��H�,�i��2�1�R�:�A:�a*ei8Lw5��K��i��/�.�R��:E]:�[*�2�ru�Yn�V�`�+����D^m��{WĂ�����B#��#O�>��u%Q�p�}G����mt T"1����0����i44���
k\3ʢ��2��P�����W5����b앙mF�����gU�aH}J�L�n$\��K��<��T�p���0Y��&����(�FR琏_3����s_g0k�ɓc���RL�q�O~���,[�$P+}y�tN~�7	��[[<e�$Ŗ����l��!��H��ފ��]y����Ø�ˉ��H���%�>�#�߷a��� �l͚�z9&��w}EZ:wps���e@�w-���7���f]%?V@Y	���mn3���G��T��%X[��*]�N ������L W�KPy���-��u�����KYR�:�I:DH*ecI�>�!2�*��o۸|+��SQ��B~p�Uʣ♉2Ne�ry�U�흊�2����RypU����� d|	+	_/Η/��g�+m��yJ4Gd6�`�z%8)Ӥ��'��B�'���M���Eշ�ՃM�W������}*�.w�$�D�,_gX�}<"��c�,�h t壙+eY�p��+��� F:���p�5�C1��b^�.G����PZDdp���z�����k�?]u�VEg��ruG'�l͵ߺ<]~<;}o}+П�8��@8,��Vܗ���a�u����C�Q$I0�r�{$V���m�>]&�!g��ԧ�U��� h��%�9�����L��8�]��%���̥ך�¯�7<_.��8���|z�R*���ը+r�����fF�[�>��/�*����k��E�v9P�N�Y��'b O�=A&��"�V7�E�e�=v6}��҄M�"��K�-t��01z��o��X*��&���
6�b��+�1�
Ȍ�����?��U�x��B!���Uc҆�}�.8Huj-�MC�#ٞ��뿶�)#�K�� t��`k�5���!D����<0{��%�hWd,hktӲ�-"���XoZ�~|�|�D��z=[�9g�}��w��.[_�?�yF'���q;]u0�����׏�	7|D �i�s�
��"n�-wP ��fvi}��tU��� �q�f��[ƍ�y��}�?�����:y����'�����3�I��#�]�{�,r��G �@e�7�6o��K�۳Ή���"e��i��1�:|���Pc��
��~�{�.22Ԑ�K� h}ub!�*�m��^L��)��T��<��i8�5�QP8����}(��+7H����ۓ����j�-�o���q���aE�h�eP�0�P-��)@��	���E*qo����+��@ mǝ�Z��})�́�X��=}7!.�t���@}�-&=9l�M\�0���M�-[�w��C>�23L��l�K\����%�b�-�.]{��e&m-�b�Zd�VS����!��W	�'S�&D�Ba ���$o��q�e�0�.��;��
���*�{�H؋�C��Dm�8�k_&���V &q�FDvL�3�����r���p:b��A�7J�G \�^�`��Mn�D�r���#�0&��#%)�"il�H���� �܌�UhQu�l`>�`����ΧR<�7_T9���l_��4$9(���/��73WZ��8�Xoߐ���f�a��A]o�S�	,�!�A�9���ɑ{T�-W�I�K8A�-�g�e�Г��7w`����g���/�r]��gzT~�Z9�1�tr@�����_Ƨ��߷��eHbҞĆ/+�I<#��֓�6pM��T�%S�>����w+8��hDU`��3ԯ�䮋l@*ԅ��ʹŁ�O�`�GS�+��-2߶��hP�k�����d��6��'�?_ ^7"��t.��i�\IgP�r]��i��K0{�Ga f��Ε!��t����M�ٴ/@�|�R�?��s�z��O>Wb��K�������'+�%O��J7�O��H���Cg״���<C��ϊ�5&��mO4 =o������U9(���
����3��y?"=5!Vt�a抳��r�8��2�f>>��rE 'A)�n!�ߣ�:"�p^�Ʀ�ɉΰ�Q��{r���|p++�9�>HoTOܩ�G���z9>����ʔ<q�Y��X}�S�?��ͪC�'���b��p҉�)�|�cB*>�NZ�{_���$������9��b����%�B�Ύ��٪9���4�u/����-�\[f�~��B˓&�n_b��B˰��Wf���-tW�k�jT�1���ĺ�^��:&����[<�|Zęt�#Z<�uZ�|��Q��� �pV���v����>��Nhqa�N�'6Ɓ� ��:,�	1�ц��e� l_T?@D�nӣNZM��TKn\��<ߗb�����E��ֲA��s�/�X�]N_�����|U1�U�8��hp;�	�A�݋WH®L�p��,y�8o���M��i�8����̦����^\�!�f�� E̞�������MZ��ٯp}�&�Gga��.u�;��)�����Cj��*�G*�ԏ^�|e�3���Ey�0��#��v�\�>�u2��RT��遌�D%]_�䧿PR�������I7-�ƛ�$�<#p�h��P��q�)����F��� #���l��z����hv4�D�ݒ?L�����ҼP��|�C�	��4�"@��BJx.���K��lH�{�T<�W7�	��f�yr'���6��m�5#p�+"���Ý�H+ �%�;`��q^��6Ă�����_\��H.�����u���݅����U9�7As����E͑ߓ��=�ѡW�������Q庇04R��I��	����˯��)-�I~H��d�UtoMӟ7������k���ǻ/@�����
Ց�E��B��#�M�t���/,TG&\�!CO���:��to���+���Ȑ���jB���#[�jJWI����sUS�*B���Ȣ�(�C%��й�O/��s��X5T�e������9��w�h��������dPנssR[a�6�G��ȀW�H�1�	9!��JK%Tt
,K�N2-�/e��vA$7,}).���	�!�X��D�LkРq���k]䱠���*�H���\��G�q]6ފ%�(�Ҡؼ¯>��A�c��D�]|.^ݓ��C"4�=�i�h'��)�TP�������y:�̾�3�ǅDZ�T~����WL?��g����2�� "!�&�ꦽ ]�2�7��������
�n��i�'He��Ɵ�<�	uF��8,i{;�"=�:���p8���0�a��p��;�J��h�������5�8� ��Nr��������Y#���@M��[4��aR[�=�83i`����C�3?hsֲ��3�ͩ�ݜ�Q�w~��A�S�	91�l헉�0�9��6U�o��I.�ި����^������Gr���Y7V��W6��S�Ŕv���:a��',�q����Ei؏6�+<J�6)�LQ:��.^gkCT��g���%jq_l>)���u�w�hI  �˄
�9_�aI���]>�K��Ԣ65�z\�g�%��(]1��l$�VCgy�yY*�y��R;� d}8���vp�MU7��>���r�V��|v�j���#��TZVY",u�b8��1��a2���"+W�m��\���),�ռ.a�n�&��A�j*;aݧ�����>p+(���0���%�u^8j�W�N��_�
����2x���rp���1F��b����<������ز�>���,��9�y��OXNL��2�͛�E;�H�(mC��:�η��
`���걷p��RV*?�K��%$H����ïK���4�<���7�L|��\����.��I{���s�:^�$f0:B���
�IZQ6Ra�Ў���Ɖ��"\	�6��� �  $�z}��(%�}{�k�d7/w����|��q�p���r+<�x�����0�z04���Ȯ���V��U*e'��d76�9"C?�yQ¾E�f�H����:�/|1�۟�>[(f�/�%�sw7���JS�޿6�L� 湁B�GT畩лg3��"�%�e����T�[��k�GԱ�j���.��S���+K���g(${l1����$ӳ>a��d7�3U� ��'"�L$��Ј*�n���vv�>`�g�:	K����|�Z����`�
�ID������:H�0�f�؉�]� uA5,���c���&�lD��I�'3c9���Mju���|�����h�>���)���Lν�svunPd�9�λ�E����g��T�	z������>n���˚�Hء����D����O��$��V
_B�*Ւ3{t2��	���Qbu|���9���ۯ�O�]T俒g[/��tA�U7����[0��<��͉��t�Б_zv8w�(���4���7������:�w����H`�1��$�(�}�8z.�-3�G�i�2�P��p�Z�L䯷��=H���
5VuiDL9/��o
r5�!dk�v�B����Z��n';�;0>��������wYF��A
���F�/Z��(�+T�fh��"�oWY���݄y�w�SN8?*8{��17ARF��r�j�¥e
Ԇ�q&��mxA�sc�k��~�$UH�?���p�'��)��2�7�uz:Ӝ��G����(��3K�<��l�dAE3� �T��o6!��I"B���g��~T�y����spN�ٝ�t�����龄�JDн;��N���rjq��l%F����A�w�$7�����&��(z�4�d�3;��`�&�/|�X��w
�z��ѷړD�-�K߰MÇ��W HQ���̀|T���:��A�����:��?�lEZ���c ��.����?��O�?}���      �   X  x���1j�0@g��@��,َ�6��!Ph�.���d���d̐)G�������#0�Iz_2�dmwh�pj2�����n�F7����3(����dB�T�ʫ�/X�������pHq�.�pλ9pM���ݎ�w�i��K�eoP����10��~A����b�s�]8�ۜ/�ͺp��"�BN��j�]3d��Lǭ����S{(�
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