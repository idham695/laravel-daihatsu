PGDMP     +                     x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27594    detail_mesin    TABLE     �  CREATE TABLE public.detail_mesin (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    jumlah_silinder character varying(50) NOT NULL,
    katup_per_silinder character varying(50) NOT NULL,
    konfigurasi_katup character varying(50) NOT NULL,
    suplai_bahan_bakar character varying(50) NOT NULL,
    mesin character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.detail_mesin;
       public         heap    postgres    false            �            1259    27592    detail_mesin_id_seq    SEQUENCE     |   CREATE SEQUENCE public.detail_mesin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.detail_mesin_id_seq;
       public          postgres    false    236            �           0    0    detail_mesin_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.detail_mesin_id_seq OWNED BY public.detail_mesin.id;
          public          postgres    false    235            
           2604    27597    detail_mesin id    DEFAULT     r   ALTER TABLE ONLY public.detail_mesin ALTER COLUMN id SET DEFAULT nextval('public.detail_mesin_id_seq'::regclass);
 >   ALTER TABLE public.detail_mesin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �          0    27594    detail_mesin 
   TABLE DATA           �   COPY public.detail_mesin (id, id_type, jumlah_silinder, katup_per_silinder, konfigurasi_katup, suplai_bahan_bakar, mesin, created_at, updated_at) FROM stdin;
    public          postgres    false    236   &       �           0    0    detail_mesin_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.detail_mesin_id_seq', 87, true);
          public          postgres    false    235                       2606    27599    detail_mesin detail_mesin_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.detail_mesin
    ADD CONSTRAINT detail_mesin_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.detail_mesin DROP CONSTRAINT detail_mesin_pkey;
       public            postgres    false    236                       2606    27600 )   detail_mesin detail_mesin_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_mesin
    ADD CONSTRAINT detail_mesin_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.detail_mesin DROP CONSTRAINT detail_mesin_id_type_foreign;
       public          postgres    false    236            �   �  x���A�1���~E� wIR�$�뺢 �ɓ�A���Vgv')<�\?2y��W/��S���������o�������������������ݟǇ���͇�˷�ߧ�� ��n\�	��Xc��[L�U�ƕ��*{��b����CKu�b*�T�*l1$ڗ���X��[&þr/�
�/�Ld�+���X��;����X%��X��e�N-��f>-ӑP��iZ4���H}��gR.��5�nk>�_�<���PC��q�u:.����&K��g�.Yj����{j�y���"^����NcP��N��,5AX��=���bP�%y��s���p�}I�����bP�%yp�S���<�� ���x�}o1�	حӉU�Š&�!�u�X�Ơ&�!�u���^�<����`1�	xȃy�T�n1�	xȃy�Lg1�	xȃiV�:�AM�CȴN}��<���Nt��ij^�z׸>CҢ��9��;�!i�V�3G(CҢ��9f��O/Y�6�����ѹgIK��E[�km���o�H��_�Cf�!ߦu���n1�H2�m^'��va�B~�yB��C�]�;�g~��!g���u�3����C.$�|}?�_�N2�?�:2��1G2ܧ�:�ϝC�$�����k����p����3�9�
S2r�_��<�0�H���~�>�Gc(B�����|��>[%Q2r�_�q�Cɔ�~���Å��-�����     