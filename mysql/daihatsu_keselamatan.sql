PGDMP     &    #        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27738    keselamatan    TABLE     Z  CREATE TABLE public.keselamatan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "airbagDepan" character varying(255) NOT NULL,
    "airbagBelakang" character varying(255) NOT NULL,
    "childSafety" character varying(255) NOT NULL,
    "kantongUdara" character varying(255) NOT NULL,
    "airbagSamping" character varying(255) NOT NULL,
    "vehicleStability" character varying(255) NOT NULL,
    "sabukPengaman" character varying(255) NOT NULL,
    "pengingatPengaman" character varying(255) NOT NULL,
    "kameraBelakang" character varying(255) NOT NULL,
    "sensorParkir" character varying(255) NOT NULL,
    "engineCheck" character varying(255) NOT NULL,
    "pengukurTekanan" character varying(255) NOT NULL,
    "pelindungBenturan" character varying(255) NOT NULL,
    "pengingatPintu" character varying(255) NOT NULL,
    "kontrolTraksi" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "keselamatan_airbagBelakang_check" CHECK ((("airbagBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_airbagDepan_check" CHECK ((("airbagDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_airbagSamping_check" CHECK ((("airbagSamping")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_childSafety_check" CHECK ((("childSafety")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_engineCheck_check" CHECK ((("engineCheck")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kameraBelakang_check" CHECK ((("kameraBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kantongUdara_check" CHECK ((("kantongUdara")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kontrolTraksi_check" CHECK ((("kontrolTraksi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pelindungBenturan_check" CHECK ((("pelindungBenturan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengingatPengaman_check" CHECK ((("pengingatPengaman")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengingatPintu_check" CHECK ((("pengingatPintu")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengukurTekanan_check" CHECK ((("pengukurTekanan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_sabukPengaman_check" CHECK ((("sabukPengaman")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_sensorParkir_check" CHECK ((("sensorParkir")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_vehicleStability_check" CHECK ((("vehicleStability")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.keselamatan;
       public         heap    postgres    false            �            1259    27736    keselamatan_id_seq    SEQUENCE     {   CREATE SEQUENCE public.keselamatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.keselamatan_id_seq;
       public          postgres    false    244            �           0    0    keselamatan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.keselamatan_id_seq OWNED BY public.keselamatan.id;
          public          postgres    false    243            
           2604    27741    keselamatan id    DEFAULT     p   ALTER TABLE ONLY public.keselamatan ALTER COLUMN id SET DEFAULT nextval('public.keselamatan_id_seq'::regclass);
 =   ALTER TABLE public.keselamatan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �          0    27738    keselamatan 
   TABLE DATA           Q  COPY public.keselamatan (id, id_type, "airbagDepan", "airbagBelakang", "childSafety", "kantongUdara", "airbagSamping", "vehicleStability", "sabukPengaman", "pengingatPengaman", "kameraBelakang", "sensorParkir", "engineCheck", "pengukurTekanan", "pelindungBenturan", "pengingatPintu", "kontrolTraksi", created_at, updated_at) FROM stdin;
    public          postgres    false    244   ]       �           0    0    keselamatan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.keselamatan_id_seq', 56, true);
          public          postgres    false    243                       2606    27761    keselamatan keselamatan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.keselamatan
    ADD CONSTRAINT keselamatan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.keselamatan DROP CONSTRAINT keselamatan_pkey;
       public            postgres    false    244                       2606    27762 '   keselamatan keselamatan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.keselamatan
    ADD CONSTRAINT keselamatan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.keselamatan DROP CONSTRAINT keselamatan_id_type_foreign;
       public          postgres    false    244            �   �  x������0�k�S�.����s\ �i����d�<iS$�k�30jg��-Xx��������ǧ�'<����S�)����-�au��1���5�xf�D�!��o5���)���6b�=������2�y5l_��G�C��Ke��c��L\k�d��=X���e��v�-X��*i��1�[���8X�c`���-G��e�9�´]�8�&�4�7.��:���(��J�c�-�l��G9���d#��k$/�e��b��s�vڒ/XZ��5��2���!���<2���%�y�b���!\9�g���b���K�ܳ��VL�������c��l�~
��1ЊY� �p�h�,M�C�{�b�&������@+fi���c��4Ava;dg��4AageV@+fi��@+fi���˱na��8Al��X�	2��ט�k(�����@+q�Lage��ЊE� L��1Њ�N[/4[Y�sf#]�q2ЊUms�l2ЊM���k��@+V�m��,�b��r�8~E��m��3JUݳ68P\��Ysz����P�s֜���g�P�=�f�d �����o1�]�z?��?����㪟���GS'��'❁�����H�OfUS��/����7��t5hҮ7Hq�X"~|�%���     