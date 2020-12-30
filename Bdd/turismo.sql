PGDMP     
                    x            turismo    10.13    10.13 �    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            P           1262    37586    turismo    DATABASE     �   CREATE DATABASE turismo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE turismo;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Q           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            R           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    37776    alojamiento_alojamiento    TABLE     �  CREATE TABLE public.alojamiento_alojamiento (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    descripcion text,
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);
 +   DROP TABLE public.alojamiento_alojamiento;
       public         postgres    false    3            �            1259    37774    alojamiento_alojamiento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alojamiento_alojamiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.alojamiento_alojamiento_id_seq;
       public       postgres    false    3    219            S           0    0    alojamiento_alojamiento_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.alojamiento_alojamiento_id_seq OWNED BY public.alojamiento_alojamiento.id;
            public       postgres    false    218            �            1259    37796 '   atractivos_culturales_atractivocultural    TABLE     �  CREATE TABLE public.atractivos_culturales_atractivocultural (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    fecha date,
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL,
    tipo_id_id integer NOT NULL
);
 ;   DROP TABLE public.atractivos_culturales_atractivocultural;
       public         postgres    false    3            �            1259    37794 .   atractivos_culturales_atractivocultural_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atractivos_culturales_atractivocultural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.atractivos_culturales_atractivocultural_id_seq;
       public       postgres    false    221    3            T           0    0 .   atractivos_culturales_atractivocultural_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.atractivos_culturales_atractivocultural_id_seq OWNED BY public.atractivos_culturales_atractivocultural.id;
            public       postgres    false    220            �            1259    37807    atractivos_culturales_tipoac    TABLE     �   CREATE TABLE public.atractivos_culturales_tipoac (
    id integer NOT NULL,
    nombre_tipo_ac character varying(100) NOT NULL,
    descripcion text,
    created_at timestamp with time zone NOT NULL
);
 0   DROP TABLE public.atractivos_culturales_tipoac;
       public         postgres    false    3            �            1259    37805 #   atractivos_culturales_tipoac_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atractivos_culturales_tipoac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.atractivos_culturales_tipoac_id_seq;
       public       postgres    false    3    223            U           0    0 #   atractivos_culturales_tipoac_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.atractivos_culturales_tipoac_id_seq OWNED BY public.atractivos_culturales_tipoac.id;
            public       postgres    false    222            �            1259    37836 %   atractivos_naturales_atractivonatural    TABLE     �  CREATE TABLE public.atractivos_naturales_atractivonatural (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL,
    tipo_id_id integer NOT NULL
);
 9   DROP TABLE public.atractivos_naturales_atractivonatural;
       public         postgres    false    3            �            1259    37834 ,   atractivos_naturales_atractivonatural_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atractivos_naturales_atractivonatural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.atractivos_naturales_atractivonatural_id_seq;
       public       postgres    false    3    225            V           0    0 ,   atractivos_naturales_atractivonatural_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.atractivos_naturales_atractivonatural_id_seq OWNED BY public.atractivos_naturales_atractivonatural.id;
            public       postgres    false    224            �            1259    37858 -   atractivos_naturales_imagenesatractivonatural    TABLE     �   CREATE TABLE public.atractivos_naturales_imagenesatractivonatural (
    id integer NOT NULL,
    imagen character varying(100),
    atractivo_natural_id integer NOT NULL
);
 A   DROP TABLE public.atractivos_naturales_imagenesatractivonatural;
       public         postgres    false    3            �            1259    37856 4   atractivos_naturales_imagenesatractivonatural_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atractivos_naturales_imagenesatractivonatural_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.atractivos_naturales_imagenesatractivonatural_id_seq;
       public       postgres    false    3    229            W           0    0 4   atractivos_naturales_imagenesatractivonatural_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.atractivos_naturales_imagenesatractivonatural_id_seq OWNED BY public.atractivos_naturales_imagenesatractivonatural.id;
            public       postgres    false    228            �            1259    37847    atractivos_naturales_tipoan    TABLE     �   CREATE TABLE public.atractivos_naturales_tipoan (
    id integer NOT NULL,
    nombre_tipo_an character varying(100) NOT NULL,
    descripcion text,
    created_at timestamp with time zone NOT NULL
);
 /   DROP TABLE public.atractivos_naturales_tipoan;
       public         postgres    false    3            �            1259    37845 "   atractivos_naturales_tipoan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.atractivos_naturales_tipoan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.atractivos_naturales_tipoan_id_seq;
       public       postgres    false    3    227            X           0    0 "   atractivos_naturales_tipoan_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.atractivos_naturales_tipoan_id_seq OWNED BY public.atractivos_naturales_tipoan.id;
            public       postgres    false    226            �            1259    37618 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    37616    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    203            Y           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    37628    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    37626    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205    3            Z           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    37610    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    37608    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    201            [           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    37720    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    37718    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    213            \           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    37600    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    37598    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            ]           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    37589    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    37587    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197    3            ^           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    37983    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    37890    empresa_empresa    TABLE     �  CREATE TABLE public.empresa_empresa (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    descripcion text,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    tipo_id_id integer NOT NULL
);
 #   DROP TABLE public.empresa_empresa;
       public         postgres    false    3            �            1259    37888    empresa_empresa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.empresa_empresa_id_seq;
       public       postgres    false    231    3            _           0    0    empresa_empresa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.empresa_empresa_id_seq OWNED BY public.empresa_empresa.id;
            public       postgres    false    230            �            1259    37901    empresa_producto    TABLE       CREATE TABLE public.empresa_producto (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    detalle character varying(300) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    empresa_id integer NOT NULL
);
 $   DROP TABLE public.empresa_producto;
       public         postgres    false    3            �            1259    37899    empresa_producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.empresa_producto_id_seq;
       public       postgres    false    233    3            `           0    0    empresa_producto_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.empresa_producto_id_seq OWNED BY public.empresa_producto.id;
            public       postgres    false    232            �            1259    37912    empresa_tipoemp    TABLE       CREATE TABLE public.empresa_tipoemp (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(125),
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);
 #   DROP TABLE public.empresa_tipoemp;
       public         postgres    false    3            �            1259    37910    empresa_tipoemp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.empresa_tipoemp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.empresa_tipoemp_id_seq;
       public       postgres    false    235    3            a           0    0    empresa_tipoemp_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.empresa_tipoemp_id_seq OWNED BY public.empresa_tipoemp.id;
            public       postgres    false    234            �            1259    37754    parroquias_imagenesparroquia    TABLE     �   CREATE TABLE public.parroquias_imagenesparroquia (
    id integer NOT NULL,
    imagen character varying(100) NOT NULL,
    parroquia_id integer
);
 0   DROP TABLE public.parroquias_imagenesparroquia;
       public         postgres    false    3            �            1259    37752 #   parroquias_imagenesparroquia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parroquias_imagenesparroquia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.parroquias_imagenesparroquia_id_seq;
       public       postgres    false    3    215            b           0    0 #   parroquias_imagenesparroquia_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.parroquias_imagenesparroquia_id_seq OWNED BY public.parroquias_imagenesparroquia.id;
            public       postgres    false    214            �            1259    37762    parroquias_parroquia    TABLE     v  CREATE TABLE public.parroquias_parroquia (
    id integer NOT NULL,
    nombre_parr character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    longitud character varying(200),
    latitud character varying(200),
    slug character varying(50) NOT NULL,
    imagen character varying(100),
    historia text,
    info_general text,
    situacion_geografica text,
    email character varying(254) NOT NULL,
    telefono character varying(10) NOT NULL,
    celular character varying(10),
    pdf character varying(100),
    created_at timestamp with time zone NOT NULL,
    administrador_id integer NOT NULL
);
 (   DROP TABLE public.parroquias_parroquia;
       public         postgres    false    3            �            1259    37760    parroquias_parroquia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parroquias_parroquia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.parroquias_parroquia_id_seq;
       public       postgres    false    217    3            c           0    0    parroquias_parroquia_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.parroquias_parroquia_id_seq OWNED BY public.parroquias_parroquia.id;
            public       postgres    false    216            �            1259    37965    restaurante_restaurante    TABLE     �  CREATE TABLE public.restaurante_restaurante (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    direccion character varying(100) NOT NULL,
    longitud character varying(200) NOT NULL,
    latitud character varying(200) NOT NULL,
    imagen character varying(100),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);
 +   DROP TABLE public.restaurante_restaurante;
       public         postgres    false    3            �            1259    37963    restaurante_restaurante_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurante_restaurante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.restaurante_restaurante_id_seq;
       public       postgres    false    237    3            d           0    0    restaurante_restaurante_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.restaurante_restaurante_id_seq OWNED BY public.restaurante_restaurante.id;
            public       postgres    false    236            �            1259    38006    transporte_transporte    TABLE     ?  CREATE TABLE public.transporte_transporte (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ruta character varying(100) NOT NULL,
    imagen character varying(100),
    observaciones character varying(500),
    created_at timestamp with time zone NOT NULL,
    parroquia_id integer NOT NULL
);
 )   DROP TABLE public.transporte_transporte;
       public         postgres    false    3            �            1259    38004    transporte_transporte_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transporte_transporte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.transporte_transporte_id_seq;
       public       postgres    false    3    240            e           0    0    transporte_transporte_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.transporte_transporte_id_seq OWNED BY public.transporte_transporte.id;
            public       postgres    false    239            �            1259    37662    usuario_usuario    TABLE     I  CREATE TABLE public.usuario_usuario (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    username character varying(150),
    direccion character varying(500),
    imagen character varying(200),
    usuario_admin boolean NOT NULL
);
 #   DROP TABLE public.usuario_usuario;
       public         postgres    false    3            �            1259    37675    usuario_usuario_groups    TABLE     �   CREATE TABLE public.usuario_usuario_groups (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public.usuario_usuario_groups;
       public         postgres    false    3            �            1259    37673    usuario_usuario_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usuario_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.usuario_usuario_groups_id_seq;
       public       postgres    false    209    3            f           0    0    usuario_usuario_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.usuario_usuario_groups_id_seq OWNED BY public.usuario_usuario_groups.id;
            public       postgres    false    208            �            1259    37660    usuario_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_usuario_id_seq;
       public       postgres    false    3    207            g           0    0    usuario_usuario_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_usuario_id_seq OWNED BY public.usuario_usuario.id;
            public       postgres    false    206            �            1259    37683     usuario_usuario_user_permissions    TABLE     �   CREATE TABLE public.usuario_usuario_user_permissions (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public.usuario_usuario_user_permissions;
       public         postgres    false    3            �            1259    37681 '   usuario_usuario_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_usuario_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.usuario_usuario_user_permissions_id_seq;
       public       postgres    false    3    211            h           0    0 '   usuario_usuario_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.usuario_usuario_user_permissions_id_seq OWNED BY public.usuario_usuario_user_permissions.id;
            public       postgres    false    210            
           2604    37779    alojamiento_alojamiento id    DEFAULT     �   ALTER TABLE ONLY public.alojamiento_alojamiento ALTER COLUMN id SET DEFAULT nextval('public.alojamiento_alojamiento_id_seq'::regclass);
 I   ALTER TABLE public.alojamiento_alojamiento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219                       2604    37799 *   atractivos_culturales_atractivocultural id    DEFAULT     �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_culturales_atractivocultural_id_seq'::regclass);
 Y   ALTER TABLE public.atractivos_culturales_atractivocultural ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221                       2604    37810    atractivos_culturales_tipoac id    DEFAULT     �   ALTER TABLE ONLY public.atractivos_culturales_tipoac ALTER COLUMN id SET DEFAULT nextval('public.atractivos_culturales_tipoac_id_seq'::regclass);
 N   ALTER TABLE public.atractivos_culturales_tipoac ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223                       2604    37839 (   atractivos_naturales_atractivonatural id    DEFAULT     �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_atractivonatural_id_seq'::regclass);
 W   ALTER TABLE public.atractivos_naturales_atractivonatural ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225                       2604    37861 0   atractivos_naturales_imagenesatractivonatural id    DEFAULT     �   ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_imagenesatractivonatural_id_seq'::regclass);
 _   ALTER TABLE public.atractivos_naturales_imagenesatractivonatural ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229                       2604    37850    atractivos_naturales_tipoan id    DEFAULT     �   ALTER TABLE ONLY public.atractivos_naturales_tipoan ALTER COLUMN id SET DEFAULT nextval('public.atractivos_naturales_tipoan_id_seq'::regclass);
 M   ALTER TABLE public.atractivos_naturales_tipoan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227                       2604    37621    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203                       2604    37631    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205                        2604    37613    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201                       2604    37723    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    37603    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    37592    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197                       2604    37893    empresa_empresa id    DEFAULT     x   ALTER TABLE ONLY public.empresa_empresa ALTER COLUMN id SET DEFAULT nextval('public.empresa_empresa_id_seq'::regclass);
 A   ALTER TABLE public.empresa_empresa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231                       2604    37904    empresa_producto id    DEFAULT     z   ALTER TABLE ONLY public.empresa_producto ALTER COLUMN id SET DEFAULT nextval('public.empresa_producto_id_seq'::regclass);
 B   ALTER TABLE public.empresa_producto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233                       2604    37915    empresa_tipoemp id    DEFAULT     x   ALTER TABLE ONLY public.empresa_tipoemp ALTER COLUMN id SET DEFAULT nextval('public.empresa_tipoemp_id_seq'::regclass);
 A   ALTER TABLE public.empresa_tipoemp ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235                       2604    37757    parroquias_imagenesparroquia id    DEFAULT     �   ALTER TABLE ONLY public.parroquias_imagenesparroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquias_imagenesparroquia_id_seq'::regclass);
 N   ALTER TABLE public.parroquias_imagenesparroquia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            	           2604    37765    parroquias_parroquia id    DEFAULT     �   ALTER TABLE ONLY public.parroquias_parroquia ALTER COLUMN id SET DEFAULT nextval('public.parroquias_parroquia_id_seq'::regclass);
 F   ALTER TABLE public.parroquias_parroquia ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    37968    restaurante_restaurante id    DEFAULT     �   ALTER TABLE ONLY public.restaurante_restaurante ALTER COLUMN id SET DEFAULT nextval('public.restaurante_restaurante_id_seq'::regclass);
 I   ALTER TABLE public.restaurante_restaurante ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237                       2604    38009    transporte_transporte id    DEFAULT     �   ALTER TABLE ONLY public.transporte_transporte ALTER COLUMN id SET DEFAULT nextval('public.transporte_transporte_id_seq'::regclass);
 G   ALTER TABLE public.transporte_transporte ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240                       2604    37665    usuario_usuario id    DEFAULT     x   ALTER TABLE ONLY public.usuario_usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_id_seq'::regclass);
 A   ALTER TABLE public.usuario_usuario ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207                       2604    37678    usuario_usuario_groups id    DEFAULT     �   ALTER TABLE ONLY public.usuario_usuario_groups ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_groups_id_seq'::regclass);
 H   ALTER TABLE public.usuario_usuario_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209                       2604    37686 #   usuario_usuario_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.usuario_usuario_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.usuario_usuario_user_permissions_id_seq'::regclass);
 R   ALTER TABLE public.usuario_usuario_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            5          0    37776    alojamiento_alojamiento 
   TABLE DATA               �   COPY public.alojamiento_alojamiento (id, nombre, direccion, longitud, latitud, imagen, descripcion, created_at, parroquia_id) FROM stdin;
    public       postgres    false    219   �]      7          0    37796 '   atractivos_culturales_atractivocultural 
   TABLE DATA               �   COPY public.atractivos_culturales_atractivocultural (id, nombre, descripcion, direccion, longitud, latitud, imagen, fecha, created_at, parroquia_id, tipo_id_id) FROM stdin;
    public       postgres    false    221   �a      9          0    37807    atractivos_culturales_tipoac 
   TABLE DATA               c   COPY public.atractivos_culturales_tipoac (id, nombre_tipo_ac, descripcion, created_at) FROM stdin;
    public       postgres    false    223   8g      ;          0    37836 %   atractivos_naturales_atractivonatural 
   TABLE DATA               �   COPY public.atractivos_naturales_atractivonatural (id, nombre, descripcion, direccion, longitud, latitud, imagen, created_at, parroquia_id, tipo_id_id) FROM stdin;
    public       postgres    false    225   �g      ?          0    37858 -   atractivos_naturales_imagenesatractivonatural 
   TABLE DATA               i   COPY public.atractivos_naturales_imagenesatractivonatural (id, imagen, atractivo_natural_id) FROM stdin;
    public       postgres    false    229   ,l      =          0    37847    atractivos_naturales_tipoan 
   TABLE DATA               b   COPY public.atractivos_naturales_tipoan (id, nombre_tipo_an, descripcion, created_at) FROM stdin;
    public       postgres    false    227   Il      %          0    37618 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   �l      '          0    37628    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   m      #          0    37610    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   $m      /          0    37720    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   ep      !          0    37600    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   �t                0    37589    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �u      H          0    37983    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    238   �y      A          0    37890    empresa_empresa 
   TABLE DATA               �   COPY public.empresa_empresa (id, nombre, direccion, longitud, latitud, descripcion, imagen, created_at, tipo_id_id) FROM stdin;
    public       postgres    false    231   ��      C          0    37901    empresa_producto 
   TABLE DATA               _   COPY public.empresa_producto (id, nombre, detalle, imagen, created_at, empresa_id) FROM stdin;
    public       postgres    false    233   R�      E          0    37912    empresa_tipoemp 
   TABLE DATA               d   COPY public.empresa_tipoemp (id, nombre, descripcion, imagen, created_at, parroquia_id) FROM stdin;
    public       postgres    false    235   ��      1          0    37754    parroquias_imagenesparroquia 
   TABLE DATA               P   COPY public.parroquias_imagenesparroquia (id, imagen, parroquia_id) FROM stdin;
    public       postgres    false    215   D�      3          0    37762    parroquias_parroquia 
   TABLE DATA               �   COPY public.parroquias_parroquia (id, nombre_parr, direccion, longitud, latitud, slug, imagen, historia, info_general, situacion_geografica, email, telefono, celular, pdf, created_at, administrador_id) FROM stdin;
    public       postgres    false    217   �      G          0    37965    restaurante_restaurante 
   TABLE DATA               �   COPY public.restaurante_restaurante (id, nombre, descripcion, direccion, longitud, latitud, imagen, created_at, parroquia_id) FROM stdin;
    public       postgres    false    237   ݑ      J          0    38006    transporte_transporte 
   TABLE DATA               r   COPY public.transporte_transporte (id, nombre, ruta, imagen, observaciones, created_at, parroquia_id) FROM stdin;
    public       postgres    false    240   P�      )          0    37662    usuario_usuario 
   TABLE DATA               �   COPY public.usuario_usuario (id, password, last_login, is_superuser, is_staff, is_active, date_joined, first_name, last_name, email, username, direccion, imagen, usuario_admin) FROM stdin;
    public       postgres    false    207   ��      +          0    37675    usuario_usuario_groups 
   TABLE DATA               J   COPY public.usuario_usuario_groups (id, usuario_id, group_id) FROM stdin;
    public       postgres    false    209   ��      -          0    37683     usuario_usuario_user_permissions 
   TABLE DATA               Y   COPY public.usuario_usuario_user_permissions (id, usuario_id, permission_id) FROM stdin;
    public       postgres    false    211   ��      i           0    0    alojamiento_alojamiento_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.alojamiento_alojamiento_id_seq', 5, true);
            public       postgres    false    218            j           0    0 .   atractivos_culturales_atractivocultural_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.atractivos_culturales_atractivocultural_id_seq', 12, true);
            public       postgres    false    220            k           0    0 #   atractivos_culturales_tipoac_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.atractivos_culturales_tipoac_id_seq', 4, true);
            public       postgres    false    222            l           0    0 ,   atractivos_naturales_atractivonatural_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.atractivos_naturales_atractivonatural_id_seq', 15, true);
            public       postgres    false    224            m           0    0 4   atractivos_naturales_imagenesatractivonatural_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.atractivos_naturales_imagenesatractivonatural_id_seq', 3, true);
            public       postgres    false    228            n           0    0 "   atractivos_naturales_tipoan_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.atractivos_naturales_tipoan_id_seq', 5, true);
            public       postgres    false    226            o           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            p           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            q           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
            public       postgres    false    200            r           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 53, true);
            public       postgres    false    212            s           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
            public       postgres    false    198            t           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);
            public       postgres    false    196            u           0    0    empresa_empresa_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empresa_empresa_id_seq', 9, true);
            public       postgres    false    230            v           0    0    empresa_producto_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.empresa_producto_id_seq', 13, true);
            public       postgres    false    232            w           0    0    empresa_tipoemp_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.empresa_tipoemp_id_seq', 9, true);
            public       postgres    false    234            x           0    0 #   parroquias_imagenesparroquia_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.parroquias_imagenesparroquia_id_seq', 12, true);
            public       postgres    false    214            y           0    0    parroquias_parroquia_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.parroquias_parroquia_id_seq', 3, true);
            public       postgres    false    216            z           0    0    restaurante_restaurante_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.restaurante_restaurante_id_seq', 2, true);
            public       postgres    false    236            {           0    0    transporte_transporte_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.transporte_transporte_id_seq', 1, true);
            public       postgres    false    239            |           0    0    usuario_usuario_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.usuario_usuario_groups_id_seq', 1, false);
            public       postgres    false    208            }           0    0    usuario_usuario_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_usuario_id_seq', 5, true);
            public       postgres    false    206            ~           0    0 '   usuario_usuario_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.usuario_usuario_user_permissions_id_seq', 1, false);
            public       postgres    false    210            N           2606    37792 D   alojamiento_alojamiento alojamiento_alojamiento_nombre_3986304a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamiento_nombre_3986304a_uniq UNIQUE (nombre);
 n   ALTER TABLE ONLY public.alojamiento_alojamiento DROP CONSTRAINT alojamiento_alojamiento_nombre_3986304a_uniq;
       public         postgres    false    219            Q           2606    37784 4   alojamiento_alojamiento alojamiento_alojamiento_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamiento_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.alojamiento_alojamiento DROP CONSTRAINT alojamiento_alojamiento_pkey;
       public         postgres    false    219            T           2606    37829 d   atractivos_culturales_atractivocultural atractivos_culturales_atractivocultural_nombre_284e4559_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturales_atractivocultural_nombre_284e4559_uniq UNIQUE (nombre);
 �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural DROP CONSTRAINT atractivos_culturales_atractivocultural_nombre_284e4559_uniq;
       public         postgres    false    221            W           2606    37804 T   atractivos_culturales_atractivocultural atractivos_culturales_atractivocultural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturales_atractivocultural_pkey PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural DROP CONSTRAINT atractivos_culturales_atractivocultural_pkey;
       public         postgres    false    221            [           2606    37832 V   atractivos_culturales_tipoac atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_culturales_tipoac
    ADD CONSTRAINT atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_uniq UNIQUE (nombre_tipo_ac);
 �   ALTER TABLE ONLY public.atractivos_culturales_tipoac DROP CONSTRAINT atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_uniq;
       public         postgres    false    223            ]           2606    37815 >   atractivos_culturales_tipoac atractivos_culturales_tipoac_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.atractivos_culturales_tipoac
    ADD CONSTRAINT atractivos_culturales_tipoac_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.atractivos_culturales_tipoac DROP CONSTRAINT atractivos_culturales_tipoac_pkey;
       public         postgres    false    223            `           2606    37883 c   atractivos_naturales_atractivonatural atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_uniq UNIQUE (nombre);
 �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural DROP CONSTRAINT atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_uniq;
       public         postgres    false    225            c           2606    37844 P   atractivos_naturales_atractivonatural atractivos_naturales_atractivonatural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivonatural_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural DROP CONSTRAINT atractivos_naturales_atractivonatural_pkey;
       public         postgres    false    225            l           2606    37863 `   atractivos_naturales_imagenesatractivonatural atractivos_naturales_imagenesatractivonatural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural
    ADD CONSTRAINT atractivos_naturales_imagenesatractivonatural_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural DROP CONSTRAINT atractivos_naturales_imagenesatractivonatural_pkey;
       public         postgres    false    229            g           2606    37886 T   atractivos_naturales_tipoan atractivos_naturales_tipoan_nombre_tipo_an_153285aa_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_tipoan
    ADD CONSTRAINT atractivos_naturales_tipoan_nombre_tipo_an_153285aa_uniq UNIQUE (nombre_tipo_an);
 ~   ALTER TABLE ONLY public.atractivos_naturales_tipoan DROP CONSTRAINT atractivos_naturales_tipoan_nombre_tipo_an_153285aa_uniq;
       public         postgres    false    227            i           2606    37855 <   atractivos_naturales_tipoan atractivos_naturales_tipoan_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.atractivos_naturales_tipoan
    ADD CONSTRAINT atractivos_naturales_tipoan_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.atractivos_naturales_tipoan DROP CONSTRAINT atractivos_naturales_tipoan_pkey;
       public         postgres    false    227            "           2606    37658    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            '           2606    37644 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            *           2606    37633 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            $           2606    37623    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203                       2606    37635 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201                       2606    37615 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            >           2606    37729 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213                       2606    37607 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199                       2606    37605 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199                       2606    37597 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �           2606    37990 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    238            o           2606    37940 4   empresa_empresa empresa_empresa_nombre_d7b2d976_uniq 
   CONSTRAINT     q   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_nombre_d7b2d976_uniq UNIQUE (nombre);
 ^   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_nombre_d7b2d976_uniq;
       public         postgres    false    231            q           2606    37898 $   empresa_empresa empresa_empresa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_pkey;
       public         postgres    false    231            v           2606    37943 6   empresa_producto empresa_producto_nombre_a3a7d660_uniq 
   CONSTRAINT     s   ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_nombre_a3a7d660_uniq UNIQUE (nombre);
 `   ALTER TABLE ONLY public.empresa_producto DROP CONSTRAINT empresa_producto_nombre_a3a7d660_uniq;
       public         postgres    false    233            x           2606    37909 &   empresa_producto empresa_producto_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.empresa_producto DROP CONSTRAINT empresa_producto_pkey;
       public         postgres    false    233            {           2606    37946 4   empresa_tipoemp empresa_tipoemp_nombre_067d5fb3_uniq 
   CONSTRAINT     q   ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_nombre_067d5fb3_uniq UNIQUE (nombre);
 ^   ALTER TABLE ONLY public.empresa_tipoemp DROP CONSTRAINT empresa_tipoemp_nombre_067d5fb3_uniq;
       public         postgres    false    235            ~           2606    37920 $   empresa_tipoemp empresa_tipoemp_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.empresa_tipoemp DROP CONSTRAINT empresa_tipoemp_pkey;
       public         postgres    false    235            B           2606    37759 >   parroquias_imagenesparroquia parroquias_imagenesparroquia_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.parroquias_imagenesparroquia
    ADD CONSTRAINT parroquias_imagenesparroquia_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.parroquias_imagenesparroquia DROP CONSTRAINT parroquias_imagenesparroquia_pkey;
       public         postgres    false    215            F           2606    37961 C   parroquias_parroquia parroquias_parroquia_nombre_parr_e5b73ead_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_nombre_parr_e5b73ead_uniq UNIQUE (nombre_parr);
 m   ALTER TABLE ONLY public.parroquias_parroquia DROP CONSTRAINT parroquias_parroquia_nombre_parr_e5b73ead_uniq;
       public         postgres    false    217            H           2606    37770 .   parroquias_parroquia parroquias_parroquia_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.parroquias_parroquia DROP CONSTRAINT parroquias_parroquia_pkey;
       public         postgres    false    217            K           2606    37772 2   parroquias_parroquia parroquias_parroquia_slug_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_slug_key UNIQUE (slug);
 \   ALTER TABLE ONLY public.parroquias_parroquia DROP CONSTRAINT parroquias_parroquia_slug_key;
       public         postgres    false    217            �           2606    37981 D   restaurante_restaurante restaurante_restaurante_nombre_11acabed_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaurante_nombre_11acabed_uniq UNIQUE (nombre);
 n   ALTER TABLE ONLY public.restaurante_restaurante DROP CONSTRAINT restaurante_restaurante_nombre_11acabed_uniq;
       public         postgres    false    237            �           2606    37973 4   restaurante_restaurante restaurante_restaurante_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaurante_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.restaurante_restaurante DROP CONSTRAINT restaurante_restaurante_pkey;
       public         postgres    false    237            �           2606    38031 @   transporte_transporte transporte_transporte_nombre_22e86a33_uniq 
   CONSTRAINT     }   ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transporte_nombre_22e86a33_uniq UNIQUE (nombre);
 j   ALTER TABLE ONLY public.transporte_transporte DROP CONSTRAINT transporte_transporte_nombre_22e86a33_uniq;
       public         postgres    false    240            �           2606    38014 0   transporte_transporte transporte_transporte_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transporte_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.transporte_transporte DROP CONSTRAINT transporte_transporte_pkey;
       public         postgres    false    240            -           2606    37672 )   usuario_usuario usuario_usuario_email_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_email_key UNIQUE (email);
 S   ALTER TABLE ONLY public.usuario_usuario DROP CONSTRAINT usuario_usuario_email_key;
       public         postgres    false    207            2           2606    37680 2   usuario_usuario_groups usuario_usuario_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.usuario_usuario_groups DROP CONSTRAINT usuario_usuario_groups_pkey;
       public         postgres    false    209            5           2606    37691 O   usuario_usuario_groups usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq UNIQUE (usuario_id, group_id);
 y   ALTER TABLE ONLY public.usuario_usuario_groups DROP CONSTRAINT usuario_usuario_groups_usuario_id_group_id_a4cfb0b8_uniq;
       public         postgres    false    209    209            /           2606    37670 $   usuario_usuario usuario_usuario_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.usuario_usuario
    ADD CONSTRAINT usuario_usuario_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.usuario_usuario DROP CONSTRAINT usuario_usuario_pkey;
       public         postgres    false    207            7           2606    37705 `   usuario_usuario_user_permissions usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq UNIQUE (usuario_id, permission_id);
 �   ALTER TABLE ONLY public.usuario_usuario_user_permissions DROP CONSTRAINT usuario_usuario_user_per_usuario_id_permission_id_c0a85055_uniq;
       public         postgres    false    211    211            :           2606    37688 F   usuario_usuario_user_permissions usuario_usuario_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_permissions_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.usuario_usuario_user_permissions DROP CONSTRAINT usuario_usuario_user_permissions_pkey;
       public         postgres    false    211            L           1259    37793 ,   alojamiento_alojamiento_nombre_3986304a_like    INDEX     �   CREATE INDEX alojamiento_alojamiento_nombre_3986304a_like ON public.alojamiento_alojamiento USING btree (nombre varchar_pattern_ops);
 @   DROP INDEX public.alojamiento_alojamiento_nombre_3986304a_like;
       public         postgres    false    219            O           1259    37790 -   alojamiento_alojamiento_parroquia_id_cc702466    INDEX     y   CREATE INDEX alojamiento_alojamiento_parroquia_id_cc702466 ON public.alojamiento_alojamiento USING btree (parroquia_id);
 A   DROP INDEX public.alojamiento_alojamiento_parroquia_id_cc702466;
       public         postgres    false    219            R           1259    37830 <   atractivos_culturales_atractivocultural_nombre_284e4559_like    INDEX     �   CREATE INDEX atractivos_culturales_atractivocultural_nombre_284e4559_like ON public.atractivos_culturales_atractivocultural USING btree (nombre varchar_pattern_ops);
 P   DROP INDEX public.atractivos_culturales_atractivocultural_nombre_284e4559_like;
       public         postgres    false    221            U           1259    37826 =   atractivos_culturales_atractivocultural_parroquia_id_0c968bb0    INDEX     �   CREATE INDEX atractivos_culturales_atractivocultural_parroquia_id_0c968bb0 ON public.atractivos_culturales_atractivocultural USING btree (parroquia_id);
 Q   DROP INDEX public.atractivos_culturales_atractivocultural_parroquia_id_0c968bb0;
       public         postgres    false    221            X           1259    37827 ;   atractivos_culturales_atractivocultural_tipo_id_id_a382c601    INDEX     �   CREATE INDEX atractivos_culturales_atractivocultural_tipo_id_id_a382c601 ON public.atractivos_culturales_atractivocultural USING btree (tipo_id_id);
 O   DROP INDEX public.atractivos_culturales_atractivocultural_tipo_id_id_a382c601;
       public         postgres    false    221            Y           1259    37833 9   atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_like    INDEX     �   CREATE INDEX atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_like ON public.atractivos_culturales_tipoac USING btree (nombre_tipo_ac varchar_pattern_ops);
 M   DROP INDEX public.atractivos_culturales_tipoac_nombre_tipo_ac_a032b25e_like;
       public         postgres    false    223            ^           1259    37884 =   atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_like    INDEX     �   CREATE INDEX atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_like ON public.atractivos_naturales_atractivonatural USING btree (nombre varchar_pattern_ops);
 Q   DROP INDEX public.atractivos_naturales_atractivonatural_nombre_an_e3eeeb0a_like;
       public         postgres    false    225            a           1259    37880 ;   atractivos_naturales_atractivonatural_parroquia_id_ec0625b7    INDEX     �   CREATE INDEX atractivos_naturales_atractivonatural_parroquia_id_ec0625b7 ON public.atractivos_naturales_atractivonatural USING btree (parroquia_id);
 O   DROP INDEX public.atractivos_naturales_atractivonatural_parroquia_id_ec0625b7;
       public         postgres    false    225            d           1259    37881 9   atractivos_naturales_atractivonatural_tipo_id_id_0aed6625    INDEX     �   CREATE INDEX atractivos_naturales_atractivonatural_tipo_id_id_0aed6625 ON public.atractivos_naturales_atractivonatural USING btree (tipo_id_id);
 M   DROP INDEX public.atractivos_naturales_atractivonatural_tipo_id_id_0aed6625;
       public         postgres    false    225            j           1259    37869 8   atractivos_naturales_image_atractivo_natural_id_ba496c95    INDEX     �   CREATE INDEX atractivos_naturales_image_atractivo_natural_id_ba496c95 ON public.atractivos_naturales_imagenesatractivonatural USING btree (atractivo_natural_id);
 L   DROP INDEX public.atractivos_naturales_image_atractivo_natural_id_ba496c95;
       public         postgres    false    229            e           1259    37887 8   atractivos_naturales_tipoan_nombre_tipo_an_153285aa_like    INDEX     �   CREATE INDEX atractivos_naturales_tipoan_nombre_tipo_an_153285aa_like ON public.atractivos_naturales_tipoan USING btree (nombre_tipo_an varchar_pattern_ops);
 L   DROP INDEX public.atractivos_naturales_tipoan_nombre_tipo_an_153285aa_like;
       public         postgres    false    227                        1259    37659    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            %           1259    37655 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            (           1259    37656 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205                       1259    37641 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            <           1259    37740 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            ?           1259    37741 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            �           1259    37992 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    238            �           1259    37991 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    238            m           1259    37941 $   empresa_empresa_nombre_d7b2d976_like    INDEX     v   CREATE INDEX empresa_empresa_nombre_d7b2d976_like ON public.empresa_empresa USING btree (nombre varchar_pattern_ops);
 8   DROP INDEX public.empresa_empresa_nombre_d7b2d976_like;
       public         postgres    false    231            r           1259    37938 #   empresa_empresa_tipo_id_id_fc0fb0d7    INDEX     e   CREATE INDEX empresa_empresa_tipo_id_id_fc0fb0d7 ON public.empresa_empresa USING btree (tipo_id_id);
 7   DROP INDEX public.empresa_empresa_tipo_id_id_fc0fb0d7;
       public         postgres    false    231            s           1259    37937 $   empresa_producto_empresa_id_4d96b15b    INDEX     g   CREATE INDEX empresa_producto_empresa_id_4d96b15b ON public.empresa_producto USING btree (empresa_id);
 8   DROP INDEX public.empresa_producto_empresa_id_4d96b15b;
       public         postgres    false    233            t           1259    37944 %   empresa_producto_nombre_a3a7d660_like    INDEX     x   CREATE INDEX empresa_producto_nombre_a3a7d660_like ON public.empresa_producto USING btree (nombre varchar_pattern_ops);
 9   DROP INDEX public.empresa_producto_nombre_a3a7d660_like;
       public         postgres    false    233            y           1259    37947 $   empresa_tipoemp_nombre_067d5fb3_like    INDEX     v   CREATE INDEX empresa_tipoemp_nombre_067d5fb3_like ON public.empresa_tipoemp USING btree (nombre varchar_pattern_ops);
 8   DROP INDEX public.empresa_tipoemp_nombre_067d5fb3_like;
       public         postgres    false    235            |           1259    37936 %   empresa_tipoemp_parroquia_id_567019ed    INDEX     i   CREATE INDEX empresa_tipoemp_parroquia_id_567019ed ON public.empresa_tipoemp USING btree (parroquia_id);
 9   DROP INDEX public.empresa_tipoemp_parroquia_id_567019ed;
       public         postgres    false    235            @           1259    37959 2   parroquias_imagenesparroquia_parroquia_id_421570eb    INDEX     �   CREATE INDEX parroquias_imagenesparroquia_parroquia_id_421570eb ON public.parroquias_imagenesparroquia USING btree (parroquia_id);
 F   DROP INDEX public.parroquias_imagenesparroquia_parroquia_id_421570eb;
       public         postgres    false    215            C           1259    37958 .   parroquias_parroquia_administrador_id_7d749f0e    INDEX     {   CREATE INDEX parroquias_parroquia_administrador_id_7d749f0e ON public.parroquias_parroquia USING btree (administrador_id);
 B   DROP INDEX public.parroquias_parroquia_administrador_id_7d749f0e;
       public         postgres    false    217            D           1259    37962 .   parroquias_parroquia_nombre_parr_e5b73ead_like    INDEX     �   CREATE INDEX parroquias_parroquia_nombre_parr_e5b73ead_like ON public.parroquias_parroquia USING btree (nombre_parr varchar_pattern_ops);
 B   DROP INDEX public.parroquias_parroquia_nombre_parr_e5b73ead_like;
       public         postgres    false    217            I           1259    37773 '   parroquias_parroquia_slug_d8d08f87_like    INDEX     |   CREATE INDEX parroquias_parroquia_slug_d8d08f87_like ON public.parroquias_parroquia USING btree (slug varchar_pattern_ops);
 ;   DROP INDEX public.parroquias_parroquia_slug_d8d08f87_like;
       public         postgres    false    217                       1259    37982 ,   restaurante_restaurante_nombre_11acabed_like    INDEX     �   CREATE INDEX restaurante_restaurante_nombre_11acabed_like ON public.restaurante_restaurante USING btree (nombre varchar_pattern_ops);
 @   DROP INDEX public.restaurante_restaurante_nombre_11acabed_like;
       public         postgres    false    237            �           1259    37979 -   restaurante_restaurante_parroquia_id_90907d43    INDEX     y   CREATE INDEX restaurante_restaurante_parroquia_id_90907d43 ON public.restaurante_restaurante USING btree (parroquia_id);
 A   DROP INDEX public.restaurante_restaurante_parroquia_id_90907d43;
       public         postgres    false    237            �           1259    38032 *   transporte_transporte_nombre_22e86a33_like    INDEX     �   CREATE INDEX transporte_transporte_nombre_22e86a33_like ON public.transporte_transporte USING btree (nombre varchar_pattern_ops);
 >   DROP INDEX public.transporte_transporte_nombre_22e86a33_like;
       public         postgres    false    240            �           1259    38025 +   transporte_transporte_parroquia_id_1f2aed16    INDEX     u   CREATE INDEX transporte_transporte_parroquia_id_1f2aed16 ON public.transporte_transporte USING btree (parroquia_id);
 ?   DROP INDEX public.transporte_transporte_parroquia_id_1f2aed16;
       public         postgres    false    240            +           1259    37689 #   usuario_usuario_email_a8fcd603_like    INDEX     t   CREATE INDEX usuario_usuario_email_a8fcd603_like ON public.usuario_usuario USING btree (email varchar_pattern_ops);
 7   DROP INDEX public.usuario_usuario_email_a8fcd603_like;
       public         postgres    false    207            0           1259    37703 (   usuario_usuario_groups_group_id_b9c090f8    INDEX     o   CREATE INDEX usuario_usuario_groups_group_id_b9c090f8 ON public.usuario_usuario_groups USING btree (group_id);
 <   DROP INDEX public.usuario_usuario_groups_group_id_b9c090f8;
       public         postgres    false    209            3           1259    37702 *   usuario_usuario_groups_usuario_id_62de76a1    INDEX     s   CREATE INDEX usuario_usuario_groups_usuario_id_62de76a1 ON public.usuario_usuario_groups USING btree (usuario_id);
 >   DROP INDEX public.usuario_usuario_groups_usuario_id_62de76a1;
       public         postgres    false    209            8           1259    37717 7   usuario_usuario_user_permissions_permission_id_5cad0a4b    INDEX     �   CREATE INDEX usuario_usuario_user_permissions_permission_id_5cad0a4b ON public.usuario_usuario_user_permissions USING btree (permission_id);
 K   DROP INDEX public.usuario_usuario_user_permissions_permission_id_5cad0a4b;
       public         postgres    false    211            ;           1259    37716 4   usuario_usuario_user_permissions_usuario_id_5969a193    INDEX     �   CREATE INDEX usuario_usuario_user_permissions_usuario_id_5969a193 ON public.usuario_usuario_user_permissions USING btree (usuario_id);
 H   DROP INDEX public.usuario_usuario_user_permissions_usuario_id_5969a193;
       public         postgres    false    211            �           2606    37785 O   alojamiento_alojamiento alojamiento_alojamie_parroquia_id_cc702466_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.alojamiento_alojamiento
    ADD CONSTRAINT alojamiento_alojamie_parroquia_id_cc702466_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.alojamiento_alojamiento DROP CONSTRAINT alojamiento_alojamie_parroquia_id_cc702466_fk_parroquia;
       public       postgres    false    2888    219    217            �           2606    37816 _   atractivos_culturales_atractivocultural atractivos_culturale_parroquia_id_0c968bb0_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturale_parroquia_id_0c968bb0_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural DROP CONSTRAINT atractivos_culturale_parroquia_id_0c968bb0_fk_parroquia;
       public       postgres    false    221    2888    217            �           2606    37821 ]   atractivos_culturales_atractivocultural atractivos_culturale_tipo_id_id_a382c601_fk_atractivo    FK CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural
    ADD CONSTRAINT atractivos_culturale_tipo_id_id_a382c601_fk_atractivo FOREIGN KEY (tipo_id_id) REFERENCES public.atractivos_culturales_tipoac(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.atractivos_culturales_atractivocultural DROP CONSTRAINT atractivos_culturale_tipo_id_id_a382c601_fk_atractivo;
       public       postgres    false    223    221    2909            �           2606    37864 m   atractivos_naturales_imagenesatractivonatural atractivos_naturales_atractivo_natural_id_ba496c95_fk_atractivo    FK CONSTRAINT       ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural
    ADD CONSTRAINT atractivos_naturales_atractivo_natural_id_ba496c95_fk_atractivo FOREIGN KEY (atractivo_natural_id) REFERENCES public.atractivos_naturales_atractivonatural(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.atractivos_naturales_imagenesatractivonatural DROP CONSTRAINT atractivos_naturales_atractivo_natural_id_ba496c95_fk_atractivo;
       public       postgres    false    2915    225    229            �           2606    37870 ]   atractivos_naturales_atractivonatural atractivos_naturales_parroquia_id_ec0625b7_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_parroquia_id_ec0625b7_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural DROP CONSTRAINT atractivos_naturales_parroquia_id_ec0625b7_fk_parroquia;
       public       postgres    false    225    217    2888            �           2606    37875 [   atractivos_naturales_atractivonatural atractivos_naturales_tipo_id_id_0aed6625_fk_atractivo    FK CONSTRAINT     �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural
    ADD CONSTRAINT atractivos_naturales_tipo_id_id_0aed6625_fk_atractivo FOREIGN KEY (tipo_id_id) REFERENCES public.atractivos_naturales_tipoan(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.atractivos_naturales_atractivonatural DROP CONSTRAINT atractivos_naturales_tipo_id_id_0aed6625_fk_atractivo;
       public       postgres    false    227    2921    225            �           2606    37650 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    205    2847    201            �           2606    37645 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    205    203    2852            �           2606    37636 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    2842    199            �           2606    37730 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    213    2842    199            �           2606    37747 H   django_admin_log django_admin_log_user_id_c564eba6_fk_usuario_usuario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuario_usuario_id FOREIGN KEY (user_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_usuario_usuario_id;
       public       postgres    false    2863    213    207            �           2606    37931 I   empresa_empresa empresa_empresa_tipo_id_id_fc0fb0d7_fk_empresa_tipoemp_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_empresa
    ADD CONSTRAINT empresa_empresa_tipo_id_id_fc0fb0d7_fk_empresa_tipoemp_id FOREIGN KEY (tipo_id_id) REFERENCES public.empresa_tipoemp(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.empresa_empresa DROP CONSTRAINT empresa_empresa_tipo_id_id_fc0fb0d7_fk_empresa_tipoemp_id;
       public       postgres    false    2942    231    235            �           2606    37926 K   empresa_producto empresa_producto_empresa_id_4d96b15b_fk_empresa_empresa_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_producto
    ADD CONSTRAINT empresa_producto_empresa_id_4d96b15b_fk_empresa_empresa_id FOREIGN KEY (empresa_id) REFERENCES public.empresa_empresa(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.empresa_producto DROP CONSTRAINT empresa_producto_empresa_id_4d96b15b_fk_empresa_empresa_id;
       public       postgres    false    2929    231    233            �           2606    37921 B   empresa_tipoemp empresa_tipoemp_parroquia_id_567019ed_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_tipoemp
    ADD CONSTRAINT empresa_tipoemp_parroquia_id_567019ed_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.empresa_tipoemp DROP CONSTRAINT empresa_tipoemp_parroquia_id_567019ed_fk_parroquia;
       public       postgres    false    217    2888    235            �           2606    37953 T   parroquias_imagenesparroquia parroquias_imagenesp_parroquia_id_421570eb_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.parroquias_imagenesparroquia
    ADD CONSTRAINT parroquias_imagenesp_parroquia_id_421570eb_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.parroquias_imagenesparroquia DROP CONSTRAINT parroquias_imagenesp_parroquia_id_421570eb_fk_parroquia;
       public       postgres    false    217    2888    215            �           2606    37948 P   parroquias_parroquia parroquias_parroquia_administrador_id_7d749f0e_fk_usuario_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.parroquias_parroquia
    ADD CONSTRAINT parroquias_parroquia_administrador_id_7d749f0e_fk_usuario_u FOREIGN KEY (administrador_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.parroquias_parroquia DROP CONSTRAINT parroquias_parroquia_administrador_id_7d749f0e_fk_usuario_u;
       public       postgres    false    217    207    2863            �           2606    37974 O   restaurante_restaurante restaurante_restaura_parroquia_id_90907d43_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurante_restaurante
    ADD CONSTRAINT restaurante_restaura_parroquia_id_90907d43_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.restaurante_restaurante DROP CONSTRAINT restaurante_restaura_parroquia_id_90907d43_fk_parroquia;
       public       postgres    false    217    237    2888            �           2606    38015 M   transporte_transporte transporte_transport_parroquia_id_1f2aed16_fk_parroquia    FK CONSTRAINT     �   ALTER TABLE ONLY public.transporte_transporte
    ADD CONSTRAINT transporte_transport_parroquia_id_1f2aed16_fk_parroquia FOREIGN KEY (parroquia_id) REFERENCES public.parroquias_parroquia(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.transporte_transporte DROP CONSTRAINT transporte_transport_parroquia_id_1f2aed16_fk_parroquia;
       public       postgres    false    240    2888    217            �           2606    37692 L   usuario_usuario_groups usuario_usuario_grou_usuario_id_62de76a1_fk_usuario_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_grou_usuario_id_62de76a1_fk_usuario_u FOREIGN KEY (usuario_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.usuario_usuario_groups DROP CONSTRAINT usuario_usuario_grou_usuario_id_62de76a1_fk_usuario_u;
       public       postgres    false    207    2863    209            �           2606    37697 P   usuario_usuario_groups usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_groups
    ADD CONSTRAINT usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.usuario_usuario_groups DROP CONSTRAINT usuario_usuario_groups_group_id_b9c090f8_fk_auth_group_id;
       public       postgres    false    209    203    2852            �           2606    37711 Y   usuario_usuario_user_permissions usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuario_usuario_user_permissions DROP CONSTRAINT usuario_usuario_user_permission_id_5cad0a4b_fk_auth_perm;
       public       postgres    false    211    201    2847            �           2606    37706 V   usuario_usuario_user_permissions usuario_usuario_user_usuario_id_5969a193_fk_usuario_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_usuario_user_permissions
    ADD CONSTRAINT usuario_usuario_user_usuario_id_5969a193_fk_usuario_u FOREIGN KEY (usuario_id) REFERENCES public.usuario_usuario(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.usuario_usuario_user_permissions DROP CONSTRAINT usuario_usuario_user_usuario_id_5969a193_fk_usuario_u;
       public       postgres    false    207    211    2863            5   �  x��Tˎ�6<k��?`����-L0�$H��䲀AS��	MjIɱ�o���9���Ƕ�Ҽ2�I�ɮ���<	Mhv�;�UuU'�:����Q+۹���Rm����q�Uz��qh7����')�"���,ϩ(��b]�i>��y>�ꤸ*���,Oɧ��;�,�jYWI�|��,[g�:��u���|<Z$wBL#���?��d�X��"�We2���"_,��k��2�Z�N����l�`��zQ�ƌUr�B���0��Ĝ7�{��~V�������$rľ��?Զ��h����@=�l:L�Ig���`�8|$l��=6y+{�8� ;��a�e$�?]\���Ո&�w��x��˧LF4������^��w���9|�t�:׊������^я@�0�@�	�AY����@����q}l�� �vJ�IR�e>��9��9w���r>'�;k��R�s>Ҡ<��I�.�Ў�C����f�̯�w�/Ev;�$T1t�AGP@�[�CY��o�Gu��ﱲ��lB�:�~T�ժ�'&��c����BThUp�Q@��*���'��a,ųX�N۫�q�[�S�=w��K�H��(.(�((�U��0��2F}dE��'u@�q)0����G� e�H[��GGgLNK�8� h�<@h��I7bk�(Ԥ1�x�Q!}��%w`Y��"]�8.ʫ�E>z/�5�h���:�g�W/3��!
