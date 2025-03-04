PGDMP     8                    x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    36090 	   lain_lain    TABLE     @	  CREATE TABLE public.lain_lain (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    tachometer character varying(255),
    "electronicMultiTripmeter" character varying(255),
    "jokDilapisiKulit" character varying(255),
    "lapisanBerbahanKain" character varying(255),
    "stirBerbalutKulit" character varying(255),
    "temperaturUdaraLuar" character varying(255),
    "jamDigital" character varying(255),
    "odometerDigital" character varying(255),
    "pengaturanKursiElektrik" character varying(255),
    "tangkiBahanBakar" character varying(255),
    "jenisLampuDepan" character varying(20),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "lain_lain_electronicMultiTripmeter_check" CHECK ((("electronicMultiTripmeter")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_jamDigital_check" CHECK ((("jamDigital")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
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
       public         heap    postgres    false            �            1259    36088    lain_lain_id_seq    SEQUENCE     y   CREATE SEQUENCE public.lain_lain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lain_lain_id_seq;
       public          postgres    false    248            �           0    0    lain_lain_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lain_lain_id_seq OWNED BY public.lain_lain.id;
          public          postgres    false    247            
           2604    36093    lain_lain id    DEFAULT     l   ALTER TABLE ONLY public.lain_lain ALTER COLUMN id SET DEFAULT nextval('public.lain_lain_id_seq'::regclass);
 ;   ALTER TABLE public.lain_lain ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �          0    36090 	   lain_lain 
   TABLE DATA           *  COPY public.lain_lain (id, id_type, tachometer, "electronicMultiTripmeter", "jokDilapisiKulit", "lapisanBerbahanKain", "stirBerbalutKulit", "temperaturUdaraLuar", "jamDigital", "odometerDigital", "pengaturanKursiElektrik", "tangkiBahanBakar", "jenisLampuDepan", created_at, updated_at) FROM stdin;
    public          postgres    false    248   �       �           0    0    lain_lain_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lain_lain_id_seq', 51, true);
          public          postgres    false    247                       2606    36108    lain_lain lain_lain_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_pkey;
       public            postgres    false    248                       2606    36109 #   lain_lain lain_lain_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_id_type_foreign;
       public          postgres    false    248            �   �  x����j�0��>O�H�h$�Һ�.J颛B6�-�?4�����ı4�[ ��grKg~�4|�������~x�{�q����ï�_�=<�yw�⭸�J�%�5��N�A:�p�K"��a���ܸ\|,�C���&�!��>�Xi�!@%L�8��0�;ta��D)-�<��� �s���' �C��-��΃Y--���΄Y���-&��U�Y��O����??��]�t.	���b�@��R�
�l*9���&�Vz���ʺ\�ƅ�^�zF9W�ƅ���r�ō���.����
\�b�)|:�{��0����T$Ys�L�T�K!�,�7-�Y�py��&Ц��T�Z�X4�6�f�*g�\$[4�6f�*-?�,@�����:���pTu�9,@��S���2.�M�۫�<jTg@�V�W�-�ށ�M{۩�ZWÅ��c���Gꚵ0� �Xn��l1��tt�ͷ�|S��R_�╁N�/P�KN(�@���E���2�9j�WZQX�ӦL�tR;Ea1y9m�tV�NQ�ln%+���G�;�X�ma�����9*��ڌժ��h��j1�0����6������7��:w���x��U����r���ke`�īw�]��ꪳ�K����5�|�B��d1������ᕹ�""���V�(��ys]X>Rs��/�.��b�{�?��}�     