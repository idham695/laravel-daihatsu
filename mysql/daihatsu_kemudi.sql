PGDMP     +                    x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27683    kemudi    TABLE       CREATE TABLE public.kemudi (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    steering_gear_type character varying(50) NOT NULL,
    radius_putar double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.kemudi;
       public         heap    postgres    false            �            1259    27681    kemudi_id_seq    SEQUENCE     v   CREATE SEQUENCE public.kemudi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.kemudi_id_seq;
       public          postgres    false    242            �           0    0    kemudi_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.kemudi_id_seq OWNED BY public.kemudi.id;
          public          postgres    false    241            
           2604    27686 	   kemudi id    DEFAULT     f   ALTER TABLE ONLY public.kemudi ALTER COLUMN id SET DEFAULT nextval('public.kemudi_id_seq'::regclass);
 8   ALTER TABLE public.kemudi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            �          0    27683    kemudi 
   TABLE DATA           g   COPY public.kemudi (id, id_type, steering_gear_type, radius_putar, created_at, updated_at) FROM stdin;
    public          postgres    false    242   �       �           0    0    kemudi_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.kemudi_id_seq', 87, true);
          public          postgres    false    241                       2606    27688    kemudi kemudi_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.kemudi
    ADD CONSTRAINT kemudi_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.kemudi DROP CONSTRAINT kemudi_pkey;
       public            postgres    false    242                       2606    27689    kemudi kemudi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kemudi
    ADD CONSTRAINT kemudi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.kemudi DROP CONSTRAINT kemudi_id_type_foreign;
       public          postgres    false    242            �   �  x������0�k�Sl�n�!%YO�������]h��Œ��~�@�pH�P�_����~�~~}��&~0�T�=��-��iJ�*�����-���L�2�5��;����g���X�K�i�mku�վ�`��R^�L)b���N����F�,���҈A��e��4�Dz������v{��A/�׍����r��n���=b�L����M3�z�1�t��VĠ���?k5k%bP��e��Z�U���#���[����Wx������=���{�v�nİO�e���u̦l�n�e���u�1���2��>s�Լ���Mm�3��Aͫ>N/o��Š�U�?��=k�t0�y����K�1�y�����.�Լ�����m�Լ��g�5�l�s0質ϟ�]��W}��^�������U�?��׍Լj�'�+)������Y�g����U������m#^�Ok��O�COī�ɾk��=z&^����82"�^HV�n������Fe��::���o��q�](���Y-!Coī�jm��?z'Y���_�~.#�>Hl��a�ʚ�-b����@�q�a$����1�Lb��z�V�=�`�??�N��K�0���Ͽӏ�_��`j6V��o��_'�j������s2�F���׸��atj6��^gu�> ��9��     