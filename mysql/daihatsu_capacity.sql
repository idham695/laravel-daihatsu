PGDMP     
                    x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27568    capacity    TABLE     P  CREATE TABLE public.capacity (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    kapasitas_tempat_duduk integer NOT NULL,
    kapasitas_tangki integer NOT NULL,
    panjang integer NOT NULL,
    lebar integer NOT NULL,
    tinggi integer NOT NULL,
    ground_clerance integer NOT NULL,
    jarak_sumbu_roda integer NOT NULL,
    jarak_pijak_roda_depan integer NOT NULL,
    jarak_pijak_roda_belakang integer NOT NULL,
    jumlah_pintu integer NOT NULL,
    berat_bersih integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.capacity;
       public         heap    postgres    false            �            1259    27566    capacity_id_seq    SEQUENCE     x   CREATE SEQUENCE public.capacity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.capacity_id_seq;
       public          postgres    false    232            �           0    0    capacity_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.capacity_id_seq OWNED BY public.capacity.id;
          public          postgres    false    231            
           2604    27571    capacity id    DEFAULT     j   ALTER TABLE ONLY public.capacity ALTER COLUMN id SET DEFAULT nextval('public.capacity_id_seq'::regclass);
 :   ALTER TABLE public.capacity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �          0    27568    capacity 
   TABLE DATA           �   COPY public.capacity (id, id_type, kapasitas_tempat_duduk, kapasitas_tangki, panjang, lebar, tinggi, ground_clerance, jarak_sumbu_roda, jarak_pijak_roda_depan, jarak_pijak_roda_belakang, jumlah_pintu, berat_bersih, created_at, updated_at) FROM stdin;
    public          postgres    false    232   �       �           0    0    capacity_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.capacity_id_seq', 56, true);
          public          postgres    false    231                       2606    27573    capacity capacity_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.capacity
    ADD CONSTRAINT capacity_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.capacity DROP CONSTRAINT capacity_pkey;
       public            postgres    false    232                       2606    27574 !   capacity capacity_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.capacity
    ADD CONSTRAINT capacity_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.capacity DROP CONSTRAINT capacity_id_type_foreign;
       public          postgres    false    232            �   4  x����q�0E�BN�S��-��?�����4�C˼��_�k�76�ŗ_��fK焋.5]b�[|2v�V
�$�3٧�G�n���4�+�쟩~�ҽv��F��}pM���ٻ�F����3�vםF�j�2G,�u���Q�8= ����/�14j?ȋ�ծ�������6k��!�g�E��i�]樭�T	!�|^��|���O2�.�Rw��q�.=͆�� 7T"j�R	t�?(.��J����>���1�4�(�#�u��F0Z�:/�ҕw�h��	���v�h��:��hi6ĥ'�h6v�F�͆�B�C<w�;��H����SB��i��<@�4c䥇�h�Q�'h����(fpT��e�����A�_�4��lF��FpZ��ָ�F�Z���n��C#x�rĖ���������[^�؏F0[���;�`���'����`��#�b��F1���tYء��z�n/�ΏFxB��� r�£�c�y���-����s
�Fy�)��=B��^ci5�wX4��>���;\�W��f}��Fr�66���HG�'qctM3���"9u��}�k ��ƶئ�&w�/�j�q����í�v{�-�fc0�N#0���ҹ�4��������Q�z=�[���b7&L�q�u����	�����i��5}�cϏ�����>{24�!����\F}{�id���-ma�;4³�ݾ�C���%�2"�5Z������S���&,��C#����>��[#$INOؾ�ˆ][��O�y���ګ�Fh&Y�qz�ӻ�A���]���[#$w�3v����CD� 
M;     