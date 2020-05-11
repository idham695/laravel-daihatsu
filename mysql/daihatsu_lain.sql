PGDMP         1        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27849 	   lain_lain    TABLE     �  CREATE TABLE public.lain_lain (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    tachometer character varying(255) NOT NULL,
    "electronicMultiTripmeter" character varying(255) NOT NULL,
    "jokDilapisiKulit" character varying(255) NOT NULL,
    "lapisanBerbahanKain" character varying(255) NOT NULL,
    "stirBerbalutKulit" character varying(255) NOT NULL,
    "temperaturUdaraLuar" character varying(255) NOT NULL,
    "odometerDigital" character varying(255) NOT NULL,
    "pengaturanKursiElektrik" character varying(255) NOT NULL,
    "tangkiBahanBakar" character varying(255) NOT NULL,
    "jenisLampuDepan" character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "lain_lain_electronicMultiTripmeter_check" CHECK ((("electronicMultiTripmeter")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_jokDilapisiKulit_check" CHECK ((("jokDilapisiKulit")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_lapisanBerbahanKain_check" CHECK ((("lapisanBerbahanKain")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_odometerDigital_check" CHECK ((("odometerDigital")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_pengaturanKursiElektrik_check" CHECK ((("pengaturanKursiElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_stirBerbalutKulit_check" CHECK ((("stirBerbalutKulit")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT lain_lain_tachometer_check CHECK (((tachometer)::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_tangkiBahanBakar_check" CHECK ((("tangkiBahanBakar")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_temperaturUdaraLuar_check" CHECK ((("temperaturUdaraLuar")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.lain_lain;
       public         heap    postgres    false            �            1259    27847    lain_lain_id_seq    SEQUENCE     y   CREATE SEQUENCE public.lain_lain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lain_lain_id_seq;
       public          postgres    false    252            �           0    0    lain_lain_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lain_lain_id_seq OWNED BY public.lain_lain.id;
          public          postgres    false    251            
           2604    27852    lain_lain id    DEFAULT     l   ALTER TABLE ONLY public.lain_lain ALTER COLUMN id SET DEFAULT nextval('public.lain_lain_id_seq'::regclass);
 ;   ALTER TABLE public.lain_lain ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            �          0    27849 	   lain_lain 
   TABLE DATA             COPY public.lain_lain (id, id_type, tachometer, "electronicMultiTripmeter", "jokDilapisiKulit", "lapisanBerbahanKain", "stirBerbalutKulit", "temperaturUdaraLuar", "odometerDigital", "pengaturanKursiElektrik", "tangkiBahanBakar", "jenisLampuDepan", created_at, updated_at) FROM stdin;
    public          postgres    false    252   p       �           0    0    lain_lain_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lain_lain_id_seq', 56, true);
          public          postgres    false    251                       2606    27866    lain_lain lain_lain_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_pkey;
       public            postgres    false    252                       2606    27867 #   lain_lain lain_lain_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_id_type_foreign;
       public          postgres    false    252            �   �  x���M��0��z��LPUI��d�E6�l�d�!C�O��Mp�jpRЋ�y���$������Ӈ��G������ӯ�kҬ�)ק\.y�*ݪǠ����K�;?:{�����\��E{���9΍P���%��m�Z�N����0%�h�Q�}��0'�pz�=�%I������PWh|U*�1p�%�䞵��1p�%f��j=Om�������//?�dI��<�J����>og�����i��p3-����i��O=W�a�d��{]<��%n,��@[�tY��*]��2P=]����c�*z����'�a<PN��a�:ۢ���&/�)W��@U,�P> 8M�c�*j�-h�򕁪X��k���@U,��[P������l�3P5�T=�b���A�=�b��ނ&���X��kPq����:�[JU)�V��*%���lY�J�6���`�`�9�hC9�k0P�6T��U)Q��zU�0P�=Pq<�-:[�Qq0P����`�*5z���V>
�-���3�E�F�\��;8rjt�3�x��F=Wg���inx����s]=_R��s9+/jN-:�y7<�0��-Z�����g�6��w�;�P��ss���o��3�Y�p�5M���oR�s���I4>���I     