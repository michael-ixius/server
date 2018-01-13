PGDMP     $    !                 v         	   books_app    10.1    10.1     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    25021 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25030    books    TABLE     �   CREATE TABLE books (
    book_id integer NOT NULL,
    author character varying(300),
    title character varying(300),
    isbn character varying(500),
    image_url character varying(500),
    description text
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    25028    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    6    197            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE books_book_id_seq OWNED BY books.book_id;
            public       postgres    false    196            o
           2604    25039    books book_id    DEFAULT     `   ALTER TABLE ONLY books ALTER COLUMN book_id SET DEFAULT nextval('books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    25030    books 
   TABLE DATA               N   COPY books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   v       �
           0    0    books_book_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('books_book_id_seq', 7, true);
            public       postgres    false    196            q
           2606    25038    books books_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   }  x��T�k7���+�?�οz�$`J����P�I���fw�i5[I�����)�{��]��͛73�QS�%4�4�Ml��Es��N���2Z��C��VL�R���!������Kz�}q�y�9{�=�l�>�1�:=݉���������ا�����o.�����������Y_�Z9ۡ�:?�,2\m��LA�U���h���#SL��S��9F��SzO (:���G!ȁ�x�k���<2r𥞔P�C����`� Z���D�z����򤠁���x'�f���4�?��l��"񧑝C��-���-��%>��Y&�q ՁR���D#��T��99 ��)�24�ԣ���]ቻ���Բ
�/ע��F��Ĩ�K�I�=P�FL<!�d`R*9��4��A��1X��E:@�5�����H���Ě��	��!�� �^h� �.(W&l�F+�S耛i�s� �$>)ѓW1NC��z�G��V��=���:Ӌd� n
2���p�����2 ���ro���{dT�q�j9(G�ܗ��x�1��]<�f�����3t�9Q�t�vr��El$��&c���ɥ��Qy�5ػ"��F�ʴFF�;:���a����S�L�$	6C �"�Ҹ1:����r��*�Qf8L�xT'~�Zˑ㎽Y�S���(���X0K5���V��O�o
�k�O*�u�) �!Ǵ�a^:���Mn8�UY�d,�貹��W�����L�B�l�.����H���t��w�-�뢺Wu��^ս��{��-���7�0d��`<#��Uap-��Fz�э{(6el��ت�Uc���=�mS��[5�jl���~��V��[5��fl�jl�ت�Uc{n�������_7K�     