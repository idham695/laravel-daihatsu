PGDMP     7                    x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27667 	   transmisi    TABLE     1  CREATE TABLE public.transmisi (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    girbox integer NOT NULL,
    penggerak character varying(255) NOT NULL,
    transmisi character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.transmisi;
       public         heap    postgres    false            �            1259    27665    transmisi_id_seq    SEQUENCE     y   CREATE SEQUENCE public.transmisi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.transmisi_id_seq;
       public          postgres    false    240            �           0    0    transmisi_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.transmisi_id_seq OWNED BY public.transmisi.id;
          public          postgres    false    239            
           2604    27670    transmisi id    DEFAULT     l   ALTER TABLE ONLY public.transmisi ALTER COLUMN id SET DEFAULT nextval('public.transmisi_id_seq'::regclass);
 ;   ALTER TABLE public.transmisi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �          0    27667 	   transmisi 
   TABLE DATA           f   COPY public.transmisi (id, id_type, girbox, penggerak, transmisi, created_at, updated_at) FROM stdin;
    public          postgres    false    240          �           0    0    transmisi_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.transmisi_id_seq', 55, true);
          public          postgres    false    239                       2606    27675    transmisi transmisi_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.transmisi
    ADD CONSTRAINT transmisi_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.transmisi DROP CONSTRAINT transmisi_pkey;
       public            postgres    false    240                       2606    27676 #   transmisi transmisi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.transmisi
    ADD CONSTRAINT transmisi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.transmisi DROP CONSTRAINT transmisi_id_type_foreign;
       public          postgres    false    240            �   �  x���;�1Dc�)�kHԯ��pfp��Ɇ�	�{�^���IHH*IIH��O�>��/��^~��cy��ˬm�f1�Ь������g�V&�XB�S�9Z5ln�)[-�P��/�~������I�u=S�:�C�~nNSև�[H����2��FH��,yJ_Y�yo�ܺT�k-^6u�����T�LI��'�)w�����qq���,ԳY����W~g��rU�#�3�bЖ7u�cOe��P{ ˑ�bЎ*�m`1Pb�r��f�����UCG�]6�A�v��#P���@���UG /�-�,���L���(rv\�0:(Y�8'�ʉ�KV��ʻ�U1Z�9g��©Q-����ڌS�~��>����\e�ȹ��YXN��2�Mr��Y��@��_�HZ9���q����"]'_�έ3NT�Aev�U�3�AEv�U��$�;%.���>\�Sw��)���?T`��~�,
\/����-��Q�a���d���=�����d����cs�����1թ+Me���P8�ݹ�tÖh1hY�}�;c��ɠOu�ö��;�R]��$�Xj&�g��b�[tD����z�%+��\Gձ~ON���Զk��a1����c0����d`u�����h������y��     