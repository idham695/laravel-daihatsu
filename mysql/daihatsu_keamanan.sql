PGDMP     7    "        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27769    keamanan    TABLE     �  CREATE TABLE public.keamanan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "smartAccess" character varying(255) NOT NULL,
    "powerDoorLocks" character varying(255) NOT NULL,
    "antiTheftDevice" character varying(255) NOT NULL,
    "alarmMobil" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "keamanan_alarmMobil_check" CHECK ((("alarmMobil")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_antiTheftDevice_check" CHECK ((("antiTheftDevice")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_powerDoorLocks_check" CHECK ((("powerDoorLocks")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_smartAccess_check" CHECK ((("smartAccess")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.keamanan;
       public         heap    postgres    false            �            1259    27767    keamanan_id_seq    SEQUENCE     x   CREATE SEQUENCE public.keamanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.keamanan_id_seq;
       public          postgres    false    246            �           0    0    keamanan_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.keamanan_id_seq OWNED BY public.keamanan.id;
          public          postgres    false    245            
           2604    27772    keamanan id    DEFAULT     j   ALTER TABLE ONLY public.keamanan ALTER COLUMN id SET DEFAULT nextval('public.keamanan_id_seq'::regclass);
 :   ALTER TABLE public.keamanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            �          0    27769    keamanan 
   TABLE DATA           �   COPY public.keamanan (id, id_type, "smartAccess", "powerDoorLocks", "antiTheftDevice", "alarmMobil", created_at, updated_at) FROM stdin;
    public          postgres    false    246   �       �           0    0    keamanan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.keamanan_id_seq', 57, true);
          public          postgres    false    245                       2606    27781    keamanan keamanan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.keamanan
    ADD CONSTRAINT keamanan_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.keamanan DROP CONSTRAINT keamanan_pkey;
       public            postgres    false    246                       2606    27782 !   keamanan keamanan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.keamanan
    ADD CONSTRAINT keamanan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.keamanan DROP CONSTRAINT keamanan_id_type_foreign;
       public          postgres    false    246            �   w  x������ D��W�lD�m�#�H�D�%���Sؓ�5-��j�z�7E5x$H�������o?�����GԏX^qk���,����_qo"-nC�'5����x�^�-��g�Ԧj1h8��IZ)CZ>���ɰ�gm�)�ŰI�6=,�#�>k���=�Z��b�&w�O.W��Wb���h1p��ýP[�3#ǧ`��_16�O�� =����j��I,�n�4^�����@�SZ��8"�Oy�/4�X�?��>��?�I�ze���O���K�Y��ͣ/��O��v�^-����^ZJ��h~^��-�ϫ�]���@��*g��+��B^��U����U����b��y�?��&�b��y���6[4?��w�V����U���<��h^v�/�w����-����述��#��b1м��_6��h^q䯴8=�3�<q䯌���@�c�KKS~:�S�e�B�W�g�t~t����x<����|�t�ő�r�?���:֯������u̿��ؼ:�_[���3�#�c�����8V��N�gg`��c��������TG~��������ȟ�Og`��c��8?�����:�[��j10<�ÿ:�|�����z��%��  E~��     