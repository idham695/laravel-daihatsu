PGDMP     )                    x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27581    suspensi    TABLE       CREATE TABLE public.suspensi (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    suspensi_depan character varying(50) NOT NULL,
    suspensi_belakang character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.suspensi;
       public         heap    postgres    false            �            1259    27579    suspensi_id_seq    SEQUENCE     x   CREATE SEQUENCE public.suspensi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.suspensi_id_seq;
       public          postgres    false    234            �           0    0    suspensi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.suspensi_id_seq OWNED BY public.suspensi.id;
          public          postgres    false    233            
           2604    27584    suspensi id    DEFAULT     j   ALTER TABLE ONLY public.suspensi ALTER COLUMN id SET DEFAULT nextval('public.suspensi_id_seq'::regclass);
 :   ALTER TABLE public.suspensi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �          0    27581    suspensi 
   TABLE DATA           j   COPY public.suspensi (id, id_type, suspensi_depan, suspensi_belakang, created_at, updated_at) FROM stdin;
    public          postgres    false    234   �       �           0    0    suspensi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.suspensi_id_seq', 54, true);
          public          postgres    false    233                       2606    27586    suspensi suspensi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.suspensi
    ADD CONSTRAINT suspensi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.suspensi DROP CONSTRAINT suspensi_pkey;
       public            postgres    false    234                       2606    27587 !   suspensi suspensi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspensi
    ADD CONSTRAINT suspensi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.suspensi DROP CONSTRAINT suspensi_id_type_foreign;
       public          postgres    false    234            �   �  x����j1�Ϫ��ؠn�5;:�C 9�b�!&��y���q���t���ni$H����������������k������_7�w�F���j���Ś�c�P���/�8U�k�=���K�Rs�r��)�δ1X���TjV���CRI�$�a
��޿���+�%�Ie���1�AlL�T��L�����T�NX�1�U2�+�5�ε0�W2�,�j�i-�V��5�bZ�=Y�`L+ל<�����M5��&jw��u�:�h��!-���@5�i��h�v��Z���M���������c��ڝ�k����h�v��ZW�Ll4Q��߾�~}8~x��T�T�x�09�?Vb���@���c��j�h_r���Z��2м���X)��ۗ��+W��@㒓�c�y�Ε��%'�J��,{4.99?V�fj�2и��Xiv��U)�4������h]������㍁�����r#X�h^�Ϲ-;�����9�e���jxg��?	�r���1�<��,��ejc�u�?{�J�Z<g�ޱj��7'#g�i�䍁����aU��J{g�C���ċd�<�l�FR��}%l���Q��vo����MV������v�H���I��ʐ���{�UV����@K�ȴ����3-x����ئ`e`�J��e�z��K�~b�x\�>�=�� �u�     