PGDMP         "        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27815 	   eksterior    TABLE       CREATE TABLE public.eksterior (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "adjutableHeadlight" character varying(255) NOT NULL,
    "lampuKabutDepan" character varying(255) NOT NULL,
    "kacaSpionElektrik" character varying(255) NOT NULL,
    "kacaSpionLuarManual" character varying(255) NOT NULL,
    "wiperOtomatis" character varying(255) NOT NULL,
    "wiperKacaBelakang" character varying(255) NOT NULL,
    "coverVelg" character varying(255) NOT NULL,
    "velgAlloy" character varying(255) NOT NULL,
    "anthenaElektrik" character varying(255) NOT NULL,
    "spoilerBelakang" character varying(255) NOT NULL,
    "atapConvertible" character varying(255) NOT NULL,
    "roofRack" character varying(255) NOT NULL,
    "sunRoof" character varying(255) NOT NULL,
    "pijakanSamping" character varying(255) NOT NULL,
    "lampuSein" character varying(255) NOT NULL,
    "anthenaTerpadu" character varying(255) NOT NULL,
    "grilleKrom" character varying(255) NOT NULL,
    "roofRail" character varying(255) NOT NULL,
    "jenisRemBelakang" character varying(20) NOT NULL,
    "jenisRemDepan" character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "eksterior_adjutableHeadlight_check" CHECK ((("adjutableHeadlight")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_anthenaElektrik_check" CHECK ((("anthenaElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_anthenaTerpadu_check" CHECK ((("anthenaTerpadu")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_atapConvertible_check" CHECK ((("atapConvertible")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_coverVelg_check" CHECK ((("coverVelg")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_grilleKrom_check" CHECK ((("grilleKrom")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_kacaSpionElektrik_check" CHECK ((("kacaSpionElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_kacaSpionLuarManual_check" CHECK ((("kacaSpionLuarManual")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_lampuKabutDepan_check" CHECK ((("lampuKabutDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_lampuSein_check" CHECK ((("lampuSein")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_pijakanSamping_check" CHECK ((("pijakanSamping")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_roofRack_check" CHECK ((("roofRack")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_roofRail_check" CHECK ((("roofRail")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_spoilerBelakang_check" CHECK ((("spoilerBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_sunRoof_check" CHECK ((("sunRoof")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_velgAlloy_check" CHECK ((("velgAlloy")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_wiperKacaBelakang_check" CHECK ((("wiperKacaBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_wiperOtomatis_check" CHECK ((("wiperOtomatis")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.eksterior;
       public         heap    postgres    false            �            1259    27813    eksterior_id_seq    SEQUENCE     y   CREATE SEQUENCE public.eksterior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.eksterior_id_seq;
       public          postgres    false    250            �           0    0    eksterior_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.eksterior_id_seq OWNED BY public.eksterior.id;
          public          postgres    false    249            
           2604    27818    eksterior id    DEFAULT     l   ALTER TABLE ONLY public.eksterior ALTER COLUMN id SET DEFAULT nextval('public.eksterior_id_seq'::regclass);
 ;   ALTER TABLE public.eksterior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            �          0    27815 	   eksterior 
   TABLE DATA           �  COPY public.eksterior (id, id_type, "adjutableHeadlight", "lampuKabutDepan", "kacaSpionElektrik", "kacaSpionLuarManual", "wiperOtomatis", "wiperKacaBelakang", "coverVelg", "velgAlloy", "anthenaElektrik", "spoilerBelakang", "atapConvertible", "roofRack", "sunRoof", "pijakanSamping", "lampuSein", "anthenaTerpadu", "grilleKrom", "roofRail", "jenisRemBelakang", "jenisRemDepan", created_at, updated_at) FROM stdin;
    public          postgres    false    250          �           0    0    eksterior_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.eksterior_id_seq', 56, true);
          public          postgres    false    249                       2606    27841    eksterior eksterior_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.eksterior
    ADD CONSTRAINT eksterior_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.eksterior DROP CONSTRAINT eksterior_pkey;
       public            postgres    false    250                       2606    27842 #   eksterior eksterior_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.eksterior
    ADD CONSTRAINT eksterior_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.eksterior DROP CONSTRAINT eksterior_id_type_foreign;
       public          postgres    false    250            �   �  x�͙Mn1��z��R���i�#
t4Y�Y���K�A����-��@`$_�2�ǧ�)P�x����<���q�������><|��{|������#Ǜ(71���hi�Z��⺋kS#!�!������)������Ӫ�X��j1䰾�֯o�r��R�$T''����PE/��2YK r�J���J�5{I�y�C$NRY�bЉ��d%�e�t���V�?XQl�5n���l�n :E�@�"�s�!�]�}o�l1P��b�ci�Z�J>}����Gu�����j1h<���J��bМrr׫/��,go��m�14�,�z�sI,�-�>վ��6�����
�x;{������{o0hl�tq���g'�4���ָ��X���G�j1hl�sk��>xN7�3hl�skU�A��[c����`��&��8�L�����G�)�Ac��[c�p�4�ɹ5���0�̠�M���*�Š�����61���Փ��[��H��6����LW�3hl�kTc-w�-��F5K������[t��V�!i*�Π�-���� �4�rɕi-��
���qt0h�e��U�&w0d	�>{���q?��o�`Х'�{��l�5�����8��ΐk��^W�nngБ,��=U���A���ZWٖ�`��(��=	������J��ъ��|�Z�5D#�͚��k�F��rg���O#ۥ>     