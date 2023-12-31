PGDMP  7    $            
    {            postgres    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     {   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4858                        2615    16516    psico    SCHEMA        CREATE SCHEMA psico;
    DROP SCHEMA psico;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16538    Resultado_Test_Sacks    TABLE     �  CREATE TABLE psico."Resultado_Test_Sacks" (
    "id_Resultado" uuid NOT NULL,
    resultado_1 text NOT NULL,
    resultado_2 text NOT NULL,
    resultado_3 text NOT NULL,
    resultado_4 text NOT NULL,
    resultado_5 text NOT NULL,
    resultado_6 text NOT NULL,
    resultado_7 text NOT NULL,
    resultado_8 text NOT NULL,
    resultado_9 text NOT NULL,
    resultado_10 text NOT NULL,
    resultado_11 text NOT NULL,
    resultado_12 text NOT NULL,
    resultado_13 text NOT NULL,
    resultado_14 text NOT NULL,
    resultado_15 text NOT NULL,
    resultado_16 text NOT NULL,
    resultado_17 text NOT NULL,
    resultado_18 text NOT NULL,
    resultado_19 text NOT NULL,
    resultado_20 text NOT NULL,
    resultado_21 text NOT NULL,
    resultado_22 text NOT NULL,
    resultado_23 text NOT NULL,
    resultado_24 text NOT NULL,
    resultado_25 text NOT NULL,
    resultado_26 text NOT NULL,
    resultado_27 text NOT NULL,
    resultado_28 text NOT NULL,
    resultado_29 text NOT NULL,
    resultado_30 text NOT NULL,
    resultado_31 text NOT NULL,
    resultado_32 text NOT NULL,
    resultado_33 text NOT NULL,
    resultado_34 text NOT NULL,
    resultado_35 text NOT NULL,
    resultado_36 text NOT NULL,
    resultado_37 text NOT NULL,
    resultado_38 text NOT NULL,
    resultado_39 text NOT NULL,
    resultado_40 text NOT NULL,
    resultado_41 text NOT NULL,
    resultado_42 text NOT NULL,
    resultado_43 text NOT NULL,
    resultado_44 text NOT NULL,
    resultado_45 text NOT NULL,
    resultado_46 text NOT NULL,
    resultado_47 text NOT NULL,
    resultado_48 text NOT NULL,
    resultado_49 text NOT NULL,
    resultado_50 text NOT NULL,
    resultado_51 text NOT NULL,
    resultado_52 text NOT NULL,
    resultado_53 text NOT NULL,
    resultado_54 text NOT NULL,
    resultado_55 text NOT NULL,
    resultado_56 text NOT NULL,
    resultado_57 text NOT NULL,
    resultado_58 text NOT NULL,
    resultado_59 text NOT NULL,
    resultado_60 text NOT NULL
);
 )   DROP TABLE psico."Resultado_Test_Sacks";
       psico         heap    postgres    false    6            �            1259    16524    Resultados_test    TABLE     �   CREATE TABLE psico."Resultados_test" (
    "id_Resultado" uuid NOT NULL,
    id_usuario uuid NOT NULL,
    "Tipo_test" smallint NOT NULL,
    puntaje smallint NOT NULL
);
 $   DROP TABLE psico."Resultados_test";
       psico         heap    postgres    false    6            �            1259    16553    User    TABLE     �   CREATE TABLE psico."User" (
    nombre character varying NOT NULL,
    edad integer NOT NULL,
    email text NOT NULL,
    genero text
);
    DROP TABLE psico."User";
       psico         heap    postgres    false    6            �            1259    16517    Usuarios    TABLE     �   CREATE TABLE psico."Usuarios" (
    nombre text NOT NULL,
    email text NOT NULL,
    edad smallint NOT NULL,
    id_usuarios integer NOT NULL
);
    DROP TABLE psico."Usuarios";
       psico         heap    postgres    false    6            �          0    16538    Resultado_Test_Sacks 
   TABLE DATA           ~  COPY psico."Resultado_Test_Sacks" ("id_Resultado", resultado_1, resultado_2, resultado_3, resultado_4, resultado_5, resultado_6, resultado_7, resultado_8, resultado_9, resultado_10, resultado_11, resultado_12, resultado_13, resultado_14, resultado_15, resultado_16, resultado_17, resultado_18, resultado_19, resultado_20, resultado_21, resultado_22, resultado_23, resultado_24, resultado_25, resultado_26, resultado_27, resultado_28, resultado_29, resultado_30, resultado_31, resultado_32, resultado_33, resultado_34, resultado_35, resultado_36, resultado_37, resultado_38, resultado_39, resultado_40, resultado_41, resultado_42, resultado_43, resultado_44, resultado_45, resultado_46, resultado_47, resultado_48, resultado_49, resultado_50, resultado_51, resultado_52, resultado_53, resultado_54, resultado_55, resultado_56, resultado_57, resultado_58, resultado_59, resultado_60) FROM stdin;
    psico          postgres    false    218          �          0    16524    Resultados_test 
   TABLE DATA           \   COPY psico."Resultados_test" ("id_Resultado", id_usuario, "Tipo_test", puntaje) FROM stdin;
    psico          postgres    false    217          �          0    16553    User 
   TABLE DATA           <   COPY psico."User" (nombre, edad, email, genero) FROM stdin;
    psico          postgres    false    219   ;       �          0    16517    Usuarios 
   TABLE DATA           E   COPY psico."Usuarios" (nombre, email, edad, id_usuarios) FROM stdin;
    psico          postgres    false    216   �       _           2606    16537 $   Resultados_test Resultados_test_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY psico."Resultados_test"
    ADD CONSTRAINT "Resultados_test_pkey" PRIMARY KEY ("id_Resultado");
 Q   ALTER TABLE ONLY psico."Resultados_test" DROP CONSTRAINT "Resultados_test_pkey";
       psico            postgres    false    217            a           2606    16577    User User_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY psico."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (nombre);
 ;   ALTER TABLE ONLY psico."User" DROP CONSTRAINT "User_pkey";
       psico            postgres    false    219            ]           2606    16552    Usuarios Usuarios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY psico."Usuarios"
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (id_usuarios);
 C   ALTER TABLE ONLY psico."Usuarios" DROP CONSTRAINT "Usuarios_pkey";
       psico            postgres    false    216            �      x������ � �      �      x������ � �      �   �   x�U�=� �gs���GU7N�dq0$D@$\�޾6KT/O�{�ldB&�WAb������
��Ƕ��yin-��䏢��w`r,�#%���@'��`b�}��):�̾�T�`� �PB�>�qy|��):-B��᭑��I��̓1���H�      �      x������ � �     