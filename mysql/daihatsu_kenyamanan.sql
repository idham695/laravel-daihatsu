PGDMP         #        
        x            daihatsu    12.2    12.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            �            1259    27875 
   kenyamanan    TABLE     W  CREATE TABLE public.kenyamanan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "AC" character varying(255) NOT NULL,
    "powerWindow" character varying(255) NOT NULL,
    "powerSteering" character varying(255) NOT NULL,
    pemanas character varying(255) NOT NULL,
    "gloveBox" character varying(255) NOT NULL,
    "engineStart" character varying(255) NOT NULL,
    "adjustableSheet" character varying(255) NOT NULL,
    "kursiHeaterDepan" character varying(255) NOT NULL,
    "kursiHeaterBelakang" character varying(255) NOT NULL,
    "spionLipat" character varying(255) NOT NULL,
    "followMeHomeHeadLamps" character varying(255) NOT NULL,
    "steeringWheel" character varying(255) NOT NULL,
    "lingkarKemudi" character varying(255) NOT NULL,
    "cruiseControl" character varying(255) NOT NULL,
    "kursiLipatBelakang" character varying(255) NOT NULL,
    "pembukaBagasi" character varying(255) NOT NULL,
    "lampuPengingat" character varying(255) NOT NULL,
    "headrestKursi" character varying(255) NOT NULL,
    "armRest" character varying(255) NOT NULL,
    "cupHolder" character varying(255) NOT NULL,
    "lumbarSupport" character varying(255) NOT NULL,
    "bottleHolder" character varying(255) NOT NULL,
    "lampuBagasi" character varying(255) NOT NULL,
    "mejaLipatBelakang" character varying(255) NOT NULL,
    "armRestTengah" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "kenyamanan_AC_check" CHECK ((("AC")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_adjustableSheet_check" CHECK ((("adjustableSheet")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_armRestTengah_check" CHECK ((("armRestTengah")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_armRest_check" CHECK ((("armRest")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_bottleHolder_check" CHECK ((("bottleHolder")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_cruiseControl_check" CHECK ((("cruiseControl")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_cupHolder_check" CHECK ((("cupHolder")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_engineStart_check" CHECK ((("engineStart")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_followMeHomeHeadLamps_check" CHECK ((("followMeHomeHeadLamps")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_gloveBox_check" CHECK ((("gloveBox")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_headrestKursi_check" CHECK ((("headrestKursi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_kursiHeaterBelakang_check" CHECK ((("kursiHeaterBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_kursiHeaterDepan_check" CHECK ((("kursiHeaterDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_kursiLipatBelakang_check" CHECK ((("kursiLipatBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_lampuBagasi_check" CHECK ((("lampuBagasi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_lampuPengingat_check" CHECK ((("lampuPengingat")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_lingkarKemudi_check" CHECK ((("lingkarKemudi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_lumbarSupport_check" CHECK ((("lumbarSupport")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_mejaLipatBelakang_check" CHECK ((("mejaLipatBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT kenyamanan_pemanas_check CHECK (((pemanas)::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_pembukaBagasi_check" CHECK ((("pembukaBagasi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_powerSteering_check" CHECK ((("powerSteering")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_powerWindow_check" CHECK ((("powerWindow")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_spionLipat_check" CHECK ((("spionLipat")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "kenyamanan_steeringWheel_check" CHECK ((("steeringWheel")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.kenyamanan;
       public         heap    postgres    false            �            1259    27873    kenyamanan_id_seq    SEQUENCE     z   CREATE SEQUENCE public.kenyamanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.kenyamanan_id_seq;
       public          postgres    false    254            �           0    0    kenyamanan_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.kenyamanan_id_seq OWNED BY public.kenyamanan.id;
          public          postgres    false    253            
           2604    27878    kenyamanan id    DEFAULT     n   ALTER TABLE ONLY public.kenyamanan ALTER COLUMN id SET DEFAULT nextval('public.kenyamanan_id_seq'::regclass);
 <   ALTER TABLE public.kenyamanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            �          0    27875 
   kenyamanan 
   TABLE DATA           �  COPY public.kenyamanan (id, id_type, "AC", "powerWindow", "powerSteering", pemanas, "gloveBox", "engineStart", "adjustableSheet", "kursiHeaterDepan", "kursiHeaterBelakang", "spionLipat", "followMeHomeHeadLamps", "steeringWheel", "lingkarKemudi", "cruiseControl", "kursiLipatBelakang", "pembukaBagasi", "lampuPengingat", "headrestKursi", "armRest", "cupHolder", "lumbarSupport", "bottleHolder", "lampuBagasi", "mejaLipatBelakang", "armRestTengah", created_at, updated_at) FROM stdin;
    public          postgres    false    254   �"       �           0    0    kenyamanan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kenyamanan_id_seq', 57, true);
          public          postgres    false    253            %           2606    27908    kenyamanan kenyamanan_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.kenyamanan
    ADD CONSTRAINT kenyamanan_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.kenyamanan DROP CONSTRAINT kenyamanan_pkey;
       public            postgres    false    254            &           2606    27909 %   kenyamanan kenyamanan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kenyamanan
    ADD CONSTRAINT kenyamanan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.kenyamanan DROP CONSTRAINT kenyamanan_id_type_foreign;
       public          postgres    false    254            �   �  x�͙An�0E��)�)DQ�m�#��������d�HL�100f^0����vر{��������Gyu�������폌o�k���y}���̜�-F�%�_)p�=��rX��m�d��{�Qt����W%,8N���c��1��,Fɱ�^���,F�Ca��;�櫌v�a�<����p����j��c��ڎ/̾[�mYv���/̽;�)^���-�f�eq3'���#o��_�y���|�,F\��j�M	�Z��;A����]��kb1*'a�ݤOb��|+#87�|}{��b�8]_9z��n��s����b�[�㴾��*#�7���aA�W�����8����R����2�SxA-F0��Ϗ�e���2??�E��W��2??Tڥ�a����(ZzTF0��Ϗ�e�����-l�/{�ye~~-�|)�`^������/8��E�a1�ye���q���`޸@~H{g�0�y��!��Ge�����3���ȏ�>�l���@~$ÿ���pq���ڧj#�W�G�j�O�y����0��̫�w�~�Ga�����a?(�Жq��=���0�yu�~Ź<n�z�Uʺ��n<s������l�>�'=�Y�~����-���'#�x���=���ّf�U���fs�oUK��0�V��o����#�^��	#�4;ު�h����c[��8߈��ܶ�?Ԩ�"?v�������?��_?��aZ��     