PGDMP                         x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    19073    performance    TABLE     �  CREATE TABLE public.performance (
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
       public          postgres    false    214            �           0    0    performance_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.performance_id_seq OWNED BY public.performance.id;
          public          postgres    false    213                       2604    19143    performance id    DEFAULT     p   ALTER TABLE ONLY public.performance ALTER COLUMN id SET DEFAULT nextval('public.performance_id_seq'::regclass);
 =   ALTER TABLE public.performance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �          0    19073    performance 
   TABLE DATA           v   COPY public.performance (id, id_type, machine_capacity, horse_power, torsi, fuel, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �       �           0    0    performance_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.performance_id_seq', 55, true);
          public          postgres    false    213                       2606    19079    performance performance_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_pkey;
       public            postgres    false    214                       2606    19080 '   performance performance_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_id_type_foreign;
       public          postgres    false    214            �   �  x���A�!E��S�QE��	��(R�H)������6V(ɫg�>E�	�m���P���ﰵ����_~�
5�E{S��ҵ�Xgʲ�j7;��c�9�B�g��R�,�-n��u)]ڌ!�mݲ�Tg\ϲE���j���I��2c��"��V�G��KQ�"f-�:DƯ댁˒�1�L�L�a��8LY�^�3��U��:�1a�d�X�OsbA��Ǵ�@j]u���5.{�zl3F���t��6Ɍ�Q�b-�ک('�)Ǟ�)��#��d��vb`غX�Ǩs}?�.�7G���j�3��X��c��h3ƭ��}�bc-3ƭl*I�0��0E嵩���w���g�;��Tz~2����0q%i����ϺI�����yL�y�vƝ��ĦVg��7׺)�_ˌ�q�B��&�iW��y�]���̛��Q��^�`g`��C�۱����^+פvnqٔy0N�݃���3�W��K~i�Ե���Ǵ�^�miD�?�A����ke����.�i4��C����y7;L�zO�w�ߵO�����,�ď�k�+�3����ab���jj�
lh&v��f��g��Ӻ�)i7�����ă�6c`1��0��R�1��x[8L�z�����hPe<r�:���{�����b}0�0Kt������*(�R�����/]W�q�Mg</%�T�k�1���T,�:c��	�_ׁEO     