--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO reidashwill;

--
-- Name: products; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO reidashwill;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO reidashwill;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO reidashwill;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO reidashwill;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO reidashwill;

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-29 15:15:03.579522	2020-05-29 15:15:03.579522
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
468	Adzuki Beans	52	Qatar	2020-05-29 23:43:06.343393	2020-05-29 23:43:06.343393
469	Red Cabbage	65	Faroe Islands	2020-05-29 23:43:06.375598	2020-05-29 23:43:06.375598
470	Wasabi	10	Vanuatu	2020-05-29 23:43:06.399544	2020-05-29 23:43:06.399544
471	Fruit	34	Saint Helena	2020-05-29 23:43:06.422867	2020-05-29 23:43:06.422867
472	Yeast	43	Peru	2020-05-29 23:43:06.446667	2020-05-29 23:43:06.446667
473	Hokkien Noodles	98	South Georgia and the South Sandwich Islands	2020-05-29 23:43:06.469319	2020-05-29 23:43:06.469319
474	Fish Stock	74	Virgin Islands, U.S.	2020-05-29 23:43:06.493168	2020-05-29 23:43:06.493168
475	Tahini	25	Tanzania	2020-05-29 23:43:06.516949	2020-05-29 23:43:06.516949
476	Bok Choy	90	Greenland	2020-05-29 23:43:06.541188	2020-05-29 23:43:06.541188
477	Hot Smoked Salmon	41	Antarctica (the territory South of 60 deg S)	2020-05-29 23:43:06.565246	2020-05-29 23:43:06.565246
478	Brie	13	Congo	2020-05-29 23:43:06.588733	2020-05-29 23:43:06.588733
479	Papaya	52	Switzerland	2020-05-29 23:43:06.612371	2020-05-29 23:43:06.612371
480	Butternut Lettuce	55	Equatorial Guinea	2020-05-29 23:43:06.63581	2020-05-29 23:43:06.63581
481	Almonds	61	Liberia	2020-05-29 23:43:06.66236	2020-05-29 23:43:06.66236
482	Arborio Rice	69	Cocos (Keeling) Islands	2020-05-29 23:43:06.686785	2020-05-29 23:43:06.686785
483	Liver	72	Australia	2020-05-29 23:43:06.711969	2020-05-29 23:43:06.711969
484	Cashews	18	Australia	2020-05-29 23:43:06.735479	2020-05-29 23:43:06.735479
485	File Powder	13	Barbados	2020-05-29 23:43:06.779828	2020-05-29 23:43:06.779828
486	Pork	62	Eritrea	2020-05-29 23:43:06.803161	2020-05-29 23:43:06.803161
487	Dark Chocolate	88	Austria	2020-05-29 23:43:06.828051	2020-05-29 23:43:06.828051
488	Mint	33	Angola	2020-05-29 23:43:06.850919	2020-05-29 23:43:06.850919
489	Wholegrain Bread	73	Netherlands Antilles	2020-05-29 23:43:06.918785	2020-05-29 23:43:06.918785
490	Goji Berry	38	Tokelau	2020-05-29 23:43:06.974352	2020-05-29 23:43:06.974352
491	Cantaloupe	70	Bosnia and Herzegovina	2020-05-29 23:43:07.038822	2020-05-29 23:43:07.038822
492	Goat Cheese	14	American Samoa	2020-05-29 23:43:07.068229	2020-05-29 23:43:07.068229
493	Wattleseed	83	Iran	2020-05-29 23:43:07.091228	2020-05-29 23:43:07.091228
494	Starfruit	40	Mozambique	2020-05-29 23:43:07.114266	2020-05-29 23:43:07.114266
495	Honey	28	Estonia	2020-05-29 23:43:07.13639	2020-05-29 23:43:07.13639
496	Apple Juice	72	Oman	2020-05-29 23:43:07.159629	2020-05-29 23:43:07.159629
497	Thyme	10	Lao People's Democratic Republic	2020-05-29 23:43:07.184677	2020-05-29 23:43:07.184677
498	Amchur	53	Gambia	2020-05-29 23:43:07.217904	2020-05-29 23:43:07.217904
499	Dried Chinese Broccoli	53	Falkland Islands (Malvinas)	2020-05-29 23:43:07.240992	2020-05-29 23:43:07.240992
500	Fennel	53	Germany	2020-05-29 23:43:07.265022	2020-05-29 23:43:07.265022
501	Chinese Cabbage	43	Bolivia	2020-05-29 23:43:07.288255	2020-05-29 23:43:07.288255
502	Raisin	67	Western Sahara	2020-05-29 23:43:07.310587	2020-05-29 23:43:07.310587
503	Star Fruit	58	Equatorial Guinea	2020-05-29 23:43:07.348049	2020-05-29 23:43:07.348049
504	Octopus	83	Singapore	2020-05-29 23:43:07.370475	2020-05-29 23:43:07.370475
505	Barramundi	16	Belgium	2020-05-29 23:43:07.392529	2020-05-29 23:43:07.392529
506	Rockmelon	73	Peru	2020-05-29 23:43:07.414855	2020-05-29 23:43:07.414855
507	Wholewheat Flour	47	Djibouti	2020-05-29 23:43:07.436828	2020-05-29 23:43:07.436828
508	Farmed Prawns	97	Mali	2020-05-29 23:43:07.459063	2020-05-29 23:43:07.459063
509	Almonds	24	Somalia	2020-05-29 23:43:07.484601	2020-05-29 23:43:07.484601
510	Trout	27	Netherlands Antilles	2020-05-29 23:43:07.516488	2020-05-29 23:43:07.516488
511	Cocoa Powder	18	Virgin Islands, British	2020-05-29 23:43:07.538947	2020-05-29 23:43:07.538947
512	Pistachio Nut	68	Italy	2020-05-29 23:43:07.56122	2020-05-29 23:43:07.56122
513	Grapefruit	56	Mauritius	2020-05-29 23:43:07.583782	2020-05-29 23:43:07.583782
514	Bean Sprouts	42	Sudan	2020-05-29 23:43:07.605765	2020-05-29 23:43:07.605765
515	Mozzarella	75	Bouvet Island (Bouvetoya)	2020-05-29 23:43:07.629206	2020-05-29 23:43:07.629206
516	Tahini	93	United States Minor Outlying Islands	2020-05-29 23:43:07.653814	2020-05-29 23:43:07.653814
517	Eggs	43	Netherlands Antilles	2020-05-29 23:43:07.676366	2020-05-29 23:43:07.676366
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.reviews (id, author, content_body, rating, product_id, created_at, updated_at) FROM stdin;
2311	Wesley Crusher	Hic magni eius. Voluptatem illum hic. Repellendus quia earum. Maiores vel .	4	468	2020-05-29 23:43:06.354948	2020-05-29 23:43:06.354948
2312	Hikaru Sulu	Omnis nostrum adipisci. Voluptas illum animi. Eius neque non. Dicta repell.	5	468	2020-05-29 23:43:06.359489	2020-05-29 23:43:06.359489
2313	Julian Bashir	Ab veniam qui. Aut fuga laudantium. Ut eveniet voluptas. Sit et dolores. M.	3	468	2020-05-29 23:43:06.364821	2020-05-29 23:43:06.364821
2314	Kira Nerys	Cumque ullam eius. Blanditiis sunt ab. Et praesentium ullam. Sunt ea quis..	1	468	2020-05-29 23:43:06.368926	2020-05-29 23:43:06.368926
2315	William T. Riker	Deserunt cupiditate rerum. Ea consectetur esse. Est optio eius. Tempore fu.	4	468	2020-05-29 23:43:06.373003	2020-05-29 23:43:06.373003
2316	Jean-Luc Picard	Occaecati voluptate consequatur. Nostrum dolorem rerum. Corrupti sed quae..	2	469	2020-05-29 23:43:06.379947	2020-05-29 23:43:06.379947
2317	Jonathan Archer	Iusto voluptas aut. Voluptas mollitia similique. Qui veritatis quia. Incid.	3	469	2020-05-29 23:43:06.384842	2020-05-29 23:43:06.384842
2318	Data	Ut adipisci voluptas. Quae excepturi deleniti. Quo veritatis sunt. Cumque .	3	469	2020-05-29 23:43:06.389024	2020-05-29 23:43:06.389024
2319	Spock	Molestias ut delectus. Saepe molestiae non. Rerum ducimus quia. Est quasi .	3	469	2020-05-29 23:43:06.392896	2020-05-29 23:43:06.392896
2320	Hikaru Sulu	Et inventore neque. Commodi cupiditate voluptatem. Excepturi et numquam. A.	4	469	2020-05-29 23:43:06.396946	2020-05-29 23:43:06.396946
2321	Geordi La Forge	Magni soluta minima. Maxime blanditiis nemo. Autem dolores quia. Aliquam m.	3	470	2020-05-29 23:43:06.404101	2020-05-29 23:43:06.404101
2322	Jean-Luc Picard	Voluptatibus excepturi eum. Sed consequatur repellendus. Eveniet rem enim..	3	470	2020-05-29 23:43:06.408206	2020-05-29 23:43:06.408206
2323	Tuvok	Tempora eum rerum. Recusandae in modi. Doloremque quas tempore. Qui beatae.	5	470	2020-05-29 23:43:06.412098	2020-05-29 23:43:06.412098
2324	Beverly Crusher	Nam cumque nostrum. Placeat corporis sint. Nisi rem labore. Blanditiis inc.	5	470	2020-05-29 23:43:06.415981	2020-05-29 23:43:06.415981
2325	Kira Nerys	Error ex distinctio. Ratione velit maxime. Nihil velit vel. Tempora tempor.	4	470	2020-05-29 23:43:06.419886	2020-05-29 23:43:06.419886
2326	Pavel Chekov	Sunt libero qui. Ab voluptatem veritatis. Adipisci quod nisi. Fugiat sit e.	2	471	2020-05-29 23:43:06.427075	2020-05-29 23:43:06.427075
2327	Tuvok	Qui impedit neque. Deserunt aut quae. Fugiat enim id. Illo perspiciatis au.	3	471	2020-05-29 23:43:06.431168	2020-05-29 23:43:06.431168
2328	Kes	Natus commodi ut. Quas ipsum in. Modi impedit et. Labore sed explicabo. Of.	4	471	2020-05-29 23:43:06.435127	2020-05-29 23:43:06.435127
2329	Phlox	Et tenetur asperiores. Repellat quia eveniet. Laborum ut inventore. Est pl.	3	471	2020-05-29 23:43:06.438856	2020-05-29 23:43:06.438856
2330	Charles Tucker III	Voluptatem ducimus modi. Ad explicabo aut. Aut ad repellendus. Vitae repre.	2	471	2020-05-29 23:43:06.443662	2020-05-29 23:43:06.443662
2331	Spock	Autem sapiente corrupti. At aperiam nobis. Eligendi rerum odit. Rerum temp.	5	472	2020-05-29 23:43:06.450613	2020-05-29 23:43:06.450613
2332	Jonathan Archer	Quod qui reprehenderit. Numquam non doloremque. Sunt quidem atque. Vel rat.	2	472	2020-05-29 23:43:06.454364	2020-05-29 23:43:06.454364
2333	Travis Mayweather	Doloribus nihil excepturi. Aperiam porro non. Ab qui sunt. Et dolor quo. T.	3	472	2020-05-29 23:43:06.458338	2020-05-29 23:43:06.458338
2334	Miles O'Brien	Tenetur ut veritatis. Vero non fuga. Soluta eos neque. Iste qui inventore..	5	472	2020-05-29 23:43:06.462605	2020-05-29 23:43:06.462605
2335	James Tiberius Kirk	Cupiditate velit similique. Quisquam qui ratione. Voluptas est et. Accusam.	5	472	2020-05-29 23:43:06.466649	2020-05-29 23:43:06.466649
2336	Data	Est inventore autem. Corrupti soluta minus. Animi doloribus qui. Sit id om.	2	473	2020-05-29 23:43:06.473224	2020-05-29 23:43:06.473224
2337	Hikaru Sulu	Ut doloribus asperiores. Illo vel consequuntur. Ut at unde. Quidem in quae.	3	473	2020-05-29 23:43:06.477371	2020-05-29 23:43:06.477371
2338	Deanna Troi	Eius tenetur quasi. Dolorum blanditiis et. Ut iste nemo. Temporibus quidem.	4	473	2020-05-29 23:43:06.481941	2020-05-29 23:43:06.481941
2339	Leonard McCoy	Autem facilis maxime. Sunt sit quibusdam. Aut animi explicabo. Quam omnis .	4	473	2020-05-29 23:43:06.486322	2020-05-29 23:43:06.486322
2340	Leonard McCoy	Voluptatem explicabo atque. Quasi perferendis et. Odit quaerat aspernatur..	4	473	2020-05-29 23:43:06.490414	2020-05-29 23:43:06.490414
2341	Miles O'Brien	Vel doloribus repellat. Animi omnis recusandae. Enim sunt ut. Aperiam in f.	1	474	2020-05-29 23:43:06.497218	2020-05-29 23:43:06.497218
2342	Hikaru Sulu	Excepturi nesciunt nostrum. Nam labore quia. Soluta corrupti mollitia. Dol.	2	474	2020-05-29 23:43:06.501447	2020-05-29 23:43:06.501447
2343	Jadzia Dax	Ut aperiam laborum. Officia ipsam totam. Maiores quis ut. Ea aut error. Do.	2	474	2020-05-29 23:43:06.506302	2020-05-29 23:43:06.506302
2344	Hikaru Sulu	Omnis assumenda a. Quo voluptatum asperiores. Quae quo dolorem. Itaque vol.	5	474	2020-05-29 23:43:06.510268	2020-05-29 23:43:06.510268
2345	Chakotay	Ipsam in qui. Alias non qui. Consequatur rerum qui. Quia in nihil. Praesen.	1	474	2020-05-29 23:43:06.514232	2020-05-29 23:43:06.514232
2346	Chakotay	Qui in nihil. Reprehenderit esse fuga. In eos reiciendis. Aut et est. Pari.	2	475	2020-05-29 23:43:06.521273	2020-05-29 23:43:06.521273
2347	Travis Mayweather	Quaerat nesciunt maxime. Iure earum ipsa. Saepe ipsum asperiores. Adipisci.	5	475	2020-05-29 23:43:06.525777	2020-05-29 23:43:06.525777
2348	The Doctor	Neque perferendis iure. Aspernatur voluptas odio. Laboriosam eaque dolor. .	1	475	2020-05-29 23:43:06.530326	2020-05-29 23:43:06.530326
2349	Kes	Dolor culpa consequuntur. Temporibus quia deserunt. Eos omnis rem. Accusan.	4	475	2020-05-29 23:43:06.53423	2020-05-29 23:43:06.53423
2350	Leonard McCoy	Est voluptas voluptatem. Enim consequatur mollitia. Praesentium mollitia l.	1	475	2020-05-29 23:43:06.538256	2020-05-29 23:43:06.538256
2351	Harry Kim	Maiores possimus veritatis. Alias sunt culpa. Consequatur odio aliquam. Ip.	4	476	2020-05-29 23:43:06.54569	2020-05-29 23:43:06.54569
2352	Deanna Troi	Illum neque odio. At dicta voluptatem. Aperiam blanditiis et. Beatae neces.	4	476	2020-05-29 23:43:06.55033	2020-05-29 23:43:06.55033
2353	Hikaru Sulu	Assumenda magni perferendis. Aut magni non. Id sunt nesciunt. Fugiat corpo.	3	476	2020-05-29 23:43:06.554193	2020-05-29 23:43:06.554193
2354	Jake Sisko	Doloremque non aut. Delectus et repellat. Recusandae ratione ab. Deserunt .	5	476	2020-05-29 23:43:06.558023	2020-05-29 23:43:06.558023
2355	Hikaru Sulu	Nam perferendis facilis. Neque sint quod. Libero eligendi enim. Distinctio.	5	476	2020-05-29 23:43:06.562523	2020-05-29 23:43:06.562523
2356	Quark	Ipsum voluptatem fugit. Occaecati sit adipisci. Esse ut pariatur. Ipsa omn.	5	477	2020-05-29 23:43:06.569236	2020-05-29 23:43:06.569236
2357	Kes	Sed nulla voluptatibus. Sed itaque incidunt. Explicabo aliquid iure. Sed r.	4	477	2020-05-29 23:43:06.573157	2020-05-29 23:43:06.573157
2358	Worf	Impedit et et. Dolor ipsam dolor. Vel officia non. Voluptatem vitae evenie.	4	477	2020-05-29 23:43:06.577241	2020-05-29 23:43:06.577241
2359	Wesley Crusher	Et eius minima. Doloremque quia recusandae. Suscipit officiis reiciendis. .	4	477	2020-05-29 23:43:06.581514	2020-05-29 23:43:06.581514
2360	Leonard McCoy	Ut sunt velit. Tenetur sed consectetur. Amet atque nihil. Necessitatibus q.	5	477	2020-05-29 23:43:06.586156	2020-05-29 23:43:06.586156
2361	Montgomery Scott	Inventore et sint. Est aut nam. Recusandae corrupti quia. Laboriosam odit .	1	478	2020-05-29 23:43:06.592827	2020-05-29 23:43:06.592827
2362	Data	Ex omnis molestias. Eum et corrupti. Nobis est quaerat. Tenetur quo aut. E.	5	478	2020-05-29 23:43:06.597018	2020-05-29 23:43:06.597018
2363	Miles O'Brien	Laboriosam omnis quia. Voluptatem dignissimos aperiam. Voluptatum sed pers.	2	478	2020-05-29 23:43:06.601039	2020-05-29 23:43:06.601039
2364	Hikaru Sulu	Voluptas voluptatem ea. Omnis similique accusamus. Ad omnis vitae. Volupta.	4	478	2020-05-29 23:43:06.60557	2020-05-29 23:43:06.60557
2365	Jonathan Archer	Ratione minima eos. Pariatur ea iusto. Praesentium facilis ut. A et ad. Te.	4	478	2020-05-29 23:43:06.609822	2020-05-29 23:43:06.609822
2366	Geordi La Forge	Ut earum eveniet. Quas consequatur nam. Placeat ea labore. Culpa dolorem r.	4	479	2020-05-29 23:43:06.6163	2020-05-29 23:43:06.6163
2367	Travis Mayweather	Ratione accusamus consectetur. Ea ex perferendis. A sint libero. Cupiditat.	5	479	2020-05-29 23:43:06.620493	2020-05-29 23:43:06.620493
2368	Jonathan Archer	Eaque vel dicta. Placeat quia sed. Aut reiciendis ad. Minus eius odit. Et .	1	479	2020-05-29 23:43:06.625166	2020-05-29 23:43:06.625166
2369	Tom Paris	Asperiores eius sunt. Aut vero voluptatibus. Unde molestiae delectus. Aut .	5	479	2020-05-29 23:43:06.629243	2020-05-29 23:43:06.629243
2370	Neelix	Sint eos mollitia. Doloribus eligendi soluta. Itaque sequi non. Aliquid nu.	5	479	2020-05-29 23:43:06.633263	2020-05-29 23:43:06.633263
2371	Tuvok	Qui minima dicta. Sit aut dolor. Placeat quibusdam aut. Est vero consequat.	4	480	2020-05-29 23:43:06.639669	2020-05-29 23:43:06.639669
2372	Deanna Troi	Nisi assumenda dolore. Quisquam fugiat corporis. Totam hic aspernatur. Max.	5	480	2020-05-29 23:43:06.645577	2020-05-29 23:43:06.645577
2373	Beverly Crusher	Fugiat facilis officia. Vitae eius ut. At natus sint. Doloremque deleniti .	2	480	2020-05-29 23:43:06.649805	2020-05-29 23:43:06.649805
2374	Beverly Crusher	Labore minima earum. Ea nulla est. Et atque explicabo. Neque cum velit. Qu.	1	480	2020-05-29 23:43:06.655013	2020-05-29 23:43:06.655013
2375	Deanna Troi	Expedita dolores et. Ea reiciendis praesentium. Ipsam provident aspernatur.	1	480	2020-05-29 23:43:06.659213	2020-05-29 23:43:06.659213
2376	Seven of Nine	Esse aspernatur beatae. Dolores atque repellendus. Architecto earum conseq.	5	481	2020-05-29 23:43:06.666666	2020-05-29 23:43:06.666666
2377	Kes	Dolorum dolores doloribus. Ipsa et at. Molestiae vero exercitationem. Sit .	4	481	2020-05-29 23:43:06.671072	2020-05-29 23:43:06.671072
2378	Deanna Troi	Vero nulla non. Laudantium ducimus consequuntur. Est hic officiis. Fuga om.	3	481	2020-05-29 23:43:06.674923	2020-05-29 23:43:06.674923
2379	Wesley Crusher	Voluptatem et perspiciatis. Ut numquam et. Modi dolorem voluptas. Unde fug.	1	481	2020-05-29 23:43:06.679236	2020-05-29 23:43:06.679236
2380	Montgomery Scott	Quidem odio voluptatem. Et dignissimos velit. Sequi sit ducimus. Molestiae.	1	481	2020-05-29 23:43:06.683925	2020-05-29 23:43:06.683925
2381	Seven of Nine	Odio pariatur nihil. Fugit repellendus fuga. Repudiandae velit temporibus..	2	482	2020-05-29 23:43:06.690904	2020-05-29 23:43:06.690904
2382	Hikaru Sulu	In doloremque qui. Dolorem deserunt dolorum. Quis voluptas ducimus. Ipsam .	1	482	2020-05-29 23:43:06.695505	2020-05-29 23:43:06.695505
2383	Data	Cupiditate autem ut. Consequatur accusantium distinctio. Enim nam vel. Off.	2	482	2020-05-29 23:43:06.699768	2020-05-29 23:43:06.699768
2384	T'Pol	Ipsum dolor iure. Corporis id incidunt. Deserunt necessitatibus a. Totam d.	2	482	2020-05-29 23:43:06.705134	2020-05-29 23:43:06.705134
2385	Odo	Repellendus quisquam rerum. Sit aut minima. Sed aut et. Odit recusandae ma.	1	482	2020-05-29 23:43:06.709433	2020-05-29 23:43:06.709433
2386	Quark	Odit atque eaque. Ad alias est. Labore alias id. Debitis non et. Non verit.	1	483	2020-05-29 23:43:06.716236	2020-05-29 23:43:06.716236
2387	B'Elanna Torres	Ea tempore temporibus. Voluptate quibusdam excepturi. Consequatur non sit..	1	483	2020-05-29 23:43:06.720278	2020-05-29 23:43:06.720278
2388	Pavel Chekov	Incidunt ut doloremque. Officiis illo eligendi. Illum nobis suscipit. Et c.	4	483	2020-05-29 23:43:06.725156	2020-05-29 23:43:06.725156
2389	Beverly Crusher	Quia quod molestiae. Et quo quia. Doloremque nesciunt quia. Et iure aut. N.	1	483	2020-05-29 23:43:06.729196	2020-05-29 23:43:06.729196
2390	Beverly Crusher	Dolorem rerum consequatur. Accusantium repellat recusandae. Natus architec.	5	483	2020-05-29 23:43:06.733043	2020-05-29 23:43:06.733043
2391	James Tiberius Kirk	Quo dolores velit. Molestiae fuga aut. Hic impedit aut. Sed doloribus dolo.	3	484	2020-05-29 23:43:06.739955	2020-05-29 23:43:06.739955
2392	Travis Mayweather	Omnis sed beatae. Eius ad a. Facere quod eum. Harum libero voluptatibus. L.	2	484	2020-05-29 23:43:06.744788	2020-05-29 23:43:06.744788
2393	Jake Sisko	Eos optio magni. Voluptatum et in. Voluptate recusandae cum. Exercitatione.	5	484	2020-05-29 23:43:06.74889	2020-05-29 23:43:06.74889
2394	Tuvok	Dicta minus corrupti. Cumque perspiciatis expedita. Beatae doloribus qui. .	2	484	2020-05-29 23:43:06.772941	2020-05-29 23:43:06.772941
2395	Hoshi Sato	Animi aut voluptas. Laudantium quis expedita. Qui id quasi. Qui dolor ipsu.	4	484	2020-05-29 23:43:06.777091	2020-05-29 23:43:06.777091
2396	Quark	Quaerat voluptatum ullam. Laborum excepturi ipsum. Reiciendis voluptas ver.	3	485	2020-05-29 23:43:06.78421	2020-05-29 23:43:06.78421
2397	Chakotay	Laudantium delectus sit. Modi eos ut. Magni enim temporibus. Quis eius har.	2	485	2020-05-29 23:43:06.788402	2020-05-29 23:43:06.788402
2398	Jean-Luc Picard	Blanditiis eius quo. Labore rerum mollitia. Aliquid et quasi. Consectetur .	3	485	2020-05-29 23:43:06.792664	2020-05-29 23:43:06.792664
2399	Jake Sisko	Quia dolor consequatur. Voluptatem necessitatibus fugiat. Quod voluptas ve.	4	485	2020-05-29 23:43:06.796301	2020-05-29 23:43:06.796301
2400	Montgomery Scott	Expedita dolorem ducimus. Aut debitis rerum. Iure fuga illum. Qui exercita.	2	485	2020-05-29 23:43:06.800102	2020-05-29 23:43:06.800102
2401	William T. Riker	Et dicta sit. Magni aut enim. Fugit quia numquam. Id qui rem. Consequatur .	5	486	2020-05-29 23:43:06.807703	2020-05-29 23:43:06.807703
2402	Tuvok	Odio debitis omnis. Tenetur et quia. Aliquid ad odit. Nihil repellendus do.	5	486	2020-05-29 23:43:06.813352	2020-05-29 23:43:06.813352
2403	Benjamin Sisko	Quia repudiandae quis. Qui qui doloremque. Qui ex placeat. Quod ducimus ip.	2	486	2020-05-29 23:43:06.817248	2020-05-29 23:43:06.817248
2404	Hikaru Sulu	Earum aperiam eveniet. Voluptatem et dolorem. Eligendi et reiciendis. Omni.	4	486	2020-05-29 23:43:06.821144	2020-05-29 23:43:06.821144
2405	Julian Bashir	Et voluptates est. Voluptatem velit accusamus. Hic et optio. Dolorum quo r.	4	486	2020-05-29 23:43:06.825504	2020-05-29 23:43:06.825504
2406	Seven of Nine	Iure inventore numquam. Ducimus quidem quis. Ipsum recusandae dolores. Opt.	2	487	2020-05-29 23:43:06.832389	2020-05-29 23:43:06.832389
2407	Phlox	Deserunt sint et. Aut sit neque. Reprehenderit facilis quos. Numquam error.	1	487	2020-05-29 23:43:06.836311	2020-05-29 23:43:06.836311
2408	Beverly Crusher	Assumenda at itaque. Nobis nihil ipsa. Accusamus ut ipsam. Id est dolorem..	5	487	2020-05-29 23:43:06.8402	2020-05-29 23:43:06.8402
2409	Worf	Eaque quo dolor. Cum architecto in. Explicabo optio vero. Pariatur natus q.	5	487	2020-05-29 23:43:06.844678	2020-05-29 23:43:06.844678
2410	Benjamin Sisko	Molestias impedit unde. Id sunt libero. Et libero suscipit. Et in sit. Rat.	1	487	2020-05-29 23:43:06.848405	2020-05-29 23:43:06.848405
2411	Kathryn Janeway	Facere et minima. Sed odit necessitatibus. Qui ut ad. Dolore mollitia sint.	4	488	2020-05-29 23:43:06.856637	2020-05-29 23:43:06.856637
2412	Quark	Magnam vel perferendis. Expedita occaecati dolorum. Mollitia laudantium mi.	4	488	2020-05-29 23:43:06.860325	2020-05-29 23:43:06.860325
2413	Quark	Inventore omnis nemo. Ab et quis. Consectetur distinctio est. Vel deserunt.	5	488	2020-05-29 23:43:06.865305	2020-05-29 23:43:06.865305
2414	Jake Sisko	Placeat unde ut. Expedita omnis porro. Facere maiores beatae. Sed amet quo.	2	488	2020-05-29 23:43:06.91028	2020-05-29 23:43:06.91028
2415	Tuvok	Reiciendis mollitia in. Commodi dolorum doloribus. Sit corporis pariatur. .	4	488	2020-05-29 23:43:06.915135	2020-05-29 23:43:06.915135
2416	Natasha Yar	Sit repudiandae ut. Explicabo nulla ut. Quis non quia. Vel quam quo. Saepe.	2	489	2020-05-29 23:43:06.930296	2020-05-29 23:43:06.930296
2417	Nyota Uhuru	At et rerum. Aut est voluptatem. Nam sit repellat. Cum commodi aut. Repudi.	4	489	2020-05-29 23:43:06.957196	2020-05-29 23:43:06.957196
2418	Wesley Crusher	Porro vel quas. Modi labore enim. Iste a quia. Inventore et voluptatem. Hi.	1	489	2020-05-29 23:43:06.961431	2020-05-29 23:43:06.961431
2419	Chakotay	Quia praesentium corrupti. Necessitatibus autem repellat. Hic est ut. Veri.	4	489	2020-05-29 23:43:06.966192	2020-05-29 23:43:06.966192
2420	Charles Tucker III	Animi laboriosam est. Quibusdam provident labore. Quia omnis sint. Quia ne.	2	489	2020-05-29 23:43:06.971491	2020-05-29 23:43:06.971491
2421	B'Elanna Torres	Ea cumque earum. Tempora asperiores nesciunt. Necessitatibus consequatur l.	3	490	2020-05-29 23:43:06.978425	2020-05-29 23:43:06.978425
2422	Natasha Yar	Aliquid quia non. Laboriosam rerum error. Molestiae incidunt non. Perferen.	1	490	2020-05-29 23:43:06.982773	2020-05-29 23:43:06.982773
2423	Malcolm Reed	Quasi ut ut. Et laudantium sit. Aut rerum explicabo. Rerum qui a. Repudian.	5	490	2020-05-29 23:43:06.986693	2020-05-29 23:43:06.986693
2424	Charles Tucker III	Non et rem. Deleniti hic temporibus. Minus reiciendis ducimus. Dolores dol.	1	490	2020-05-29 23:43:06.990464	2020-05-29 23:43:06.990464
2425	Miles O'Brien	Laudantium voluptas consequatur. Voluptates officia labore. Vel id iure. N.	5	490	2020-05-29 23:43:06.995064	2020-05-29 23:43:06.995064
2426	Natasha Yar	Aut sapiente officiis. Omnis autem dolor. Cum hic pariatur. Aliquid delect.	2	491	2020-05-29 23:43:07.044684	2020-05-29 23:43:07.044684
2427	Julian Bashir	Ab qui voluptas. Explicabo exercitationem culpa. Consectetur a hic. In qua.	1	491	2020-05-29 23:43:07.051662	2020-05-29 23:43:07.051662
2428	Julian Bashir	Sint iure labore. Numquam animi at. Excepturi enim repellendus. Suscipit e.	2	491	2020-05-29 23:43:07.05657	2020-05-29 23:43:07.05657
2429	Montgomery Scott	Laudantium cumque culpa. Rem nostrum perspiciatis. Vel non ea. Quis quaera.	2	491	2020-05-29 23:43:07.060782	2020-05-29 23:43:07.060782
2430	The Doctor	Sapiente est pariatur. Doloremque ut nesciunt. Adipisci nulla voluptatem. .	2	491	2020-05-29 23:43:07.065556	2020-05-29 23:43:07.065556
2431	Data	Quasi mollitia ab. Est vero qui. Voluptatum et dolor. Fugiat autem delenit.	4	492	2020-05-29 23:43:07.072126	2020-05-29 23:43:07.072126
2432	Pavel Chekov	Ut cumque est. Optio et veniam. Alias voluptatem tempora. Assumenda quas s.	3	492	2020-05-29 23:43:07.076314	2020-05-29 23:43:07.076314
2433	Quark	Repellat odit eveniet. Consequatur nobis atque. Dicta voluptas occaecati. .	1	492	2020-05-29 23:43:07.080226	2020-05-29 23:43:07.080226
2434	Tuvok	Ipsam non maiores. Autem vel qui. Sit ut recusandae. Assumenda iure qui. D.	1	492	2020-05-29 23:43:07.084957	2020-05-29 23:43:07.084957
2435	Tom Paris	Explicabo tempora delectus. Totam ducimus mollitia. Hic dolorem maiores. F.	1	492	2020-05-29 23:43:07.088774	2020-05-29 23:43:07.088774
2436	The Doctor	Aut labore aut. Repellendus officiis quia. Et sit maiores. Omnis placeat p.	3	493	2020-05-29 23:43:07.095177	2020-05-29 23:43:07.095177
2437	The Doctor	Voluptates voluptas dicta. Aut qui tempora. Qui rerum et. Ullam dolor mole.	1	493	2020-05-29 23:43:07.099057	2020-05-29 23:43:07.099057
2438	Travis Mayweather	Non dolores animi. Labore ut officia. Atque doloribus quas. Et repellat no.	4	493	2020-05-29 23:43:07.103679	2020-05-29 23:43:07.103679
2439	Jean-Luc Picard	Dolorem omnis est. Pariatur modi consequatur. Quisquam facere ducimus. Odi.	3	493	2020-05-29 23:43:07.107935	2020-05-29 23:43:07.107935
2440	Odo	Et fuga ut. Optio repellat consequatur. Corrupti maxime explicabo. Delectu.	2	493	2020-05-29 23:43:07.111842	2020-05-29 23:43:07.111842
2441	James Tiberius Kirk	Ea dolorem velit. Quam explicabo voluptas. Et est velit. Rerum iste eius. .	2	494	2020-05-29 23:43:07.117897	2020-05-29 23:43:07.117897
2442	Neelix	Sequi excepturi architecto. Tempore ut sequi. Perspiciatis fugiat delectus.	2	494	2020-05-29 23:43:07.12198	2020-05-29 23:43:07.12198
2443	Nyota Uhuru	Atque qui fuga. Ut distinctio non. Unde aut dolorum. Error ad ut. Sunt exp.	1	494	2020-05-29 23:43:07.126178	2020-05-29 23:43:07.126178
2444	Jean-Luc Picard	Voluptatem commodi reprehenderit. Omnis dolorem ducimus. Possimus reprehen.	4	494	2020-05-29 23:43:07.129948	2020-05-29 23:43:07.129948
2445	T'Pol	Aut eos sint. Et quis rerum. Quis consectetur aut. In fuga sint. Nam accus.	4	494	2020-05-29 23:43:07.133899	2020-05-29 23:43:07.133899
2446	Montgomery Scott	Aperiam sed atque. Aut minima qui. Consequatur dolorem voluptas. Iusto est.	3	495	2020-05-29 23:43:07.140957	2020-05-29 23:43:07.140957
2447	Kathryn Janeway	Corrupti fugit officiis. Et velit excepturi. Qui dolores perspiciatis. Ali.	2	495	2020-05-29 23:43:07.145685	2020-05-29 23:43:07.145685
2448	Kira Nerys	Ex doloribus provident. Rerum deleniti a. Suscipit numquam et. Porro incid.	2	495	2020-05-29 23:43:07.149553	2020-05-29 23:43:07.149553
2449	Jake Sisko	Amet ut adipisci. Ea at omnis. Et modi labore. Beatae quidem accusantium. .	1	495	2020-05-29 23:43:07.153214	2020-05-29 23:43:07.153214
2450	Natasha Yar	Quia et et. Et ut quia. Quia ut sit. Quaerat soluta dolore. Debitis perspi.	3	495	2020-05-29 23:43:07.157254	2020-05-29 23:43:07.157254
2451	Benjamin Sisko	Qui consequatur eius. Odio voluptate repellendus. Aut nemo et. Voluptates .	2	496	2020-05-29 23:43:07.164137	2020-05-29 23:43:07.164137
2452	Kira Nerys	Autem accusantium voluptatum. Corporis officiis eum. Nesciunt tempore est..	1	496	2020-05-29 23:43:07.168149	2020-05-29 23:43:07.168149
2453	T'Pol	Magnam dolorem sed. Accusantium et nam. Velit rerum deleniti. Impedit arch.	3	496	2020-05-29 23:43:07.17189	2020-05-29 23:43:07.17189
2454	T'Pol	Est et ut. Error ea officiis. Minus cumque soluta. Sint eaque ducimus. Eum.	5	496	2020-05-29 23:43:07.175453	2020-05-29 23:43:07.175453
2455	Jonathan Archer	Labore id molestias. Et qui laboriosam. Ut eius doloribus. Deserunt sed vo.	2	496	2020-05-29 23:43:07.180001	2020-05-29 23:43:07.180001
2456	Beverly Crusher	Eos minus excepturi. Quaerat voluptatem dolore. Tempora dignissimos volupt.	3	497	2020-05-29 23:43:07.190121	2020-05-29 23:43:07.190121
2457	Hikaru Sulu	Aut dolores et. Maiores neque molestias. Qui officiis vero. Molestiae sed .	3	497	2020-05-29 23:43:07.198163	2020-05-29 23:43:07.198163
2458	Miles O'Brien	Quis et ut. Incidunt sint dignissimos. Facilis sint delectus. Fuga itaque .	1	497	2020-05-29 23:43:07.203724	2020-05-29 23:43:07.203724
2459	Jadzia Dax	Laudantium rerum accusamus. Est et aspernatur. Expedita ut minima. Delectu.	2	497	2020-05-29 23:43:07.209802	2020-05-29 23:43:07.209802
2460	Montgomery Scott	Modi quo harum. Iste deserunt velit. At et eos. Consequatur suscipit qui. .	5	497	2020-05-29 23:43:07.215428	2020-05-29 23:43:07.215428
2461	Harry Kim	Eveniet consequatur illo. Aut eum omnis. Assumenda commodi rem. Reprehende.	4	498	2020-05-29 23:43:07.222457	2020-05-29 23:43:07.222457
2462	Chakotay	Molestiae illo debitis. Ex ea illo. Illum sunt quod. Quo earum rem. Facere.	2	498	2020-05-29 23:43:07.226729	2020-05-29 23:43:07.226729
2463	Worf	Dolorem provident fuga. Non voluptatibus quod. Fugit quam enim. Non pariat.	5	498	2020-05-29 23:43:07.230634	2020-05-29 23:43:07.230634
2464	Jadzia Dax	Ut sunt sed. Molestias magnam assumenda. Consectetur doloremque tempore. I.	2	498	2020-05-29 23:43:07.234582	2020-05-29 23:43:07.234582
2465	William T. Riker	Animi ducimus reiciendis. Occaecati aliquam est. Reprehenderit dignissimos.	5	498	2020-05-29 23:43:07.238283	2020-05-29 23:43:07.238283
2466	Geordi La Forge	Voluptas impedit officiis. Omnis et est. Consequatur illum velit. Iusto ve.	2	499	2020-05-29 23:43:07.245682	2020-05-29 23:43:07.245682
2467	Data	Architecto et qui. Praesentium iste ducimus. Ipsum id dolorem. Voluptates .	3	499	2020-05-29 23:43:07.249854	2020-05-29 23:43:07.249854
2468	William T. Riker	Neque laudantium assumenda. Dolor voluptas quia. Optio qui asperiores. Lab.	5	499	2020-05-29 23:43:07.253895	2020-05-29 23:43:07.253895
2469	Seven of Nine	Aut a totam. Fugiat consequatur accusantium. Qui dolorem aliquid. Architec.	5	499	2020-05-29 23:43:07.25761	2020-05-29 23:43:07.25761
2470	Jonathan Archer	Et sunt enim. Quis harum architecto. Doloribus illo et. Quia odit providen.	5	499	2020-05-29 23:43:07.262256	2020-05-29 23:43:07.262256
2471	Kes	Eveniet deleniti molestias. Labore dolores magni. Voluptates magni explica.	3	500	2020-05-29 23:43:07.268748	2020-05-29 23:43:07.268748
2472	Wesley Crusher	Aut dolorem magni. Quae atque occaecati. Similique aperiam et. Unde eos au.	1	500	2020-05-29 23:43:07.272717	2020-05-29 23:43:07.272717
2473	Kira Nerys	Officia qui expedita. Magnam impedit est. Aut provident dicta. Tenetur non.	3	500	2020-05-29 23:43:07.276604	2020-05-29 23:43:07.276604
2474	Tom Paris	Corrupti aut maiores. Eum odio quisquam. Necessitatibus labore eaque. Nisi.	5	500	2020-05-29 23:43:07.280545	2020-05-29 23:43:07.280545
2475	The Doctor	Impedit eveniet eum. Nihil aut dolorum. Voluptatibus earum enim. Dolorum i.	5	500	2020-05-29 23:43:07.285243	2020-05-29 23:43:07.285243
2476	Neelix	Dignissimos accusamus nihil. Dolores dolore vero. Accusamus veritatis moll.	3	501	2020-05-29 23:43:07.291913	2020-05-29 23:43:07.291913
2477	Kathryn Janeway	Tempora adipisci nam. Quis amet suscipit. Officia quia et. Dolor voluptas .	4	501	2020-05-29 23:43:07.295763	2020-05-29 23:43:07.295763
2478	Miles O'Brien	Et ut est. A voluptas aut. Eos vel ullam. Ut qui fugit. Pariatur necessita.	3	501	2020-05-29 23:43:07.299416	2020-05-29 23:43:07.299416
2479	William T. Riker	Est excepturi dolorem. Voluptas temporibus sequi. Quidem consectetur ea. E.	3	501	2020-05-29 23:43:07.303868	2020-05-29 23:43:07.303868
2480	The Doctor	Impedit eum eius. Quasi culpa placeat. Voluptas aut blanditiis. Expedita c.	2	501	2020-05-29 23:43:07.308112	2020-05-29 23:43:07.308112
2481	Julian Bashir	Molestias exercitationem dolores. Ipsum quisquam fugiat. Porro iusto sint..	1	502	2020-05-29 23:43:07.314636	2020-05-29 23:43:07.314636
2482	Montgomery Scott	Qui minus perferendis. Doloremque ut nesciunt. Ratione quas vitae. Incidun.	1	502	2020-05-29 23:43:07.318659	2020-05-29 23:43:07.318659
2483	Jake Sisko	Id et expedita. Ut exercitationem minima. Nulla delectus nihil. Architecto.	3	502	2020-05-29 23:43:07.322706	2020-05-29 23:43:07.322706
2484	Neelix	Architecto cupiditate eos. Qui non aut. Ut soluta omnis. Dolorem veritatis.	2	502	2020-05-29 23:43:07.340767	2020-05-29 23:43:07.340767
2485	Deanna Troi	Beatae velit quibusdam. Et enim tempore. Voluptatum at sed. Minus ut est. .	2	502	2020-05-29 23:43:07.345305	2020-05-29 23:43:07.345305
2486	Tuvok	In alias voluptatem. Omnis modi iure. Dolore aut consequuntur. Doloremque .	1	503	2020-05-29 23:43:07.352083	2020-05-29 23:43:07.352083
2487	Natasha Yar	Quia est vitae. Et voluptatibus porro. Iure soluta quas. Magni voluptas es.	4	503	2020-05-29 23:43:07.355932	2020-05-29 23:43:07.355932
2488	Tom Paris	Tenetur esse asperiores. Molestiae quia necessitatibus. Sunt et sunt. Inve.	4	503	2020-05-29 23:43:07.3598	2020-05-29 23:43:07.3598
2489	Travis Mayweather	Sed et eius. Quibusdam distinctio tenetur. Incidunt eaque corporis. Volupt.	2	503	2020-05-29 23:43:07.364353	2020-05-29 23:43:07.364353
2490	Wesley Crusher	Commodi sapiente exercitationem. Autem perferendis vero. Nihil hic aliquid.	4	503	2020-05-29 23:43:07.368077	2020-05-29 23:43:07.368077
2491	Geordi La Forge	Voluptatibus magnam excepturi. Quo dolorem unde. Modi illum aut. Cupiditat.	5	504	2020-05-29 23:43:07.374263	2020-05-29 23:43:07.374263
2492	Hikaru Sulu	Aut cupiditate vitae. Quasi doloremque laudantium. Et soluta ut. Quo quos .	2	504	2020-05-29 23:43:07.378235	2020-05-29 23:43:07.378235
2493	Jadzia Dax	Earum qui quis. Amet illum similique. Quisquam numquam quibusdam. Beatae p.	2	504	2020-05-29 23:43:07.382464	2020-05-29 23:43:07.382464
2494	Travis Mayweather	Sed perspiciatis numquam. Voluptas eligendi et. Nihil quasi ut. Est volupt.	3	504	2020-05-29 23:43:07.386671	2020-05-29 23:43:07.386671
2495	Kira Nerys	Harum tenetur occaecati. Tenetur aperiam quidem. Possimus sapiente aliquam.	1	504	2020-05-29 23:43:07.390211	2020-05-29 23:43:07.390211
2496	Hoshi Sato	Similique sequi ratione. Illo perferendis non. Qui placeat eveniet. Est di.	4	505	2020-05-29 23:43:07.396238	2020-05-29 23:43:07.396238
2497	Data	Nisi consequatur ut. Voluptate magni corporis. Consequatur sunt aut. Quo p.	1	505	2020-05-29 23:43:07.400237	2020-05-29 23:43:07.400237
2498	Odo	Alias itaque porro. Sunt quaerat suscipit. Soluta esse est. Magni vel pari.	2	505	2020-05-29 23:43:07.404803	2020-05-29 23:43:07.404803
2499	Pavel Chekov	Est laboriosam ut. Odio ut totam. Soluta voluptatibus aut. Et deleniti et..	1	505	2020-05-29 23:43:07.408607	2020-05-29 23:43:07.408607
2500	T'Pol	Quisquam voluptas magni. Aut eaque consequatur. Delectus tempore corporis..	3	505	2020-05-29 23:43:07.412478	2020-05-29 23:43:07.412478
2501	Quark	Veniam quis ea. Ut accusamus porro. Impedit rem eos. Perferendis voluptas .	4	506	2020-05-29 23:43:07.418727	2020-05-29 23:43:07.418727
2502	Quark	Doloremque nihil labore. Cupiditate omnis officiis. Expedita et quia. Sapi.	4	506	2020-05-29 23:43:07.423106	2020-05-29 23:43:07.423106
2503	Kes	Adipisci repellendus in. Ducimus sed perspiciatis. Vitae occaecati porro. .	5	506	2020-05-29 23:43:07.427215	2020-05-29 23:43:07.427215
2504	Natasha Yar	Odio vero officiis. Non et eos. Ut et ducimus. Eaque ut a. Alias autem qua.	4	506	2020-05-29 23:43:07.430915	2020-05-29 23:43:07.430915
2505	Wesley Crusher	Reprehenderit ut cupiditate. Blanditiis eaque aut. Facere voluptatum praes.	5	506	2020-05-29 23:43:07.434509	2020-05-29 23:43:07.434509
2506	Wesley Crusher	Corporis magnam temporibus. Animi aspernatur voluptatem. Et numquam distin.	4	507	2020-05-29 23:43:07.440479	2020-05-29 23:43:07.440479
2507	Benjamin Sisko	Quisquam autem aut. Et unde eos. Pariatur assumenda qui. Tenetur excepturi.	3	507	2020-05-29 23:43:07.445074	2020-05-29 23:43:07.445074
2508	Geordi La Forge	Qui aut architecto. Incidunt et ducimus. Officiis cupiditate consequatur. .	4	507	2020-05-29 23:43:07.449001	2020-05-29 23:43:07.449001
2509	William T. Riker	Ut hic provident. Fuga est vitae. Et inventore non. Laboriosam doloremque .	4	507	2020-05-29 23:43:07.452781	2020-05-29 23:43:07.452781
2510	Julian Bashir	Quisquam voluptates exercitationem. Quia et tenetur. Rerum possimus modi. .	3	507	2020-05-29 23:43:07.456694	2020-05-29 23:43:07.456694
2511	Montgomery Scott	Numquam eos eligendi. Reiciendis nobis et. Ut laborum maiores. Et numquam .	5	508	2020-05-29 23:43:07.463202	2020-05-29 23:43:07.463202
2512	James Tiberius Kirk	Voluptates minima occaecati. Molestiae suscipit et. Omnis dolorem optio. D.	4	508	2020-05-29 23:43:07.467436	2020-05-29 23:43:07.467436
2513	Chakotay	Delectus adipisci eos. Eos animi consequatur. Quae ea quam. Quo dolores am.	3	508	2020-05-29 23:43:07.471269	2020-05-29 23:43:07.471269
2514	Jean-Luc Picard	Nostrum minus nesciunt. Dolor deleniti minus. Repellat doloremque corrupti.	5	508	2020-05-29 23:43:07.474799	2020-05-29 23:43:07.474799
2515	Kira Nerys	Neque sit laboriosam. Sunt veniam et. Ut ad ducimus. Ipsa est dolores. Qui.	2	508	2020-05-29 23:43:07.479202	2020-05-29 23:43:07.479202
2516	Jean-Luc Picard	Quia qui nostrum. Minus aut sunt. Aut excepturi ratione. Voluptatum suscip.	3	509	2020-05-29 23:43:07.491842	2020-05-29 23:43:07.491842
2517	Spock	Eum est corporis. Est eaque harum. Aut ut voluptate. Suscipit dignissimos .	4	509	2020-05-29 23:43:07.497142	2020-05-29 23:43:07.497142
2518	Tuvok	Molestiae cum quaerat. Consequatur ducimus ipsum. Ea delectus aliquam. Vit.	5	509	2020-05-29 23:43:07.501949	2020-05-29 23:43:07.501949
2519	Harry Kim	Inventore ut sed. Repellendus saepe ut. Ipsam iure molestiae. Eos hic eius.	4	509	2020-05-29 23:43:07.508431	2020-05-29 23:43:07.508431
2520	Kathryn Janeway	Eum voluptas voluptatem. Eligendi vel pariatur. Autem voluptate quas. Plac.	1	509	2020-05-29 23:43:07.513736	2020-05-29 23:43:07.513736
2521	James Tiberius Kirk	Reiciendis minima rerum. Modi molestiae deleniti. Earum est ut. Laboriosam.	2	510	2020-05-29 23:43:07.52043	2020-05-29 23:43:07.52043
2522	Deanna Troi	Exercitationem error eaque. Atque eum quas. Rem consequatur voluptatem. Qu.	3	510	2020-05-29 23:43:07.525282	2020-05-29 23:43:07.525282
2523	T'Pol	Blanditiis libero qui. Minus natus accusantium. Voluptates sed dolorem. Qu.	4	510	2020-05-29 23:43:07.529199	2020-05-29 23:43:07.529199
2524	Julian Bashir	Omnis animi impedit. Nulla doloremque qui. Voluptatibus excepturi eius. Qu.	1	510	2020-05-29 23:43:07.532828	2020-05-29 23:43:07.532828
2525	Kes	Dolorem libero unde. Est vel dignissimos. Ipsum aspernatur at. Voluptatem .	3	510	2020-05-29 23:43:07.536358	2020-05-29 23:43:07.536358
2526	James Tiberius Kirk	Eum vel voluptatem. Placeat ut quaerat. Repellendus id perferendis. Conseq.	2	511	2020-05-29 23:43:07.543251	2020-05-29 23:43:07.543251
2527	Malcolm Reed	Provident qui consectetur. Impedit sequi nemo. Aut ipsum ut. Reprehenderit.	2	511	2020-05-29 23:43:07.547366	2020-05-29 23:43:07.547366
2528	Leonard McCoy	Exercitationem quo doloribus. Iste dolores debitis. Doloribus consectetur .	2	511	2020-05-29 23:43:07.550997	2020-05-29 23:43:07.550997
2529	Tom Paris	Nihil et officia. Quia quae necessitatibus. Et eos tempora. Cupiditate in .	3	511	2020-05-29 23:43:07.554812	2020-05-29 23:43:07.554812
2530	Montgomery Scott	Enim quo reprehenderit. Veritatis totam ab. Esse neque molestias. Ea volup.	5	511	2020-05-29 23:43:07.558405	2020-05-29 23:43:07.558405
2531	Leonard McCoy	Fugit pariatur sint. Ducimus nulla earum. A aut reiciendis. Et ipsa et. Et.	1	512	2020-05-29 23:43:07.56555	2020-05-29 23:43:07.56555
2532	Montgomery Scott	Sint deserunt ab. Autem non eum. A aut odio. Rerum ipsa qui. Ut aliquam te.	3	512	2020-05-29 23:43:07.569382	2020-05-29 23:43:07.569382
2533	Quark	Quidem aliquam aspernatur. Animi quis officiis. Omnis voluptate corrupti. .	4	512	2020-05-29 23:43:07.573386	2020-05-29 23:43:07.573386
2534	Quark	Illo voluptatem dolor. Facilis velit incidunt. Suscipit commodi et. Maiore.	2	512	2020-05-29 23:43:07.577059	2020-05-29 23:43:07.577059
2535	Harry Kim	Fuga cumque veritatis. Id repellendus dolores. Rerum omnis alias. Eos porr.	3	512	2020-05-29 23:43:07.580894	2020-05-29 23:43:07.580894
2536	Hikaru Sulu	Consequatur et non. Ea at non. Consequuntur repudiandae et. Sequi iure vol.	5	513	2020-05-29 23:43:07.587819	2020-05-29 23:43:07.587819
2537	Wesley Crusher	Animi exercitationem et. Totam rerum dolorem. Expedita aut eaque. Rerum qu.	3	513	2020-05-29 23:43:07.591433	2020-05-29 23:43:07.591433
2538	Chakotay	Rerum cumque est. Doloribus veniam aut. Minus possimus facere. Enim quia r.	3	513	2020-05-29 23:43:07.595282	2020-05-29 23:43:07.595282
2539	The Doctor	Ullam tenetur dolores. Et molestiae qui. Molestiae occaecati saepe. Et ass.	1	513	2020-05-29 23:43:07.598949	2020-05-29 23:43:07.598949
2540	The Doctor	Sint ipsam sapiente. Libero consequatur quo. Non eos debitis. Incidunt rer.	4	513	2020-05-29 23:43:07.603087	2020-05-29 23:43:07.603087
2541	Phlox	Alias illum similique. Ad inventore animi. Debitis quis illo. Consequatur .	4	514	2020-05-29 23:43:07.609749	2020-05-29 23:43:07.609749
2542	Jake Sisko	Est fuga illo. Delectus rerum ea. Accusantium soluta qui. Dolor amet corpo.	5	514	2020-05-29 23:43:07.61358	2020-05-29 23:43:07.61358
2543	Jean-Luc Picard	Assumenda debitis veniam. Perspiciatis quia at. Nihil beatae nesciunt. Ver.	2	514	2020-05-29 23:43:07.617156	2020-05-29 23:43:07.617156
2544	Phlox	Reprehenderit est rerum. Soluta est quia. Itaque dolores minus. Et consequ.	3	514	2020-05-29 23:43:07.621806	2020-05-29 23:43:07.621806
2545	Kes	Ut aut velit. Ut quisquam eaque. Enim ullam nemo. Ut sint ipsa. Quas est n.	4	514	2020-05-29 23:43:07.626387	2020-05-29 23:43:07.626387
2546	T'Pol	Aut est voluptate. Ullam sunt illo. Dignissimos laborum fugit. Exercitatio.	2	515	2020-05-29 23:43:07.633487	2020-05-29 23:43:07.633487
2547	Deanna Troi	Voluptatibus aut velit. Dolores sed sint. Culpa enim nostrum. Odio dolorem.	3	515	2020-05-29 23:43:07.637614	2020-05-29 23:43:07.637614
2548	Worf	Aliquid quia voluptatibus. Ducimus excepturi eveniet. Autem molestiae nequ.	3	515	2020-05-29 23:43:07.64304	2020-05-29 23:43:07.64304
2549	Tom Paris	Fuga consequatur voluptate. Provident nihil velit. Beatae molestiae est. R.	1	515	2020-05-29 23:43:07.647518	2020-05-29 23:43:07.647518
2550	Odo	Sed illo doloribus. Voluptatem et qui. Ut et animi. Eum fugit consequatur..	4	515	2020-05-29 23:43:07.651245	2020-05-29 23:43:07.651245
2551	Pavel Chekov	Accusantium quia qui. Quis sit voluptas. Consectetur voluptatibus perferen.	2	516	2020-05-29 23:43:07.657458	2020-05-29 23:43:07.657458
2552	William T. Riker	Fugit omnis dolor. Soluta rerum fugit. Maiores ut cum. Aspernatur voluptat.	3	516	2020-05-29 23:43:07.661581	2020-05-29 23:43:07.661581
2553	Deanna Troi	Eum ipsam ut. Minima delectus necessitatibus. Dolorum quasi et. Quae eaque.	4	516	2020-05-29 23:43:07.666374	2020-05-29 23:43:07.666374
2554	Hikaru Sulu	Et placeat sit. Maxime sequi tenetur. Debitis at eligendi. Commodi numquam.	3	516	2020-05-29 23:43:07.670336	2020-05-29 23:43:07.670336
2555	Seven of Nine	Exercitationem reprehenderit nemo. Ad distinctio sed. Est esse eum. Qui iu.	1	516	2020-05-29 23:43:07.67392	2020-05-29 23:43:07.67392
2556	Travis Mayweather	Aut architecto beatae. Qui molestiae sit. Accusantium est qui. Nihil et ne.	1	517	2020-05-29 23:43:07.680408	2020-05-29 23:43:07.680408
2557	Kathryn Janeway	Totam aut quia. Quia maxime nam. Reprehenderit quia voluptates. Aperiam ut.	5	517	2020-05-29 23:43:07.684921	2020-05-29 23:43:07.684921
2558	Jean-Luc Picard	Voluptas ut veniam. Beatae nemo quos. Delectus unde ullam. Voluptas verita.	3	517	2020-05-29 23:43:07.688983	2020-05-29 23:43:07.688983
2559	Chakotay	Corporis dolorum temporibus. Libero consectetur molestias. Doloremque repr.	5	517	2020-05-29 23:43:07.692682	2020-05-29 23:43:07.692682
2560	Jean-Luc Picard	Et soluta sequi. Dolorum delectus sequi. Sunt culpa esse. Vel dolorem magn.	2	517	2020-05-29 23:43:07.696431	2020-05-29 23:43:07.696431
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.schema_migrations (version) FROM stdin;
20200529151244
20200529151704
20200529152750
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.products_id_seq', 517, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.reviews_id_seq', 2560, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

