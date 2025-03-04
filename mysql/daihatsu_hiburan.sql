PGDMP     "    *                x            daihatsu    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    daihatsu    DATABASE        CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE daihatsu;
                postgres    false            ώ            1259    36408    hiburan    TABLE     b	  CREATE TABLE public.hiburan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "layarSentuh" character varying(255),
    "radioAM" character varying(255),
    "sistemNavigasi" character varying(255),
    "sambunganBluetooth" character varying(255),
    "pemutarCD" character varying(255),
    "soketUSB" character varying(255),
    "pemutarDVD" character varying(255),
    "speakerDepan" character varying(255),
    "speakerBelakang" character varying(255),
    "audio2DIN" character varying(255),
    "perintahSuara" character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "hiburan_audio2DIN_check" CHECK ((("audio2DIN")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_layarSentuh_check" CHECK ((("layarSentuh")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying, 'Optional'::character varying])::text[]))),
    CONSTRAINT "hiburan_pemutarCD_check" CHECK ((("pemutarCD")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_pemutarDVD_check" CHECK ((("pemutarDVD")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_perintahSuara_check" CHECK ((("perintahSuara")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_radioAM_check" CHECK ((("radioAM")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_sambunganBluetooth_check" CHECK ((("sambunganBluetooth")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_sistemNavigasi_check" CHECK ((("sistemNavigasi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying, 'Optional'::character varying])::text[]))),
    CONSTRAINT "hiburan_soketUSB_check" CHECK ((("soketUSB")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_speakerBelakang_check" CHECK ((("speakerBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "hiburan_speakerDepan_check" CHECK ((("speakerDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.hiburan;
       public         heap    postgres    false            ύ            1259    36406    hiburan_id_seq    SEQUENCE     w   CREATE SEQUENCE public.hiburan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hiburan_id_seq;
       public          postgres    false    254                       0    0    hiburan_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hiburan_id_seq OWNED BY public.hiburan.id;
          public          postgres    false    253            
           2604    36411 
   hiburan id    DEFAULT     h   ALTER TABLE ONLY public.hiburan ALTER COLUMN id SET DEFAULT nextval('public.hiburan_id_seq'::regclass);
 9   ALTER TABLE public.hiburan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254                      0    36408    hiburan 
   TABLE DATA           π   COPY public.hiburan (id, id_type, "layarSentuh", "radioAM", "sistemNavigasi", "sambunganBluetooth", "pemutarCD", "soketUSB", "pemutarDVD", "speakerDepan", "speakerBelakang", "audio2DIN", "perintahSuara", created_at, updated_at) FROM stdin;
    public          postgres    false    254                      0    0    hiburan_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hiburan_id_seq', 1, false);
          public          postgres    false    253                       2606    36427    hiburan hiburan_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_pkey;
       public            postgres    false    254                       2606    36428    hiburan hiburan_id_type_foreign    FK CONSTRAINT     ‘   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_id_type_foreign;
       public          postgres    false    254                  xΡγββ Ε ©     