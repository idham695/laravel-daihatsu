PGDMP     &    "        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27789    hiburan    TABLE     �  CREATE TABLE public.hiburan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "layarSentuh" character varying(255) NOT NULL,
    "sistemNavigasi" character varying(255) NOT NULL,
    "sambunganBluetooth" character varying(255) NOT NULL,
    "pemutarCD" character varying(255) NOT NULL,
    "soketUSB" character varying(255) NOT NULL,
    "pemutarDVD" character varying(255) NOT NULL,
    "speakerDepan" character varying(255) NOT NULL,
    "speakerBelakang" character varying(255) NOT NULL,
    "audio2DIN" character varying(255) NOT NULL,
    "perintahSuara" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "hiburan_audio2DIN_check" CHECK ((("audio2DIN")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_layarSentuh_check" CHECK ((("layarSentuh")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_pemutarCD_check" CHECK ((("pemutarCD")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_pemutarDVD_check" CHECK ((("pemutarDVD")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_perintahSuara_check" CHECK ((("perintahSuara")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_sambunganBluetooth_check" CHECK ((("sambunganBluetooth")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_sistemNavigasi_check" CHECK ((("sistemNavigasi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_soketUSB_check" CHECK ((("soketUSB")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_speakerBelakang_check" CHECK ((("speakerBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_speakerDepan_check" CHECK ((("speakerDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.hiburan;
       public         heap    postgres    false            �            1259    27787    hiburan_id_seq    SEQUENCE     w   CREATE SEQUENCE public.hiburan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hiburan_id_seq;
       public          postgres    false    248            �           0    0    hiburan_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hiburan_id_seq OWNED BY public.hiburan.id;
          public          postgres    false    247            
           2604    27792 
   hiburan id    DEFAULT     h   ALTER TABLE ONLY public.hiburan ALTER COLUMN id SET DEFAULT nextval('public.hiburan_id_seq'::regclass);
 9   ALTER TABLE public.hiburan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            �          0    27789    hiburan 
   TABLE DATA           �   COPY public.hiburan (id, id_type, "layarSentuh", "sistemNavigasi", "sambunganBluetooth", "pemutarCD", "soketUSB", "pemutarDVD", "speakerDepan", "speakerBelakang", "audio2DIN", "perintahSuara", created_at, updated_at) FROM stdin;
    public          postgres    false    248   �       �           0    0    hiburan_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hiburan_id_seq', 56, true);
          public          postgres    false    247                       2606    27807    hiburan hiburan_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_pkey;
       public            postgres    false    248                       2606    27808    hiburan hiburan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_id_type_foreign;
       public          postgres    false    248            �   �  x���M��0��z��LPI*��c6�l�	��>O�f0v1CT`���kYzO�$Hx�������S|���#�):�Z)T��??����}�>㘹X9����?%�AúʅI�%�����Z�G����b�A�����ЂXa���<D9N�C��r&-Z#���,aɳ\G{0p�y�~�܃�S+���h�S������c��b��J���_6Y��K2s�d�p;/S��X�A��]5������
u��Vn5#��P#��������G�m��s�O�D�.�5Ð���,�!�}��xb`����L���Ð���,�!���p�XC���ӡÐw��t��aȻ}��w�ۺ-�!�����Ðw�v8$YC����Q-�!���p�h10��7:n9[Cq���c10�ѷv~�<10�ѷf���?W}kS�^h� ����e/F(������0�cݺѷ��0T���g2���ԑ�n�w10�X�~}/y1�ͱ?t#����;uͯ��q��u�����b�m�#�t�ƻ8��_���
�;�:�_:���������X,qu�x\�-/��:�F�m?[�>�c�F�K\=�sh1�l͵nŘ������֭�[:~� ���r     