������;��~��ğw�����n��j^��*6�2��E�qS�n�lr�O��[�������L�-�آ������|���4�=���\P��S��YM�3�-��!�ܞ��� �ҭ���[�����erO��'vǔ�q�x�l���A�p7����V�����F.a�{�G݅�<T�.�@~�3��"��)�2N�x9!j"�)*4)�(�����Q��������4P���8R�`��� c�G�����]z�gf���E����Q�u�JW󪜯F�~H�����y��      7   �  x��VK��6]˧�lE�ǒ�L��'�`f1���D�ّH)�Y�A��,g�E�7�o2'I)��F�,��U�zT�iZa%�Z�����^`k��O�ȋp�fE�d�"
��YR0���v]��0f��A[�nFP�^o�A�}|�9��8Z�x�9��U���,\�4��E�q�gip��g_�6�v[7�i�z[o��B��L��%	/����U���,L�4��C�,����~c�fWBam����#,���i��tY0^�p���"M����P�U�*���Έ`x��6x��x�?�Vi��2/�C������VV�S��FVie3V��?)V�@KZfe�j���o���������Q�;�I0²j��vN�`pod'�fV�qC�b�^��I�`��3��->��WR(�	:0�ct{
�+)�7sA��PI�����-`S`�`� �Qj�5�ެ̀����h�ۗ�����rqP���-��M:�1�t�*џF	��yfq���(/xT���q���MAA*��*�C��x��Iϊ���)`o�;,�W���F��:���lb=��0?p/�YR�����G����q�l������{0�h�g0D�\��Q�]H҈7P�����j �CR���	U�`�{2 ��ҕ���*�E��J"�[�SG��6XJlT���Y�T�E5��I�`>�B��@��(.�0�JL���%�Qp��P��Y�ap%L����erfN"�"�ި�r�/9��{]���x�/h%[ee��/��dVN���QH��H�\�nT�ک�k���J��"zȠ���0�9�xg�p�-�����Q݀2�މ�~��@}��˿q8ډ�
�e���͢�:d7�3��R��"[g�$!#�xO85�v?Ո���H�>'}�i^�Vi?Z��r���{��ÙS���Lz6��l�+�C<�Ғ��Qp��Mv� ����өe�`�^@D-�j78Y/������X�E��Z�A�=bI����#�0����#.�h�N�q���2N��+R�\�ʡ)����O=P�T��O2	�d��4*iu���6r��w��1v'.�OE�����9�F#���ǣ(�#,K�<*^g�8�_�>|��_ �����(�"9�ǃ;�W�����5Vu�~B,���N7�%D�Ԓ&�l�9ꇀ̙fȃ�ɽ&b����8�����4�_��[ۅ��UT�q̋x�>��xz߱�F����'CC���Tڿr���	u<n���d�۳(<*�����Ùa�R`�t�<&xwTЋb�����F�H�cܦ��
Cx�pĜ�-�5��߿�vv�~���ܿ��0��`#*�ʃ݆�%a&�e�e�^P��c��w�G���9I�J���p1Y�}g��?��      9   x   x�m�;! �z8��v0��،	1$��xz���W?�Ko�e��m�nG� ���8z�JR�cBU�f�p}�Z��X<K�TEcA]O`?�s�E���V������Z�eSLy�[t�}�T%�      ;   \  x����n�6�������ZK��R�@�ȶ�^0�cӠI��x��(y�\,�~���l�Y,P HJΜ����(�r�k�Agʈ-�TƸL�V��:�f�qYd�Q>��z<�d�y��޹���EOF���bɮ�bI�o�UV��Ѱ(�E%��rR^�ʼ��iUG��̊���nHȵ�^y����Ze��������ª5�{��7���Fa ��[G%T\�j��7C��]�LHP(�σ���9�ñ$�j�đ$I�lY*��h�ђ��H�9�+n��^q�bM��F�Vt���q��$>^KH�M�@��dR���J�j�F���.���[�4�F|"�Q���;�ZF�><��)�2��2E/���촱�;���b6e��z^����pohq��hԢ=#zM�euY�U�� y^1�)��W�;��ԙC�To����I{B�j<��W� +�߳"v��"���R�k�r�l����u��𯅩$��"�D�V�{�J��W����5���J���!��7̴ņ�FCВ���{���(�kT�W�2چX����h��>�BF��2�<z�(/��M��/�3�k�Hx~N�������i9;Ӯ�i't_��+Z�\v�:QA�iNM�+Q��ƥ�������Ƕ�($���N�,��<>��nŝ�&�B�1l�J\�.��z��� d����Oq����e�1�V�;zF=�%�`z������treJ�����r�����y�j"e�f���Ƿ(gU9�z����?A���#8�O��>���3�EN�3�t@"�7ŵ?z��ϊ�#܉��f�}�tA�  ����x�'<m�.G�n!��<��)�@�j�`�c~���$Nj��q�<<ھ?݋�2�Po��2.5TJiY�vj���w<V��7z�j�F�j9��{���Ľ��58_���Bo�=�E�W
�0�ŉ�F�7qs�r�^Kk���Z�c˪"[
>�I�t�R����q��Z�#8H����M`K%����s����y�ߕ�R�`���E���4R����2A� D�c��<���/~�_\DɠL�r2�-T�j>{ߠ����=G�1V�,����du�W~qq����.      ?      x������ � �      =   �   x�m�;
�@@���*�������R�TiD�b��5d	n,�*���p	�a^=�',��I40Y4�h�ᖗ�����`I(�-`YR����c���(�k"=��5�۔O�R�Jc}0��[�啋K;���ڳ�$H��~����ݓ/�      %      x������ � �      '      x������ � �      #   1  x�}����0���S�U���*�u���X��+�J��j߾�x�ko��~�ۚ/�R�M_�뵸�����T��Ͽ�3<�
��o�߬���5�W{����{ ?:�O`����l���MS7���j���� �c[�O�X��G�(H�ȸSjys�2�
�ߺ��r�=�B��"�u��J���S�������s�jEp鹢�=�������m�cE��芆��mS�Ɇ�m�0>�����=v�	�z�vT� h��25��Ϡ���87�]:�P.�H�rd��8��d���L�)�M��29��-�m�� !�S�
�8�"�)��`ad�2Y��Pn��A�B)�Ub�S�`��0����=Y�2;s�����̋3wu�F&.�aY�B�L
kn�³L�o�L�L6��y��8��*�3����L�k!!�>R�;��*R{�1�+�R�;���m���[���J����Vf���s�����/	]��i��x^�<^����Ƀ둤l��I�]O%e����I9��;��<���ɼ�f��L@�dz��L&P|2=U�&�LO�_����<:w����%�H�%O���w��S�<�\��$9+�~w�����V�M:�9��fc����婍�2�Κ��_�Ig�����psN�/ѸF�%�3�9,�И�d����ǪW��� �d�L���qX/q�4FA�ĐUon�.���Ku�g�
�8/�D
�8��D2�8��D�eg3���:�^�Ma�Nip��n�m_���BNX�E�/�}_���B�,�a����7�����E�hI�¿�;�0o�cs��s+s��7��c��      /   e  x���Kn�F�ףS�J���U��*�� �p�l/(�5C�"erF@l�0>B�#�b�&��$��3 z��z�]]+���ρ'�S�R��ιZ�j�������.g��3���~\�۬��b�&�W����~|��(n˺�vmV4mr��m�~_f��ݧO�Vvg�4)*����$�~���E���C�>y��e�Ϸ%��gE1�@C@q ���TH��F���l����鴌N�H�ipt��w��K.)��Ϣ��J�\�B0'��0���f_�������e�۷Y�4��>�%?��sp ���%g\	��P�G�73p�,�ʚ ���"��p��Gsm���YK���9D(��"T(��2�g]A��y�tPTh�Ht�v�U�	0%P�A��K����:�pkǫ�A,#���|���!��4� 9�4}���l����5*�ǡV��u�-"&Z6)p&��C������V���d��
a�υ!�1�[dL�iR�=�în���o����Ҥ�2.ȋ�	��|X"�D�6��)��^V|U�T�.`�Kꨠ�������]�kf �ƺ-�1M��AS3'{˱�yR�8�Q��6����O���������d}q竪,���gM������K�prJQE�!r1�X׈�$'�ƻQ���ڢ9Q@_�����e��co�dy�a���9�W����М��V�G��o04���ގ��c��5p�蓰.��=D�Z�9���O�P�%I��w_@�U���}��)�/0��R4�W(���#��@�Ä&���&c�C�eI�US,=��?�>i�ud0d_����M�թ�侢�����J[?�V�.�������<0��l��E��wy[��e3��a�ɜO��иb�l��2Ȝ	��Z�Ƙ���q��Q1��3bz��-a-��^/h���w9��ͳ	�kԠ��Ȧ�T�ȶ�(J5=I�T���S��S<�R�^��$�Nҭ&�'�����Z=��F9����{��E�)�v?) `��h���s�HpS�F��I
����) �0ژ��z�;��gɯyS=��)�e�0Z�h#���q[y��Ux~e�a�(���q�|Ue�ϋ��Y��'��������_~TLU      !   �   x�uQ[n!��S���.�*���j�ԘJ�}�MvC���㙱�tJ1���U.8 5��$�Z#g\ߘ�p+��Yͪ�j��j�&�p�D��E�YF���^~�h��D�+�T�k����I��h�y�Э^5��ν��˞���o�S�̡[�c��=���_�����l2�¢a�?Zt�?b'�!�"v�\�����.?.�u�aV`��h��c|C�_�h�*         �  x����r�8��W�(cI�?����x��8|tN�~mC	!da�#�	�c��+8��[_����)��\y+��W'(> ?@��ȥΉ2�)�!��"ѵŵ�*����'���&ʒ��E'?�����F�9G��U_��)�k�ue}K'������~����(��Ej��Gq�e�KQ"E���ď�N���6B[#MD��KD��U�g
�ma�e�1B�Q�����ۑ��d;;3��ȗ�ʋ��s�rqE�֭�]�?���@��3�lJ��1�ң� 3�>)�?Q��1�>�zh�a4�T��\ 74A��5m��{a����4t�o�z Y�1*��r-o{1����Ѐ��`�T0E��3���:vwB�ZI	���C�-�����w�?��W]�7�`�Y�m0w�3� @��f��2�=���Hn��J�&N�VS�wWg
����X���k��mgZ�i�בq�_�9�m��c��z(�8@�M�5��M��D�66����y������%�2D�<*���N	��Ƒ%=ʣ^�V�2VZڱ�z�����D0/	�˳�ʌjٗ�����16�E�T\����^A:ck9M�2�`:SR�N�.�6����i5ts0�E�k��G��4�����PD�C�����	kC�P�ȧ^�X�J����+��a�l�-��}�t뚺�O��A��Jvx0g��!����p�}�����; ށr��0+�LI���3�� �1Ho�_RM>�O����(��Q��I Z�@?���kחM�����C@A�A�q�\���U1�/�0�$�q��&����IҊ!)GȬEe����Lc\�s{E���D{�4�(��1�f}S=B0��.��w!rAQ#��R�e��s�^��\�,��X�U��0�PX:�/Uy�Q��\ؐ�%�����<�������È�      H   g  x��Xَ��|�������!`z�-Y�4lQE���xY"%����N��=f�mc������&Ĩ���ȪH��1�����S=��2%}:�*'��&[�[)w�[�Y�z�*3�<���.}���.��8�X���V�P[��Z_�>f�i}��Z������V''s|�O����+?vY�J{N|Y��������9'3�t����K<��cTfU���>��ƨr������K�9��Nx�Ѽњ����<*ʶ4Xy2.���m�s���ӱIȄ��׷1�!=Gf9ҫ��V��IN���(}�b6 �f�q�e�o�;�>�N�R�'n���ߊwu]�fvՁ�G��No�o�հʻ�@8^fI|pʨ4s�9���JV����w��g����n�U+{|�?>�	ɮ�֙ M�m���:�?�0qD�ÁdYD�靣��̖+j������#rܢ�,������q�A�:G�FG�
8�&�ѲI��b����^��>����W�  mF)�讝Ĩ����S��.�2O�:��ЮZGo�J��tF��vx��(l��t��ip��交5
>7�l�/�r�O�����'�qm��>����lkKm��ŝK����x�s{L�㭕3��qץCVP����lʰ�s�/��a-����h`���٦�]x��j�ɴ��(�ryI5R��<��,U�w8���	�,�^�1������;�#�3`��R���=`"BM��?������#s���1c��9R42�0�id�8��p�Yx�4]=�r���8�)^���&�ۃ���[�H6���.�w_�񟇻����ː>c�IM>qJq��y��s+53��x`���CsT���攢)[0N�q甥}X�M{iӈ�i�1�/��P饺�j!'<��x|�w��c�HH18�#w$Lhw�;�G(1��s���ۯz��9���3��͉�c1dMp�~6�����X�G�T��s~��0���a���L}���R��[��j2��T�-mҡ;^��o'�>�Vhc=c�80�>ʍU�sg{v'���7��it\P�9gw^��2�o��9��Ü���op���]���c�H���������L���l��"M7�A�c�1��kUu�@�A�/��ۃ�[�nŝq]8n4�.lY���5K@�����v�e�6�=��Ü�{:qX!]��[��\k�����K���c2��1ȑ���sdO*9�?WT��q��P�����?�� ��5���ɹqǦ����FX��$<'��˒��ZTo�� 2�APc6����	� �AbTS��NZtF��R�����1�ȘQC{��:8'}��Dؘjq�\�@8�8���]�S�Ҧ�`�rkB�u��n�ԃI�K5���<�U�<�����v��8%t�`�ل7%�N�����,����ɨ"ޡc�n���Q~����P�1h`����
�uh�n�����U�oQ �tb�F�z�(K�,��)�4Z ��K����<��Z�h��Hy��E���o�ڷ�f��|n��<��߬�t� &3�7�fQT$�S�	W�[��
ɘQ�z�F:�g\�I6�(��B�X�}9�B�g"�
�2B��B�E�XOX�'��o9z9�=|)�ٷ��P����)�	G�*��j�a����_�������O?���ZW��T�;a%c�ž�@�����Oz6�դ}²��}�+��x9П���J���~����h�r�~����m��p�rZ������P>��w���s~xFt��Xa�8�����hT㖆�?��q8kX����{�)#�6ݴSr�(��>r��r�"�_�3iKM�a��zUII����(U��	�li3b��mc�b�m�7ޞu])��rT~~p�hp�z~����[S�x����o,��,
2`�N6����5�:���B��"����a�>2��K�mg[ӝt�%�M�0��ݗ���ͯWj���1���͹6��^̰�X#i.u�����o�EU!An�	�R����"_�=�;����>bG_�Q<8��Fp!�H(��WA�R|K�+��ǚpi�O\�_0Ӯ��`Y�__��_`Dx��_�_g�޽�tʟ;      A   C  x�m��n�0���O�K��Ƨ�v�R����S��v�a�>���crhwA��D�����&g!]�u�WЌ5�{��l�e�-�6d˙)�.��6q����%�
��JU)^i�Ji4/�� Ŧ$�R=6��5��G�=��d�����9e�Tb>�]��^�~��)�kz:&�a�v��o��~�:w'��D���m��-4������F?������]�|�4`9<��~�{|���]�G?dx���'k�Wq�`?�ۃf;i֪�)%�&�vc���}hb�cٜY��3f�U�RhKM��Ck�gA�����2�������|����sP��	�SNPfc���&8����<9ϸ��bA������P���eXkƇ?4O���ڌ�g{���T�Y�<�_V�#�2v5� �>t���H_|�{�V/�흁%��uXg�q��1.H9dLW��N`�{�<��C7!Nvc4Pʓ�F-�
w�&L֜!��� ��4��͸J��vКV��Dʊ�)բё�� �ql���E�3)��ڑ=��0�ۇCL�k�߼����/��=嶒L�VV�M���l68�1�      C   6  x�m��N�0���S��`;-��!J9�*�8!E�d9ve;����$����=��x<���f��|�˫�����w��EӃnLq�����!�	��b�9I����1�0v͗lMV$��c����fr0����ނBGv
[t�D�hk���X�.�l��Ʒ���*@��J}��]�GB�PXzk�Qռ4��B8�w���E�8Z�e���ck�q��&�^��#���]�O}�5}6J�3rRS�e�����Y�Ph�1G��^V�T�k?6p����9j=�u1��b���ĩH7��c��Q}�.�      E   �  x�m�M�� F�x[)����fQU���J�5`��p��me	�X��4Oo`پp���@ jF�Ԡ� (��uz^��iq09�k��?2�y��e�sZ�#�g%���������^�:��Bz���t�z���4^�S���z�����tso���<��.�������`�����OGI>�g�.D�t�]t�1]�lP�����*�� �*t�3V�!��	}p�n��e#�^�_{Չ	ҼE��qဇM$l^��>��iՇ�a!�~_ꍛ���H�����	Ѱ��Y��WM]��[�)��[��>�N)�i���tbV�$,��c��G�S�{�!٘9����ڽ	���;<mAD��Z܀t:'�	�Y۸_8�7�����5��-筠����m��e�?�X��      1   �   x�]��
�0 �k�0��.�����"����f練E�����9��E���T��(S�}��ң$��^�ty3�M��|$v�F4%B&$�3��h*
r���֫_`$q�0s!�8?ȣ26��;b����'|�;8��E��aпaڪSP�W��Y�`�      3   �	  x�}XMs�=C�b.�J� ��.�`ő#ٴ�ĕ*U����г3�]D��?$9�.�|��_��=� (*�����|t�~��[�����v~pM!��CJ�D?V�V��޶7�V�%GK�VA�Z+��/�g��lv1M�糳����A�Y�G�/*O֏�b���2n�cm
ʌw:*
?7�<7�"];_��~%�kZZr*�ʒ��M���`(>4NeM��
�����j?ķ�W�}�4��eƭl�6E�2���,��Ư�U��o)[������,����cu�U��yG���Q]��J
��Sdk|�[|a�qY���;��l�u0/<�k^V�=��}��f4CT7#���=l�/u�OV�ө������X}�Y�M��	%�C_��9�g��`2���n��[�S7M{�nx�_צ�#Sr؇j�	&7������/9m
g8z�f&�w�G�)�	��}(MxTjﲃ�GG��˿���tHEݦ!���g3r���}�+����X]����M�v�2�E���F��������c�ᇦ48e�2�2,5Ȏ�̣��d��q�ۘ��c�k������/�Lת�K�q�� ��'��������O��;��L�=!�U_��ˉ*h8_�t6 ����
�P�
yJQ�б��Woi�^9�P��a���Y�"/mS�l�Ӏ�)�1,$�f�+�Au��`v1�@"�.�FH�D�����8���EY��{i�-��MIy���O&��
��U�o���Pld������x6?I��8;���b�*_5�?��8���R~�� �z+D:5�6��ɯ �޾�o9rlbC?����^q�l�ׅcU��%m}`4k��G>�Һ������-(�Z�����#L��ۏ�!XZ�C��<���ƃ�������i���A�|��D&���j���X�Z���.�8�]�П��m�"�]ӗk_�d��7����������`2�8?�=?����t2:��N&jzz9�]��������l4�N��nə�o�J3���F���	�C����R�.���q����|�|>��FLp;?����_qT������y��G�RJ�+�#�V��7d#|m�#�{$ɐ�ܠ����o�k_�{3�"�\jM��
�������`P0X$�KÚ%�E&���~�N�i�3��+5^KQ30�5�m|�V9�$�������R1'��/}V�T#q�n��[�L�ᦀ6 $�������"G6xc�*T�s;d3Y0	��Qry���P.�kl2�C 9�f��)!J�$���E/�A�b��!�4�-	¿i�&�ڐ���c����C������A�p|b��:,�r)�uw�"�z�7��vB��-UGd| � �i�#��"YtU�`�H�LML�}L����=�k�w���P!2"J��d@TZ2n�r]q��_zKh�
����Zp`=���1^4nG)�����b�-��?\^7X"�+��N/�O��4?&�kF^.�v���׎��'е���}�A�t�k�o�_׼�z�\/�MZĤ�s��3Փ��	s*-(!� �KV��^"��=\M9�/򬄜`n(�� y�\�}W�$��G�Ke	�)Ƕ�г�\b���6r�Dnx�H>�1:"�G�G�j�@��������F�8�] Y��Q����d�0��HW�����IC��ѲŬ�����O[��6�ԋ�+��LL<�H/ǿJ���MEK8B�С�!���D���y��|/f���l��FW��.h��}a:x�&�$�:5,��L��[�,D��z�Q�3��e�Xt��Hy�b���~A3U�I�Kg�9��I�!w̘�$�c�V���S��@V�fz? a������f���80=.p�T
����#�5"n��c0�¯ ($?A]��&�)L�7ȆNm�pZ\L
��z!�b�u�u{?�������r�;�aT���-s]�8�F��:	���R]���a��y�%b��%�h !���ųY'=�[?��9,�n�P�����h ��ᑦ��[���ڵ�x�H�x0��8쁒��v�?�=���r).�C������`�J�\���"��Xq7��$w�z\Pn�A|��l:��w&�AZd�@�Ƕ�� Y���r)C%�
7�oR_�X�A�~���M&�ʰ�Q�-�Dpc����\��M�3:h��!�NH|�؈�Z���?Y���D���&�kDb�3�{E�|�<������7S�hV�4�|��������ݕ��И���e�b�����y�w���6�}&)D�'��Ե�c��J&#@?Od�a���QFnyBw}�s��#���F��;��%��Y�슧;�|���ŉR���q�㰥`WV}�O��Q��{����XuӄO�|��V:"��@6?=��t��OWt�7(����8�����������d>��3Ǽs:���BM)���۫o_/�����q���υ�N/g��������|z����ٻ�g��m�c      G   c   x��[
�@���*�����d�k�g+آ�JW����{���;�n��%a�6�*9��m�~�s+�1�պ��"�:�6{��j���:jV'�NRJ\��      J   W   x����  �s��@ڢ<:�p!�DE�g}y�h��P�5��>�+t�w.��KN#� � $dY,3�_y����<[�ALpƘ30      )   �  x�m�]o�@���_�wFvf�I����EE)Z�&�A���������	s��{N&�3�@�������l�8yKrϫ�M������s0.��e7Z(��@{{���3�'�5�y��� � �ò��j��U&���Z�;�����fMj2��v'(�4�f!;���������m@@y�=}��<*�$�Q�e¥]�� w[�"d��z�L"j�zM���y�S�"�Bq��iI�1ױ<_�� �o=H��P��j7���l�b�v�V4M2�~�k/D9������{Z�����h��	k��"��z��J~Ngo�N��[l_�>�����\�=�
�BDA�͗5�����q��fg`6|`{k�;����-�~b�V9���tD{7z�G��ђ�8/"�e�n3-ݓF���R��/�k;��ޒ��h�5(����op���]!c�]�B���      +      x������ � �      -      x������ � �     