PGDMP                           v         	   books_app    10.1    10.1     �
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
           2604    25033    books book_id    DEFAULT     `   ALTER TABLE ONLY books ALTER COLUMN book_id SET DEFAULT nextval('books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    25030    books 
   TABLE DATA               N   COPY books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197   v       �
           0    0    books_book_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('books_book_id_seq', 1, true);
            public       postgres    false    196            q
           2606    25038    books books_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
      x�3�L,-��/�,�4�,�L����� E7     