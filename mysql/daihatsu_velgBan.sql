PGDMP                         x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27620    velg_ban    TABLE     9  CREATE TABLE public.velg_ban (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    ukuran character varying(30) NOT NULL,
    jenis character varying(10) NOT NULL,
    ukuran_velg character varying(5) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.velg_ban;
       public         heap    postgres    false            �            1259    27618    velg_ban_id_seq    SEQUENCE     x   CREATE SEQUENCE public.velg_ban_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.velg_ban_id_seq;
       public          postgres    false    238            �           0    0    velg_ban_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.velg_ban_id_seq OWNED BY public.velg_ban.id;
          public          postgres    false    237            
           2604    27623    velg_ban id    DEFAULT     j   ALTER TABLE ONLY public.velg_ban ALTER COLUMN id SET DEFAULT nextval('public.velg_ban_id_seq'::regclass);
 :   ALTER TABLE public.velg_ban ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �          0    27620    velg_ban 
   TABLE DATA           c   COPY public.velg_ban (id, id_type, ukuran, jenis, ukuran_velg, created_at, updated_at) FROM stdin;
    public          postgres    false    238   �       �           0    0    velg_ban_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.velg_ban_id_seq', 86, true);
          public          postgres    false    237                       2606    27625    velg_ban velg_ban_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.velg_ban
    ADD CONSTRAINT velg_ban_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.velg_ban DROP CONSTRAINT velg_ban_pkey;
       public            postgres    false    238                       2606    27626 !   velg_ban velg_ban_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.velg_ban
    ADD CONSTRAINT velg_ban_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.velg_ban DROP CONSTRAINT velg_ban_id_type_foreign;
       public          postgres    false    238            �   �  x���M�� �׼S��@A���MK�i�￞��2�n��E����P/N!������r������֯%>cy�>��G����$�_�����r.9������PNC��Sq�J�.�D��A��3�!j1p�K���y�!�m�����}������u)4�ú�琡�26�m+|�ͱ2�{�K�2�s�6ntZ��<bf�G�����u��z������m:��>�׶2�)r��~�Xl�d�c�c��)>Gy_�����mN��koO6Ens���Ϳ�b`S�6�{}�ͱ2�)r�ӽ���d`S�9��j�wG�ԭ���ϡs�6%'���ZlJ�C��ؔ�}F�d`Sr�9���M��rd�D�b`Sr�98o����Nk���I����8J�,6%�9�5�z:�,pVȜ����P�á�3�b�-��H�n���^n'C�w�c�Yu	%�������b(����G]�|0�4��r;�-.G�CM���&�#���`h\�o�,���t���g���jPq9r�Ϩ������r�?f��w��-�փV���4�T}�n8V��r��p��Q�z��]�`����s���d�|i�>G��b�9�t:��ַ��0��C/����w��k���X�bC�����s�`������n     