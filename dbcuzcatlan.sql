PGDMP     6    )                x            dbcuzcatlan2    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19194    dbcuzcatlan2    DATABASE     �   CREATE DATABASE dbcuzcatlan2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbcuzcatlan2;
                postgres    false            �            1259    19195    administrador    TABLE     `  CREATE TABLE public.administrador (
    id_administrador integer NOT NULL,
    nombre character varying(15),
    apellido character varying(15),
    correo character varying(45),
    telefono character varying(15),
    clave character varying(65),
    fotografia text,
    fecha_nacimiento timestamp without time zone,
    id_cargo integer NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            �            1259    19201 "   administrador_id_administrador_seq    SEQUENCE     �   CREATE SEQUENCE public.administrador_id_administrador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.administrador_id_administrador_seq;
       public          postgres    false    202            �           0    0 "   administrador_id_administrador_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.administrador_id_administrador_seq OWNED BY public.administrador.id_administrador;
          public          postgres    false    203            �            1259    19203    cargo    TABLE     M   CREATE TABLE public.cargo (
    id_cargo integer NOT NULL,
    cargo text
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            �            1259    19209    cargo_id_cargo_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_id_cargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cargo_id_cargo_seq;
       public          postgres    false    204            �           0    0    cargo_id_cargo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cargo_id_cargo_seq OWNED BY public.cargo.id_cargo;
          public          postgres    false    205            �            1259    19211    categoria_producto    TABLE     �   CREATE TABLE public.categoria_producto (
    id_categoria_producto integer NOT NULL,
    categoria_producto character varying(25)
);
 &   DROP TABLE public.categoria_producto;
       public         heap    postgres    false            �            1259    19214 ,   categoria_producto_id_categoria_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_producto_id_categoria_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.categoria_producto_id_categoria_producto_seq;
       public          postgres    false    206            �           0    0 ,   categoria_producto_id_categoria_producto_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.categoria_producto_id_categoria_producto_seq OWNED BY public.categoria_producto.id_categoria_producto;
          public          postgres    false    207            �            1259    19216    cliente    TABLE     ^  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(15),
    apellido character varying(15),
    correo character varying(45),
    telefono character varying(15),
    clave character varying(25),
    fotografia text,
    direccion text,
    fecha_registro timestamp without time zone,
    id_estado integer
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    19222    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    208            �           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    209            �            1259    19224    departamento    TABLE     s   CREATE TABLE public.departamento (
    id_departamento integer NOT NULL,
    departamento character varying(15)
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    19227     departamento_id_departamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_id_departamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.departamento_id_departamento_seq;
       public          postgres    false    210            �           0    0     departamento_id_departamento_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.departamento_id_departamento_seq OWNED BY public.departamento.id_departamento;
          public          postgres    false    211            �            1259    19229    detalle_factura    TABLE     �   CREATE TABLE public.detalle_factura (
    id_detalle_factura integer NOT NULL,
    cantidad integer,
    precio_unitario numeric(8,2),
    id_factura integer NOT NULL,
    id_producto integer NOT NULL
);
 #   DROP TABLE public.detalle_factura;
       public         heap    postgres    false            �            1259    19232 &   detalle_factura_id_detalle_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_factura_id_detalle_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.detalle_factura_id_detalle_factura_seq;
       public          postgres    false    212            �           0    0 &   detalle_factura_id_detalle_factura_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.detalle_factura_id_detalle_factura_seq OWNED BY public.detalle_factura.id_detalle_factura;
          public          postgres    false    213            �            1259    19234    estado    TABLE     a   CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    estado character varying(10)
);
    DROP TABLE public.estado;
       public         heap    postgres    false            �            1259    19237    estado_factura    TABLE     y   CREATE TABLE public.estado_factura (
    id_estado_factura integer NOT NULL,
    estado_factura character varying(25)
);
 "   DROP TABLE public.estado_factura;
       public         heap    postgres    false            �            1259    19240 $   estado_factura_id_estado_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_factura_id_estado_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.estado_factura_id_estado_factura_seq;
       public          postgres    false    215            �           0    0 $   estado_factura_id_estado_factura_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.estado_factura_id_estado_factura_seq OWNED BY public.estado_factura.id_estado_factura;
          public          postgres    false    216            �            1259    19242    estado_id_estado_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.estado_id_estado_seq;
       public          postgres    false    214            �           0    0    estado_id_estado_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.estado_id_estado_seq OWNED BY public.estado.id_estado;
          public          postgres    false    217            �            1259    19244    estado_producto    TABLE     |   CREATE TABLE public.estado_producto (
    id_estado_producto integer NOT NULL,
    estado_producto character varying(25)
);
 #   DROP TABLE public.estado_producto;
       public         heap    postgres    false            �            1259    19247 &   estado_producto_id_estado_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_producto_id_estado_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.estado_producto_id_estado_producto_seq;
       public          postgres    false    218            �           0    0 &   estado_producto_id_estado_producto_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.estado_producto_id_estado_producto_seq OWNED BY public.estado_producto.id_estado_producto;
          public          postgres    false    219            �            1259    19249    factura    TABLE     �   CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    fecha_registro timestamp without time zone,
    precio_total numeric(8,2),
    id_cliente integer NOT NULL,
    id_estado_factura integer NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    19252    factura_id_factura_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.factura_id_factura_seq;
       public          postgres    false    220            �           0    0    factura_id_factura_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.factura_id_factura_seq OWNED BY public.factura.id_factura;
          public          postgres    false    221            �            1259    19254    imagenes    TABLE     �   CREATE TABLE public.imagenes (
    id_imagen integer NOT NULL,
    descripcion text,
    ruta text,
    titulo character varying(20),
    id_producto integer NOT NULL
);
    DROP TABLE public.imagenes;
       public         heap    postgres    false            �            1259    19260    imagenes_id_imagen_seq    SEQUENCE     �   CREATE SEQUENCE public.imagenes_id_imagen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.imagenes_id_imagen_seq;
       public          postgres    false    222            �           0    0    imagenes_id_imagen_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.imagenes_id_imagen_seq OWNED BY public.imagenes.id_imagen;
          public          postgres    false    223            �            1259    19262    lista_deseo    TABLE     �   CREATE TABLE public.lista_deseo (
    id_lista integer NOT NULL,
    cantidad integer,
    id_cliente integer NOT NULL,
    id_producto integer NOT NULL
);
    DROP TABLE public.lista_deseo;
       public         heap    postgres    false            �            1259    19265    lista_deseo_id_lista_seq    SEQUENCE     �   CREATE SEQUENCE public.lista_deseo_id_lista_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.lista_deseo_id_lista_seq;
       public          postgres    false    224            �           0    0    lista_deseo_id_lista_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.lista_deseo_id_lista_seq OWNED BY public.lista_deseo.id_lista;
          public          postgres    false    225            �            1259    19267    noticias    TABLE     �   CREATE TABLE public.noticias (
    id_noticia integer NOT NULL,
    titulo character varying(25),
    contenido text,
    imagen text,
    fecha_registro date,
    id_estado integer NOT NULL
);
    DROP TABLE public.noticias;
       public         heap    postgres    false            �            1259    19273    noticias_id_noticia_seq    SEQUENCE     �   CREATE SEQUENCE public.noticias_id_noticia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.noticias_id_noticia_seq;
       public          postgres    false    226            �           0    0    noticias_id_noticia_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.noticias_id_noticia_seq OWNED BY public.noticias.id_noticia;
          public          postgres    false    227            �            1259    19275    producto    TABLE     ^  CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    nombre character varying(45),
    descripcion text,
    existencias integer,
    precio_unitario numeric(8,2),
    fecha_registro timestamp without time zone,
    id_estado_producto integer NOT NULL,
    id_categoria_producto integer NOT NULL,
    id_proveedor integer NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    19281    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.producto_id_producto_seq;
       public          postgres    false    228            �           0    0    producto_id_producto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;
          public          postgres    false    229            �            1259    19283 	   proveedor    TABLE     �   CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    nombre_contacto character varying(25),
    nombre_empresa character varying(25),
    telefono character varying(15),
    id_departamento integer NOT NULL
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    19286    proveedor_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.proveedor_id_proveedor_seq;
       public          postgres    false    230            �           0    0    proveedor_id_proveedor_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;
          public          postgres    false    231            �            1259    19288 
   valoracion    TABLE       CREATE TABLE public.valoracion (
    id_valoracion integer NOT NULL,
    fecha_registro timestamp without time zone,
    valoracion integer,
    comentario text,
    id_cliente integer NOT NULL,
    id_producto integer NOT NULL,
    id_estado integer NOT NULL
);
    DROP TABLE public.valoracion;
       public         heap    postgres    false            �            1259    19294    valoracion_id_valoracion_seq    SEQUENCE     �   CREATE SEQUENCE public.valoracion_id_valoracion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.valoracion_id_valoracion_seq;
       public          postgres    false    232            �           0    0    valoracion_id_valoracion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.valoracion_id_valoracion_seq OWNED BY public.valoracion.id_valoracion;
          public          postgres    false    233            �
           2604    19296    administrador id_administrador    DEFAULT     �   ALTER TABLE ONLY public.administrador ALTER COLUMN id_administrador SET DEFAULT nextval('public.administrador_id_administrador_seq'::regclass);
 M   ALTER TABLE public.administrador ALTER COLUMN id_administrador DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    19297    cargo id_cargo    DEFAULT     p   ALTER TABLE ONLY public.cargo ALTER COLUMN id_cargo SET DEFAULT nextval('public.cargo_id_cargo_seq'::regclass);
 =   ALTER TABLE public.cargo ALTER COLUMN id_cargo DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    19298 (   categoria_producto id_categoria_producto    DEFAULT     �   ALTER TABLE ONLY public.categoria_producto ALTER COLUMN id_categoria_producto SET DEFAULT nextval('public.categoria_producto_id_categoria_producto_seq'::regclass);
 W   ALTER TABLE public.categoria_producto ALTER COLUMN id_categoria_producto DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    19299    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    19300    departamento id_departamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN id_departamento SET DEFAULT nextval('public.departamento_id_departamento_seq'::regclass);
 K   ALTER TABLE public.departamento ALTER COLUMN id_departamento DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    19301 "   detalle_factura id_detalle_factura    DEFAULT     �   ALTER TABLE ONLY public.detalle_factura ALTER COLUMN id_detalle_factura SET DEFAULT nextval('public.detalle_factura_id_detalle_factura_seq'::regclass);
 Q   ALTER TABLE public.detalle_factura ALTER COLUMN id_detalle_factura DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    19302    estado id_estado    DEFAULT     t   ALTER TABLE ONLY public.estado ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_id_estado_seq'::regclass);
 ?   ALTER TABLE public.estado ALTER COLUMN id_estado DROP DEFAULT;
       public          postgres    false    217    214            �
           2604    19303     estado_factura id_estado_factura    DEFAULT     �   ALTER TABLE ONLY public.estado_factura ALTER COLUMN id_estado_factura SET DEFAULT nextval('public.estado_factura_id_estado_factura_seq'::regclass);
 O   ALTER TABLE public.estado_factura ALTER COLUMN id_estado_factura DROP DEFAULT;
       public          postgres    false    216    215            �
           2604    19304 "   estado_producto id_estado_producto    DEFAULT     �   ALTER TABLE ONLY public.estado_producto ALTER COLUMN id_estado_producto SET DEFAULT nextval('public.estado_producto_id_estado_producto_seq'::regclass);
 Q   ALTER TABLE public.estado_producto ALTER COLUMN id_estado_producto DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    19305    factura id_factura    DEFAULT     x   ALTER TABLE ONLY public.factura ALTER COLUMN id_factura SET DEFAULT nextval('public.factura_id_factura_seq'::regclass);
 A   ALTER TABLE public.factura ALTER COLUMN id_factura DROP DEFAULT;
       public          postgres    false    221    220            �
           2604    19306    imagenes id_imagen    DEFAULT     x   ALTER TABLE ONLY public.imagenes ALTER COLUMN id_imagen SET DEFAULT nextval('public.imagenes_id_imagen_seq'::regclass);
 A   ALTER TABLE public.imagenes ALTER COLUMN id_imagen DROP DEFAULT;
       public          postgres    false    223    222            �
           2604    19307    lista_deseo id_lista    DEFAULT     |   ALTER TABLE ONLY public.lista_deseo ALTER COLUMN id_lista SET DEFAULT nextval('public.lista_deseo_id_lista_seq'::regclass);
 C   ALTER TABLE public.lista_deseo ALTER COLUMN id_lista DROP DEFAULT;
       public          postgres    false    225    224            �
           2604    19308    noticias id_noticia    DEFAULT     z   ALTER TABLE ONLY public.noticias ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticias_id_noticia_seq'::regclass);
 B   ALTER TABLE public.noticias ALTER COLUMN id_noticia DROP DEFAULT;
       public          postgres    false    227    226            �
           2604    19309    producto id_producto    DEFAULT     |   ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);
 C   ALTER TABLE public.producto ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    229    228            �
           2604    19310    proveedor id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);
 E   ALTER TABLE public.proveedor ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    231    230            �
           2604    19311    valoracion id_valoracion    DEFAULT     �   ALTER TABLE ONLY public.valoracion ALTER COLUMN id_valoracion SET DEFAULT nextval('public.valoracion_id_valoracion_seq'::regclass);
 G   ALTER TABLE public.valoracion ALTER COLUMN id_valoracion DROP DEFAULT;
       public          postgres    false    233    232            �          0    19195    administrador 
   TABLE DATA           �   COPY public.administrador (id_administrador, nombre, apellido, correo, telefono, clave, fotografia, fecha_nacimiento, id_cargo) FROM stdin;
    public          postgres    false    202   #�       �          0    19203    cargo 
   TABLE DATA           0   COPY public.cargo (id_cargo, cargo) FROM stdin;
    public          postgres    false    204   6�       �          0    19211    categoria_producto 
   TABLE DATA           W   COPY public.categoria_producto (id_categoria_producto, categoria_producto) FROM stdin;
    public          postgres    false    206   ��       �          0    19216    cliente 
   TABLE DATA           �   COPY public.cliente (id_cliente, nombre, apellido, correo, telefono, clave, fotografia, direccion, fecha_registro, id_estado) FROM stdin;
    public          postgres    false    208   �       �          0    19224    departamento 
   TABLE DATA           E   COPY public.departamento (id_departamento, departamento) FROM stdin;
    public          postgres    false    210   �       �          0    19229    detalle_factura 
   TABLE DATA           q   COPY public.detalle_factura (id_detalle_factura, cantidad, precio_unitario, id_factura, id_producto) FROM stdin;
    public          postgres    false    212   ��       �          0    19234    estado 
   TABLE DATA           3   COPY public.estado (id_estado, estado) FROM stdin;
    public          postgres    false    214   ��       �          0    19237    estado_factura 
   TABLE DATA           K   COPY public.estado_factura (id_estado_factura, estado_factura) FROM stdin;
    public          postgres    false    215   ��       �          0    19244    estado_producto 
   TABLE DATA           N   COPY public.estado_producto (id_estado_producto, estado_producto) FROM stdin;
    public          postgres    false    218   ��       �          0    19249    factura 
   TABLE DATA           j   COPY public.factura (id_factura, fecha_registro, precio_total, id_cliente, id_estado_factura) FROM stdin;
    public          postgres    false    220   0�       �          0    19254    imagenes 
   TABLE DATA           U   COPY public.imagenes (id_imagen, descripcion, ruta, titulo, id_producto) FROM stdin;
    public          postgres    false    222   )�       �          0    19262    lista_deseo 
   TABLE DATA           R   COPY public.lista_deseo (id_lista, cantidad, id_cliente, id_producto) FROM stdin;
    public          postgres    false    224   ��       �          0    19267    noticias 
   TABLE DATA           d   COPY public.noticias (id_noticia, titulo, contenido, imagen, fecha_registro, id_estado) FROM stdin;
    public          postgres    false    226   ذ       �          0    19275    producto 
   TABLE DATA           �   COPY public.producto (id_producto, nombre, descripcion, existencias, precio_unitario, fecha_registro, id_estado_producto, id_categoria_producto, id_proveedor) FROM stdin;
    public          postgres    false    228   H�       �          0    19283 	   proveedor 
   TABLE DATA           m   COPY public.proveedor (id_proveedor, nombre_contacto, nombre_empresa, telefono, id_departamento) FROM stdin;
    public          postgres    false    230   ��       �          0    19288 
   valoracion 
   TABLE DATA              COPY public.valoracion (id_valoracion, fecha_registro, valoracion, comentario, id_cliente, id_producto, id_estado) FROM stdin;
    public          postgres    false    232   ��       �           0    0 "   administrador_id_administrador_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.administrador_id_administrador_seq', 4, true);
          public          postgres    false    203            �           0    0    cargo_id_cargo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cargo_id_cargo_seq', 4, true);
          public          postgres    false    205            �           0    0 ,   categoria_producto_id_categoria_producto_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.categoria_producto_id_categoria_producto_seq', 6, true);
          public          postgres    false    207            �           0    0    cliente_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 16, true);
          public          postgres    false    209            �           0    0     departamento_id_departamento_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.departamento_id_departamento_seq', 14, true);
          public          postgres    false    211            �           0    0 &   detalle_factura_id_detalle_factura_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.detalle_factura_id_detalle_factura_seq', 145, true);
          public          postgres    false    213            �           0    0 $   estado_factura_id_estado_factura_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.estado_factura_id_estado_factura_seq', 4, true);
          public          postgres    false    216            �           0    0    estado_id_estado_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estado_id_estado_seq', 2, true);
          public          postgres    false    217            �           0    0 &   estado_producto_id_estado_producto_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.estado_producto_id_estado_producto_seq', 2, true);
          public          postgres    false    219            �           0    0    factura_id_factura_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.factura_id_factura_seq', 42, true);
          public          postgres    false    221            �           0    0    imagenes_id_imagen_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.imagenes_id_imagen_seq', 5, true);
          public          postgres    false    223            �           0    0    lista_deseo_id_lista_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lista_deseo_id_lista_seq', 5, true);
          public          postgres    false    225            �           0    0    noticias_id_noticia_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.noticias_id_noticia_seq', 18, true);
          public          postgres    false    227            �           0    0    producto_id_producto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.producto_id_producto_seq', 25, true);
          public          postgres    false    229            �           0    0    proveedor_id_proveedor_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 5, true);
          public          postgres    false    231            �           0    0    valoracion_id_valoracion_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.valoracion_id_valoracion_seq', 5, true);
          public          postgres    false    233            �
           2606    19313     administrador administrador_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (id_administrador);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public            postgres    false    202            �
           2606    19315    cargo cargo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id_cargo);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public            postgres    false    204            �
           2606    19317 *   categoria_producto categoria_producto_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.categoria_producto
    ADD CONSTRAINT categoria_producto_pkey PRIMARY KEY (id_categoria_producto);
 T   ALTER TABLE ONLY public.categoria_producto DROP CONSTRAINT categoria_producto_pkey;
       public            postgres    false    206            �
           2606    19319    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    208            �
           2606    19321    departamento departamento_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (id_departamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    210            �
           2606    19323 $   detalle_factura detalle_factura_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle_factura);
 N   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_pkey;
       public            postgres    false    212            �
           2606    19325 "   estado_factura estado_factura_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.estado_factura
    ADD CONSTRAINT estado_factura_pkey PRIMARY KEY (id_estado_factura);
 L   ALTER TABLE ONLY public.estado_factura DROP CONSTRAINT estado_factura_pkey;
       public            postgres    false    215            �
           2606    19327    estado estado_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    214                       2606    19329 $   estado_producto estado_producto_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.estado_producto
    ADD CONSTRAINT estado_producto_pkey PRIMARY KEY (id_estado_producto);
 N   ALTER TABLE ONLY public.estado_producto DROP CONSTRAINT estado_producto_pkey;
       public            postgres    false    218                       2606    19331    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    220                       2606    19333    imagenes imagenes_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.imagenes
    ADD CONSTRAINT imagenes_pkey PRIMARY KEY (id_imagen);
 @   ALTER TABLE ONLY public.imagenes DROP CONSTRAINT imagenes_pkey;
       public            postgres    false    222                       2606    19335    lista_deseo lista_deseo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.lista_deseo
    ADD CONSTRAINT lista_deseo_pkey PRIMARY KEY (id_lista);
 F   ALTER TABLE ONLY public.lista_deseo DROP CONSTRAINT lista_deseo_pkey;
       public            postgres    false    224            	           2606    19337    noticias noticias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.noticias
    ADD CONSTRAINT noticias_pkey PRIMARY KEY (id_noticia);
 @   ALTER TABLE ONLY public.noticias DROP CONSTRAINT noticias_pkey;
       public            postgres    false    226                       2606    19339    producto producto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    228                       2606    19341    proveedor proveedor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    230                       2606    19343    valoracion valoracion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_pkey PRIMARY KEY (id_valoracion);
 D   ALTER TABLE ONLY public.valoracion DROP CONSTRAINT valoracion_pkey;
       public            postgres    false    232                       2606    19344 )   administrador administrador_id_cargo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_id_cargo_fkey FOREIGN KEY (id_cargo) REFERENCES public.cargo(id_cargo);
 S   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_id_cargo_fkey;
       public          postgres    false    202    2803    204                       2606    19425    cliente cliente_id_estado_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_id_estado_key FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);
 G   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_id_estado_key;
       public          postgres    false    208    2813    214                       2606    19349 /   detalle_factura detalle_factura_id_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura);
 Y   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_factura_fkey;
       public          postgres    false    220    2819    212                       2606    19354 0   detalle_factura detalle_factura_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 Z   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_producto_fkey;
       public          postgres    false    228    2827    212                       2606    19359    factura factura_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_cliente_fkey;
       public          postgres    false    220    2807    208                       2606    19364 &   factura factura_id_estado_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_estado_factura_fkey FOREIGN KEY (id_estado_factura) REFERENCES public.estado_factura(id_estado_factura);
 P   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_estado_factura_fkey;
       public          postgres    false    220    2815    215                       2606    19369 "   imagenes imagenes_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.imagenes
    ADD CONSTRAINT imagenes_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 L   ALTER TABLE ONLY public.imagenes DROP CONSTRAINT imagenes_id_producto_fkey;
       public          postgres    false    2827    228    222                       2606    19374 '   lista_deseo lista_deseo_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lista_deseo
    ADD CONSTRAINT lista_deseo_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 Q   ALTER TABLE ONLY public.lista_deseo DROP CONSTRAINT lista_deseo_id_cliente_fkey;
       public          postgres    false    2807    224    208                       2606    19379 (   lista_deseo lista_deseo_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lista_deseo
    ADD CONSTRAINT lista_deseo_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 R   ALTER TABLE ONLY public.lista_deseo DROP CONSTRAINT lista_deseo_id_producto_fkey;
       public          postgres    false    2827    224    228                       2606    19384     noticias noticias_id_estado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.noticias
    ADD CONSTRAINT noticias_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);
 J   ALTER TABLE ONLY public.noticias DROP CONSTRAINT noticias_id_estado_fkey;
       public          postgres    false    2813    214    226                       2606    19389 ,   producto producto_id_categoria_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_categoria_producto_fkey FOREIGN KEY (id_categoria_producto) REFERENCES public.categoria_producto(id_categoria_producto);
 V   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_id_categoria_producto_fkey;
       public          postgres    false    206    2805    228                       2606    19394 )   producto producto_id_estado_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_estado_producto_fkey FOREIGN KEY (id_estado_producto) REFERENCES public.estado_producto(id_estado_producto);
 S   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_id_estado_producto_fkey;
       public          postgres    false    228    2817    218                       2606    19399 #   producto producto_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);
 M   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_id_proveedor_fkey;
       public          postgres    false    230    2829    228                       2606    19404 (   proveedor proveedor_id_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES public.departamento(id_departamento);
 R   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_id_departamento_fkey;
       public          postgres    false    210    230    2809                       2606    19409 %   valoracion valoracion_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 O   ALTER TABLE ONLY public.valoracion DROP CONSTRAINT valoracion_id_cliente_fkey;
       public          postgres    false    208    232    2807                       2606    19414 $   valoracion valoracion_id_estado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);
 N   ALTER TABLE ONLY public.valoracion DROP CONSTRAINT valoracion_id_estado_fkey;
       public          postgres    false    232    214    2813                        2606    19419 &   valoracion valoracion_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.valoracion
    ADD CONSTRAINT valoracion_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);
 P   ALTER TABLE ONLY public.valoracion DROP CONSTRAINT valoracion_id_producto_fkey;
       public          postgres    false    232    228    2827            �     x�M�ˎ�0 ��uyׅB��0���.EQ��<��$�I��ߜO;�[��&Zpp�b�M���a��Y_!}<��k���'+TO�M"�[������Ù�����GӐ�A�Vٵ�� ��:�¢�`ṉA�;^�ˇ=�}`m��k����^�^Hr��5-!�{ڏ�۪V��&G\�8L&2P��?OS����7He96����+\��#�p����ӝ2�����f|8c�;��?�J��ܯ^�      �   N   x�3�t�,JM.�/RpO�K-J��2B��*�&e��d�ss���敤����SJ�j��L8���JS�b���� t,�      �   <   x�3���OO,�2��/H�2�tN,*I-J,�2�tL�/��/�2�tLNN-�/�rb���� ��      �     x�eT]o�:}6�b~ E�c��4�{[D)ծ��/n₵�����'1�*$4gH8>g�8&+])f���(zt�t�nݬt5Ic��2�d�I��"�����*�)غ���C獶���)�x�H�(�p���<�����
���w]������ߥq�_2�I�;m�	��*(����������<0	����ي,gxDkG�����\���^1q&2x�;�fjx��:(������+$<"0%�M[�K��+e��6�]��(����Q��|�������M��C���^JN������4��P�2��I\�I����خ�'���D��-�����@�������+���W����[��ŸR��D~A�1,��	���~:_��U=�CD�b �ɷZ�y�����U:/#�Mc3Tx5�,c��e�jgG/�9|�^۶ �'Q(��q�k��k�h=�_��\�US~Ξ�xfY��s�@>�C����Rzf��>_cD6��p�׷�I�m��e�2�Ckuۺ#���?�4ə��Eg�"[̊;���}yM�e�Į�hE�����^Y)s�k9��hN�(K�Gi�2��1�$U��{��R�00gwI�Kh�H��۶���%n��t��d�^u�lp�x|�&����<|.d�4�ً�r��N��EtLY�f4�k�eq��~�M��.����+���w�+�<��)\��G���E�pq�	#x��H������۴�͑�I~�Y"�w��r�������;��7�$�"t�f����q��      �   �   x��;
�@E��V�
BFͯ[���*���
Û�̤p7YB��X�{�*� Q�Fgf�)=���#��eN�2b���|�Q15�����z�2�P�m�C��;�Q����q�|Lm/[L)����_�;+����UB����$�Z��'�<0�b<�      �   �  x�]�[r�0D��Ť�C�����14���')���)h�������O����_�<�Ul��+��6�O��oeJy��P�����3��O�I=���-'J~K3�4�'=~�m�A�p�@em8�x�A	��2�s+���`�_9�WJ��m,9?�F3C=��1�y�Z�,+M}R�!K5�P�����c�ħP��?����}�������؄��^���،Rrc5ʡ�PK�7ԙ+��t��@=C�]if�jS���X����X���m����7c���7c�C2��� ���F�1v;���ۑd�dg7�;f�����1v=sf���[�{Jtc�S���#���9�[�9cdaF�Y��3FV��a�+��l�����Ԑ�U�6ѝSCVVNYYej��*S[�>�_dg��/��)���l���v�F�v�F�v�F��Ļ�[wLM��Sdk��p1�ɩY�ڡ_݇u�ӭ�15�_M&�a��v���i��/�{��=�ӏ�G=��f�	�8S/��3����Y��LHqϤ�,�➅1'*�➔�H>Qr"�D��'*�ꞅS_���=�p�+A\8�{rr�''�	q����鞅s��ɹ�39�ȅ�?�\8q}H
�rOIN�(��ĕ")��%�¹ݳp��39�{&�`�p�,��j��������v��'���&�v�LN�;�淋���On      �      x�3�tL.�,��2���K�0c���� ^��      �   9   x�3�t�S((�ON-��2rJ�R���9��SsS�L8�2�s2�@�=... �E�      �   $   x�3�t�,.���L�I�2�tL�/IL������ ~��      �   �   x�u��m�PCѵT�p��y_�
���#�볻 ms�|�?�8���f�M0�.X�!X�E�kB��Nl���'q�S���Q,����/����Vj�6j�X�vjUԦ:�]�A�F�%�R��������rRpUn
��Q!�jK�*TU�
M��B�
�0�)w�y�Q�Ҵ+�M��&/e+7U�rWe+�%�R���V^U�ʛha+�ե��\����Z-}����.�8      �   c   x�3���MLO�S(JM�I��,KT0�t��ON,*H-I����e�s�d������sra�6"V��1�ncbus�`�6!V�	�)�nSbu�r��qqq J;j�      �   ,   x�3�4A.#N# m�e�ibq�p� Y�\���@�!W� z�T      �   `  x����n� ���)x���ɿ�8�Z���zq�1A@���g�V�J&u�.Q0|?l�؋
���Y7i�r`;JÕ���v|�^�F����.�0����ɀ��Ab��L��E��� )\�or�&x������Rxu?�ʡf"�Sx}?��A�a�'~���6�	��Kh�%�(b�EK�=^���1H�ާr������_#b�;j��蹢�QzB�D�\ ł�������`w��$8���({��v�G��yu�j(/OG�ǟ�fQ��`�}��Lk��eAu
���hp��LR ����ӗ�6ed�)6��8�=�y<^4o�踧?oٓ>XN�P��n�e�'�ي�      �   �  x�uT�N�0}v��_P���H�}XP�/�d(F�';�+ѿB�	�؎ӦM�U����9>v�Vd=�5|��~W��L�Y*�Y���;��BeI�n����閸ݡ�gr�V)�n������j�Cj�B��#��TSPy��!�߃�b�yJ���HU>m��(ʖ����.ٔۥ�	T��V�ð"K�aD$�����:��R5?����[������1����^�2�&$�tRAN��74� ԃ�,ᢔ�Ǹ"�2u�iL<	�ԴX����q1�k��P�RYv*Q����0ٜz���\3�A�|V���$+>�+�u��ŀ;-G��Me�{�@Ϊ���ԍ���M��؀�K*���A�$Le-����Adk���'���7�85ӟ�B]s؟s�E9�8Z�PO���vL(&V̢4ы5nEBIo%�O�u��p��(O>�ťz��1*tc���2F?���rt��k���T]Ζ���Q�xq��-�)ǡȩ6>�}j}�(�ʳ�O�;c����Ȥ��Z.R,1���wh����B]��]�~9#^����C��U:Η�:���\&��&��������M��z�u���2��E;ȑ�O"�Z3ա��;�n�H޴�ʽ���!�P�?�XkXQb�,��/$Z��l5J�I�4K��և��      �   �   x��1n�0��:O`��(��]�I�,��6DX	��������>EU8���^YK�Üj������
d9�v���~���
3?��C��lO�A��0i-<t8s���DV��{ށ5'�7�ˋ��k����#߼6�\�%����$�^�Mrz�a��|���[��c�f�:      �   y   x�u�1
�@��zr
/yIfp��klcaa�#2�g3 ���=�
��M̋aQ�|lgY�=�q廬g�|� �(Ҙ�1�SJ��Ę�:&yJ�k�t��H��0"^���n~#���C�     