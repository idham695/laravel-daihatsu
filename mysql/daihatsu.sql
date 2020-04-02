PGDMP         /                x            daihatsu    12.2    12.2 t    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    19060    color_product    TABLE       CREATE TABLE public.color_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    color character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.color_product;
       public         heap    postgres    false            �            1259    19058    color_product_id_seq    SEQUENCE     }   CREATE SEQUENCE public.color_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.color_product_id_seq;
       public          postgres    false    220            �           0    0    color_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.color_product_id_seq OWNED BY public.color_product.id;
          public          postgres    false    219            �            1259    19100    credit    TABLE     �   CREATE TABLE public.credit (
    id bigint NOT NULL,
    id_down_payment integer NOT NULL,
    price integer NOT NULL,
    tenor integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.credit;
       public         heap    postgres    false            �            1259    19098    credit_id_seq    SEQUENCE     v   CREATE SEQUENCE public.credit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.credit_id_seq;
       public          postgres    false    226            �           0    0    credit_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.credit_id_seq OWNED BY public.credit.id;
          public          postgres    false    225            �            1259    19087    down_payment    TABLE     �   CREATE TABLE public.down_payment (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    price_min integer NOT NULL,
    price_max integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.down_payment;
       public         heap    postgres    false            �            1259    19085    down_payment_id_seq    SEQUENCE     |   CREATE SEQUENCE public.down_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.down_payment_id_seq;
       public          postgres    false    224            �           0    0    down_payment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.down_payment_id_seq OWNED BY public.down_payment.id;
          public          postgres    false    223            �            1259    18965    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    18963    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    208            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    207            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            �            1259    19126    minus_product    TABLE     �   CREATE TABLE public.minus_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    kekurangan character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.minus_product;
       public         heap    postgres    false            �            1259    19124    minus_product_id_seq    SEQUENCE     }   CREATE SEQUENCE public.minus_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.minus_product_id_seq;
       public          postgres    false    230            �           0    0    minus_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.minus_product_id_seq OWNED BY public.minus_product.id;
          public          postgres    false    229            �            1259    18956    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    19073    performance    TABLE     �  CREATE TABLE public.performance (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    machine_capacity character varying(20) NOT NULL,
    horse_power character varying(20) NOT NULL,
    torsi character varying(20) NOT NULL,
    fuel character varying(20) DEFAULT 'bensin'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.performance;
       public         heap    postgres    false            �            1259    19071    performance_id_seq    SEQUENCE     {   CREATE SEQUENCE public.performance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.performance_id_seq;
       public          postgres    false    222            �           0    0    performance_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.performance_id_seq OWNED BY public.performance.id;
          public          postgres    false    221            �            1259    19113    plus_product    TABLE     �   CREATE TABLE public.plus_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    kelebihan character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.plus_product;
       public         heap    postgres    false            �            1259    19111    plus_product_id_seq    SEQUENCE     |   CREATE SEQUENCE public.plus_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.plus_product_id_seq;
       public          postgres    false    228            �           0    0    plus_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.plus_product_id_seq OWNED BY public.plus_product.id;
          public          postgres    false    227            �            1259    18977    product    TABLE     q  CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    min_price double precision NOT NULL,
    max_price double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    banner character varying(100),
    "desc" text
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    18975    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    210            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    209            �            1259    19013    product_image    TABLE     �   CREATE TABLE public.product_image (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.product_image;
       public         heap    postgres    false            �            1259    19026    product_image__interior    TABLE     �   CREATE TABLE public.product_image__interior (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.product_image__interior;
       public         heap    postgres    false            �            1259    19024    product_image__interior_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image__interior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_image__interior_id_seq;
       public          postgres    false    216            �           0    0    product_image__interior_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_image__interior_id_seq OWNED BY public.product_image__interior.id;
          public          postgres    false    215            �            1259    19047    product_image_eksterior    TABLE     �   CREATE TABLE public.product_image_eksterior (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.product_image_eksterior;
       public         heap    postgres    false            �            1259    19045    product_image_eksterior_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_eksterior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_image_eksterior_id_seq;
       public          postgres    false    218            �           0    0    product_image_eksterior_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_image_eksterior_id_seq OWNED BY public.product_image_eksterior.id;
          public          postgres    false    217            �            1259    19011    product_image_id_seq    SEQUENCE     }   CREATE SEQUENCE public.product_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_image_id_seq;
       public          postgres    false    214            �           0    0    product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_image_id_seq OWNED BY public.product_image.id;
          public          postgres    false    213            �            1259    18988    type    TABLE       CREATE TABLE public.type (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    type character varying(50) NOT NULL,
    price double precision NOT NULL,
    "desc" text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.type;
       public         heap    postgres    false            �            1259    18986    type_id_seq    SEQUENCE     t   CREATE SEQUENCE public.type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.type_id_seq;
       public          postgres    false    212            �           0    0    type_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.type_id_seq OWNED BY public.type.id;
          public          postgres    false    211            �            1259    18945    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    18943    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �
           2604    19063    color_product id    DEFAULT     t   ALTER TABLE ONLY public.color_product ALTER COLUMN id SET DEFAULT nextval('public.color_product_id_seq'::regclass);
 ?   ALTER TABLE public.color_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �
           2604    19103 	   credit id    DEFAULT     f   ALTER TABLE ONLY public.credit ALTER COLUMN id SET DEFAULT nextval('public.credit_id_seq'::regclass);
 8   ALTER TABLE public.credit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    19090    down_payment id    DEFAULT     r   ALTER TABLE ONLY public.down_payment ALTER COLUMN id SET DEFAULT nextval('public.down_payment_id_seq'::regclass);
 >   ALTER TABLE public.down_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �
           2604    18968    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208            �
           2604    16399    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    19129    minus_product id    DEFAULT     t   ALTER TABLE ONLY public.minus_product ALTER COLUMN id SET DEFAULT nextval('public.minus_product_id_seq'::regclass);
 ?   ALTER TABLE public.minus_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �
           2604    19076    performance id    DEFAULT     p   ALTER TABLE ONLY public.performance ALTER COLUMN id SET DEFAULT nextval('public.performance_id_seq'::regclass);
 =   ALTER TABLE public.performance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    19116    plus_product id    DEFAULT     r   ALTER TABLE ONLY public.plus_product ALTER COLUMN id SET DEFAULT nextval('public.plus_product_id_seq'::regclass);
 >   ALTER TABLE public.plus_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �
           2604    18980 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �
           2604    19016    product_image id    DEFAULT     t   ALTER TABLE ONLY public.product_image ALTER COLUMN id SET DEFAULT nextval('public.product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �
           2604    19029    product_image__interior id    DEFAULT     �   ALTER TABLE ONLY public.product_image__interior ALTER COLUMN id SET DEFAULT nextval('public.product_image__interior_id_seq'::regclass);
 I   ALTER TABLE public.product_image__interior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �
           2604    19050    product_image_eksterior id    DEFAULT     �   ALTER TABLE ONLY public.product_image_eksterior ALTER COLUMN id SET DEFAULT nextval('public.product_image_eksterior_id_seq'::regclass);
 I   ALTER TABLE public.product_image_eksterior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �
           2604    18991    type id    DEFAULT     b   ALTER TABLE ONLY public.type ALTER COLUMN id SET DEFAULT nextval('public.type_id_seq'::regclass);
 6   ALTER TABLE public.type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �
           2604    18948    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �          0    19060    color_product 
   TABLE DATA           ]   COPY public.color_product (id, id_product, image, color, created_at, updated_at) FROM stdin;
    public          postgres    false    220   ,�       �          0    19100    credit 
   TABLE DATA           [   COPY public.credit (id, id_down_payment, price, tenor, created_at, updated_at) FROM stdin;
    public          postgres    false    226   I�       �          0    19087    down_payment 
   TABLE DATA           a   COPY public.down_payment (id, id_type, price_min, price_max, created_at, updated_at) FROM stdin;
    public          postgres    false    224   f�       �          0    18965    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    208   ��       �          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   ��       �          0    19126    minus_product 
   TABLE DATA           [   COPY public.minus_product (id, id_product, kekurangan, created_at, updated_at) FROM stdin;
    public          postgres    false    230   �       �          0    18956    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    206    �       �          0    19073    performance 
   TABLE DATA           v   COPY public.performance (id, id_type, machine_capacity, horse_power, torsi, fuel, created_at, updated_at) FROM stdin;
    public          postgres    false    222   �       �          0    19113    plus_product 
   TABLE DATA           Y   COPY public.plus_product (id, id_product, kelebihan, created_at, updated_at) FROM stdin;
    public          postgres    false    228   :�       �          0    18977    product 
   TABLE DATA           p   COPY public.product (id, name, image, min_price, max_price, created_at, updated_at, banner, "desc") FROM stdin;
    public          postgres    false    210   ��       �          0    19013    product_image 
   TABLE DATA           V   COPY public.product_image (id, id_product, image, created_at, updated_at) FROM stdin;
    public          postgres    false    214   t�       �          0    19026    product_image__interior 
   TABLE DATA           `   COPY public.product_image__interior (id, id_product, image, created_at, updated_at) FROM stdin;
    public          postgres    false    216   ��       �          0    19047    product_image_eksterior 
   TABLE DATA           `   COPY public.product_image_eksterior (id, id_product, image, created_at, updated_at) FROM stdin;
    public          postgres    false    218   ��       �          0    18988    type 
   TABLE DATA           [   COPY public.type (id, id_product, type, price, "desc", created_at, updated_at) FROM stdin;
    public          postgres    false    212   ˜       �          0    18945    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    205   ��       �           0    0    color_product_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.color_product_id_seq', 1, false);
          public          postgres    false    219            �           0    0    credit_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.credit_id_seq', 1, false);
          public          postgres    false    225            �           0    0    down_payment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.down_payment_id_seq', 1, false);
          public          postgres    false    223            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    207            �           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 230, true);
          public          postgres    false    202            �           0    0    minus_product_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.minus_product_id_seq', 23, true);
          public          postgres    false    229            �           0    0    performance_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.performance_id_seq', 1, false);
          public          postgres    false    221            �           0    0    plus_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.plus_product_id_seq', 25, true);
          public          postgres    false    227            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    209            �           0    0    product_image__interior_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_image__interior_id_seq', 1, false);
          public          postgres    false    215            �           0    0    product_image_eksterior_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_image_eksterior_id_seq', 1, false);
          public          postgres    false    217            �           0    0    product_image_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_image_id_seq', 1, false);
          public          postgres    false    213            �           0    0    type_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.type_id_seq', 64, true);
          public          postgres    false    211            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    204            �
           2606    19065     color_product color_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.color_product
    ADD CONSTRAINT color_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.color_product DROP CONSTRAINT color_product_pkey;
       public            postgres    false    220                        2606    19105    credit credit_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.credit
    ADD CONSTRAINT credit_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.credit DROP CONSTRAINT credit_pkey;
       public            postgres    false    226            �
           2606    19092    down_payment down_payment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.down_payment
    ADD CONSTRAINT down_payment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.down_payment DROP CONSTRAINT down_payment_pkey;
       public            postgres    false    224            �
           2606    18974    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    208            �
           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203                       2606    19131     minus_product minus_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.minus_product
    ADD CONSTRAINT minus_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.minus_product DROP CONSTRAINT minus_product_pkey;
       public            postgres    false    230            �
           2606    19079    performance performance_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_pkey;
       public            postgres    false    222                       2606    19118    plus_product plus_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.plus_product
    ADD CONSTRAINT plus_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.plus_product DROP CONSTRAINT plus_product_pkey;
       public            postgres    false    228            �
           2606    19031 4   product_image__interior product_image__interior_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.product_image__interior
    ADD CONSTRAINT product_image__interior_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.product_image__interior DROP CONSTRAINT product_image__interior_pkey;
       public            postgres    false    216            �
           2606    19052 4   product_image_eksterior product_image_eksterior_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.product_image_eksterior
    ADD CONSTRAINT product_image_eksterior_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.product_image_eksterior DROP CONSTRAINT product_image_eksterior_pkey;
       public            postgres    false    218            �
           2606    19018     product_image product_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_pkey;
       public            postgres    false    214            �
           2606    18985    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    210            �
           2606    18996    type type_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public            postgres    false    212            �
           2606    18955    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            �
           2606    18953    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            �
           1259    18962    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    206            	           2606    19066 .   color_product color_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.color_product
    ADD CONSTRAINT color_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.color_product DROP CONSTRAINT color_product_id_product_foreign;
       public          postgres    false    2800    210    220                       2606    19106 %   credit credit_id_down_payment_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit
    ADD CONSTRAINT credit_id_down_payment_foreign FOREIGN KEY (id_down_payment) REFERENCES public.down_payment(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.credit DROP CONSTRAINT credit_id_down_payment_foreign;
       public          postgres    false    2814    224    226                       2606    19093 )   down_payment down_payment_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.down_payment
    ADD CONSTRAINT down_payment_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.down_payment DROP CONSTRAINT down_payment_id_type_foreign;
       public          postgres    false    224    212    2802                       2606    19132 .   minus_product minus_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.minus_product
    ADD CONSTRAINT minus_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.minus_product DROP CONSTRAINT minus_product_id_product_foreign;
       public          postgres    false    230    210    2800            
           2606    19080 '   performance performance_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_id_type_foreign;
       public          postgres    false    222    212    2802                       2606    19119 ,   plus_product plus_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.plus_product
    ADD CONSTRAINT plus_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.plus_product DROP CONSTRAINT plus_product_id_product_foreign;
       public          postgres    false    228    210    2800                       2606    19032 B   product_image__interior product_image__interior_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image__interior
    ADD CONSTRAINT product_image__interior_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.product_image__interior DROP CONSTRAINT product_image__interior_id_product_foreign;
       public          postgres    false    216    210    2800                       2606    19053 B   product_image_eksterior product_image_eksterior_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image_eksterior
    ADD CONSTRAINT product_image_eksterior_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.product_image_eksterior DROP CONSTRAINT product_image_eksterior_id_product_foreign;
       public          postgres    false    218    2800    210                       2606    19019 .   product_image product_image_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_id_product_foreign;
       public          postgres    false    214    210    2800                       2606    18997    type type_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.type DROP CONSTRAINT type_id_product_foreign;
       public          postgres    false    210    2800    212            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   k  x�}��n�0E���L����/�,
��F�
TU�~�*%�X�@�tNb_]�၀�A1T�7�׳�K�k3�|�x��c��@�U	��x���U��Эpt�Bn�a(�����X��h$t�o+�5#�����u�az�NP����z�nch9��ϱT.���xy&ҩ�z���x��.��q�Q.p��e��D��UF�z��/cIF��*�;�_�%�(�)��G�n�}��ɔɖh_�?S"#��2�m�5c/lV()m����d����R�mFNc8�C��Ljh�v5��6Hs�g?�ƒS�)ʼ�k����QiD�u�r맆��0x�i̷'1�F,ʹdh+Z�rER�L��9<�s7�9�EQ�kR�      �   �  x�mT�n�0<�_����[�^��E��%�u��%J �����e]{̝}͎Lddi���|�唦*�U�^�D�dɣ�く�܉iО�=���^DJU�\/a"�W
�yj�3-���K%�%L`x�#�sf �1�@\1U���v�dj��㚡ȗ0�\�=Bt�6v�r0G
���@�>�ǁ�E���<�kg�wζV�U��$O��b;U���P��qH�-�H6p ySRc0��L�FfK�؂�iF�J����~�m�0!ӤHv]��8F�?��:��������SU�-aBJ=���Ց*�^���N��3{�~�TX�#��L�o	��:��v�X�'��X��u���&d�o�-;��`BT̀�-v&�)��,aB`ڽ/�c��
�^�1ao�'Ad��G���G�s0�.�+�T>�C��v�?gl�U>�Ą	�A���-���ī���!�v	r;ѸZ��=�ϟkH�F��lT:�Մ	y�l��tN-���M7\U�Ӌ�V�Ҟ�?�VS�����1LG�O�Ў7��b������En$�S�Vdi�=V|\��yq�l1��
�xX5)��>:S���c3^��T���$h�p��b��]˃	q@g߰�{�.��qC�
��[�5��%�L�5���t<�n@W~�Ş��G���z���ݎo�����
���[��B�����x�hL�Ca4�a���?�.�]�Z�J��ц�o��E��      �      x������ � �      �      x������ � �      �   H  x�uT�n�0<�_�h
>��ͩ��Eb��˪b$B/��P�ﻒ� �X_vF���D��\�'���b�[y�|�¨$���X�z����W��i�NaT!�<���-k\�۸RY�aOE���,�6w5�|,���
B*!�45(tʁUи ��|�J}La�!/�a��C�Nϯ,�Q�>��jm�!��=Q�ko����zl���̅z_ǜ#�8���<	#C���.�%s��n툴��h�F���ꪩ��Z>dPlk�LaTp����X.�.dc5�U�n
��)�
��q\յ]���Na�&�Q!�{Fq�0��-�F�B�o�dݠږ�C
�bGv���c��0ç�����X9�8�����E	ͩ�dO�A(�v�g�AgE
��MzD瞚~
䊰Gs�6)�b�>"��o.����Q�P�c�{�0=9�Kw�`/c_����2�Q�Q2�Q����RB�0*h�Ņ����o�En�;��]�2��U3�,�o'�o�4&>����Wr�36o����V��z���n�jǲ���6��}o�zN��S��)�<����y�]���%Ҩ��z��o�)�� ���      �   �  x�}W]s�}V~�G��8�m��v����4��v�/T�ȴ(JÏM��� ��I{g2�B� p ���N�N���nl���,�Eu�,W���WKk��DT[�����F�>
V!�h��tZ�>����� ��b��A��jY]�|�M�D�]'m)n�m�����[i�^��!vq���G9��l5�F���VԪVN�8D��J����+�D+�
r����N<;1j��G�'AQ-�W8A�$?�ݵt��b�V������%�}�`�{��0Q�,�!vb�'ׂn���bͶ�A=Ʉ�Pk#�������S8]���pi�(�o���POj�O�
@��ۏ�8�HU=��!�����e�1����1�Z�-����^���N����6�qJp" .���/��A� �I��PP����~�:P�m=H�i)�]��M�\��*2�Ȏq��:rH?�m836&�0aKa1�
�Xɐn�8rZ�,�ݔbSF� ,�@�=���@q���p5RR"
`l,�����[��BrN�ғp����r�����T����v6 ?D���Z�V�٬�?�Z,ٮj�F�D*��0�({ɹ��]�=e�ﺝ��^=rLڈZY��Q)�O��(�<YbTsk����	I7a�Taտ�?'It�rN��?��?�����G^��Ϩ��V�Uy^T�g�DV�w�>ػ1o�Ҿ��ܧ�gUy�ٝ�g�G�/��R�m�/�i{_����ꪨ�.��p�e�[|�Ca�ɲ�媼,V8���ҫ�rz�E��,|U����H�\���,�,�bUU�lUE�d��������ֳ�[Vg�yEx����~b6�y���lb��
*�'b#�yB��^�%�;�L:}��T�Cb'Ϊ���E��#[��[�*�\󱑔k􊗜�c�㸃8�u0�?*��\M������$KG�^�(*D*�W���=�+m�,;,v0���p�~��U��ҫ��T��K�a�Z����b��?�O��&�(���d����@��*
�ש5�QM���#��/�ч-�����2čx"�����+��;姰2Q)MԚ�j��su/[~�����/�����~O�`	� x�Y��<���U)�[s`���ԋzn���pn2փ�J�C��8k�>ɦ�5w`FO���+��@��db�Y	E�%vGF��Nj�цdѪ���x�$�x��/4d)Br�I拲Z��L�z��b]�����b�d�V끦�E{]�I,�|PO��©[0�Y�stt4z"V?{�x�U�oP�I}z��<��I�{=E�͡S+ѣ:�JS��������̳�d,�c�We(�i�s4
�C�W3Ҹ�v��5��	2;�r�"9�@���M����rtH� �Xɓ���9��kA?�7�	��S�����j��@I�E��4���H3��רqZ�3uO?Ob���R�9����Q���o
}��3=���b1aP�_)��|TaR{���ǈ�{��c�?mnp�<��saU��f7��g�ؔ��C����o�Aز&�>l�v.7bޙW�tw��F��=7/��̤��A2�d�Kz%�D�h�kÌ�R�_�E�EN��}���Qn0T���j�\�E2�ͼ�#$WW��,9��l��|�g��ʨ.15*��c�^�$q��i8`��q��f����c�`��8���~�����22��s�H�~G�J�L,�O�/_(:�7�{�ݞ�BL\���aD�X�iz���	ڗ �{%%�%�N�z:������z�b��Ƶ�!p�&�X_`���9���k8߄�pK�C#��N��T^���[M���g<Ѥ��A[�T�W�[�sI6bF�S�K��PM(r!P�"��O#�����y�k�.bu��Ұew����-r	aM��_��X�!�}�IǻҴ����!ȁK���`��L�p��~�ŗ���-�{s�~аg�y��������o���t      �      x������ � �      �      x������ � �      �      x������ � �      �   "  x�}����6�k�)T��B �����{f��ܝ'[�q����$ꖄ<;����@ ��?|��>�����������8���_���}p����¼8�5
�b���0OK�-p���n�u��6��)*������-�!�|O�5��]�˧?�_<���y��� �Bx��8y�ڻ�-��o.�u4�-+9[�0$����?�b��&f8:\8.>�ڼ�c�Mc�y³���P>.b@���<��8IF{�D=~��� �Ŝ��� �O�$H�\�	D��@�B`��&A�>���;B� �vċ:!�s� É�`�Q��A���"B@:�����Z<�3�����qM�Vsa��$��?@4����J!�),��l�����`|_f+Fr4�P<��\jk��Tg|8K��M1$��fw&�b|�`#U�B/��}��o��'��Ҁ\�k�ҔL�	R�����&�ң=@J�Dw�9@m���
q���dL]���M�5z���N ]^U��"Ձ��J7�-{Ih�4q ��2 �$�����V�#�F�o3��uQ�
P� A<I��v�T�@������䅺DhX��ZN���!C�-�,�U���-d���Ҁ����ۏ���IIH�8R~di��q�C譸�w;*0o��������p;d6ط���SNa����c�]@@� �uw�u��jڢ����ԝ�'dּ��Ҷi 3���E�7�Σ����Y�t[����O�F9>�Җv{����S{l6<Q�������E.�2�K{)!��F�)��y�.�E��q�aϯ�����h(�hN<}�F��'NB6���i �kE\>U�ܧ#Y�ܞ�M��׀<)N���Xl�-��HN�,wJ�4�������w�U%Z�� �oU�P!ם�u��&V����<�a�vyb�X.����@Fe1��v�ă=��C���:��6�`iQM�=NL��4�Zٶ]=����A���ʰ���I�D�o��I���4�9���}      �      x������ � �     