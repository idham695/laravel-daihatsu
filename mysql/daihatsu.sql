PGDMP                 	        x            daihatsu    12.2    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    daihatsu    DATABASE     �   CREATE DATABASE daihatsu WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
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
       public          postgres    false    232            �           0    0    capacity_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.capacity_id_seq OWNED BY public.capacity.id;
          public          postgres    false    231            �            1259    19153    color_product    TABLE     8  CREATE TABLE public.color_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255),
    color character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    color_name character varying(50) NOT NULL
);
 !   DROP TABLE public.color_product;
       public         heap    postgres    false            �            1259    19151    color_product_id_seq    SEQUENCE     }   CREATE SEQUENCE public.color_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.color_product_id_seq;
       public          postgres    false    224            �           0    0    color_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.color_product_id_seq OWNED BY public.color_product.id;
          public          postgres    false    223            �            1259    19100    credit    TABLE     �   CREATE TABLE public.credit (
    id bigint NOT NULL,
    id_down_payment integer NOT NULL,
    price integer NOT NULL,
    tenor integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.credit;
       public         heap    postgres    false            �            1259    19098    credit_id_seq    SEQUENCE     v   CREATE SEQUENCE public.credit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.credit_id_seq;
       public          postgres    false    218            �           0    0    credit_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.credit_id_seq OWNED BY public.credit.id;
          public          postgres    false    217            �            1259    27594    detail_mesin    TABLE     �  CREATE TABLE public.detail_mesin (
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
       public          postgres    false    236            �           0    0    detail_mesin_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.detail_mesin_id_seq OWNED BY public.detail_mesin.id;
          public          postgres    false    235            �            1259    19087    down_payment    TABLE     �   CREATE TABLE public.down_payment (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    price_min integer NOT NULL,
    price_max integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.down_payment;
       public         heap    postgres    false            �            1259    19085    down_payment_id_seq    SEQUENCE     |   CREATE SEQUENCE public.down_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.down_payment_id_seq;
       public          postgres    false    216            �           0    0    down_payment_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.down_payment_id_seq OWNED BY public.down_payment.id;
          public          postgres    false    215            �            1259    27815 	   eksterior    TABLE       CREATE TABLE public.eksterior (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "adjutableHeadlight" character varying(255) NOT NULL,
    "lampuKabutDepan" character varying(255) NOT NULL,
    "kacaSpionElektrik" character varying(255) NOT NULL,
    "kacaSpionLuarManual" character varying(255) NOT NULL,
    "wiperOtomatis" character varying(255) NOT NULL,
    "wiperKacaBelakang" character varying(255) NOT NULL,
    "coverVelg" character varying(255) NOT NULL,
    "velgAlloy" character varying(255) NOT NULL,
    "anthenaElektrik" character varying(255) NOT NULL,
    "spoilerBelakang" character varying(255) NOT NULL,
    "atapConvertible" character varying(255) NOT NULL,
    "roofRack" character varying(255) NOT NULL,
    "sunRoof" character varying(255) NOT NULL,
    "pijakanSamping" character varying(255) NOT NULL,
    "lampuSein" character varying(255) NOT NULL,
    "anthenaTerpadu" character varying(255) NOT NULL,
    "grilleKrom" character varying(255) NOT NULL,
    "roofRail" character varying(255) NOT NULL,
    "jenisRemBelakang" character varying(20) NOT NULL,
    "jenisRemDepan" character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "eksterior_adjutableHeadlight_check" CHECK ((("adjutableHeadlight")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_anthenaElektrik_check" CHECK ((("anthenaElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_anthenaTerpadu_check" CHECK ((("anthenaTerpadu")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_atapConvertible_check" CHECK ((("atapConvertible")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_coverVelg_check" CHECK ((("coverVelg")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_grilleKrom_check" CHECK ((("grilleKrom")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_kacaSpionElektrik_check" CHECK ((("kacaSpionElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_kacaSpionLuarManual_check" CHECK ((("kacaSpionLuarManual")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_lampuKabutDepan_check" CHECK ((("lampuKabutDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_lampuSein_check" CHECK ((("lampuSein")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_pijakanSamping_check" CHECK ((("pijakanSamping")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_roofRack_check" CHECK ((("roofRack")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_roofRail_check" CHECK ((("roofRail")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_spoilerBelakang_check" CHECK ((("spoilerBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_sunRoof_check" CHECK ((("sunRoof")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_velgAlloy_check" CHECK ((("velgAlloy")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_wiperKacaBelakang_check" CHECK ((("wiperKacaBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "eksterior_wiperOtomatis_check" CHECK ((("wiperOtomatis")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.eksterior;
       public         heap    postgres    false            �            1259    27813    eksterior_id_seq    SEQUENCE     y   CREATE SEQUENCE public.eksterior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.eksterior_id_seq;
       public          postgres    false    250            �           0    0    eksterior_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.eksterior_id_seq OWNED BY public.eksterior.id;
          public          postgres    false    249            �            1259    18965    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    18963    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    208            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    207            �            1259    27789    hiburan    TABLE     �  CREATE TABLE public.hiburan (
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
       public          postgres    false    248            �           0    0    hiburan_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hiburan_id_seq OWNED BY public.hiburan.id;
          public          postgres    false    247            �            1259    27769    keamanan    TABLE     �  CREATE TABLE public.keamanan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "smartAccess" character varying(255) NOT NULL,
    "powerDoorLocks" character varying(255) NOT NULL,
    "antiTheftDevice" character varying(255) NOT NULL,
    "alarmMobil" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "keamanan_alarmMobil_check" CHECK ((("alarmMobil")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_antiTheftDevice_check" CHECK ((("antiTheftDevice")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_powerDoorLocks_check" CHECK ((("powerDoorLocks")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keamanan_smartAccess_check" CHECK ((("smartAccess")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.keamanan;
       public         heap    postgres    false            �            1259    27767    keamanan_id_seq    SEQUENCE     x   CREATE SEQUENCE public.keamanan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.keamanan_id_seq;
       public          postgres    false    246            �           0    0    keamanan_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.keamanan_id_seq OWNED BY public.keamanan.id;
          public          postgres    false    245            �            1259    27683    kemudi    TABLE       CREATE TABLE public.kemudi (
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
       public          postgres    false    242            �           0    0    kemudi_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.kemudi_id_seq OWNED BY public.kemudi.id;
          public          postgres    false    241            �            1259    27875 
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
       public          postgres    false    254            �           0    0    kenyamanan_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.kenyamanan_id_seq OWNED BY public.kenyamanan.id;
          public          postgres    false    253            �            1259    27738    keselamatan    TABLE     Z  CREATE TABLE public.keselamatan (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    "airbagDepan" character varying(255) NOT NULL,
    "airbagBelakang" character varying(255) NOT NULL,
    "childSafety" character varying(255) NOT NULL,
    "kantongUdara" character varying(255) NOT NULL,
    "airbagSamping" character varying(255) NOT NULL,
    "vehicleStability" character varying(255) NOT NULL,
    "sabukPengaman" character varying(255) NOT NULL,
    "pengingatPengaman" character varying(255) NOT NULL,
    "kameraBelakang" character varying(255) NOT NULL,
    "sensorParkir" character varying(255) NOT NULL,
    "engineCheck" character varying(255) NOT NULL,
    "pengukurTekanan" character varying(255) NOT NULL,
    "pelindungBenturan" character varying(255) NOT NULL,
    "pengingatPintu" character varying(255) NOT NULL,
    "kontrolTraksi" character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "keselamatan_airbagBelakang_check" CHECK ((("airbagBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_airbagDepan_check" CHECK ((("airbagDepan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_airbagSamping_check" CHECK ((("airbagSamping")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_childSafety_check" CHECK ((("childSafety")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_engineCheck_check" CHECK ((("engineCheck")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kameraBelakang_check" CHECK ((("kameraBelakang")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kantongUdara_check" CHECK ((("kantongUdara")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_kontrolTraksi_check" CHECK ((("kontrolTraksi")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pelindungBenturan_check" CHECK ((("pelindungBenturan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengingatPengaman_check" CHECK ((("pengingatPengaman")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengingatPintu_check" CHECK ((("pengingatPintu")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_pengukurTekanan_check" CHECK ((("pengukurTekanan")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_sabukPengaman_check" CHECK ((("sabukPengaman")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_sensorParkir_check" CHECK ((("sensorParkir")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "keselamatan_vehicleStability_check" CHECK ((("vehicleStability")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.keselamatan;
       public         heap    postgres    false            �            1259    27736    keselamatan_id_seq    SEQUENCE     {   CREATE SEQUENCE public.keselamatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.keselamatan_id_seq;
       public          postgres    false    244            �           0    0    keselamatan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.keselamatan_id_seq OWNED BY public.keselamatan.id;
          public          postgres    false    243            �            1259    27849 	   lain_lain    TABLE     �  CREATE TABLE public.lain_lain (
    id bigint NOT NULL,
    id_type integer NOT NULL,
    tachometer character varying(255) NOT NULL,
    "electronicMultiTripmeter" character varying(255) NOT NULL,
    "jokDilapisiKulit" character varying(255) NOT NULL,
    "lapisanBerbahanKain" character varying(255) NOT NULL,
    "stirBerbalutKulit" character varying(255) NOT NULL,
    "temperaturUdaraLuar" character varying(255) NOT NULL,
    "odometerDigital" character varying(255) NOT NULL,
    "pengaturanKursiElektrik" character varying(255) NOT NULL,
    "tangkiBahanBakar" character varying(255) NOT NULL,
    "jenisLampuDepan" character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT "lain_lain_electronicMultiTripmeter_check" CHECK ((("electronicMultiTripmeter")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_jokDilapisiKulit_check" CHECK ((("jokDilapisiKulit")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_lapisanBerbahanKain_check" CHECK ((("lapisanBerbahanKain")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_odometerDigital_check" CHECK ((("odometerDigital")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_pengaturanKursiElektrik_check" CHECK ((("pengaturanKursiElektrik")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_stirBerbalutKulit_check" CHECK ((("stirBerbalutKulit")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT lain_lain_tachometer_check CHECK (((tachometer)::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_tangkiBahanBakar_check" CHECK ((("tangkiBahanBakar")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[]))),
    CONSTRAINT "lain_lain_temperaturUdaraLuar_check" CHECK ((("temperaturUdaraLuar")::text = ANY ((ARRAY['Ya'::character varying, 'Tidak'::character varying])::text[])))
);
    DROP TABLE public.lain_lain;
       public         heap    postgres    false            �            1259    27847    lain_lain_id_seq    SEQUENCE     y   CREATE SEQUENCE public.lain_lain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lain_lain_id_seq;
       public          postgres    false    252            �           0    0    lain_lain_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.lain_lain_id_seq OWNED BY public.lain_lain.id;
          public          postgres    false    251            �            1259    16396 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16394    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            �            1259    19126    minus_product    TABLE     �   CREATE TABLE public.minus_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    kekurangan character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.minus_product;
       public         heap    postgres    false            �            1259    19124    minus_product_id_seq    SEQUENCE     }   CREATE SEQUENCE public.minus_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.minus_product_id_seq;
       public          postgres    false    222            �           0    0    minus_product_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.minus_product_id_seq OWNED BY public.minus_product.id;
          public          postgres    false    221            �            1259    18956    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    19073    performance    TABLE     �  CREATE TABLE public.performance (
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
       public          postgres    false    214            �           0    0    performance_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.performance_id_seq OWNED BY public.performance.id;
          public          postgres    false    213            �            1259    19113    plus_product    TABLE     �   CREATE TABLE public.plus_product (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    kelebihan character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.plus_product;
       public         heap    postgres    false            �            1259    19111    plus_product_id_seq    SEQUENCE     |   CREATE SEQUENCE public.plus_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.plus_product_id_seq;
       public          postgres    false    220            �           0    0    plus_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.plus_product_id_seq OWNED BY public.plus_product.id;
          public          postgres    false    219            �            1259    18977    product    TABLE     q  CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(255) NOT NULL,
    min_price double precision NOT NULL,
    max_price double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    banner character varying(100),
    "desc" text
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    18975    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    210            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    209            �            1259    27554    product_image    TABLE     ?  CREATE TABLE public.product_image (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(255) NOT NULL,
    extension character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.product_image;
       public         heap    postgres    false            �            1259    27449    product_image__interior    TABLE     �   CREATE TABLE public.product_image__interior (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.product_image__interior;
       public         heap    postgres    false            �            1259    27447    product_image__interior_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image__interior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_image__interior_id_seq;
       public          postgres    false    228            �           0    0    product_image__interior_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_image__interior_id_seq OWNED BY public.product_image__interior.id;
          public          postgres    false    227            �            1259    27397    product_image_eksterior    TABLE     �   CREATE TABLE public.product_image_eksterior (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    image character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.product_image_eksterior;
       public         heap    postgres    false            �            1259    27395    product_image_eksterior_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_eksterior_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_image_eksterior_id_seq;
       public          postgres    false    226            �           0    0    product_image_eksterior_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_image_eksterior_id_seq OWNED BY public.product_image_eksterior.id;
          public          postgres    false    225            �            1259    27552    product_image_id_seq    SEQUENCE     }   CREATE SEQUENCE public.product_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_image_id_seq;
       public          postgres    false    230            �           0    0    product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_image_id_seq OWNED BY public.product_image.id;
          public          postgres    false    229            �            1259    27581    suspensi    TABLE       CREATE TABLE public.suspensi (
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
       public          postgres    false    234            �           0    0    suspensi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.suspensi_id_seq OWNED BY public.suspensi.id;
          public          postgres    false    233            �            1259    27667 	   transmisi    TABLE     1  CREATE TABLE public.transmisi (
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
       public          postgres    false    240            �           0    0    transmisi_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.transmisi_id_seq OWNED BY public.transmisi.id;
          public          postgres    false    239            �            1259    18988    type    TABLE       CREATE TABLE public.type (
    id bigint NOT NULL,
    id_product integer NOT NULL,
    type character varying(50) NOT NULL,
    price double precision NOT NULL,
    "desc" text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.type;
       public         heap    postgres    false            �            1259    18986    type_id_seq    SEQUENCE     t   CREATE SEQUENCE public.type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.type_id_seq;
       public          postgres    false    212            �           0    0    type_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.type_id_seq OWNED BY public.type.id;
          public          postgres    false    211            �            1259    18945    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    18943    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �            1259    27620    velg_ban    TABLE     9  CREATE TABLE public.velg_ban (
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
       public          postgres    false    238            �           0    0    velg_ban_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.velg_ban_id_seq OWNED BY public.velg_ban.id;
          public          postgres    false    237            5           2604    27571    capacity id    DEFAULT     j   ALTER TABLE ONLY public.capacity ALTER COLUMN id SET DEFAULT nextval('public.capacity_id_seq'::regclass);
 :   ALTER TABLE public.capacity ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            1           2604    19156    color_product id    DEFAULT     t   ALTER TABLE ONLY public.color_product ALTER COLUMN id SET DEFAULT nextval('public.color_product_id_seq'::regclass);
 ?   ALTER TABLE public.color_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            .           2604    19138 	   credit id    DEFAULT     f   ALTER TABLE ONLY public.credit ALTER COLUMN id SET DEFAULT nextval('public.credit_id_seq'::regclass);
 8   ALTER TABLE public.credit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            7           2604    27597    detail_mesin id    DEFAULT     r   ALTER TABLE ONLY public.detail_mesin ALTER COLUMN id SET DEFAULT nextval('public.detail_mesin_id_seq'::regclass);
 >   ALTER TABLE public.detail_mesin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            -           2604    19139    down_payment id    DEFAULT     r   ALTER TABLE ONLY public.down_payment ALTER COLUMN id SET DEFAULT nextval('public.down_payment_id_seq'::regclass);
 >   ALTER TABLE public.down_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            [           2604    27818    eksterior id    DEFAULT     l   ALTER TABLE ONLY public.eksterior ALTER COLUMN id SET DEFAULT nextval('public.eksterior_id_seq'::regclass);
 ;   ALTER TABLE public.eksterior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            (           2604    19140    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            P           2604    27792 
   hiburan id    DEFAULT     h   ALTER TABLE ONLY public.hiburan ALTER COLUMN id SET DEFAULT nextval('public.hiburan_id_seq'::regclass);
 9   ALTER TABLE public.hiburan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            K           2604    27772    keamanan id    DEFAULT     j   ALTER TABLE ONLY public.keamanan ALTER COLUMN id SET DEFAULT nextval('public.keamanan_id_seq'::regclass);
 :   ALTER TABLE public.keamanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            :           2604    27686 	   kemudi id    DEFAULT     f   ALTER TABLE ONLY public.kemudi ALTER COLUMN id SET DEFAULT nextval('public.kemudi_id_seq'::regclass);
 8   ALTER TABLE public.kemudi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            x           2604    27878    kenyamanan id    DEFAULT     n   ALTER TABLE ONLY public.kenyamanan ALTER COLUMN id SET DEFAULT nextval('public.kenyamanan_id_seq'::regclass);
 <   ALTER TABLE public.kenyamanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            ;           2604    27741    keselamatan id    DEFAULT     p   ALTER TABLE ONLY public.keselamatan ALTER COLUMN id SET DEFAULT nextval('public.keselamatan_id_seq'::regclass);
 =   ALTER TABLE public.keselamatan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            n           2604    27852    lain_lain id    DEFAULT     l   ALTER TABLE ONLY public.lain_lain ALTER COLUMN id SET DEFAULT nextval('public.lain_lain_id_seq'::regclass);
 ;   ALTER TABLE public.lain_lain ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            %           2604    19141    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            0           2604    19142    minus_product id    DEFAULT     t   ALTER TABLE ONLY public.minus_product ALTER COLUMN id SET DEFAULT nextval('public.minus_product_id_seq'::regclass);
 ?   ALTER TABLE public.minus_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ,           2604    19143    performance id    DEFAULT     p   ALTER TABLE ONLY public.performance ALTER COLUMN id SET DEFAULT nextval('public.performance_id_seq'::regclass);
 =   ALTER TABLE public.performance ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            /           2604    19144    plus_product id    DEFAULT     r   ALTER TABLE ONLY public.plus_product ALTER COLUMN id SET DEFAULT nextval('public.plus_product_id_seq'::regclass);
 >   ALTER TABLE public.plus_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            )           2604    19145 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            4           2604    27557    product_image id    DEFAULT     t   ALTER TABLE ONLY public.product_image ALTER COLUMN id SET DEFAULT nextval('public.product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            3           2604    27452    product_image__interior id    DEFAULT     �   ALTER TABLE ONLY public.product_image__interior ALTER COLUMN id SET DEFAULT nextval('public.product_image__interior_id_seq'::regclass);
 I   ALTER TABLE public.product_image__interior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            2           2604    27400    product_image_eksterior id    DEFAULT     �   ALTER TABLE ONLY public.product_image_eksterior ALTER COLUMN id SET DEFAULT nextval('public.product_image_eksterior_id_seq'::regclass);
 I   ALTER TABLE public.product_image_eksterior ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            6           2604    27584    suspensi id    DEFAULT     j   ALTER TABLE ONLY public.suspensi ALTER COLUMN id SET DEFAULT nextval('public.suspensi_id_seq'::regclass);
 :   ALTER TABLE public.suspensi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            9           2604    27670    transmisi id    DEFAULT     l   ALTER TABLE ONLY public.transmisi ALTER COLUMN id SET DEFAULT nextval('public.transmisi_id_seq'::regclass);
 ;   ALTER TABLE public.transmisi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            *           2604    19149    type id    DEFAULT     b   ALTER TABLE ONLY public.type ALTER COLUMN id SET DEFAULT nextval('public.type_id_seq'::regclass);
 6   ALTER TABLE public.type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            &           2604    19150    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            8           2604    27623    velg_ban id    DEFAULT     j   ALTER TABLE ONLY public.velg_ban ALTER COLUMN id SET DEFAULT nextval('public.velg_ban_id_seq'::regclass);
 :   ALTER TABLE public.velg_ban ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            {          0    27568    capacity 
   TABLE DATA           �   COPY public.capacity (id, id_type, kapasitas_tempat_duduk, kapasitas_tangki, panjang, lebar, tinggi, ground_clerance, jarak_sumbu_roda, jarak_pijak_roda_depan, jarak_pijak_roda_belakang, jumlah_pintu, berat_bersih, created_at, updated_at) FROM stdin;
    public          postgres    false    232   L      s          0    19153    color_product 
   TABLE DATA           i   COPY public.color_product (id, id_product, image, color, created_at, updated_at, color_name) FROM stdin;
    public          postgres    false    224   HO      m          0    19100    credit 
   TABLE DATA           [   COPY public.credit (id, id_down_payment, price, tenor, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �O                0    27594    detail_mesin 
   TABLE DATA           �   COPY public.detail_mesin (id, id_type, jumlah_silinder, katup_per_silinder, konfigurasi_katup, suplai_bahan_bakar, mesin, created_at, updated_at) FROM stdin;
    public          postgres    false    236   R      k          0    19087    down_payment 
   TABLE DATA           a   COPY public.down_payment (id, id_type, price_min, price_max, created_at, updated_at) FROM stdin;
    public          postgres    false    216   vU      �          0    27815 	   eksterior 
   TABLE DATA           �  COPY public.eksterior (id, id_type, "adjutableHeadlight", "lampuKabutDepan", "kacaSpionElektrik", "kacaSpionLuarManual", "wiperOtomatis", "wiperKacaBelakang", "coverVelg", "velgAlloy", "anthenaElektrik", "spoilerBelakang", "atapConvertible", "roofRack", "sunRoof", "pijakanSamping", "lampuSein", "anthenaTerpadu", "grilleKrom", "roofRail", "jenisRemBelakang", "jenisRemDepan", created_at, updated_at) FROM stdin;
    public          postgres    false    250   �X      c          0    18965    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    208   �Y      �          0    27789    hiburan 
   TABLE DATA           �   COPY public.hiburan (id, id_type, "layarSentuh", "sistemNavigasi", "sambunganBluetooth", "pemutarCD", "soketUSB", "pemutarDVD", "speakerDepan", "speakerBelakang", "audio2DIN", "perintahSuara", created_at, updated_at) FROM stdin;
    public          postgres    false    248   �Y      �          0    27769    keamanan 
   TABLE DATA           �   COPY public.keamanan (id, id_type, "smartAccess", "powerDoorLocks", "antiTheftDevice", "alarmMobil", created_at, updated_at) FROM stdin;
    public          postgres    false    246   �Z      �          0    27683    kemudi 
   TABLE DATA           g   COPY public.kemudi (id, id_type, steering_gear_type, radius_putar, created_at, updated_at) FROM stdin;
    public          postgres    false    242   R[      �          0    27875 
   kenyamanan 
   TABLE DATA           �  COPY public.kenyamanan (id, id_type, "AC", "powerWindow", "powerSteering", pemanas, "gloveBox", "engineStart", "adjustableSheet", "kursiHeaterDepan", "kursiHeaterBelakang", "spionLipat", "followMeHomeHeadLamps", "steeringWheel", "lingkarKemudi", "cruiseControl", "kursiLipatBelakang", "pembukaBagasi", "lampuPengingat", "headrestKursi", "armRest", "cupHolder", "lumbarSupport", "bottleHolder", "lampuBagasi", "mejaLipatBelakang", "armRestTengah", created_at, updated_at) FROM stdin;
    public          postgres    false    254   �]      �          0    27738    keselamatan 
   TABLE DATA           Q  COPY public.keselamatan (id, id_type, "airbagDepan", "airbagBelakang", "childSafety", "kantongUdara", "airbagSamping", "vehicleStability", "sabukPengaman", "pengingatPengaman", "kameraBelakang", "sensorParkir", "engineCheck", "pengukurTekanan", "pelindungBenturan", "pengingatPintu", "kontrolTraksi", created_at, updated_at) FROM stdin;
    public          postgres    false    244   �^      �          0    27849 	   lain_lain 
   TABLE DATA             COPY public.lain_lain (id, id_type, tachometer, "electronicMultiTripmeter", "jokDilapisiKulit", "lapisanBerbahanKain", "stirBerbalutKulit", "temperaturUdaraLuar", "odometerDigital", "pengaturanKursiElektrik", "tangkiBahanBakar", "jenisLampuDepan", created_at, updated_at) FROM stdin;
    public          postgres    false    252   �_      ^          0    16396 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   �`      q          0    19126    minus_product 
   TABLE DATA           [   COPY public.minus_product (id, id_product, kekurangan, created_at, updated_at) FROM stdin;
    public          postgres    false    222   �b      a          0    18956    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    206   f      i          0    19073    performance 
   TABLE DATA           v   COPY public.performance (id, id_type, machine_capacity, horse_power, torsi, fuel, created_at, updated_at) FROM stdin;
    public          postgres    false    214   ;f      o          0    19113    plus_product 
   TABLE DATA           Y   COPY public.plus_product (id, id_product, kelebihan, created_at, updated_at) FROM stdin;
    public          postgres    false    220   i      e          0    18977    product 
   TABLE DATA           p   COPY public.product (id, name, image, min_price, max_price, created_at, updated_at, banner, "desc") FROM stdin;
    public          postgres    false    210   �k      y          0    27554    product_image 
   TABLE DATA           g   COPY public.product_image (id, id_product, name, image, extension, created_at, updated_at) FROM stdin;
    public          postgres    false    230   ~      w          0    27449    product_image__interior 
   TABLE DATA           `   COPY public.product_image__interior (id, id_product, image, created_at, updated_at) FROM stdin;
    public          postgres    false    228   T~      u          0    27397    product_image_eksterior 
   TABLE DATA           `   COPY public.product_image_eksterior (id, id_product, image, created_at, updated_at) FROM stdin;
    public          postgres    false    226   ̄      }          0    27581    suspensi 
   TABLE DATA           j   COPY public.suspensi (id, id_type, suspensi_depan, suspensi_belakang, created_at, updated_at) FROM stdin;
    public          postgres    false    234   ��      �          0    27667 	   transmisi 
   TABLE DATA           f   COPY public.transmisi (id, id_type, girbox, penggerak, transmisi, created_at, updated_at) FROM stdin;
    public          postgres    false    240   W�      g          0    18988    type 
   TABLE DATA           [   COPY public.type (id, id_product, type, price, "desc", created_at, updated_at) FROM stdin;
    public          postgres    false    212   �      `          0    18945    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    205    �      �          0    27620    velg_ban 
   TABLE DATA           c   COPY public.velg_ban (id, id_type, ukuran, jenis, ukuran_velg, created_at, updated_at) FROM stdin;
    public          postgres    false    238   =�      �           0    0    capacity_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.capacity_id_seq', 56, true);
          public          postgres    false    231            �           0    0    color_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.color_product_id_seq', 2, true);
          public          postgres    false    223            �           0    0    credit_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.credit_id_seq', 67, true);
          public          postgres    false    217            �           0    0    detail_mesin_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.detail_mesin_id_seq', 87, true);
          public          postgres    false    235            �           0    0    down_payment_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.down_payment_id_seq', 67, true);
          public          postgres    false    215            �           0    0    eksterior_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.eksterior_id_seq', 12, true);
          public          postgres    false    249            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    207            �           0    0    hiburan_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hiburan_id_seq', 12, true);
          public          postgres    false    247            �           0    0    keamanan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.keamanan_id_seq', 12, true);
          public          postgres    false    245            �           0    0    kemudi_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.kemudi_id_seq', 87, true);
          public          postgres    false    241            �           0    0    kenyamanan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kenyamanan_id_seq', 12, true);
          public          postgres    false    253            �           0    0    keselamatan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.keselamatan_id_seq', 12, true);
          public          postgres    false    243            �           0    0    lain_lain_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.lain_lain_id_seq', 12, true);
          public          postgres    false    251            �           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 266, true);
          public          postgres    false    202            �           0    0    minus_product_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.minus_product_id_seq', 28, true);
          public          postgres    false    221            �           0    0    performance_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.performance_id_seq', 55, true);
          public          postgres    false    213            �           0    0    plus_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.plus_product_id_seq', 30, true);
          public          postgres    false    219            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    209            �           0    0    product_image__interior_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_image__interior_id_seq', 78, true);
          public          postgres    false    227            �           0    0    product_image_eksterior_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_image_eksterior_id_seq', 91, true);
          public          postgres    false    225            �           0    0    product_image_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_image_id_seq', 2, true);
          public          postgres    false    229            �           0    0    suspensi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.suspensi_id_seq', 54, true);
          public          postgres    false    233            �           0    0    transmisi_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.transmisi_id_seq', 55, true);
          public          postgres    false    239            �           0    0    type_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.type_id_seq', 71, true);
          public          postgres    false    211            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    204            �           0    0    velg_ban_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.velg_ban_id_seq', 86, true);
          public          postgres    false    237            �           2606    27573    capacity capacity_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.capacity
    ADD CONSTRAINT capacity_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.capacity DROP CONSTRAINT capacity_pkey;
       public            postgres    false    232            �           2606    19158     color_product color_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.color_product
    ADD CONSTRAINT color_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.color_product DROP CONSTRAINT color_product_pkey;
       public            postgres    false    224            �           2606    19105    credit credit_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.credit
    ADD CONSTRAINT credit_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.credit DROP CONSTRAINT credit_pkey;
       public            postgres    false    218            �           2606    27599    detail_mesin detail_mesin_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.detail_mesin
    ADD CONSTRAINT detail_mesin_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.detail_mesin DROP CONSTRAINT detail_mesin_pkey;
       public            postgres    false    236            �           2606    19092    down_payment down_payment_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.down_payment
    ADD CONSTRAINT down_payment_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.down_payment DROP CONSTRAINT down_payment_pkey;
       public            postgres    false    216            �           2606    27841    eksterior eksterior_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.eksterior
    ADD CONSTRAINT eksterior_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.eksterior DROP CONSTRAINT eksterior_pkey;
       public            postgres    false    250            �           2606    18974    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    208            �           2606    27807    hiburan hiburan_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_pkey;
       public            postgres    false    248            �           2606    27781    keamanan keamanan_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.keamanan
    ADD CONSTRAINT keamanan_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.keamanan DROP CONSTRAINT keamanan_pkey;
       public            postgres    false    246            �           2606    27688    kemudi kemudi_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.kemudi
    ADD CONSTRAINT kemudi_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.kemudi DROP CONSTRAINT kemudi_pkey;
       public            postgres    false    242            �           2606    27908    kenyamanan kenyamanan_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.kenyamanan
    ADD CONSTRAINT kenyamanan_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.kenyamanan DROP CONSTRAINT kenyamanan_pkey;
       public            postgres    false    254            �           2606    27761    keselamatan keselamatan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.keselamatan
    ADD CONSTRAINT keselamatan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.keselamatan DROP CONSTRAINT keselamatan_pkey;
       public            postgres    false    244            �           2606    27866    lain_lain lain_lain_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_pkey;
       public            postgres    false    252            �           2606    16401    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203            �           2606    19131     minus_product minus_product_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.minus_product
    ADD CONSTRAINT minus_product_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.minus_product DROP CONSTRAINT minus_product_pkey;
       public            postgres    false    222            �           2606    19079    performance performance_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_pkey;
       public            postgres    false    214            �           2606    19118    plus_product plus_product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.plus_product
    ADD CONSTRAINT plus_product_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.plus_product DROP CONSTRAINT plus_product_pkey;
       public            postgres    false    220            �           2606    27454 4   product_image__interior product_image__interior_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.product_image__interior
    ADD CONSTRAINT product_image__interior_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.product_image__interior DROP CONSTRAINT product_image__interior_pkey;
       public            postgres    false    228            �           2606    27402 4   product_image_eksterior product_image_eksterior_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.product_image_eksterior
    ADD CONSTRAINT product_image_eksterior_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.product_image_eksterior DROP CONSTRAINT product_image_eksterior_pkey;
       public            postgres    false    226            �           2606    27559     product_image product_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_pkey;
       public            postgres    false    230            �           2606    18985    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    210            �           2606    27586    suspensi suspensi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.suspensi
    ADD CONSTRAINT suspensi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.suspensi DROP CONSTRAINT suspensi_pkey;
       public            postgres    false    234            �           2606    27675    transmisi transmisi_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.transmisi
    ADD CONSTRAINT transmisi_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.transmisi DROP CONSTRAINT transmisi_pkey;
       public            postgres    false    240            �           2606    18996    type type_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public            postgres    false    212            �           2606    18955    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            �           2606    18953    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            �           2606    27625    velg_ban velg_ban_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.velg_ban
    ADD CONSTRAINT velg_ban_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.velg_ban DROP CONSTRAINT velg_ban_pkey;
       public            postgres    false    238            �           1259    18962    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    206            �           2606    27574 !   capacity capacity_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.capacity
    ADD CONSTRAINT capacity_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.capacity DROP CONSTRAINT capacity_id_type_foreign;
       public          postgres    false    232    212    2974            �           2606    19159 .   color_product color_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.color_product
    ADD CONSTRAINT color_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.color_product DROP CONSTRAINT color_product_id_product_foreign;
       public          postgres    false    2972    224    210            �           2606    19106 %   credit credit_id_down_payment_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit
    ADD CONSTRAINT credit_id_down_payment_foreign FOREIGN KEY (id_down_payment) REFERENCES public.down_payment(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.credit DROP CONSTRAINT credit_id_down_payment_foreign;
       public          postgres    false    2978    216    218            �           2606    27600 )   detail_mesin detail_mesin_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_mesin
    ADD CONSTRAINT detail_mesin_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.detail_mesin DROP CONSTRAINT detail_mesin_id_type_foreign;
       public          postgres    false    236    212    2974            �           2606    19093 )   down_payment down_payment_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.down_payment
    ADD CONSTRAINT down_payment_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.down_payment DROP CONSTRAINT down_payment_id_type_foreign;
       public          postgres    false    212    2974    216            �           2606    27842 #   eksterior eksterior_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.eksterior
    ADD CONSTRAINT eksterior_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.eksterior DROP CONSTRAINT eksterior_id_type_foreign;
       public          postgres    false    2974    212    250            �           2606    27808    hiburan hiburan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hiburan
    ADD CONSTRAINT hiburan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.hiburan DROP CONSTRAINT hiburan_id_type_foreign;
       public          postgres    false    2974    212    248            �           2606    27782 !   keamanan keamanan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.keamanan
    ADD CONSTRAINT keamanan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.keamanan DROP CONSTRAINT keamanan_id_type_foreign;
       public          postgres    false    2974    212    246            �           2606    27689    kemudi kemudi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kemudi
    ADD CONSTRAINT kemudi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.kemudi DROP CONSTRAINT kemudi_id_type_foreign;
       public          postgres    false    242    212    2974            �           2606    27909 %   kenyamanan kenyamanan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kenyamanan
    ADD CONSTRAINT kenyamanan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.kenyamanan DROP CONSTRAINT kenyamanan_id_type_foreign;
       public          postgres    false    2974    254    212            �           2606    27762 '   keselamatan keselamatan_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.keselamatan
    ADD CONSTRAINT keselamatan_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.keselamatan DROP CONSTRAINT keselamatan_id_type_foreign;
       public          postgres    false    212    244    2974            �           2606    27867 #   lain_lain lain_lain_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lain_lain
    ADD CONSTRAINT lain_lain_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.lain_lain DROP CONSTRAINT lain_lain_id_type_foreign;
       public          postgres    false    252    2974    212            �           2606    19132 .   minus_product minus_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.minus_product
    ADD CONSTRAINT minus_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.minus_product DROP CONSTRAINT minus_product_id_product_foreign;
       public          postgres    false    222    210    2972            �           2606    19080 '   performance performance_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.performance
    ADD CONSTRAINT performance_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.performance DROP CONSTRAINT performance_id_type_foreign;
       public          postgres    false    212    2974    214            �           2606    19119 ,   plus_product plus_product_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.plus_product
    ADD CONSTRAINT plus_product_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.plus_product DROP CONSTRAINT plus_product_id_product_foreign;
       public          postgres    false    2972    210    220            �           2606    27455 B   product_image__interior product_image__interior_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image__interior
    ADD CONSTRAINT product_image__interior_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.product_image__interior DROP CONSTRAINT product_image__interior_id_product_foreign;
       public          postgres    false    210    228    2972            �           2606    27403 B   product_image_eksterior product_image_eksterior_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image_eksterior
    ADD CONSTRAINT product_image_eksterior_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.product_image_eksterior DROP CONSTRAINT product_image_eksterior_id_product_foreign;
       public          postgres    false    210    226    2972            �           2606    27560 .   product_image product_image_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_id_product_foreign;
       public          postgres    false    230    210    2972            �           2606    27587 !   suspensi suspensi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.suspensi
    ADD CONSTRAINT suspensi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.suspensi DROP CONSTRAINT suspensi_id_type_foreign;
       public          postgres    false    234    212    2974            �           2606    27676 #   transmisi transmisi_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.transmisi
    ADD CONSTRAINT transmisi_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.transmisi DROP CONSTRAINT transmisi_id_type_foreign;
       public          postgres    false    240    212    2974            �           2606    18997    type type_id_product_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_id_product_foreign FOREIGN KEY (id_product) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.type DROP CONSTRAINT type_id_product_foreign;
       public          postgres    false    212    2972    210            �           2606    27626 !   velg_ban velg_ban_id_type_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.velg_ban
    ADD CONSTRAINT velg_ban_id_type_foreign FOREIGN KEY (id_type) REFERENCES public.type(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.velg_ban DROP CONSTRAINT velg_ban_id_type_foreign;
       public          postgres    false    238    212    2974            {   4  x����q�0E�BN�S��-��?�����4�C˼��_�k�76�ŗ_��fK焋.5]b�[|2v�V
�$�3٧�G�n���4�+�쟩~�ҽv��F��}pM���ٻ�F����3�vםF�j�2G,�u���Q�8= ����/�14j?ȋ�ծ�������6k��!�g�E��i�]樭�T	!�|^��|���O2�.�Rw��q�.=͆�� 7T"j�R	t�?(.��J����>���1�4�(�#�u��F0Z�:/�ҕw�h��	���v�h��:��hi6ĥ'�h6v�F�͆�B�C<w�;��H����SB��i��<@�4c䥇�h�Q�'h����(fpT��e�����A�_�4��lF��FpZ��ָ�F�Z���n��C#x�rĖ���������[^�؏F0[���;�`���'����`��#�b��F1���tYء��z�n/�ΏFxB��� r�£�c�y���-����s
�Fy�)��=B��^ci5�wX4��>���;\�W��f}��Fr�66���HG�'qctM3���"9u��}�k ��ƶئ�&w�/�j�q����í�v{�-�fc0�N#0���ҹ�4��������Q�z=�[���b7&L�q�u����	�����i��5}�cϏ�����>{24�!����\F}{�id���-ma�;4³�ݾ�C���%�2"�5Z������S���&,��C#����>��[#$INOؾ�ˆ][��O�y���ګ�Fh&Y�qz�ӻ�A���]���[#$w�3v����CD� 
M;      s   M   x�3�4���TNN##]]CC3++cs�b��%�\F0��iɘ
MM��̭�9+Ssr�˹b���� �Nd      m   �  x�u�Q�� D��U��)	*k���c�S*����6@�Q��V��6K�~��&������~��R+��÷���r�U1�V�����n�DKK��pl��
ù��E��>�u���%Ig��lR�M/Y:þ�˓ǒco%��(�q�b���j[V��b�z�Je�k��gY���B1p}��/��P\/o�x��VVA��$po���)��?oj0dv�!%G������Nu�~��2,+I�ٹc�,%�����MJ��b0�I���ip(㛼O�wc��
+���PpMYj�E��[�Jbi���R��|�mtH	}�d��KO)YŇ�p%)�c���)YJص���+&%�<�>�#�����Ig`Q�4L��PL^�@�-;[���iH�ɮ�o���r$+����yjy�2�_"����,���b��^�?�&�g��!+~	}��ٲ���7��(�a~D�s30�v��l"�,����:�$��;U��Y�*%'��8���Y���5��Y���W�^C�f��Yl���t���+�/��l����?s]�Ujc�^�`��޿´GQ��rc�k(��o��r6����%������l�+�$�����.��K�TJK���k%C�[�Rr<�僡���E���y0Tֱ|�<n��PyY�E��ru|�����*�w)���g]��߿I�,��� � UL�         �  x���A�1���~E� wIR�$�뺢 �ɓ�A���Vgv')<�\?2y��W/��S���������o�������������������ݟǇ���͇�˷�ߧ�� ��n\�	��Xc��[L�U�ƕ��*{��b����CKu�b*�T�*l1$ڗ���X��[&þr/�
�/�Ld�+���X��;����X%��X��e�N-��f>-ӑP��iZ4���H}��gR.��5�nk>�_�<���PC��q�u:.����&K��g�.Yj����{j�y���"^����NcP��N��,5AX��=���bP�%y��s���p�}I�����bP�%yp�S���<�� ���x�}o1�	حӉU�Š&�!�u�X�Ơ&�!�u���^�<����`1�	xȃy�T�n1�	xȃy�Lg1�	xȃiV�:�AM�CȴN}��<���Nt��ij^�z׸>CҢ��9��;�!i�V�3G(CҢ��9f��O/Y�6�����ѹgIK��E[�km���o�H��_�Cf�!ߦu���n1�H2�m^'��va�B~�yB��C�]�;�g~��!g���u�3����C.$�|}?�_�N2�?�:2��1G2ܧ�:�ϝC�$�����k����p����3�9�
S2r�_��<�0�H���~�>�Gc(B�����|��>[%Q2r�_�q�Cɔ�~���Å��-�����      k     x�uV٭�0�6�x���q\��_�R�,��`0TIԕ�J��TsͿY~s�)m5Yr�X��y���	>\ӑ�ƶ�ai�钽Q�#s�g�Տ�Ɉ�$g=W�>=CJa�ޱa(%���迳�U� �AӠ2}���{��T�F�&dM����$��(B��9�d�Z�C�NQ�W���}6�Am,�/�i�	��Tj����u���.��{P���whzV��6l�c�HW���y�1�Nߔ2�0�</��%��}�V_Na`*�*��Z�����
9LcZ�l����c*C>b�\��Gt�39L�cv����g���3��d�-���	i���U
X��}�0ټ�0P�VcNY�}�������
��u��;b{�b� �\{��ݷb� mı�x�`Ǉ�M�6�@ڴ������惁�������c��̐"~�>���}�}2���w	)�x9���{�(�1�v-DLi>}� 9���"G�Ax��J(܄ls�3].O�si�H഻�iv��*�����{`{��!�)�sُ�^�1��LIc;��|]�մ)L��jv�|	1�3��O��ۻ�cؚV�������h��SӖo՛a��~�k�:��K���W��'�m�w�c���6�����>^����YUO�n�+oZ*g���q{�b��C4��{��=6�@��*�f�{l��B7Ӻ�~�]|���B�rj�Ϗ֞g�:�R��9�y�o�a����Bi��F/���Byl�&2�/�b`"��e���>0�0�_��S������ � �DT�      �   �   x�ŔM
1F��)�J�6�N�A�͠.���:��2�P(�}]��|ò�y�iw��i������r�a�=��}{�n�Yׯ{p�hB2�PQ�\�$���X\1U�4	[=Է������+��j*j�d1������r�>Z�BN��{�a�RRQ[k`.$�I����	ؕ�
�16�RH*dg1̉�X�JH�Xs����+&%����0g��t����YWSD�u��      c      x������ � �      �   �   x���1
�0Eg��@�dK��st)t	t)��^%C�hi�������p}>���5Q��t$��i�&(��ۼԶ��o5�ɲD3����q�L���c2!h=bo^4b�0��Y��L]fG+p4,���WQ&�1l��W�F�	X���	%�_�2􈽏����У����g��4E=Ong�j����!m�      �   �   x���K
�0��)r�=��G���M��������D�`�4�O�������۲?��EgI�C�<Ɓ�W=�u�j�I�G*?v?��6I��2z�ձ�l�c�6V,%�q&���8�xc\���z�+!�qմy�A�n�sߍqO�<���7�=.F�����1�y1��Z�����~a�7�L��      �   �  x������0�k�Sl�n�!%YO�������]h��Œ��~�@�pH�P�_����~�~~}��&~0�T�=��-��iJ�*�����-���L�2�5��;����g���X�K�i�mku�վ�`��R^�L)b���N����F�,���҈A��e��4�Dz������v{��A/�׍����r��n���=b�L����M3�z�1�t��VĠ���?k5k%bP��e��Z�U���#���[����Wx������=���{�v�nİO�e���u̦l�n�e���u�1���2��>s�Լ���Mm�3��Aͫ>N/o��Š�U�?��=k�t0�y����K�1�y�����.�Լ�����m�Լ��g�5�l�s0質ϟ�]��W}��^�������U�?��׍Լj�'�+)������Y�g����U������m#^�Ok��O�COī�ɾk��=z&^����82"�^HV�n������Fe��::���o��q�](���Y-!Coī�jm��?z'Y���_�~.#�>Hl��a�ʚ�-b����@�q�a$����1�Lb��z�V�=�`�??�N��K�0���Ͽӏ�_��`j6V��o��_'�j������s2�F���׸��atj6��^gu�> ��9��      �   �   x�͕;
�0@g��@��u�.�.�.��߫��Dt�CR0�z`���p�߆�'^�ך�i�;��O/Yn�ё��bO��,��b� w�)X:*�$�Z=�kGU(
��0@�[P�o�������Z�d1L�tx�\��Z�����F���罄`1��q��T`�[`	�j�q���D.�/Cm:n�{[�E]s����7̼f9�('�����O�5Q      �   �   x���=jAFk�{�ߧ���Í!�����{�C�d���4��	��(���z��yϗ]���¿)�aF��&Tgv bjR�;�	���1]���|�ߊ�	�Q�K�4�xW���,�?z38jĴ1�9K�ZĴ
9��vK��t�XגǾ��6a�J�#�}Z,�e��JĴ��u��}��"�}^yg��}�,b����w,�Mt      �   �   x���;�0���>E/Pd;o��K�P���"�X<a)C�I����}~�e>^~}Z����YV)�**�!Y��ׯU�G�e�l������(�e���}b&h޸��bf`r׋r�0{롯Ǳ�V`q׳�p��c�x��ݰO��7����e��ξ}gRM�2�sg��o��T,��	�4yb      ^   (  x�}�ю� ��ׇ9aP|�������n��gl+�m/l�|��3ZP���f\�V3� ��5��?�k���z�z1�Ѿ�
���5c?�\�f0��'�n�J�j��H��h�xz4 (�FC� �F�f��n����@�2E!C/&������`�T�7��Tz�fһF�����
M�4�R=�r���̈́`�=�r#ۂD�*KU`>S�0����Ɩ%�S`,����O�u{Q�Ȑ�!P4���ߎr�N��	ӈ�..�B_���G> 5p�h������'��z��EB2����5(�ø�R�Z(-�C��܁"2u����ٗ�����*mgBݚ��Lv��.Io�[6�����ڞ�b�@��m��������\nS��-l)~��+Yl��j��\L7,���$�8�;�p�.)�%.���=�z�ap�"
%	�ˎ�^��*q�b�ƅi8*�7�lK�X����>��X�{����@8�3��F3��(�%K�� ��8/q��7�V�Ӣ�E,��6m�����hb1���o�����&ŻkV>g��?UU�!t      q   L  x�mU�n�:|�b?�	D]|�[҃E냠1ڗ���X��H	���}���:�^�xL�rwf�I�D/ʍ%���3Ӡ{�ftlk*X%q?��C�R,�<+��&R�}��Н#��6ta�����a"�W>3�wV�9�'WL����4[zյc��d��5L�V􌫞J�r:3����2��U%>��iu��u���6E��<`b��QW�L/�z��(�-
��{ؓ��S�1�wI��ab^�ӎ䔡J��?=�.'�5L�8ʢCW�6�폆��:�;���ҦH�"ۯaBJ�(��ցʫ^�A�A��#;w�~_T����ױ��$��0�	l����	��N�d��	����u�s*���ↇff��V�]Ä��t�	��n�ǲ"^�0co�W\��`��~��[�N�[�^\$�UZ>���:�|���W�\�	r�
0ů���L������+�nr7��Zي_֟kX�	0��-���&L�}���:�գ�:n����_��z�#�o�	HS��{=b���jFx�i�4,6�5�����F�}��D��cŧ��.V�L��H��&X:�d�!�pvl�%���8��	���n�ڇ]r���oe��,��=`�SH8l�1�b�=�gZLף+7�ǞC]F�� zM�-�����2�i!wE�������h(��a4�alB�>_�Rp���
$q��$�dtT�����Y{m�nG�!��]���D����.�l��ż��5L`�e��U� b�!u����<[�D����'=��"Lٮ�2���FH�ڕ\ωv�L�0��G_:�;̈�>�dJzSe���[�0`������      a      x������ � �      i   �  x���A�!E��S�QE��	��(R�H)������6V(ɫg�>E�	�m���P���ﰵ����_~�
5�E{S��ҵ�Xgʲ�j7;��c�9�B�g��R�,�-n��u)]ڌ!�mݲ�Tg\ϲE���j���I��2c��"��V�G��KQ�"f-�:DƯ댁˒�1�L�L�a��8LY�^�3��U��:�1a�d�X�OsbA��Ǵ�@j]u���5.{�zl3F���t��6Ɍ�Q�b-�ک('�)Ǟ�)��#��d��vb`غX�Ǩs}?�.�7G���j�3��X��c��h3ƭ��}�bc-3ƭl*I�0��0E嵩���w���g�;��Tz~2����0q%i����ϺI�����yL�y�vƝ��ĦVg��7׺)�_ˌ�q�B��&�iW��y�]���̛��Q��^�`g`��C�۱����^+פvnqٔy0N�݃���3�W��K~i�Ե���Ǵ�^�miD�?�A����ke����.�i4��C����y7;L�zO�w�ߵO�����,�ď�k�+�3����ab���jj�
lh&v��f��g��Ӻ�)i7�����ă�6c`1��0��R�1��x[8L�z�����hPe<r�:���{�����b}0�0Kt������*(�R�����/]W�q�Mg</%�T�k�1���T,�:c��	�_ׁEO      o   �  x��U�n�0<�_�h
�zY�%u�h�"1r�e1���D��H��Hb�S���xwv�R�
~QG��Y�%S�qp�J܉�N�\�<Vy�0��u����L��s�b������-/�@�4��چ<B�G(�X���xC���;חή+�̇��G����T���'^b���eu���ci�u�YP[��	mkL��d�a�6йb�F�[]���W3=wD�B�"�a,�ғn�v*N���-�Z�*�ØA�@�\}1�mᚣ��'�B�ʇ1)�qG7�~ߙaQ��؇1����E,���x�e�ØA~&khJ։�u���0&� �ν,�s.�X�9�1H�A�&�z
�R"����B"L� ����v?�+��҇1��`���9�f9#�07�b���ն�������1B�m�s��HO	]�۟�G�n���$ʇ1A��(^�=���>��L�i[��:��x��ܝJz��x>k�e��l|b_ziL~������gl�^�\Q�<�c�z���{W�����^��^��)�є���18���ymu3�B{�-G��<e2�7�p6p��R/�q��������4��_����������ڈ1�B��5c[����}§��d>���g�e'���c*{�7�/�z8����.	�,�7��"�-}hx�?{7������ߙ      e      x�}Z�r�F}��b*OvŐ�d���%Yq�8�,��n�eH���`�0_��tπ���%� 0��ӧ{��������gM6Y,�gg�ū�ly6��#��lU�6���;�f�\[��}�,a�PXo6���Sc��K����m�v�
ߛ�|�ڴ�+�/B�mn���qU�Pe&���Vfg�y���P�{����Y���Sc[�a�ʬ�ʵ��&���|��.�������?�,����4���a�-�__��0���%(��r�l��xj����*Í�t�J.��;��dX���2E��V}ȓ�\I�z��,���ת̭ݣU[�+__A�@�;�;�n.w�U�l|c�|��S}Zv��Ν�� ���W��-�*aa_�=�c�s��	a���cf���\l�b�RM+ր���ȝ�Ũx�_s[:	�j�_�OjN8����˩����=y�:tjawP��+��-L�mW�m7��^��C��&k��\�M��(nas��6�����ݕD�U\_���n)h�15m� ��%�(a�w)�RD�7��%���d�P���ߪ�gap�����6��+0z�G���$��P��o.]�c�kLl<"2?��ϡ���v@�
x�}�ŵ�\�Cd˒�2��\�ZL���ؑi6l�mi%�2�K�5B�婛!A�	�C��* WΎ��98�\'��:د�$�[A�B�e���6m�K�.K��~�ІJb��l�3��@�?�?�O_m%װ=.}U�:Y�^-X'�����.n\}�����քQ%SCJ�c�ۘ��U:n^E��Aa������yv�πW���W�2�#D4 V2oߙ�?��N��x%�	��M��)9P!&��M���ؘ�eS��[����s�[��+d��aR����K��I��e�>3�\�;[=Taj:<�%�;��*����� ��_n��o��X)c�e/�-&ʉ���9b���lvrX��-�k� �؟/����q�K���6�5��@i�#3��H�#�o�."�*^vȧ�=�Z\�魥(.�2�'�`��ϟ��9�F2N�}Qdha5k�r���}��ЉO���)��hk�����-�� 5�K�{�o�9Q\[�����9*W��5}�u�X�νԵb횙+�Y��n��_!��/`��9�O���f5�#st_�@�T����@�����1{J��b2��hٛ 0��2�P�\~,Me�������wR�ח6s@y�;�@������̳�v;Z� �A�q-:o���G�,��^�w��V�RH����W����HqE���I���N���n-Yí��jד�|d�PL��3�8��[ȭH-x/����Ƹ�9�8�Q
����S�*t�,�|���=��..&��W��;(����jU��:��	����]	��q�"E�(sO35l�{�Үa�܁k��n$��3 ����:�W$�P`��F�/U7�����2R��a#��� ��'a<K�W��r�Ofv�G�Gu����xa0��\�!��Q����!  ��P�,�Mb+A�oZ��[��<@����*�|���\�ZW7�ud��"P��=�H��A�2���zv�1�� �$��АR�^A�ADt��3��uM�������������r��C�.���D�xSwp����4U�������vOVzt�Y�El��,0R�RS6o��	�P0��E�w�#�Ri����4UKݹ\)rC}�:4<O�O5���Ľ�{`�Zh���<ۜ|8��)�{��w,�>�-��/.LCc!�D�q���CV.���9�=ɟ�3'w�;�����b�C�jrz�=���O��ׯ���/u�8��9�i��_yc&�(FR��[ؔ�!w�n��B��dR�ʋ��ND��W�[E�XC�H��'��U�,z����8��G-�@������'�
�-����d	������o@Z�M�76�؊-����$�ɏ�}�\l9��f��`1wZFl���Y7#��i�({H����j��k���Q�*���.�:����]�����\ ���2(��%��zD�n����N(��BE(�X>f��<�9�x�l�T �U(�x�lALC�Eڰ��95��.͟��������H$E@�/����b$m�{�����c���|>Oy� $����3m��)�N�1����\Q�>��z���a�^�1��D'�BFa���-SFeh�h�nZ��r���*x;�4˦��@$���G�k����ۦ�[���GU`"���q1;�,_-Rct�-�ϋ�w_���q�4F�8w�l�$e)�~��\�U�X�!f�)�����5C�uD�=��eUt��O��3@�4B��'pp]�.uc��5�7u��۩�k���{d��k��?�:�(5W�й.d�q�BdQq$H�At�d�����\�u`��ݣy�� �]iC���=i�gE^VKuÃ�Q�Oʷ�D#BX�9�����ƢV��%�u�:C��uv����~�1u:Q[T ���5�`�P��M}��7��Z�8�۶,��&s}���	���Ϛy�P�̞�@Ȫ������)��G����� W
-�A��!��q��i���I����O��ČcŌk�x��N���}1?5�w"$��pq��|,�Si<4HG�GE�X�����4͏(���;:�Ø�j�C�u,�2bc���4��I翛8��)�M�1E!I�x�P���e˿4��4v��(B^�»����C?��dS��t8��Er���:Y1��eQ��H������9�ʆ�ǣ���?H�L�{C�3T�;��F񌙗{�Nb�%�?����z=�dyr:;;�����JO%��@�f�o����Ǔ5}�PW�z@��ޕc_��s�,j>�41��]��@V��X y2��$��S�o�"�I�<��t�����8���x��]���C8ZbɸC��e�G<0`G5�,���LHr�v �/5Kg�#oj�S�#Fm��E��cL/��v� �+2<<Zz��໿Y���䉺^+ �Ѯ���l�:{�������H����W
S?]]���	�"(.ZO�9ŚQ�����*�C$����H �8��k�e�>��a�=������^x��`���D�dD�]��
6��;NnĴ��>��ںx[\L�gz��>��˰w./���)����-�-��2d�'>�Ԧ��{ ��A�ݿ����S����:;t!C�K;bZ��P顸&szȔ�Qj��"q�����
�u6nw�|��?v}ݰ�����<�RM�w G6>���i��9����8�B�x�1�z�����,M���͖�z���፹�t����3�Iw�y���}ڀ�M����,��TF=��%T�� %���	l���~:�P���a��I҇3Ē�R�ӧړ�d��� &2\�tB��߂� :N�����V6��i�<�����u�uvt:[��un�4���&h9=]�N'�����f��[�ɉ'�GJ��h}5�zr��M�@���d	ң�����f���r�~����X�Oo����#�6+� ,�ssww0�����}К��W�C�}�e��<Lh��>����TSwD���Z7�3���rߙ}�tHO=S<��UjYǱ�U�k궏'	%�_#�#�������s��I�jϗeL6>�ќ��(����UMFRe����p�T�NN�s??"���|���(�}4��gg�:�`%��|ZR�w��,׮$uey�H:f[�� ������+i�:$� z�,߫�[���H�,+Tm�eVK�6��FgQ�r����ce.���G�'wh"�j��q<0�-&��b�x��p��k�����KFh|��u��M=<��"�b��v�"��FїBFaa���klɄ\^J`����� ���{�G�T�5
�Hj���6��U<���#-�H�\��+)g�8����z4��0��5��d�W��w���
�OCB�0�e��
;�6�".q:M�>���=]��A��:���wPBÅ��G����惎b�   �u?}j�N^P",�x������i�6��h�g���@H�G��&=�zU1?��L��7�����������@�*�(%����9"�zr��7�|��4��)yea�+`$�
�x{7���#��um�d�j��ȍ�@u�{�8i���&���ȄL1�с��f�����2��gX�jɫU:����.�I>7i�9��U]W?F'����}��z��2��Y�_2��4����b EM�;�hw�C�3=��8,�Q�F i�v<���%����<�gCӵ��#�jT�f)?��?T���e:�-�z�����]�.d��b+[�5ڛ���,��-�%
}����wL��Q�g��9##�����g�!�P�q/�<?�욦�ԙ��|Ͱ�(w�o+�����H���*��0�}���r�]�G�^��*}v��T��_�N^�ӃC�,�q�l���3Z�0z_K�$�'[�aU^��6;7 E ��5������Rf�Z��H�: ��/����V��?fGGG���1      y   C   x�3�4�,�L/J����z�I�����@��D��X����������񆘚X�b����� �!F      w   h  x���[��:���UdNI���k9/p0e����O�P#���T�)���.���ݱ���4>��ϥ�Ʃm��v�>�m{��:����wFU)�t��Mm]�^��dЩ9��k;�C��/�J`<��v�oci���yS�Z�4���W��rl���d)8��k��6#ޛqlo'>��6S��E���e�_C�6��B�Ƣ��ʾ~��g�ӥ�h�}�U�w�t�g��A�����*�PQ�Q���X���0G~��XY�I�k���Vy�w�������r��֒����ىg����f<��f8V]�Y��l�s 
Ν5�fg��cw2lPQ���ZS�Z�`θ��?)RJ��ZIM9v� ��B���]=i���9r�������P�FI�9�)7O1����@NB��@{����ٵ|�n�*�W���̷�:����۱�jo]�fʰ?$��9|р�T�'Y��^<9������|h�g+M�˹�����40�N���>�	b\����1%�i9���5��|�ۂ�i�-,����`�X.A�d2����W�2��msZ�D���X��(i`�?,�u�睶�o �A�r�t̛5�T)��袁�;z7P]����H���v!�dG�&=���	%xRL.xEbΣM7��&��IΣsdD�0H�9�h��O[.�2�bT��e�Ϣ����0����\�<ح#W��sbр���\c@+�����E.�R<�Zڷ��ċ�XG(��E���*F�M��VH��v��u�&���Fz��C)��m�l4�}� O���t1_A�H� �L
t�)����р��X��3���?�����%rR�&E�?L�����-�Q;
X@k�4��[@'7K*���
��8k@�o��2w�x�3&�4�9a�%kѸm����\*qәtL��
�T�F*Vd�r�����X+-i@Ţ|�7�3��v:spm�1�DI*֧�[�eO�v-�h@a�-\_]��dO�b�X�.s(
ء���ٲRt��Ǿ�b�$���:����������l�/�?��iр�9rӷ,���b�=	!��L��Cۿn������Y/\4��Ϙ�˲!��H3bрw���(�(��橼h`�p��w��M߫V��`��u96�q�M�ׯ�6�E�Kd��9!ʞ�F��l!�·�W׏i���afhW5EIl�M��'53�6f$����e�_��a��۷��O����:/����a켶l/i��`k�������}��S�|ӯ���{{l.�y��:���$�/
��J�j$,QI�SI��E剔���VK8+ ��q8W�ah��E�V�cOB�4��-��n8��ҽ��·���<�Ҩ.x'����w��e�he�� ��4�^J�9xσ.����Zh �� i��.n_��9ے��7�(�u�Y��7i �Gq�<�ica.r}F��s����o^H��^����A�\��/�F��+���O�t�Y���D�N^��XG��6{sX���Ψy:x#@�n�7�׍݄`�%a�ڴ���|T������9�q쇮��1]�=��T%Y#g3�	M���'SBQ�su�<�k��ā�)��Q!����B�'^4pN8���.i�ߩ�N�J&Bț�	W�?���[�      u   �  x����vj7���)��.K��v�7�nB�, 7��W�P0��:�>��Ҷl�.֫���|z�V��V���a�V���f�>�_���cq������� Gnr<ayBZ:��EӀ��q��H�KԈ���4�@\��6��tڮ7���x<> ���Q<.��4�FH�u�}d5��8Pg.�{�����T�O�H'��p�~�Y� �B�O8cr�H����;�}>�A\JQB,����M��d�mnPHHEr;�20���Y�w���R��F�|�[b�4�#���1c�"z�4(#���Ę�5L�4�p� ���~=3a���J08*������Wњa藿j���������~���=9V��tCtg�[	�n���;�s� y��\�����f�5�!�GR�ApEI�Y�c���	�{�/+���F�{ܬ��_����%2.q�ufy�@�Ǌ��nw���"F������R5���^��2�f��i�ł7u�V�b�!}�T�Y����Ĭ潐�hZ�]
4e�؊��˽j@�e�\&{��S�u5�̚修�>/���ժ^�K�j@fնkpɝ���W�8��?������n�.���	N�a]gd�3��G�sȨ�Ko
UJW5�SѷN?o����t����zr��(��Eo{�BZ[���-�j���'�U5�7��&Ez�U��HU<Y���8�;�@�r�@�� �a����n�Br�j����d$�L&�;S���%��|Y������M��删�7+�P�����ۣ�����j��5�QNf^�Gi`z�H��1^�����B�s��� �m��T3�I�O����������dM�>��wsɱ��+#/C�4�2���atL����F&k���B�?��H�4����~�X��|�z�Ce�6����[Aa�,;�|��J"6�A	���-�w6�� )Gb)Aq�~���d�5Zs�ʮG�2
9[��6Y�Y�>�\���ƥB)Y��$ʚ���K�_7���뵇H�y5х僦��u��߽n�7yG�D�z��g���	�����ߡw����*Q���ů�,[v��� ���x�I�@�ː���ܻ�$)��D�"<k����@��rV�[�P�@�n�����[���Y���}��@��{w�4ߛ��I� ����b>����� )At#�[{��5��l� *%��+��9깋���D��>vͯX\�"���Ѫ��\Sq�	_C9�D�̺$�L�a����&�j�2L�������%�;k�J;ow����Eb�����o�5�Yo��IFŊ4++(�yT���v��$-jS�^���앢�qɴ�i��/c��$���{�r�/ �&}(�Y���z}���uu{!����m%�-0M�,p�x"�#����p�-�8��r{y�h����r�3d�̬:�0�ό�A�
��ix*U���>|��A*
�}m�R�]X��ϗ*;���{CΨ�=�{��d�e�m���+"�%O�A����up��=�B�X�U��U�p'X�󬚚P���j�yQ�!��@�x��s!Q;��A
��#�.YH��j��6��&���v,R�$�d��6Q(������Ur6#|��(�ޠV�����A.
���c�o�>��)Ȧ�q~P����Ͽ'B)�E������b��� ��$zf      }   �  x����j1�Ϫ��ؠn�5;:�C 9�b�!&��y���q���t���ni$H����������������k������_7�w�F���j���Ś�c�P���/�8U�k�=���K�Rs�r��)�δ1X���TjV���CRI�$�a
��޿���+�%�Ie���1�AlL�T��L�����T�NX�1�U2�+�5�ε0�W2�,�j�i-�V��5�bZ�=Y�`L+ל<�����M5��&jw��u�:�h��!-���@5�i��h�v��Z���M���������c��ڝ�k����h�v��ZW�Ll4Q��߾�~}8~x��T�T�x�09�?Vb���@���c��j�h_r���Z��2м���X)��ۗ��+W��@㒓�c�y�Ε��%'�J��,{4.99?V�fj�2и��Xiv��U)�4������h]������㍁�����r#X�h^�Ϲ-;�����9�e���jxg��?	�r���1�<��,��ejc�u�?{�J�Z<g�ޱj��7'#g�i�䍁����aU��J{g�C���ċd�<�l�FR��}%l���Q��vo����MV������v�H���I��ʐ���{�UV����@K�ȴ����3-x����ئ`e`�J��e�z��K�~b�x\�>�=�� �u�      �   �  x���;�1Dc�)�kHԯ��pfp��Ɇ�	�{�^���IHH*IIH��O�>��/��^~��cy��ˬm�f1�Ь������g�V&�XB�S�9Z5ln�)[-�P��/�~������I�u=S�:�C�~nNSև�[H����2��FH��,yJ_Y�yo�ܺT�k-^6u�����T�LI��'�)w�����qq���,ԳY����W~g��rU�#�3�bЖ7u�cOe��P{ ˑ�bЎ*�m`1Pb�r��f�����UCG�]6�A�v��#P���@���UG /�-�,���L���(rv\�0:(Y�8'�ʉ�KV��ʻ�U1Z�9g��©Q-����ڌS�~��>����\e�ȹ��YXN��2�Mr��Y��@��_�HZ9���q����"]'_�έ3NT�Aev�U�3�AEv�U��$�;%.���>\�Sw��)���?T`��~�,
\/����-��Q�a���d���=�����d����cs�����1թ+Me���P8�ݹ�tÖh1hY�}�;c��ɠOu�ö��;�R]��$�Xj&�g��b�[tD����z�%+��\Gձ~ON���Զk��a1����c0����d`u�����h������y��      g      x����n�8E��Wh?��U��C��3�N�/��n��`���H
xa��i֭[�	��`���m���s��ޮ�������c~�{~��Z^O���wB��A��Y��`e����gmW��ъu���1�B��V0�!Ax~�x*��䥞�A1
%aUX~�CV�,�jX�ULG�H,�3���T�J4L�H��u�pȷ�g
"��8O����� ��ЊЂL̞�ԫ��������g�����VS�Q�� ��3�.���s�~��Gq��+������ 	�e�F�������D<���)�+�J�ZD=S�'?�X�}^�
��-�ˁbMT��O���$��.	��H��WH;���f�FS&��145����E�p�K�_�)9������/0d9~�+�Yl�(g��
'���C���R�%�?�aR�H���D�R��C�Fd��a�-��v��G���E��(�1դk��$�FM�R�j��"'��7�%��6����e�>=��>��$x�\�۟8H�p.wIP�ŌN�wY�����֗�����VgEh�9g�i�޳�]�-�2�ږ feq���Rq�����u�yRv����R �7j��8h�/J��"���-���%��+����,%En̐�3H��Nf��B�رY$q�Y�*�ٛ��v<�t{���䙲 �Q�4궻�#p� ���by�
��0�Vq�Ȑ��CnLu��M�.�nIi�"�|�H�P�������}_z�=Atv������H2����$q����_)k�0���126�.	z��|�n/(���g�A9M�q�`�(е��`6[����A~B�@��n}�����ے�Nhj���!���h8�5d���d:��Y��+ A��]���
�ue߼��3'�O��e��u)��uRZ��sd��8#QVRWs��s�g�r���	$�,o�>�'�l8p��d9�T��"�~~y�w�0���ĺ�"m� �\��^/o�����z;�Ƥ�#+���F�<�	X�&�t%:�����6�
�l	 (-�ܜJ\'�-�v��T:���m�/8P�t�*͹K���i��7ښ�>Q���dц;mR����V}.��8�$��nl�y*�p�[
,�nP�U1!dC�����kdiK�I���7E��bc�O�Z#$��)L���Ǻ���K�J�~ga� ��̆����������˶L����e7ܓ|{��q��mҘ����yt���w���qoRb�� q���!�_��}L��j�_��{�)�;��]��|1��\j� -��دE)� �t      `      x������ � �      �   �  x���M�� �׼S��@A���MK�i�￞��2�n��E����P/N!������r������֯%>cy�>��G����$�_�����r.9������PNC��Sq�J�.�D��A��3�!j1p�K���y�!�m�����}������u)4�ú�琡�26�m+|�ͱ2�{�K�2�s�6ntZ��<bf�G�����u��z������m:��>�׶2�)r��~�Xl�d�c�c��)>Gy_�����mN��koO6Ens���Ϳ�b`S�6�{}�ͱ2�)r�ӽ���d`S�9��j�wG�ԭ���ϡs�6%'���ZlJ�C��ؔ�}F�d`Sr�9���M��rd�D�b`Sr�98o����Nk���I����8J�,6%�9�5�z:�,pVȜ����P�á�3�b�-��H�n���^n'C�w�c�Yu	%�������b(����G]�|0�4��r;�-.G�CM���&�#���`h\�o�,���t���g���jPq9r�Ϩ������r�?f��w��-�փV���4�T}�n8V��r��p��Q�z��]�`����s���d�|i�>G��b�9�t:��ַ��0��C/����w��k���X�bC�����s�`������n     