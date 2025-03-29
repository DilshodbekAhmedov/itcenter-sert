--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.17 (Ubuntu 14.17-0ubuntu0.22.04.1)

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
-- Name: certificate_category; Type: TABLE; Schema: public; Owner: cert_user
--

CREATE TABLE public.certificate_category (
    id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE public.certificate_category OWNER TO cert_user;

--
-- Name: certificate_category_id_seq; Type: SEQUENCE; Schema: public; Owner: cert_user
--

CREATE SEQUENCE public.certificate_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_category_id_seq OWNER TO cert_user;

--
-- Name: certificate_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cert_user
--

ALTER SEQUENCE public.certificate_category_id_seq OWNED BY public.certificate_category.id;


--
-- Name: certificates; Type: TABLE; Schema: public; Owner: cert_user
--

CREATE TABLE public.certificates (
    id bigint NOT NULL,
    date date NOT NULL,
    info character varying(255),
    is_student_man boolean NOT NULL,
    student_name character varying(255),
    place integer NOT NULL,
    category_id bigint NOT NULL
);


ALTER TABLE public.certificates OWNER TO cert_user;

--
-- Name: certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: cert_user
--

CREATE SEQUENCE public.certificates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificates_id_seq OWNER TO cert_user;

--
-- Name: certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cert_user
--

ALTER SEQUENCE public.certificates_id_seq OWNED BY public.certificates.id;


--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: cert_user
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO cert_user;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: cert_user
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO cert_user;

--
-- Name: users; Type: TABLE; Schema: public; Owner: cert_user
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(255),
    name character varying(255),
    password character varying(255),
    role character varying(255)
);


ALTER TABLE public.users OWNER TO cert_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cert_user
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cert_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cert_user
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: certificate_category id; Type: DEFAULT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.certificate_category ALTER COLUMN id SET DEFAULT nextval('public.certificate_category_id_seq'::regclass);


--
-- Name: certificates id; Type: DEFAULT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.certificates ALTER COLUMN id SET DEFAULT nextval('public.certificates_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: certificate_category; Type: TABLE DATA; Schema: public; Owner: cert_user
--

COPY public.certificate_category (id, name) FROM stdin;
1	Back-end dasturlash
2	Front-end dasturlash
3	Kompyuter savodxonligi
4	Robototexnika
5	Full stack
6	Grafik dizayn 
7	AutoCad va 3DS MAX
8	<< Creating Android applications >>
9	Creating Android applications
10	Coding programmer
\.


--
-- Data for Name: certificates; Type: TABLE DATA; Schema: public; Owner: cert_user
--

COPY public.certificates (id, date, info, is_student_man, student_name, place, category_id) FROM stdin;
1	2023-03-03	INFO	t	Dilshodbek Ahmedov	1	5
1263	2023-04-04	INFO	f	Jozilova Nodirabegim	3	3
1264	2023-03-06	INFO	f	Karimova Dilnoza 	3	3
1265	2023-03-06	INFO	f	Sulaymanova Shaxlo	3	3
1266	2023-03-06	INFO	f	Togayeva Zebiniso	3	3
1267	2023-03-06	INFO	f	Muxtarova Shaxnoza	3	3
1268	2023-03-06	INFO	f	Adilova Dildora	3	3
1269	2023-03-06	INFO	f	Yakubova Zilola	3	3
1270	2023-03-06	INFO	f	Shukurova Sarvinoz	3	3
1271	2023-03-06	INFO	f	Shirinboyeva Dilshoda	3	3
1272	2023-03-06	INFO	f	Musayev Davron	3	3
1273	2023-03-06	INFO	f	Daminova Dilarom	3	3
1274	2023-03-06	INFO	f	Turg'unova Nargiza	3	3
1275	2023-03-06	INFO	f	Musurmanova Feruza	3	3
1276	2023-03-06	INFO	f	Mavlonova Dilobar 	3	3
1277	2023-03-06	INFO	f	Normurodova Aziza	3	3
1278	2023-03-06	INFO	f	Umirzaqova Ozoda	3	3
1293	2023-01-05		f	Avg'anov Vohidjon	1	2
1294	2023-01-05		t	 Xushimov Abdullaxon	1	2
1295	2023-01-05		f	Muxammadiyev Javohir	1	2
1296	2023-01-05		f	Baxtiyorov Vosidjon	1	2
1299	2023-01-05		f	Eshqulov Xudayorbek	1	2
1300	2023-01-05		f	Abduraxmonov Dostonbek	1	2
1303	2023-04-15		f	Rustamov Akram	1	3
1304	2023-04-15		f	Raimqulov  Og'abek	1	3
26	2023-03-06	INFO	t	Muqaddasov Savlatjon	1	4
1305	2023-04-15		f	Raximov Erkinjon	1	3
28	2023-03-06	INFO	t	Rajabov Fazoybek	1	4
29	2023-03-06	INFO	f	Urazova Sabina	1	4
30	2023-03-06	INFO	t	G'aybullayev Abdulaziz	1	4
31	2023-03-06	INFO	t	Oblaberdiyev Firdavs	1	4
32	2023-03-06	INFO	t	Esanbayev Og'abek	1	4
1306	2023-04-15		f	G'ulomov Asilbek	1	3
34	2023-03-06	INFO	t	Muqaddasov Savlatjon	1	4
35	2023-03-06	INFO	t	Shuxratov Mirsaid	1	4
36	2023-03-06	INFO	t	Rajabov Fazoybek	1	4
37	2023-03-06	INFO	f	Urazova Sabina	1	4
38	2023-03-06	INFO	t	G'aybullayev Abdulaziz	1	4
39	2023-03-06	INFO	t	Oblaberdiyev Firdavs	1	4
40	2023-03-06	INFO	t	Esanbayev Og'abek	1	4
41	2023-03-06	INFO	t	Musinov Solijon	1	4
42	2023-03-06	INFO	t	Muqaddasov Savlatjon	1	3
43	2023-03-06	INFO	t	Shuxratov Mirsaid	1	3
44	2023-03-06	INFO	t	Rajabov Fazoybek	1	3
45	2023-03-06	INFO	f	Urazova Sabina	1	3
46	2023-03-06	INFO	t	G'aybullayev Abdulaziz	1	3
47	2023-03-06	INFO	t	Oblaberdiyev Firdavs	1	3
48	2023-03-06	INFO	t	Esanbayev Og'abek	1	3
49	2023-03-06	INFO	t	Musinov Solijon	1	3
6109	2023-12-30		f	Musaeva Umida	1	3
2672	2023-07-02	INFO	t	Ziyadullayev Samitillo	1	3
2682	2023-07-12	INFO	f	Mo'minova Amina	1	3
53	2023-03-06	INFO	t	Yusufjanova Madina 	1	3
54	2023-03-06	INFO	t	O'ktamova Mehribonu 	1	3
55	2023-03-06	INFO	t	Qodirova Gulruhbonu 	1	3
56	2023-03-06	INFO	f	Rahimov Sardor 	1	3
57	2023-03-06	INFO	t	Abdullayev Dilshodbek 	1	3
58	2023-03-06	INFO	t	Nurmurodov Shaxzod 	1	3
59	2023-03-06	INFO	t	Karimova Dilfuza 	1	3
2689	2023-07-15	INFO	f	Normurodova Suxana	1	3
2690	2023-07-17		f	Hayitova Sevinch	1	3
2691	2023-07-20		f	Yusupova Madina	1	3
2692	2023-07-27		t	Quvondiqov Fazliddin	1	3
2693	2023-07-29		f	Nurullayeva Sarvinoz	1	3
2694	2023-08-01		f	Nurullayeva  Shahnoza	1	3
2695	2023-08-02		f	Davronova Sevinch	1	3
2696	2023-06-01		f	Abdullayeva Charos	1	3
2697	2023-06-01		f	Esanova  Sohiba	1	3
2698	2023-06-01		f	Sidiqova Qunduz	1	3
2699	2023-06-01		f	Annakulova  Zebo	1	3
2700	2023-06-01		f	Achilova Ozoda	1	3
2701	2023-06-01		f	Xasanova  Feruza	1	3
2702	2023-06-01		f	Ashurova  Xafiza	1	3
2703	2023-06-01		f	Ismoilova Komila	1	3
2704	2023-06-01		f	Nematova  Nafisa	1	3
2705	2023-06-01		f	Boshmanova  Shoxsanam	1	3
2706	2023-06-01		f	Qurbonova  Zebo	1	3
2723	2023-06-01		f	Narmatova Nigora	1	3
2724	2023-06-01		f	Sayidova Sanabar	1	3
2725	2023-06-01		f	Kobilova Maxfuza	1	3
2726	2023-06-01		f	Suyarova Surayyo	1	3
2727	2023-06-01		f	Anarova Madina	1	3
2728	2023-06-01		f	Kayumova Gulbaxor	1	3
2729	2023-06-01		f	Usmonova Moxigul	1	3
2730	2023-06-01		f	Jurabekova Shahnoza	1	3
2731	2023-06-01		f	Karshiboyeva Nargiza	1	3
2759	2023-03-02		f	Ruzibayeva Durdona	1	3
2760	2023-03-02		t	Abduazimov Jaxongir	1	3
2761	2023-03-02		f	O'ktamova Zilola	1	3
2762	2023-03-02		t	Mamaraimov Jasurbek	1	3
2764	2023-03-02		f	Davidova Nigina	1	3
2765	2023-03-02		t	Toshpo'latov Omunulla	1	3
2766	2023-03-02		f	Anorboyev Sardor	1	3
2767	2023-03-02		f	Toshboyeva Marjona	1	3
2768	2023-03-02		t	Toshtemirov Behruz	1	3
2769	2023-03-02		f	Xamraqulov Behruz	1	3
2798	2023-03-02		t	Isoqov Doniyor	1	3
2799	2023-03-02		t	Yaxshiboyev Fayozbek	1	3
2800	2023-02-28		t	Pulatov Bahrom	1	3
2802	2023-02-28		t	Vojipov Muhammadsodiq	1	3
2839	2023-07-01		t	Abdiyev Mahmud	3	3
2840	2023-07-01		f	Qo'chqorov Salovat	3	3
2841	2023-07-01		f	Usanova  Malika	3	3
2843	2023-07-01		f	Shukuriddinova Rayxona	3	3
2662	2023-07-01		f	Normamadov Rasul	1	1
2663	2023-07-01	INFO	t	Radjabov Alijon	1	1
2673	2023-07-02	INFO	t	Shavkatov Oybek	1	3
2683	2023-12-18	INFO	f	Nosirbayeva Shaxzoda	1	3
2707	2023-06-01		f	Qo'shbaqova Mohira	1	3
2708	2023-06-01		f	Yadgorova Xilola	1	3
2709	2023-06-01		f	Xasanova Muxlisa	1	3
2710	2023-06-01		f	Xalmatova Zamina	1	3
2711	2023-06-01		f	Eshnazarova Ozoda	1	3
2712	2023-06-01		f	Gaybullayeva Aziza	1	3
2732	2023-06-01		f	Kuchkarova Zuxra 	1	3
2733	2023-06-01		f	Ko'chkinova Sitora	1	3
2734	2023-06-01		f	Bultakova Sevara	1	3
2735	2023-06-01		f	Esirgapova Dilnoza	1	3
2736	2023-06-01		f	Atamuratova Nigina	1	3
2737	2023-06-01		f	Eshmamatova Muxlisa	1	3
2738	2023-06-01		f	Rajabova Nargiza	1	3
2739	2023-06-01		f	Musurmanova Dilafruz 	1	3
2770	2023-03-29	INFO	f	Usmonova Yulduz	1	3
4448	2023-07-28		f	Norova Dilrabo 	1	3
126	2022-12-26	INFO	t	Baxriddinov Sardor	1	3
2801	2023-02-28		t	Xo'janov Og'abek	1	3
2803	2023-04-05	INFO	t	Olimov Ozodbek	1	3
2804	2023-07-01		f	Mamanova   Sevara	3	3
2805	2023-07-01		f	Xamidova    Gulxayo	3	3
2807	2023-07-01	INFO	f	Norjigitova Zulfiya	3	3
2808	2023-04-01		t	Ozodov Salohiddin	1	3
2809	2023-07-01		f	Xujakulova  Durdona	3	3
2811	2023-07-01		f	Mamanova Madina	3	3
2812	2023-07-01		f	Sayitova  Farida	3	3
2813	2023-07-01		f	Maxkamova  Nigora	3	3
2814	2023-07-01		f	Ataullayeva  Dilafruz	3	3
2818	2023-04-20		t	Shokerov Anvar	1	3
2820	2023-07-01		f	Jozilova  Maftuna	3	3
2821	2023-04-20		f	Abduraxmonova Shohida	1	3
2822	2023-07-01		f	Jumasheva Madina	3	3
2824	2023-07-01		f	Sulaymanova Xayriniso	3	3
2828	2023-07-01		f	Kurbanova Shaxnoza	3	3
2830	2023-04-20		t	Otaqulov Farrux	1	3
2831	2023-07-01		f	Bobobekova  Qandalat	3	3
2832	2023-07-01		f	Kuldosheva Guljaxon	3	3
2834	2023-07-01		f	Saydalimova Sarvinoz	3	3
149	2023-01-01	INFO	f	Mexriddinova Maxfuza	3	3
150	2023-01-01	INFO	f	Ismatova Sojida	3	3
151	2023-01-01	INFO	f	Abriyeva Diyora	3	3
152	2023-01-01	INFO	f	Ergashova Dilfuza	3	3
153	2023-01-01	INFO	f	Ergashova Mamlakat	3	3
154	2023-01-01	INFO	f	Ishmuratova Sarvinoz	3	3
155	2023-01-01	INFO	f	Boymurzayeva Saboxon	3	3
156	2023-01-01	INFO	f	Omonova Zilola	3	3
157	2023-01-01	INFO	f	Begmatova Xursan	3	3
158	2023-01-01	INFO	f	Xudayberdiyeva Nigora	3	3
159	2023-01-01	INFO	f	Qaxramanova Guljaxon	3	3
160	2023-01-01	INFO	f	Musayeva Xurshida	3	3
161	2023-01-01	INFO	f	Turaboyeva Shoxida	3	3
162	2023-01-01	INFO	f	Mirzayeva Gulchiroy	3	3
163	2023-01-01	INFO	f	Xolbayeva Xurshida	3	3
164	2023-01-01	INFO	f	Meliyeva Muborak	3	3
165	2023-01-01	INFO	f	Atayarova Gulnoza	3	3
166	2023-01-01	INFO	f	Boymirzayeva Raziya	3	3
167	2023-01-01	INFO	f	Uraqova Zibiniso	3	3
168	2023-01-01	INFO	f	Qulmanova Zuxra	3	3
169	2023-01-01	INFO	f	Tog'ayeva Xurshida	3	3
170	2023-01-01	INFO	f	Arziqulova Laylo	3	3
171	2022-01-12	INFO	t	Ulug'ov Asliddin	1	3
172	2022-01-12	INFO	f	Razzaqova Nozima	1	3
173	2023-01-01	INFO	f	Allayorova Marjona	1	3
174	2023-01-01	INFO	f	Keldiyorova Nilufar	1	3
175	2023-01-01	INFO	f	Farmanova Kumush	1	3
176	2023-01-01	INFO	t	Abdujalilov Javohirbek	1	3
177	2023-01-01	INFO	f	Mingboyeva Marjona	1	3
178	2022-12-30	INFO	f	Ochilova Charos	3	3
179	2022-12-30	INFO	f	Karimova Sanobar	3	3
180	2022-12-30		f	Berdiyeva Sevara	3	3
181	2022-12-30		f	Otaqulova Sitora	3	3
182	2022-12-30		f	Ibragimova Nurxon	3	3
183	2022-12-30		f	Razzoqova Farida	3	3
184	2022-12-30		f	Xasanova Zuhra	3	3
185	2022-12-30		f	Abduraxmanova Muxayyo	3	3
186	2022-12-30		f	Botirova Madina	3	3
187	2022-12-30		f	Sadinova Dilafruz	3	3
188	2022-12-30		f	Holiqulova Lobar	3	3
189	2022-12-30		f	Salomova Nasiba	3	3
190	2022-12-30		f	G'aniyeva Yulduz	3	3
191	2022-01-30		f	Shoyimardonova Muxlisa	3	3
192	2023-02-01		f	Ergasheva  Muxtaram	3	3
193	2023-02-01		f	Saidova Sevara	3	3
194	2023-02-01		f	Musatafayeva Zamira	3	3
195	2023-02-01		f	Djabborova Mashhura	3	3
196	2023-02-01		f	Qorayeva Nafisa	3	3
197	2023-02-01		f	Shomurodova Zebo	3	3
198	2023-02-01		f	Turayeva Dilfuza	3	3
199	2023-02-01		f	Rahmatullayeva Yulduz	3	3
200	2023-02-01		f	Shukurova  Gulyora	3	3
201	2023-02-01		f	Ochilova Ozoda	3	3
202	2023-02-01		f	Kurbonova  Muazzam	3	3
203	0202-02-01		f	Boymuradova Ozoda	3	3
204	2023-02-01		f	Abduraxmonova Sevara	3	3
205	2023-02-01		f	Nomozova  Shoira	3	3
206	2023-02-01		f	Eshmonova Munisa	3	3
207	2023-02-01		f	Eshnazarova Durdona	3	3
208	2023-02-01		f	Boymurodova Ozoda	3	3
2838	2023-04-20		t	Eshnazarov Umid	1	3
2844	2023-07-01		f	Taylokova  Shaxnoza	3	3
2846	2023-07-01		f	Narqulova  Sevara	3	3
209	2023-02-01		f	Xolmanova Komila	3	3
210	2022-12-30		f	Abdug'aniyeva Nilufar	3	3
211	2022-12-30		f	Nurmamatova Dildora	3	3
212	2022-12-30		f	Eshkuvatova Nargiza	3	3
213	2022-12-30		f	Xudoyorova Mastura	3	3
214	2022-12-30		f	Omonova  Dilafruz	3	3
215	2022-12-30		f	Xasanova Dilfuza	3	3
216	2022-12-30		f	Boymuradova Surayyo	3	3
217	2022-12-30		f	Norqulova Gulira'no	3	3
218	2022-12-30		f	Tursunova  Maloxat	3	3
219	2022-12-30		f	Fayzullayeva Oytosh	3	3
220	2022-12-30		f	Rashidova  Ozoda	3	3
221	2022-12-30		f	Xolmurotova Munisa	3	3
222	2022-12-30		f	Mirzayeva Maxbuba	3	3
223	2022-12-30		f	Xolmurodova Shoxista	3	3
224	2022-12-30		f	Eshmurodova Nodira	3	3
225	2022-12-30	INFO	t	Tursunov Jaxongir	1	3
226	2022-12-30		f	Dilmurodov Shoxruz	1	3
227	2022-12-30		f	Abdishukurov Odilbek	1	3
228	2022-12-30		f	Normamatov Suxrobbek	1	3
229	2022-12-30		f	G'aybullayev Fayozbek	1	3
230	2022-12-30		f	Mahmudova Mahfuza	1	3
231	2022-12-30		f	Xasanboyev Muhammadqodir	1	3
232	2022-12-30		f	Alisherov Behro'z	1	3
233	2022-12-30		f	Nuraliyev Behro'z	1	3
234	2022-03-01	INFO	f	Mansurova Muxlisa 	1	6
235	2023-03-01		f	Boymirzayeva Dilfuza 	1	6
236	2023-03-01		f	Musayev Shoxjahon 	1	6
237	2023-03-01	INFO	t	Rustamov Jasur	1	3
238	2023-03-06	INFO	t	Shuxratov Mirsayid	1	3
239	2023-03-06	INFO	t	Musinov Solejon	1	3
240	2023-03-06	INFO	t	Mukaddasov Savlatjon	1	3
241	2023-03-06		f	Tursunov Sardor	1	3
242	2023-03-06		f	Esanboyev Og'abek	1	3
243	2023-03-06	INFO	t	Oblaberdiyev Firdavs	1	3
244	2023-03-06		f	G'aybullayev Abdulaziz	1	3
245	2023-03-06	INFO	t	Rajabov Fayozbek	1	3
246	2023-03-06	INFO	f	Urazova Sabina	1	3
247	2023-01-23	INFO	f	Berdiyorova Sitora	3	3
248	2023-01-23	INFO	f	Joniqulova Shaxlo	3	3
249	2023-01-23	INFO	f	Abdurahmonova Maftuna	3	3
250	2023-01-23	INFO	f	Abduvakilova Nurhon	3	3
251	2023-01-23	INFO	f	Xo'jaaxmatova Umida	3	3
252	2023-01-23	INFO	f	Qo'chqarova Nodira	3	3
253	2023-01-23	INFO	f	Nomozova Dildora	3	3
254	2023-01-23	INFO	f	Abduvakilova ra'no	3	3
255	2023-01-23	INFO	f	Fayziyev yorqul	3	3
256	2023-01-23	INFO	f	Shamsiyeva Fazilat	3	3
257	2023-01-23	INFO	f	Xolmatova Dilafruz	3	3
294	2023-03-05	INFO	t	Raxmonov Azizjon	1	3
295	2023-12-12		f	Boltayev Jamshid	1	3
296	2022-01-15		f	Elmurodov Hayotbek	1	3
297	2022-12-15		f	Otayorov Shaxriyor	1	3
298	2022-12-15		f	Hasanov Dilshod	1	3
299	2022-12-15		f	Bozorov Samir	1	3
300	2022-12-15		f	Abdullayev Nurbek	1	3
301	2022-12-15		f	To`xtayeva Umida	1	3
302	2022-12-15		f	Qalandarov Shoxjaxon	1	3
303	2022-06-10		f	Ermatova Shahnoza	1	2
304	2023-01-04		f	Eshonqulova Hurriyat	1	3
305	2023-03-06	INFO	t	Raxmonov Azizjon	1	7
307	2023-01-07	INFO	t	Fayzullayev Aziz	1	1
309	2023-01-07		f	Alijanov Behruz	1	1
310	2023-01-07		f	Haqberdiyev Alijon	1	1
311	2023-01-07		f	Islomov Xurshid	1	1
312	2023-01-07		t	Omonov Diyorbek	1	1
313	2023-01-07		f	Miyassarov Akbarali	1	1
314	2023-01-07		f	Jovliyeva Umida	1	1
315	2023-01-07		t	Fayzullayev Firdavs	1	1
316	2023-01-07		f	Hudoyqulov Mirzoxid	1	1
317	2023-01-07		f	Musinov Murodjon	1	1
318	2023-01-07		f	Shermuhammedov Murodjon	1	1
319	2023-01-07		f	Turxonov Barat	1	1
320	2023-03-07	INFO	t	Haqberdiyev Alijon	1	1
322	2023-02-21	INFO	t	Boymuratov Ismoil	1	7
323	2023-02-28	INFO	t	Ilhomjonov Amirxon	1	3
324	2023-02-03		f	O`tkirova Zahro	1	3
325	2023-02-03		f	Ismoilov  Quvonchbek	1	3
326	2023-02-03		f	Saparov Ulug`bek	1	3
327	2023-02-07		f	Ergashov Nozim	1	3
328	2023-02-08		f	Avazova Oydiniso	1	3
329	2023-02-07		f	Shahnoza Ro`ziyeva	1	3
330	2023-02-09		f	Sharipov  Kamoliddin	1	3
331	2023-02-11		f	Ibodullay Sardor	1	3
332	2023-02-13		f	Ergashov Yahyo	1	3
333	2023-02-14		f	Alimov  Dadaxon	1	3
334	2023-02-15		f	Ibodullayev Sardor	1	3
335	2023-02-15		f	Mamarizayeva Lobar	1	3
336	2023-01-07	INFO	t	Haqberdiyev Alijon	1	1
337	2023-03-01	INFO	t	Eshmamatov Eldor	1	3
338	2023-03-01	INFO	t	Eshmamatov Eldor	1	3
339	2023-01-21	INFO	t	Ahmedov Dilshodbek	1	3
340	2022-09-20	INFO	t	Abdubayonov  Abdurahmon	1	3
341	2023-01-25	INFO	t	Alimov Shamshod	1	3
342	2023-01-22		f	Asadov Azizbek	1	3
343	2023-02-09		f	Ibodullayev Usmon	1	3
344	2023-01-05		f	Samadov Temur	1	3
345	2023-02-14		f	Ibodullayeva Soliha	1	3
346	2023-01-24		f	Sindarov San`at	1	3
347	2023-01-13		f	Rustamova Ruhshona	1	3
348	2023-02-10		f	Shermatov Azizbek	1	3
349	2023-02-10		f	Sattorov Muhammadamin	1	3
350	2023-02-17		f	Narzullayeva Dilfuza	1	3
351	2023-01-24		f	Bozorova Marhabo	1	3
352	2023-02-27		f	Muhammadiyeva Sevinch	1	3
353	2023-02-27		f	O`tkirova Zahro	1	3
354	2023-02-27		f	Ismoilov Quvonchbek	1	3
355	2023-02-13		f	Turdiyev Elshod	1	3
356	2023-02-13		f	Lutfullayev Ibrohim	1	3
357	2023-02-25		f	Rayimova Farida	1	3
358	2022-07-06		f	Alisherov Sunnatillo	1	3
359	2023-01-07	INFO	t	Miyassarov Akbarali	1	1
360	2023-01-07	INFO	t	Miyassarov Akbarali	1	1
361	2022-11-28	INFO	t	Abdurashitov Qodir	1	3
362	2023-02-10		f	Irgashova Durdona	1	3
363	2023-03-06	INFO	t	Najmiddinov Sanjar	1	3
364	2023-03-06		f	Najmiddinova Madina	1	3
365	2023-03-06		f	Najmiddinova Zarina	1	3
366	2023-03-06		f	Mardonova Farangiz	1	3
367	2023-02-28		f	Narziqulova\tShaxnoza	1	3
368	2022-12-02	INFO	t	Qarshiyev Shohbozbek	1	4
369	2023-02-28	INFO	f	Izzatulla Toshpulatov	1	1
370	2022-12-18	INFO	t	Baxodirov Xurshidbek	1	3
371	2022-12-18	INFO	f	Rustambekova Zilola	1	3
372	2022-12-18	INFO	t	G'azmaxatov Bobur	1	3
373	2022-12-18	INFO	f	Abdumannatova Sevinch	1	3
374	2022-12-18	INFO	t	Mamatqulov Samandar	1	3
375	2022-12-25	INFO	f	Tangirova Sevinch	1	3
376	2022-12-25	INFO	t	Ummatov Mirjalol	1	3
377	2022-12-25	INFO	t	Ergashev Jamshid	1	3
378	2022-12-25	INFO	t	Abduxalilov Diyorbek	1	3
379	2022-12-25	INFO	t	Xamraqulov Abulqosim	1	3
380	2022-12-25	INFO	t	Akbutayev Shoxjahon	1	3
381	2022-12-25	INFO	t	Turdiqulov Xusniddin	1	3
382	2022-12-25	INFO	t	Kulmatov Temur	1	3
383	2022-12-25	INFO	t	Xamdamov Xakim	1	3
384	2023-01-05	INFO	t	Normatov Bekzod	1	3
385	2023-01-05	INFO	t	Qarshiboyeva Feruza	1	3
386	2023-01-05	INFO	t	Isomiddinov Javohir	1	3
387	2023-01-05	INFO	t	Abdumalikov Shaxjahon	1	3
388	2023-01-05	INFO	f	Mamatqulova Surayyo	1	3
389	2023-01-05	INFO	t	Boqiyeva Muqaddas	1	3
390	2023-01-05	INFO	f	Xasanboyeva Mahliyo	1	3
391	2023-01-05	INFO	t	O'rolov Azizbek	1	3
392	2023-01-05	INFO	t	Uzoqboyev Doniyor	1	3
393	2023-01-05	INFO	t	Nurmamatov Davlatjon	1	3
394	2022-12-16	INFO	t	Toirov Bunyod	1	3
395	2023-03-02	INFO	t	abs	3	3
396	2023-02-03	INFO	t	Tolibov Zarshed	1	3
397	2023-02-03		f	Tolibov Dilshod	1	3
398	2023-02-03		f	Shomurodov Yaxyo	1	3
400	2023-01-30		f	Tangirova Sevinch	1	3
401	2023-01-30		t	Ummatov Mirjalol	1	3
402	2023-01-30		f	Turdiqulov Xusniddin	1	3
403	2023-02-06		f	Boqiyeva Muqaddas	1	3
404	2023-02-20	INFO	f	Kurbanova Munisa	3	3
405	2023-02-20	INFO	f	Egamqulova Farida	3	3
406	2023-02-20	INFO	f	Rasulova Muqaddas	3	3
407	2023-02-20	INFO	t	Misirov Ja'sur	3	3
408	2023-03-20	INFO	t	Boydullayev Nodirbek	3	3
409	2023-02-20	INFO	f	Juraqulova Gulshoda	3	3
410	2023-03-02	INFO	f	Do'stiyarova Muhayyo	3	3
411	2023-03-02	INFO	f	Mamatqulova Zamira	3	3
412	2023-03-02	INFO	f	Namazova Shaxnoza	3	3
413	2023-03-02	INFO	f	Mirzayeva Shaxnoza	3	3
414	2023-02-09	INFO	f	Saitqulova Marjona	1	3
415	2023-02-09	INFO	f	Daminova Mashxura	1	3
416	2023-02-09	INFO	t	Shakarov Abbos	1	3
417	2023-02-09	INFO	t	Xayrullayev Nurmurod	1	3
418	2022-12-21	INFO	t	Shukurov Otabek	3	3
419	2022-12-21	INFO	f	Nizomova Ma'mura	3	3
420	2022-12-21	INFO	f	Ernazarova Gulmira	3	3
421	2022-12-21	INFO	f	Fayziyeva Dilafuruz	3	3
422	2022-12-21	INFO	f	Norqulova Mavluda	3	3
423	2022-12-21	INFO	f	Jumabayeva Gulbahor	3	3
424	2022-12-21	INFO	f	Usarova Feruza	3	3
425	2022-12-21	INFO	f	O'razboyeva Saboxat	3	3
426	2022-12-21	INFO	f	Haydarova Norbuvi	3	3
427	2022-12-21	INFO	f	Xujayeva Feruza	3	3
428	2022-12-21	INFO	f	Kuziyeva Mutabar	3	3
429	2022-12-21	INFO	f	Yazilova Nilufar	3	3
430	2022-12-21	INFO	f	Jamilova Nasiba	3	3
431	2022-12-21	INFO	f	Norbekova Aziza	3	3
432	2022-12-21	INFO	f	Quvandiqova Yulduz	3	3
433	2022-12-21	INFO	f	Bolmanova Gulchehra	3	3
434	2022-12-21	INFO	t	Ibragimova Cho'lpon	3	3
435	2022-12-21	INFO	f	Namanova Nigora	3	3
436	2023-01-05	INFO	f	Xolboyeva Shaxnoza	3	3
437	2023-01-05	INFO	f	Xujabekova Gulchexra	3	3
438	2023-01-05	INFO	f	Xodjabekova Shoxida	3	3
439	2023-01-05	INFO	f	Mirzaqulov Islom	3	3
440	2023-01-05	INFO	f	Isroilov Otabek	3	3
441	2023-01-05	INFO	f	Janbekova Madinabonu	3	3
442	2023-01-05	INFO	f	Shamsiyeva Iroda	3	3
443	2023-01-05	INFO	f	Erdonova Odosh	3	3
444	2023-01-05	INFO	f	Sidikova Shaxnoza	3	3
445	2023-01-05	INFO	f	Karshiyeva Dilfuza	3	3
446	2023-01-05	INFO	f	Keldiboyeva Shaxnoza	3	3
447	2023-01-05	INFO	f	Duvlayeva Rayxona	3	3
448	2023-01-05	INFO	f	Kushakova Moxira	3	3
449	2023-01-05	INFO	f	Sultonova Nodira	3	3
450	2023-01-05	INFO	f	Hakkulov Shakarboy	3	3
451	2023-01-05	INFO	f	Xolmurodova Munira	3	3
452	2023-01-05	INFO	f	Eslamasova Go'zal	3	3
453	2023-01-05	INFO	f	Nizomova Fotima	3	3
454	2023-01-06	INFO	f	Ochilova Charos	3	3
455	2023-01-06	INFO	f	Karimova Sanobar	3	3
456	2023-01-06	INFO	f	Berdiyeva Sevara	3	3
457	2023-01-06	INFO	f	Otaqulova Sitora	3	3
458	2023-01-06	INFO	f	Ibragimova Nurxon	3	3
459	2023-01-06	INFO	f	Razzoqova Farida	3	3
460	2023-01-06	INFO	f	Xasanova Zuhra	3	3
461	2023-01-06	INFO	f	Abduraxmanova Muxayyo	3	3
462	2023-01-06	INFO	f	Botirova Madina	3	3
463	2023-01-06	INFO	f	Sadinova Dilafruz	3	3
464	2023-01-06	INFO	f	Holiqulova Lobar	3	3
465	2023-01-06	INFO	f	Salomova Nasiba	3	3
466	2023-01-06	INFO	f	G'aniyeva Yulduz	3	3
467	2023-01-06	INFO	f	Shoyimardonova Muxlisa	3	3
468	2023-01-06	INFO	f	Ergasheva  Muxtaram	3	3
469	2023-01-06	INFO	f	Saidova Sevara	3	3
470	2023-01-06	INFO	f	Musatafayeva Zamira	3	3
471	2023-01-06	INFO	f	Djabborova Mashhura	3	3
472	2023-01-06	INFO	f	Qorayeva Nafisa	3	3
473	2023-01-06	INFO	f	Shomurodova Zebo	3	3
474	2023-01-06	INFO	f	Turayeva Dilfuza	3	3
475	2023-01-06	INFO	f	Rahmatullayeva Yulduz	3	3
476	2023-01-06	INFO	f	Shukurova  Gulyora	3	3
477	2023-01-06	INFO	f	Ochilova Ozoda	3	3
478	2023-01-06	INFO	f	Kurbonova  Muazzam	3	3
479	2023-01-06	INFO	f	Boymuradova Ozoda	3	3
480	2023-01-06	INFO	f	Abduraxmonova Sevara	3	3
481	2023-01-06	INFO	f	Nomozova  Shoira	3	3
482	2023-01-06	INFO	f	Eshmonova Munisa	3	3
483	2023-01-06	INFO	f	Eshnazarova Durdona	3	3
484	2023-01-06	INFO	f	Boymurodova Ozoda	3	3
485	2023-01-06	INFO	f	Xolmanova Komila	3	3
486	2023-01-06	INFO	f	Abdug'aniyeva Nilufar	3	3
487	2023-01-06	INFO	f	Nurmamatova Dildora	3	3
488	2023-01-06	INFO	f	Eshkuvatova Nargiza	3	3
489	2023-01-06	INFO	f	Xudoyorova Mastura	3	3
490	2023-01-06	INFO	f	Omonova  Dilafruz	3	3
491	2023-01-06	INFO	f	Xasanova Dilfuza	3	3
492	2023-01-06	INFO	f	Boymuradova Surayyo	3	3
493	2023-01-06	INFO	f	Norqulova Gulira'no	3	3
494	2023-01-06	INFO	f	Tursunova  Maloxat	3	3
495	2023-01-06	INFO	f	Fayzullayeva Oytosh	3	3
496	2023-01-06	INFO	f	Rashidova  Ozoda	3	3
497	2023-01-06	INFO	f	Xolmurotova Munisa	3	3
498	2023-01-06	INFO	f	Mirzayeva Maxbuba	3	3
499	2023-01-06	INFO	f	Xolmurodova Shoxista	3	3
500	2023-04-01	INFO	f	Eshmurodova Nodira	3	3
501	2023-04-01	INFO	f	Jo'rayeva Hilola	3	3
502	2023-04-01	INFO	f	Rayimova  Gulxayo	3	3
503	2023-04-01	INFO	f	Yusupova Oygul	3	3
504	2023-04-01	INFO	f	Xasanova Gulmira	3	3
505	2023-04-01	INFO	f	Botirova Maftuna	3	3
506	2023-04-01	INFO	f	Ismatova Barno	3	3
507	2023-04-01	INFO	f	Shukurova  Lobar	3	3
508	2023-04-01	INFO	f	Asrorova Soxibjamol	3	3
509	2023-04-01	INFO	f	Norbekova Rayhon	3	3
510	2023-04-01	INFO	f	Ibodova O'g'iloy	3	3
511	2023-04-01	INFO	f	Turdiyeva Xolida	3	3
512	2023-04-01	INFO	f	Rustamova Malika	3	3
513	2023-04-01	INFO	f	Elomonova Dildora	3	3
514	2023-04-01	INFO	f	Nomozova Sayyora	3	3
515	2023-04-01	INFO	f	Shukurova  Madina	3	3
516	2023-04-01	INFO	t	Alimova Normurod	3	3
517	2023-04-01	INFO	f	Aliyeva Feruza	3	3
518	2023-04-01	INFO	f	Zikirillayeva Dilrabo	3	3
519	2023-04-01	INFO	f	Islomova Nasiba	3	3
520	2023-04-01	INFO	f	Sherova Maxliyo	3	3
521	2023-03-01	INFO	t	Alimov Normurod	3	3
522	2023-03-10	INFO	f	SHaropova Parvina	3	3
523	2023-03-10	INFO	f	Sharipova Mexrangiz	3	3
524	2023-03-10		f	Raupova Nigina	3	3
525	2023-03-10		f	Sattarova Nargiza	3	3
526	2023-01-07	INFO	t	Islomov  Xurshid	1	1
527	2023-02-01	INFO	t	Murodov Shoxjaxon	1	8
528	2023-02-01		f	Ergashev Abdulla	1	8
529	2023-02-01		f	Ergashev Pirnazar	1	8
530	2023-02-01		f	Qilechev Sardor	1	8
531	2023-02-01		f	Mamaraimova Nozila	1	8
532	2023-02-01		f	Rustamov Fayozbek	1	8
533	2023-02-01		f	Abdurazzoqov Alisbek	1	8
534	2023-02-01		f	Abdurazzoqov Navro'zbek	1	8
535	2023-02-01		f	Xotamov Alisher	1	8
536	2023-02-01		f	Muhammadiyev Sherali	1	8
537	2023-02-01		f	Xazrarqulov Jaxongir	1	8
538	2023-02-01		f	Qarshiyeva Shahlo	1	8
539	2023-02-01		f	Erkinov Sardor	1	8
540	2023-02-01		f	Ro'zimurodova Diyora	1	8
541	2023-02-01		f	Jo'raqulova Kamoliddin	1	8
542	2023-02-01		f	Egamberdiyev  Davlat	1	8
543	2023-02-01		f	Isroilov Adxamjon	1	8
544	2023-03-01		f	Narzullayeva Iroda	1	8
545	2023-03-01		f	Narzullayeva Iroda	1	3
546	2023-03-01		f	Ahmedov Diyorbek	1	3
547	2023-03-01		t	Aliyev Oybek	1	3
548	2023-03-14	INFO	t	Azimov Javoxir	1	2
549	2023-03-13	INFO	f	Kurbonova \tNilufar	3	3
550	2023-02-02	INFO	t	Murodov Shoxjaxon	1	9
551	2023-02-01		f	Ergashev Abdulla	1	9
552	2023-02-01		f	Ergashev Pirnazar	1	9
553	2023-02-01		f	Qilechev Sardor	1	9
554	2023-02-01		f	Mamaraimova Nozila	1	9
555	2023-02-01		f	Rustamov Fayozbek	1	9
556	2023-02-01		f	Abdurazzoqov Alisbek	1	9
557	2023-02-01		f	Abdurazzoqov Navro'zbek	1	9
558	2023-02-01		f	Xotamov Alisher	1	9
559	2023-02-01		f	Muhammadiyev Sherali	1	9
560	2023-02-01		f	Xazrarqulov Jaxongir	1	9
561	2023-02-01		f	Qarshiyeva Shahlo	1	9
562	2023-02-01		f	Erkinov Sardor	1	9
563	2023-02-01		f	Ro'zimurodova Diyora	1	9
564	2023-02-01		f	Jo'raqulova Kamoliddin	1	9
565	2023-02-01		f	Egamberdiyev  Davlat	1	9
566	2023-02-01		f	Isroilov Adxamjon	1	9
567	2023-03-01	INFO	t	Qurbonov Mehroj	1	4
568	2023-03-01	INFO	t	Xaydarov Utkir	1	4
569	2023-01-23	INFO	t	Berdiyorova Sitora	3	3
570	2023-01-23	INFO	t	Joniqulova Shaxlo	3	3
571	2023-01-23	INFO	t	Abdurahmonova Maftuna	3	3
572	2023-01-23	INFO	f	Abduvakilova Nurhon	3	3
573	2023-01-23	INFO	t	Xo'jaaxmatova Umida	3	3
574	2023-01-23	INFO	t	Qo'chqarova Nodira	3	3
575	2023-01-23	INFO	t	Nomozova Dildora	3	3
576	2023-01-23	INFO	t	Abduvakilova ra'no	3	3
577	2023-01-23	INFO	f	Fayziyev yorqul	3	3
578	2023-01-23	INFO	f	Shamsiyeva Fazilat	3	3
579	2023-01-23	INFO	f	Xolmatova Dilafruz	3	3
580	2023-01-23	INFO	f	Xudoyberdiyeva Ruxsora	3	3
581	2023-01-23	INFO	f	Narziyeva Dildora	3	3
582	2023-01-23	INFO	f	Saidova kamola	3	3
583	2023-01-23	INFO	f	Shodmonova Gulchehra	3	3
584	2023-01-23	INFO	f	Allayorova Feruza	3	3
585	2023-01-23	INFO	f	Nurmamatova Gulandon	3	3
586	2023-02-09	INFO	f	Usmonova Rahima 	3	3
587	2023-02-09	INFO	f	Ismoilova Matluba 	3	3
588	2023-02-09	INFO	f	Tuymayeva Gavharshod 	3	3
589	2023-02-09	INFO	f	Almatova Farog’at 	3	3
590	2023-02-09	INFO	f	Tursunqulova Muxayyo 	3	3
591	2023-02-09	INFO	f	Tirkashova Saodat 	3	3
592	2023-02-09	INFO	f	Jo’rayeva Muxayyo 	3	3
593	2023-02-09	INFO	f	Safarova Sarvinoz 	3	3
594	2023-02-09	INFO	f	Sag’dullayeva Gulxayo 	3	3
595	2023-02-09	INFO	f	Jo’rayeva Dilbar 	3	3
596	2023-02-09	INFO	f	Iskandarova Nilufar 	3	3
597	2023-02-09	INFO	f	Elmurodova Zaynab 	3	3
598	2023-02-09	INFO	f	Xolmurodova Farog’at 	3	3
599	2023-02-09	INFO	f	Egamova Nargiza 	3	3
600	2023-02-09	INFO	f	Arziqulova Gulshod 	3	3
601	2023-02-28	INFO	f	Yuldasheva \nDilorom 	3	3
602	2023-02-28	INFO	f	Umirova Malohat 	3	3
603	2023-02-28	INFO	f	Alimova Nilufar 	3	3
604	2023-02-28	INFO	f	Jiyanmurodova \nRashida 	3	3
605	2023-02-28	INFO	f	To’raqulova Go’zal 	3	3
606	2023-02-28	INFO	f	Nishonova Sanobar 	3	3
607	2023-02-28	INFO	f	Egamberdiyeva \nMuxlisa 	3	3
608	2023-02-28	INFO	f	To’rayeva Gulnora 	3	3
609	2023-02-28	INFO	f	Mirzayeva Nilufar 	3	3
610	2023-02-28	INFO	f	Ergasheva Sanobar 	3	3
611	2023-02-28	INFO	f	Tursunova Diyora 	3	3
612	2023-02-28	INFO	f	Xudoyberdiyeva\nShoira 	3	3
613	2023-02-28	INFO	f	Xudoyberdiyeva \nGulnora 	3	3
614	2023-02-28	INFO	f	Abdurahmonova \nFotima 	3	3
615	2023-02-28	INFO	f	Jaynarova Gulshan 	3	3
616	2023-01-31	INFO	f	Gadayeva Go'zal	1	2
617	2022-12-30	INFO	f	Urakova Zebiniso	3	3
618	2023-03-18	INFO	t	Xurramov Og'abek	1	3
619	2023-03-18		f	Daminov Begzod	1	3
620	2023-03-18		f	Rakhmanov Damir	1	3
621	2023-03-18		f	Akhmadov Dilshod	1	3
622	2023-03-18		f	Ismoiljonov Sardorjon	1	3
623	2023-03-18		f	Sanaqulov Komiljon	1	3
624	2023-03-18		f	Baxtiyorova Kamilaxon	1	3
625	2023-03-18		f	Yuldasheva Sitora	1	3
626	2023-03-18		t	Aliqulov Lazizbek	1	3
627	2023-03-18		f	Turdumurodov Murodbek	1	3
628	2023-03-18	INFO	t	Abriyev Zarif	1	3
629	2023-03-16	INFO	t	Raxmatov Jahongir	1	3
630	2023-03-16		f	Rahmatov Asliddin	1	3
631	2023-03-16		f	Rahmatov Suhrob	1	3
632	2023-03-18	INFO	f	Baxtiyorova Kamillaxon	1	3
633	2023-03-18		t	Abdiyev Zarif	1	3
634	2023-03-08	INFO	t	Ahmedov orif	1	5
635	2023-01-05	INFO	t	Mamasoliyev Farxod	1	3
636	2023-03-25	INFO	t	Hamroqulov Bunyod	1	7
637	2023-03-25	INFO	t	Vahidov\tEldor	1	2
638	2023-03-25		t	Akobirov \tSardor	1	2
639	2022-09-01	INFO	t	Jahongirov Mansur	3	3
640	2023-01-06	INFO	t	Jahongirov Mansur	1	3
641	2023-01-06	INFO	f	Do`smatova Kamola 	1	3
642	2023-01-06	INFO	f	Hamdullayeva Komila	1	3
643	2023-01-06	INFO	t	Sharipov Ahmad	1	3
644	2023-01-06	INFO	t	Olimov Jahongir	1	3
645	2023-01-06	INFO	t	Mahmudov Mirjalol	1	3
646	2023-01-06	INFO	t	Bahodirov Bahouddin	1	3
647	2023-01-06	INFO	t	Maxmudov Jasurbek	1	3
648	2023-01-06	INFO	t	Shavkatov Xondamir	1	3
649	2023-01-06	INFO	f	Dehqonova Mahliyo	1	3
650	2023-01-06	INFO	t	Murodullayev Dilmurod	1	3
651	2023-01-06	INFO	f	Aktamova Ma`mura	1	3
652	2023-01-06	INFO	t	Roziqov Umid	1	3
653	2023-01-06	INFO	f	Ermatova Iroda	1	3
654	2023-01-06	INFO	t	Yazdamov Rustam	1	3
655	2023-01-06	INFO	t	Safarov Muhammadjon	1	3
656	2023-01-06	INFO	t	Ismoilov Adxambek	1	3
657	2023-01-06	INFO	t	Abdumalikov Ashirbek	1	3
658	2023-01-06	INFO	t	Jahongirov Mansur	1	3
659	2023-01-06	INFO	f	Do`smatova Kamola 	1	3
660	2023-01-06	INFO	f	Hamdullayeva Komila	1	3
661	2023-01-06	INFO	t	Sharipov Ahmad	1	3
662	2023-01-06	INFO	t	Olimov Jahongir	1	3
663	2023-01-06	INFO	t	Mahmudov Mirjalol	1	3
664	2023-01-06	INFO	t	Bahodirov Bahouddin	1	3
665	2023-01-06	INFO	t	Maxmudov Jasurbek	1	3
666	2023-01-06	INFO	t	Shavkatov Xondamir	1	3
667	2023-01-06	INFO	f	Dehqonova Mahliyo	1	3
668	2023-01-06	INFO	t	Murodullayev Dilmurod	1	3
669	2023-01-06	INFO	f	Aktamova Ma`mura	1	3
670	2023-01-06	INFO	t	Roziqov Umid	1	3
671	2023-01-06	INFO	f	Ermatova Iroda	1	3
672	2023-01-06	INFO	t	Yazdamov Rustam	1	3
673	2023-01-06	INFO	t	Safarov Muhammadjon	1	3
674	2023-01-06	INFO	t	Ismoilov Adxambek	1	3
675	2023-01-06	INFO	t	Abdumalikov Ashirbek	1	3
676	2023-03-08	INFO	t	Shodiyor Salaydinov	1	1
677	2023-01-06	INFO	t	Nurmurodov Bekzod	3	3
678	2023-01-06	INFO	f	Ziyodullayeva Noila	3	3
679	2023-01-06	INFO	f	Ilyasova Dilfuza	3	3
680	2023-01-06	INFO	f	Eshnazarova Sevara	3	3
681	2023-01-06	INFO	f	Islomova Moxisara	3	3
682	2023-01-06	INFO	f	Po`latova Xolida	3	3
683	2023-01-06	INFO	f	Nurmamatova Nigora	3	3
684	2023-01-06	INFO	f	Mo`minova Madina	3	3
685	2023-01-06	INFO	f	Turopova Sayyora	3	3
686	2023-01-06	INFO	f	Nazarova Nilufar	3	3
687	2023-01-06	INFO	f	Karimova Dilshoda	3	3
688	2023-01-06	INFO	f	Nabiyeva Gulshan	3	3
689	2023-01-06	INFO	f	Arziyeva Shahlo	3	3
690	2023-01-06	INFO	f	Bozorov Sardor	3	3
691	2023-01-06	INFO	f	To`lqinova Muxlisa	3	3
692	2023-01-06	INFO	f	Ibragimova Nasiba	3	3
693	2023-01-06	INFO	f	Shomamatova Sayyora	3	3
694	2023-01-06	INFO	f	To`xtayeva Gulbahor	3	3
695	2023-01-06	INFO	f	O`lmasova Rayhon	3	3
696	2023-01-06	INFO	f	To`rayeva Dilafruz	3	3
697	2023-01-06	INFO	f	Rahmonova Nasiba	3	3
698	2023-01-06	INFO	t	Nurmurodov Xamdam	3	3
699	2023-01-06	INFO	f	Normurodova Feruza	3	3
700	2023-01-06	INFO	f	Pardayeva Sojida	3	3
701	2023-01-06	INFO	f	Raxmonova Muxayyo	3	3
702	2023-01-06	INFO	f	Ochilova Dilnoza	3	3
703	2023-01-06	INFO	f	Oripova Marjona	3	3
704	2022-12-01	INFO	t	Ulug'ov Asliddin	1	3
705	2022-12-01		f	Razzaqova Nozima	1	3
706	2023-01-05		f	Allayorova Marjona	1	3
707	2022-01-05		f	Keldiyorova Nilufar	1	3
708	2022-01-05		f	Farmanova Kumush	1	3
709	2022-12-05		t	Abdujalilov Javohirbek	1	3
710	2022-12-12		f	Mingboyeva Marjona	1	3
711	2022-01-05		f	Eshmamatov Eldor	1	3
712	2023-01-06		f	Ziyatov Shoira	3	3
713	2023-01-06		f	Ziyatova Shoira	3	3
714	2023-01-12	INFO	t	Sodirov Azamat	3	3
715	2023-01-12		t	Xujamatov Laziz	3	3
716	2023-01-12		f	Toshtemirova Mashxura	3	3
717	2023-01-12		f	Bokoyorova Marg`uba	3	3
718	2023-01-11		f	Isayeva Obida	3	3
719	2023-01-12		f	Nafasova Saodat	3	3
720	2023-01-25		f	Hakimov Xasan	3	3
721	2023-01-25		f	Nuraliyeva Nasiba	3	3
722	2023-01-25		t	Bobomirzayev Olimjon	3	3
723	2023-01-25		f	Abdullayeva Mahliyo	3	3
724	2022-07-08		f	Ahrorova  Maftuna	1	3
725	2022-08-07		f	Sadimurodova  Gavxar	1	3
726	2023-03-04	INFO	t	Nasimov Shaxboz	1	3
727	2023-03-04		f	Eshmo'minov Eldor	1	3
728	2023-03-11	INFO	t	Raimov Zamir	1	2
729	2023-03-29	INFO	t	Poyonov  Nurbek	1	3
730	2023-03-29	INFO	t	Bozorov Davlatbek	1	3
731	2023-03-29		f	Xurramova Parizoda	1	3
732	2023-03-29		t	Abloberdiyev Og'abek	1	3
733	2023-03-29		t	Omonov Akmal	1	3
734	2023-03-29		f	Jumanazarov Haqnazar	1	3
735	2023-03-29		f	Jamilov E'zozbek	1	3
736	2023-03-29		f	Maxmudov Mag'rur	1	3
737	2023-03-29		f	Gafurov Samir	1	3
738	2023-03-29		f	Ismailova Aziza	1	3
739	2023-03-29		t	Ziyoddinov Shaxriyor	1	3
740	2023-03-29		f	Xolxo'jayeva Gulshoda	1	3
741	2023-03-29	INFO	t	Xazratqulov Temur	1	3
742	2023-03-29	INFO	t	Kazimov Azizjon	1	3
743	2023-03-29		f	Egamnazarov Shahbozbek	1	3
744	2023-03-29		f	Olmasov Muhammadmirzo	1	3
745	2023-03-29		f	Kazimov Aziz	1	3
746	2023-01-27	INFO	t	Aktamov Diyorbek	1	2
747	2023-01-27	INFO	t	Isoqov Mexroj	1	2
748	2023-01-27	INFO	t	Xayrullayev Og'abek	1	2
749	2023-01-27		f	Tursunov  Ozodbek	1	2
750	2023-03-01	INFO	f	Ziyatova\tDildora	3	3
751	2023-03-01		f	Quziyeva Uljan	3	3
752	2023-03-01		f	Irisova Malaxat	3	3
753	2023-03-01		f	Eshquvatova\tMuxayyo	3	3
754	2023-03-01		f	Yusupova Dilbar	3	3
755	2023-03-01		f	Xalbayeva Mavjuda	3	3
756	2023-03-01		f	Sidiqova\tRisolat	3	3
757	2023-03-01		f	Umirova\tMoxira	3	3
758	2023-03-01		f	Xalilova\tZuxra	3	3
759	2023-03-01		f	Turdiqulova\tMuxayyo	3	3
760	2023-03-01		f	Berdiyeva Nigora	3	3
761	2023-03-01		f	Xolboyeva\tSurayyo	3	3
762	2023-03-01		f	Xushbaqova\tShaxnoza	3	3
763	2023-03-01		f	Berdiyarova\tMehribonu	3	3
764	2023-03-01		f	Xolmuradova Matluba	3	3
765	2023-03-01		f	Yovqochova\tJamila	3	3
766	2023-03-01		f	Ergashova Ma'mura	3	3
767	2023-03-01		f	Jumanova Hulkar	3	3
768	2023-03-01		f	Qazaqova  Maysara	3	3
769	2023-03-01		f	Uraqova\tMuborak	3	3
770	2023-03-01		f	Ulug'muradova Nilufar	3	3
771	2023-03-01		f	Aminova Ziyoda	3	3
772	2023-03-01		f	Davranova Xolida	3	3
773	2023-03-01		f	Umirova\tGulrux	3	3
774	2023-03-01		f	Elamanova\tXafiza	3	3
775	2023-03-01		f	Quchqarova\tMaxfuza	3	3
776	2023-03-01		f	Arziqulova\tDilafruz	3	3
777	2023-03-01		f	Qurbonova\tMashxura	3	3
778	2023-03-01		f	Meliyeva Marg'uba	3	3
779	2023-03-01		f	Shaymanova\tOyxol	3	3
780	2023-03-01		f	Olmasova Nafisa	3	3
781	2023-03-01		f	Radjapova Qirmiz	3	3
782	2023-03-01		f	Eshnarova Gulchiroy	3	3
783	2023-03-01		f	Sayimova Moxichexra	3	3
784	2023-03-01		f	Shirinov Yusuf	3	3
785	2023-03-01		f	Bozorov Olim	3	3
786	2023-02-09		f	Boykobilova Gulchexra	3	3
787	2023-02-09		f	Musayeva Xusniya	3	3
788	2023-02-09	INFO	f	Narova Barno	3	3
789	2023-02-09		f	Begimqulova Shaxribonu	3	3
790	2023-02-09		f	Tuxtayeva Nigora	3	3
791	2023-02-01		f	Ergasheva Komila	3	3
792	2023-02-01		f	Nurtayeva Gulnora	3	3
793	2023-02-09		f	Ibragimov Xaldar	3	3
794	2023-02-09		f	Mardiyeva Moxlaroy	3	3
795	2023-02-09		f	Qosimova Zulfiya	3	3
796	2023-02-09		f	Eshatova Lobar	3	3
797	2023-02-09		f	Eshatova Lobar	3	3
798	2023-02-09		f	Qirjigitova Nafisa	3	3
799	2023-02-09		f	Diyarova Mexriniso	3	3
800	2023-02-09		f	Boliqulova Sevara	3	3
801	2023-02-09		f	Egamberdiyeva Feruza	3	3
802	2023-02-09		f	Bekkulov Qaxor	3	3
803	2023-02-09		t	Ochilov Sayitkul	3	3
804	2023-02-09		f	Berdixolova Xanifa	3	3
805	2023-02-09		f	Suvanova Bibisora	3	3
806	2023-02-09		f	Lapasova Jamila	3	3
807	2023-02-09		f	Keldiboyeva Shoxsanam	3	3
808	2023-03-09		f	Qurbanova Feruza	3	3
809	2023-02-09		f	Qarshiyev Azim	3	3
810	2023-02-09		f	Abdurazoqova Shaxlo	3	3
811	2023-02-09		f	Mitanova Yulduz	3	3
812	2023-03-09		f	Mitanova Mashxura	3	3
813	2023-03-09		f	Egamberdiyev Mansur	3	3
814	2023-02-09		f	Begmamatova Sitora	3	3
815	2023-02-09		f	Yalgasheva Nasiba	3	3
816	2023-02-09		f	Ismoilova Gulmira	3	3
817	2023-02-09		f	Bolqiyev G'olibjon	3	3
818	2023-02-09		t	Arziyev G'ayratjon	3	3
819	2023-02-09		f	Holmatov Ilhomjon	3	3
820	2023-02-09		f	Asamiddinova Mavjuda	3	3
821	2023-02-09		f	Suyunmurodova Madina	3	3
822	2023-04-01	INFO	f	Ne'matova Sevara	1	3
823	2023-04-01		t	Mizrabov Akmal	1	3
824	2023-04-01	INFO	t	Pahridinov Behruz 	1	3
825	2023-04-01	INFO	t	Pahridinov  Behruz	1	3
826	2023-04-01		f	Baxridinov Davlatbek	1	3
827	2023-04-01		f	Radjabov Shohrux	1	3
828	2023-04-01		f	Aktamov Olmos	1	3
829	2023-04-01	INFO	t	Akramov Olmos	1	3
830	2023-04-01	INFO	t	Radjabboyev Shoxrux	1	3
831	2023-03-13	INFO	t	Qorayeva Nigora	3	3
832	2023-03-13	INFO	f	Yusupova Aziza	3	3
833	2023-03-13	INFO	f	O'narova Gulxayo	3	3
834	2023-03-13	INFO	f	Muhammedova Nodira	3	3
835	2023-03-13	INFO	f	Xamdamova Xurshida	3	3
836	2023-03-13	INFO	f	Tolliboyeva Shoxista	3	3
837	2023-03-13	INFO	f	Mavlonova Mohira	3	3
838	2023-03-13	INFO	f	Sindarova Xolbuvi	3	3
839	2023-03-13	INFO	f	Bekmirzayeva Moxiya	3	3
840	2023-03-13	INFO	f	Ziyadullayeva Lola	3	3
841	2023-03-13	INFO	f	Nursatova Gulshan	3	3
842	2023-03-13	INFO	f	Mirzayeva Dildora	3	3
843	2023-03-13	INFO	f	Mamadaliyeva Surayyo	3	3
844	2023-03-13	INFO	f	Nosirova Nilufar	3	3
845	2023-03-13	INFO	f	Avalova Marxabor	3	3
846	2023-03-13	INFO	t	Abdullayev Abdukarim	3	3
847	2023-03-13	INFO	f	Ixtiyorova Dinora	3	3
848	2023-03-13	INFO	f	Bayanova Dilnoza	3	3
849	2023-03-13	INFO	f	Galayeva Dilorom	3	3
850	2023-03-13	INFO	f	Achilova Roxila	3	3
851	2023-03-13	INFO	f	Xolikulova Lobar	3	3
852	2023-03-13	INFO	f	Abdushukurova Mexrinso	3	3
853	2023-03-13	INFO	t	Tilavov Muzaffar	3	3
854	2023-03-13	INFO	f	Shovqiyeva Gulnoza	3	3
855	2023-03-13	INFO	f	Samarova Adolat	3	3
856	2023-03-13	INFO	f	Shodiyeva Muborak	3	3
857	2023-03-13	INFO	f	Qo'yliboyeva Ma'mura	3	3
858	2023-03-13	INFO	f	Bayzaqova Madina	3	3
859	2023-03-13	INFO	f	Buriboyeva Shahodat	3	3
860	2023-03-13	INFO	f	Qo'chqorova Dilfuza	3	3
861	2023-03-13	INFO	t	Nishanov O'tkir	3	3
862	2023-03-13	INFO	f	Eshkobulov Sherali	3	3
863	2023-03-13	INFO	t	Sulaymonov To'lqin	3	3
864	2023-03-13	INFO	t	Berdiyorov Abdimumin	3	3
865	2023-03-13	INFO	f	Berdiqulova Zulfiya	3	3
866	2023-03-13	INFO	f	Aliqulova Muqaddas	3	3
867	2023-03-13	INFO	f	Xaliqova Zulfiya	3	3
868	2023-03-13	INFO	f	Xoliqova Odosh	3	3
869	2023-03-13	INFO	f	Bozarbayeva Gulsara	3	3
870	2023-03-13	INFO	f	Turdibekova Shalola	3	3
871	2023-03-13	INFO	f	Qo'shboqova Feruza	3	3
872	2023-03-13	INFO	f	Razzaqova Nilufar	3	3
873	2023-03-13	INFO	t	Qodirov Xudoyberdi	3	3
874	2023-03-13	INFO	f	Xasanov Muhiddin	3	3
875	2023-03-13	INFO	f	Qazoqov Norbek	3	3
876	2023-03-13	INFO	f	Pulatova Mehriniso	3	3
877	2023-03-13	INFO	t	Boboqandov Shoxrux	3	3
878	2023-03-13	INFO	f	Tuxtasheva Dildora	3	3
879	2023-04-01	INFO	f	Odilova Ruxshona	1	3
880	2023-03-02	INFO	t	Xayrullayev Bobirxon	1	2
881	2023-04-01	INFO	t	Yo'ldoshev Feruzjon	1	3
882	2023-03-02	INFO	f	Qudratova Shahlo	3	3
883	2023-03-02	INFO	f	Allayorova Aziza	3	3
884	2023-03-02	INFO	f	Muradova Gulxan	3	3
885	2023-03-02	INFO	f	Primova Feruza	3	3
886	2023-03-02	INFO	f	Ishonqulova Maloxat	3	3
887	2023-03-02	INFO	f	Alimova Dilfuza	3	3
888	2023-03-02	INFO	f	Abdurashidova Nargiza	3	3
889	2023-03-02	INFO	f	Muxtorova Dildora	3	3
890	2023-03-02	INFO	f	Salimova Shoxista	3	3
891	2023-03-02	INFO	f	Bekmurodova Gulbahor	3	3
892	2023-03-02	INFO	f	Suyunova Mexriniso	3	3
893	2023-03-02	INFO	f	Musurmonova Gulzebo	3	3
894	2023-03-02	INFO	f	Temerova Fotima	3	3
895	2023-03-02	INFO	f	Muxtorova Dildora	3	3
896	2023-03-02	INFO	f	Muradova Gulxan	3	3
897	2023-03-13	INFO	t	Latipova Shahlo	1	3
898	2023-03-13	INFO	f	Ro`zimurodova Nilufar	1	3
899	2023-03-13	INFO	t	Faxirov Oybek	1	3
900	2023-03-13	INFO	f	Ramazonova Feruzabonu	1	3
901	2023-03-13	INFO	t	Davlatov Temur	1	3
902	2023-03-13	INFO	f	Karimova Hilola	1	3
903	2023-03-13	INFO	f	Isomiddinova Zebiniso	1	3
904	2023-03-13	INFO	f	Xolmuminov Ibrohim	1	3
905	2022-12-20	INFO	t	Mardonov Maqsud	1	2
906	2022-12-12		f	Uralov Odil	1	2
907	2023-04-02	INFO	t	Umarov Zohidxon	1	3
908	2023-04-02	INFO	t	Jalilov Shoxrux	1	3
909	2023-04-02	INFO	f	Nusharova Zebo	1	3
910	2023-04-02	INFO	f	Turanova Dilobar	1	3
911	2023-04-02	INFO	t	Abduraxmonov Umidjon	1	3
912	2023-04-02	INFO	t	Axrorov Inomjon	1	3
913	2023-04-02	INFO	t	Amirdinov Diyorbek	1	3
914	2023-04-02	INFO	t	Suyunov Azizbek	1	3
915	2023-04-02	INFO	t	Isoqulov Jahongir	1	3
916	2023-04-02	INFO	t	Mustafaqulov Shaxriyor	1	3
917	2023-04-02	INFO	f	Tog'ayeva Umida	1	3
918	2023-04-02	INFO	t	Saidmurodov G'iyosjon	1	3
919	2023-04-02	INFO	f	Nematullayeva Odina	1	3
920	2023-04-02	INFO	t	Saidmurodov Abdulaziz	1	3
921	2023-04-02	INFO	f	Quvonova Malika	1	3
922	2023-04-02	INFO	t	Ergashev Javohir	1	3
923	2023-04-02	INFO	f	Mamatova Jasmin	1	3
924	2023-04-02	INFO	f	Shodmonova Sevinch	1	3
925	2023-04-02	INFO	f	Normuhammadqulova Sevinch	1	3
926	2023-04-02	INFO	t	Fayzullayev Erkin	1	3
927	2023-04-02	INFO	f	Mamarajabova Zarina	1	3
928	2023-04-02	INFO	f	G'afurov Abulfayz	1	3
929	2023-04-02	INFO	t	Erkinov Diyorbek	1	3
930	2023-04-02	INFO	t	Baxtiyorov Shuxrat	1	3
931	2023-04-02	INFO	f	Ergasheva Muxsina	1	3
932	2023-04-02	INFO	f	Axberdiyev Muxriddin	1	3
933	2023-04-02	INFO	f	Ergasheva Nozila	1	3
934	2023-04-02	INFO	f	Danaboyeva Dilrabo	1	3
935	2023-04-02	INFO	f	Ergasheva Dilorom	1	3
936	2023-04-02	INFO	f	Yuldasheva Nargiz	1	3
937	2023-04-02	INFO	t	Ubayev Amirxon	1	3
938	2023-04-02	INFO	f	Normuratova Ra'no	1	3
939	2023-04-02	INFO	t	Xasanova Dilrabo	1	3
940	2023-04-02	INFO	t	Ablaqulov Dilshod	1	3
941	2023-04-02	INFO	f	Abdurahmonov Behruz	1	3
942	2023-04-02	INFO	f	Jumanazarova Fazilat	1	3
943	2023-04-02	INFO	f	Xolbekov Sadulla	1	3
944	2023-03-02		f	Salaydinov Adhamjon	1	2
945	2023-03-12	INFO	t	Salaydinov Shodiyor	1	2
946	2023-04-02	INFO	f	Haminova Madina	1	3
948	2023-04-02	INFO	t	Abdushukurov Asilbek	1	3
949	2023-04-02	INFO	f	Narziyev Shohrux	1	3
950	2023-04-02	INFO	t	Davletova Zilola	1	3
951	2023-04-02	INFO	f	Buronova Maftuna	1	3
952	2023-04-02	INFO	f	Odilova Ruhsora	1	3
953	2023-04-02	INFO	t	Toshpulatov Shahram	1	3
954	2023-04-02	INFO	t	Muinjonov Manuchexr	1	3
957	2023-04-02	INFO	f	Odilova Ruhshona	1	3
958	2023-04-02	INFO	f	Rajabova Mohigul	1	3
959	2023-04-04	INFO	t	Norkulov Ulug'bek	1	3
960	2023-04-04		f	Xasanov Alijon	1	3
961	2023-04-04		f	Narziyev Shoxrux	1	3
962	2023-04-04	INFO	t	Ahmadjonov Shoxrux	1	3
963	2023-04-02	INFO	f	Tursunova Shaxnoza	3	3
964	2023-04-02	INFO	t	Xomidova Dildora	3	3
965	2023-04-02	INFO	t	Sultonova Hilola	3	3
966	2023-04-02	INFO	f	Muhammadiyeva Zukhro	3	3
967	2023-04-02	INFO	t	Voseeva Manzura	3	3
968	2023-04-02	INFO	f	Bakiyeva Lola	3	3
969	2023-04-02	INFO	f	Hamidjanova Parvina	3	3
970	2023-04-02	INFO	t	Axmedjanova Nigina	3	3
971	2023-04-02	INFO	t	Xotamova Moxigul	3	3
972	2023-04-02	INFO	t	Shaxobova Gulandon	3	3
973	2023-04-02	INFO	f	Tilyabova Dilfuza	3	3
974	2023-03-29	INFO	f	Xomidova Nigora	1	3
975	2023-03-29		f	Nasrulloyeva Moxistora	1	3
976	2023-04-05	INFO	f	Ortiqova Pokiza	1	2
977	2023-04-01	INFO	f	Odilova Ruxsora	1	3
978	2023-04-01		f	Odilova Ruxshona	1	3
979	2023-03-07	INFO	t	Sultonmurodov  Po'latjon	1	4
1279	2023-04-06	INFO	f	Qilichova Dilorom	3	3
981	2023-04-04	INFO	t	To'xtashev Muhammadrouf	1	3
982	2023-04-04	INFO	f	Zayniddinova Shahzoda	1	3
983	2023-04-04	INFO	t	Sayfiddinov Javohir	1	3
984	2023-04-04	INFO	f	Shukurova Nilufar	1	3
985	2023-04-04	INFO	f	Omonova Muqaddas	1	3
986	2023-04-04	INFO	t	Qurbonboyev Oybek	1	3
987	2023-04-04	INFO	f	Eshbo'riyev Ziyadulla	1	3
988	2023-04-04	INFO	t	Qo'chqorov Rustamjon	1	3
989	2023-04-04	INFO	f	Saydalimova Hurriyat	1	3
990	2023-04-04	INFO	t	Yusufov Nodirbek	1	3
991	2023-04-04	INFO	t	Rahmatov A'zamjon	1	3
992	2023-04-04	INFO	t	Axmatov Rustam	1	3
993	2023-04-04	INFO	f	Jamolova Sabina	1	3
994	2023-04-04	INFO	t	Narzullayev Muhammadali	1	3
995	2023-04-04	INFO	t	Baxtiyorov Davlatbek	1	3
996	2023-04-04	INFO	t	Mahmudov Diyorbek	1	3
997	2023-04-04	INFO	t	Xasanov Jurabek	1	3
998	2023-04-04	INFO	t	Hamroyev Farrux	1	3
999	2023-04-04	INFO	t	Tolliboyev Azimjon	1	3
1000	2023-04-04	INFO	t	Saydullayev Ozodbek	1	3
1001	2023-04-04	INFO	t	Xolmurodov Otabek	1	3
1002	2023-04-04	INFO	t	Turdiyev Maqsudjon	1	3
1003	2023-04-04	INFO	t	Xayriddinov Lazizjon	1	3
1004	2023-04-04	INFO	t	Normurodov Boburjon	1	3
1005	2023-04-04	INFO	t	Abduvaliyev Sarvar	1	3
1006	2023-03-16	INFO	t	Xikmatov Shavkat 	3	3
1007	2023-02-16	INFO	f	Xushvaqtova \nMuqaddas 	3	3
1008	2023-02-16	INFO	f	Qarshiyeva Muborak 	3	3
1009	2023-02-16	INFO	t	Xaitova Dilorom 	3	3
1010	2023-02-16	INFO	f	Yo'ldosheva Gulsara 	3	3
1011	2023-02-16	INFO	f	Nazarova Matluba 	3	3
1012	2023-02-16	INFO	f	Xoljigitova Nargiza 	3	3
1013	2023-02-16	INFO	f	Amirov Oxunjon 	3	3
1014	2023-02-16	INFO	f	Janiyeva Shoira 	3	3
1015	2023-02-16	INFO	f	O'sarova Xosiyat 	3	3
1016	2023-02-16	INFO	f	Shukurova \nShoxsanam 	3	3
1017	2023-02-16	INFO	f	Jiyanova Shoxista 	3	3
1018	2023-02-16	INFO	f	Umarova Saboxat	3	3
1019	2023-02-16	INFO	f	Nosirova Zebiniso	3	3
1020	2023-02-16	INFO	f	Fozilova Nodira 	3	3
1021	2023-02-16	INFO	f	Isoqova Dilfuza	3	3
1022	2023-02-16	INFO	f	Daminova Sanobar	3	3
1023	2023-02-16	INFO	f	Shakarova Yulduz	3	3
1024	2023-02-16	INFO	f	Raxmanova Gulbaxor	3	3
1025	2023-02-16	INFO	f	Sanavarova Farida 	3	3
1026	2023-02-16	INFO	f	Qilicheva Iroda 	3	3
1027	2023-02-16	INFO	f	Ibragimova Nilufar	3	3
1028	2023-02-16	INFO	f	Xurramova Umida	3	3
1029	2023-02-16	INFO	f	Narzullayeva Chamangul 	3	3
1030	2023-02-16	INFO	f	Kuliyeva Dilnoza	3	3
1031	2023-02-16	INFO	f	Qranova Shaxlo 	3	3
1032	2023-03-01	INFO	f	Bozorboyev Shuxrat 	3	3
1033	2023-03-01	INFO	f	Amirova Dilfuza 	3	3
1034	2023-03-01	INFO	f	Xasanova Maxbuba 	3	3
1035	2023-03-01	INFO	f	Ulug'murodova Barno 	3	3
1036	2023-03-01	INFO	f	Oblayeva Shoira 	3	3
1037	2023-03-01	INFO	f	Omanova Muqaddas 	3	3
1038	2023-03-01	INFO	f	Shomurodova Mohinur 	3	3
1039	2023-03-01	INFO	f	Xidirova Jamila 	3	3
1040	2023-03-01	INFO	f	Toshtemirova Surayyo 	3	3
1041	2023-03-01	INFO	f	Ziyadullayeva Xurshida 	3	3
1042	2023-03-01	INFO	f	Iskandarova Nilufar 	3	3
1043	2023-03-01	INFO	f	Jo'rayeva Zulxumor	3	3
1044	2023-01-11	INFO	t	Musinov  Murodjon	1	1
1045	2023-01-31	INFO	t	Turanov Maxmud	1	6
1046	2023-01-31		f	Sadillayev Rizamat	1	6
1047	2023-01-31		f	Suyunboyev Sunnatillo	1	6
1048	2023-01-31		f	Narzullayev Samandar	1	6
1049	2023-01-31		f	Mamatqulov Mashxurbek	1	6
1050	2023-01-31		f	Mehriqulov Diyorbek	1	6
1051	2023-01-31		f	Xudoyberdiyev Mirkomil	1	6
1052	2023-01-31		f	Anarqulov Turdiali	1	6
1053	2023-03-03		f	Abdusamatova\tSurayyo	3	3
1054	2023-03-03		f	Fayziyeva\tUmida	3	3
1055	2023-03-03		f	Nomozova\tGulbahor	3	3
1056	2023-03-03		f	Norboyeva\tDilorom	3	3
1057	2023-03-03		f	Narziyeva\tYulduz	3	3
1058	2023-03-03		f	Qo'ziyeva\tXurshida	3	3
1059	2023-03-03		f	Boltaboyeva\tHilola	3	3
1060	2023-03-03		f	Mahramova\tNasibali	3	3
1061	2023-03-03		f	Nurmatova\tHilola	3	3
1062	2023-03-03		f	Mardonova\tGulshoda	3	3
1063	2023-03-03		f	Boboqulova\tLaylo	3	3
1064	2023-03-03		f	Avolboyeva\tAziza	3	3
1065	2023-03-03		f	Nurjavova\tMunira	3	3
1066	2023-03-03		f	Abduvohidova\tIroda	3	3
1067	2023-03-03		f	Abdusattorova\tFeruza	3	3
1068	2023-03-03		f	Toshtemirova\tNafisa	3	3
1069	2023-03-03		f	Yangiboyeva\tGulmira	3	3
1070	2023-03-03		f	Eshnazarova\tYulduz	3	3
1071	2023-03-03		f	Xoliqova\tMunira	3	3
1072	2023-03-03		f	Ibragimova\tRaziya	3	3
1073	2023-03-03		f	Saidova\tGulnora	3	3
1074	2023-03-03		f	Pardaboyeva\tYulduz	3	3
1075	2023-03-03		f	Aliqulova\tMaftuna	3	3
1076	2023-03-03		f	Abdullayeva\tShahnoza	3	3
1077	2023-03-03		f	Qaxxorova\tSarvinoz	3	3
1078	2023-03-03		f	Eshimova\tSanobar	3	3
1079	2023-03-03		f	Usmanova\tUmida	3	3
1080	2023-03-03		f	Qurbonova\tSayyora	3	3
1280	2023-04-06	INFO	f	Nasirova Marg'uba	3	3
1081	2023-03-03		f	Safarova\tDilnoza	3	3
1082	2023-03-03		f	Abdullayeva\tShaxnoza	3	3
1083	2023-03-03		f	Qo'ziyeva\tXurshida	3	3
1084	2023-03-03		f	Boltaboyeva\tHilola	3	3
1085	2023-03-03		f	Mahramova\tNasibali	3	3
1086	2023-04-01		t	Jalilov Shoxrux	1	3
1087	2023-04-01		f	Nusharova Zebo	1	3
1088	2023-04-01		f	Turanova Dilobar	1	3
1089	2023-04-01		t	Abduraxmonov Umidjon	1	3
1090	2023-04-01		f	Axrorov Inomjon	1	3
1091	2023-04-01		f	Axrorov Inomjon	1	3
1092	2023-04-01		f	Amirdinov Diyorbek	1	3
1093	2023-04-01		f	Suyunov Azizbek	1	3
1094	2023-04-01		f	Isoqulov Jahongir	1	3
1095	2023-04-01		f	Mustafaqulov Shaxriyor	1	3
1096	2023-04-01		f	Tog'ayeva Umida	1	3
1097	2023-04-01		f	Saidmurodov G'iyosjon	1	3
1098	2023-04-01		f	Nematullayeva Odina	1	3
1099	2023-04-01		t	Saidmurodov Abdulaziz	1	3
1100	2023-04-01		f	Quvonova Malika	1	3
1101	2023-04-01		t	Ergashev Javohir	1	3
1102	2023-04-01		f	Mamatova Jasmin	1	3
1103	2023-04-01		f	Shodmonova Sevinch	1	3
1104	2023-04-01		f	Normuhammadqulova Sevinch	1	3
1105	2023-04-01		t	Fayzullayev Erkin	1	3
1106	2023-04-01		f	Mamarajabova Zarina	1	3
1107	2023-04-01		t	G'afurov Abulfayz	1	3
1108	2023-04-01		f	Erkinov Diyorbek	1	3
1109	2023-04-01		f	Baxtiyorov Shuxrat	1	3
1110	2023-04-01		f	Ergasheva Muxsina	1	3
1111	2023-04-01		f	Axberdiyev Muxriddin	1	3
1112	2023-04-01		f	Ergasheva Nozila	1	3
1113	2023-04-01		f	Danaboyeva Dilrabo	1	3
1114	2023-04-01		f	Ergasheva Dilorom	1	3
1115	2023-04-08		f	Yuldasheva Nargiz	1	3
1116	2023-04-01		t	Ubayev Amirxon	1	3
1117	2023-04-01		f	Normuratova Ra'no	1	3
1118	2023-04-01		f	Xasanova Dilrabo	1	3
1119	2023-04-01		t	Ablaqulov Dilshod	1	3
1120	2023-04-01		f	Abdurahmonov Behruz	1	3
1121	2023-04-01		f	Jumanazarova Fazilat	1	3
1122	2023-04-01		t	Xolbekov Sadulla	1	3
1123	2023-04-03		f	O'ktamboyev Ibrohim	1	3
1124	2023-04-04		f	Nimatillayev Xurshid	1	3
1125	2023-04-04		f	Umirova Dildora	1	3
1126	2023-04-01		t	Baxriddinov Shuxrat	1	3
1127	2023-04-06		f	Baxriddinov Shuxrat	1	3
1128	2023-03-03		f	Akhrorov Mukhammad	1	2
1129	2023-03-03		f	Juraqulov  Ilyosjon	1	2
1130	2023-03-03		f	Axmadjonov Sunnatillo	1	2
1131	2023-03-03		f	Bekmuratov Behzod	1	2
1132	2023-03-03		f	Mardonov Shaxriyor	1	2
1133	2023-03-03		f	Anvarov Doniyor	1	2
1134	2023-03-03		f	Zubaydov Ismoilbek	1	2
1135	2023-03-03		f	Muxsinjanov Xayotjon	1	2
1136	2023-03-03		f	Asadullayev Abubakir	1	2
1137	2023-03-03		f	Matlabov Ramizjon	1	2
1138	2022-12-22	INFO	t	Sayfiddinov Jonibek	1	3
1139	2022-12-20		f	Xudoyberdiyev Hojiakbar	1	3
1140	2022-12-22		f	Umrzoqov Alixon	1	3
1141	2022-12-22		f	Umrzoqov Mehrojhon	1	3
1142	2022-12-22		f	Sharofitdinova Baxriniso	1	3
1143	2022-12-22		f	Nuriddinova Mehribon	1	3
1144	2022-12-22		f	Nuriddinov Shoxrux	1	3
1145	2022-12-22		f	Xayitboyeva Dilnura	1	3
1146	2022-12-22		t	Burxonov Asror	1	3
1147	2022-12-22		f	Usmonova Farangiz	1	3
1148	2022-12-22		t	Jumanov Shaxboz	1	3
1149	2022-12-22		f	Abduraimova Nozima	1	3
1150	2022-12-22		f	Saidaxmatova Shaxrizoda	1	3
1151	2022-12-22		t	Xaydarov Og'abek	1	3
1152	2022-12-22		f	Xusanov Xushnud	1	3
1153	2022-12-22		f	Davronov Islom	1	3
1154	2022-12-22		f	Xaliliy Iso	1	3
1155	2022-12-22		f	Yusupov Diyor	1	3
1156	2022-12-22		f	Ilxomov Laziz	1	3
1157	2022-12-22		f	Ostonov Diyor	1	3
1158	2022-12-22		f	Qaxxorova Dilbar	1	3
1159	2022-12-22		f	Xursandmurodov Lazizbek	1	3
1160	2022-12-22		f	Doniyorova Sevara	1	3
1161	2022-12-28		f	Safarov Shaxzod	1	3
1162	2022-12-28		f	Baxriev Baxtiyor	1	3
1163	2022-12-28		f	Yunusov Shaxzod	1	3
1164	2022-12-28		f	Otaqulova Durdona	1	3
1165	2022-12-28		f	Omonova Ruxsora	1	3
1166	2022-12-28		f	Toshtemirov Umid	1	3
1167	2022-12-28		f	Abdukarimov Diyor	1	3
1168	2022-12-28		f	Sadullayev Akmal	1	3
1169	2022-12-28		f	Rahmonqulov Aminjon	1	3
1170	2022-12-28		f	Samarov Shahobiddin	1	3
1171	2022-12-28		f	O'ktamov Javoxir	1	3
1176	2022-12-22	INFO	f	Nusharova Shahlo	3	3
1177	2022-12-22		f	Shodmonova Rohila	3	3
1178	2022-12-22		f	Isoqova Lobar	3	3
1179	2022-12-22		f	Azizova Matluba	3	3
1180	2023-03-02	INFO	f	Egamberdiyeva Muxlisa	3	3
1181	2023-03-02	INFO	f	Jiyanmurodova  Rashida	3	3
1182	2023-03-02		f	Xudoyberdiyeva  Gulnora	3	3
1183	2023-03-02		f	Abdurahmonova  Fotima	3	3
1184	2023-02-01		f	Xushvaqtova  Muqaddas	3	3
1185	2023-03-02		f	Shukurova  Shoxsanam	3	3
1186	2023-04-02	INFO	t	Baxtiyorov Kamoliddin	1	2
1187	2023-04-02		f	Bo'riboyev Bekjon	1	2
1188	2023-04-02		f	Nurmamatov Asilbek	1	2
1189	2023-04-02		f	Nasriddinov Farrux	1	2
1190	2023-02-01	INFO	f	Norqulova  Gulniso	3	3
1191	2023-03-01		f	To'raqulova Go'zal	3	3
1192	2023-11-05	INFO	f	Xujamuratova Muxayyo	3	3
1193	2023-11-05		f	Ubaydullayeva Sevara	3	3
1194	2023-04-15		f	Nimatullayev Xurshid	1	3
1195	2023-04-05		f	Umirova Dildora	1	2
1196	5023-04-05		f	Baxriddinov Shuxrat	1	2
1197	2023-04-05		t	Abdurahmonov Shuxrat	1	2
1198	2023-04-15		f	Abdusattarova feruza	1	3
1199	2023-04-05	INFO	t	Abdurahmonov Umidjon	1	2
1200	2023-04-15		f	Abdusattarova Feruza	1	3
1201	2023-04-04	INFO	f	Abdusoliyeva Maftuna	3	3
1202	2023-03-06	INFO	f	Jalolova Kimyo	3	3
1203	2023-03-06	INFO	f	Adiljonova Gulg'uncham	3	3
1204	2023-03-06	INFO	f	Norqulova Hilola	3	3
1205	2023-03-06	INFO	f	Tursunova Zebiniso	3	3
1206	2023-03-06	INFO	f	Mustafoyeva Dlnoza	3	3
1207	2023-03-06	INFO	f	Ibragimova Sadoqat	3	3
1208	2023-03-06	INFO	f	Urakova Dilrabo	3	3
1209	2023-03-06	INFO	f	Nurmatova Muxayyo	3	3
1210	2023-03-06	INFO	f	Jabbarova Mutabar	3	3
1211	2023-03-06	INFO	f	Bobojonova Dilafruz	3	3
1212	2023-03-06	INFO	f	Boymirzayeva Sanoat	3	3
1213	2023-03-06	INFO	f	Ibragimova Baxtigul	3	3
1214	2023-03-06	INFO	f	Umirzakova Dildora	3	3
1215	2023-03-06	INFO	f	Azimova Aziza	3	3
1216	2023-03-06	INFO	f	Nordirova Hayriniso	3	3
1217	2023-03-06	INFO	f	Xo'rozova Marg'uba	3	3
1218	2023-03-06	INFO	f	Nodirova Hayriniso	3	3
1219	2023-03-06	INFO	f	Umirova Sohiba	3	3
1220	2023-03-06	INFO	f	Xursanova Muxlisa	3	3
1221	2023-03-06	INFO	f	Sultonmurodova Nodira	3	3
1222	2023-03-06	INFO	f	Mavlonova Rushona	3	3
1223	2023-03-06	INFO	f	Absattarov Mirsaid	3	3
1224	2023-03-06	INFO	f	Toshboyeva Gulmira	3	3
1225	2023-03-06	INFO	f	Ibragimova Nafisa	3	3
1226	2023-03-06	INFO	f	Sanaqulova Dildora	3	3
1227	2023-03-06	INFO	f	Usmonova Baxtigul	3	3
1228	2023-03-06	INFO	f	Aralova Zulayxo	3	3
1229	2023-03-06	INFO	f	Tog'ayeva Zebiniso	3	3
1230	2023-03-06	INFO	f	Nomozova Fazilat	3	3
1231	2023-03-06	INFO	f	To'raxonova Mahliyo	3	3
1232	2023-04-04	INFO	f	Qurbonova Gulxayo	3	3
1233	2023-03-06	INFO	f	Davirova Umida	3	3
1234	2023-03-06	INFO	f	Fayzullayeva Fazilat	3	3
1235	2023-03-06	INFO	f	Muxiddinova Maxliyo	3	3
1236	2023-03-06	INFO	f	Umirova Matluba 	3	3
1237	2023-03-06	INFO	f	Ergasheva Guljaxon	3	3
1238	2023-03-06	INFO	f	Ro`ziqulva Shaxnoza 	3	3
1239	2023-03-06	INFO	f	Ulashuva Shahlo	3	3
1240	2023-03-06	INFO	f	Xushbekova Nargiza	3	3
1241	2023-03-06	INFO	f	Namuroduva Sojida	3	3
1242	2023-03-06	INFO	f	Abilova Dinora	3	3
1243	2023-03-06	INFO	f	Gaziyeva Iroda	3	3
1244	2023-03-06	INFO	f	Samanova Sevara	3	3
1245	2023-03-06	INFO	f	Musoyeva Mavluda	3	3
1246	2023-03-06	INFO	f	Nurmurodova Nigora	3	3
1247	2023-03-06	INFO	f	Muxtorova Noila	3	3
1248	2023-03-06	INFO	f	Boltayeva Maxliyo	3	3
1249	2023-03-06	INFO	f	Azimova Gulbaxor	3	3
1250	2023-03-06	INFO	f	Maxsudova Gulnora	3	3
1251	2023-03-06	INFO	f	Mavlonova Dilobar	3	3
1252	2023-03-06	INFO	f	Majidova Rayhona	3	3
1253	2023-03-06	INFO	f	Axmedova Surayyo	3	3
1254	2023-03-06	INFO	f	Saidkamolova Gulmira	3	3
1255	2023-03-06	INFO	f	Nazarova Feruza 	3	3
1256	2023-03-06	INFO	f	Aminova Noila	3	3
1257	2023-03-06	INFO	f	Urakova Madina	3	3
1258	2023-03-06	INFO	f	Amirova Mashhura	3	3
1259	2023-03-06	INFO	f	Maxammadiyeva Moxigul	3	3
1260	2023-03-06	INFO	f	Rashidova Mukarram	3	3
1261	2023-03-06	INFO	f	Nomozova Fazilat	3	3
1262	2023-03-06	INFO	f	To'raxonova Mahliyo	3	3
1281	2023-04-06	INFO	f	Elmuradova Holbuvi	3	3
1282	2023-04-06	INFO	f	Tursunqulova Barchinoy	3	3
1283	2023-04-06	INFO	f	Qarshiboeva Dilfuza	3	3
1284	2023-04-06	INFO	f	Xudayqulova Nilufar	3	3
1285	2023-04-06	INFO	f	Juraeva Dildora	3	3
1286	2023-04-06	INFO	f	Tursunova Obod	3	3
1287	2023-04-06	INFO	f	Berdieva Muxtaram	3	3
1288	2023-04-06	INFO	f	Azimova Gulmera	3	3
1289	2023-04-06	INFO	f	Umarova Mohira	3	3
1290	2023-04-06	INFO	f	Ostanova Fotima	3	3
1291	2023-02-21		f	G'aybullayeva Nigina	1	6
1292	2023-01-21		f	Jamoliddinova Mohinur	1	6
1297	2023-01-05		f	Eshqulov Oybek	1	2
1298	2023-01-05		f	Pardayev Og'abek	1	2
1301	2023-04-15	INFO	t	Nurmaxmatov Bexruz	1	3
1302	2023-04-15		f	Davronov Damir	1	3
1307	2023-04-15		f	Absalomov Abdulaziz	1	3
1308	2023-04-15		f	Mavlonqulov Islom	1	3
1309	2023-04-15		f	Baxriddinov Sherbek	1	3
1310	2023-04-15		f	Haqberdiyeva Nigina	1	3
1311	2023-04-15		f	Ergasheva  Nigina	1	3
1312	2023-04-15		f	Ergasheva Sevinch	1	3
1313	2023-04-15		t	Murodov Abduraxmon	1	3
1314	2023-04-15		f	Azimov Damir	1	3
1315	2023-04-15		f	Tolibov Doniyor	1	3
1316	2023-04-15		f	Xaliqov Muhammad	1	3
1317	2023-04-15		f	Yusupov Farrux	1	3
1318	2023-04-15		f	Jafariddinova Amina	1	3
1319	2023-04-15		t	Abdumuxtorov Xojiakbar	1	3
1320	2023-04-15		f	Jafariddinova Aida	1	3
1321	2023-04-15		t	Igamberdiyev Axror	1	3
1322	2023-04-15		f	Igamberdiyev Abdullo	1	3
1323	2023-04-15		f	Saidov Abdulaziz	1	3
1324	2023-04-15		f	Saidov Abdulaziz	1	3
1325	2023-04-15		f	Asatullayev Xusen	1	3
1326	2023-04-15		f	Irisov Sadinbek	1	3
1327	2023-04-15		f	Karimov Diyorbek	1	3
1328	2023-04-15		f	Rabbimqulov Javoxir	1	3
1329	2023-04-15		f	Irisov Farxod	1	3
1330	2023-04-04		f	Karimov Islom	1	2
1331	2023-04-04		f	Davronov Baxtiyor	1	2
1332	2023-04-04		f	Sadullayev Sadullo	1	2
1333	2023-04-04		f	Baxadirov Diyorbek	1	2
1334	2023-04-04		f	Sirojev Shoxjaxon	1	2
1335	2023-04-04		f	Samadov Abduhamid	1	2
1336	2023-04-04		f	Razzoqov Ozodbek	1	2
1337	2023-04-15	INFO	t	Murodov Abdurahmon	1	3
1338	2023-03-09	INFO	t	Muqaddasov Savlatjon	3	3
1339	2023-03-09	INFO	f	Xolmuminova Gulshod	3	3
1340	2023-03-09	INFO	f	Ergasheva Dildora	3	3
1341	2023-03-09	INFO	f	Xudoyberdyeva Sevara	3	3
1342	2023-03-09	INFO	f	Nematova Muhayyo	3	3
1343	2023-03-09	INFO	f	Igamberdiyeva Arzigul	3	3
1344	2023-03-09	INFO	f	Shermatova Lutfiya	3	3
1345	2023-03-09	INFO	f	Abdullayeva Gulhayo	3	3
1346	2023-03-09	INFO	f	Shukurova Parvina	3	3
1347	2023-03-09	INFO	f	Xasanova Ayshaxar	3	3
1348	2023-03-09	INFO	f	Miyliyeva Go'zal	3	3
1349	2023-03-09	INFO	f	Erkinova Iroda	3	3
1350	2023-03-09	INFO	f	Butayeva  Sojida	3	3
1351	2023-03-09	INFO	f	Ravshanova Maxsuda	3	3
1352	2023-03-09	INFO	f	Sanaqulova Muhayyo	3	3
1353	2023-03-09	INFO	f	Allamuratova Yulduz	3	3
1354	2023-03-09	INFO	f	Soatova Zarina	3	3
1355	2023-03-09	INFO	f	Ravshanova Maxsuda	3	3
1356	2023-03-09	INFO	f	Muminova Nodira	3	3
1357	2023-03-09	INFO	f	Sadinova Nilufar	3	3
1358	2023-03-09	INFO	f	Rashidova Gulhayo	3	3
1359	2023-03-09	INFO	f	Quchqorova Zebiniso	3	3
1360	2023-03-09	INFO	f	Xamidova Munisa	3	3
1361	2023-03-09	INFO	f	Xujanova Gulovar	3	3
1362	2023-03-09	INFO	f	Usmonova Yayra	3	3
1363	2023-03-09	INFO	f	Elmuratova Mohigul	3	3
1364	2023-03-09	INFO	f	Rayimova Mohira	3	3
1365	2023-03-09	INFO	f	Elmurodova Sojida	3	3
1366	2023-03-09	INFO	f	Amirova Mubora	3	3
1367	2023-03-09	INFO	f	Jabborova Shaxnoza	3	3
1368	2023-03-09	INFO	f	Tojiyeva Gulbahor	3	3
1369	2023-03-09	INFO	t	Mardonov Jasur	3	3
1370	2023-03-09	INFO	f	Suyunova Shaxnoza	3	3
1371	2023-03-09	INFO	f	Boboyorova Bahora	3	3
1372	2023-03-09	INFO	f	Ochilova Rano	3	3
1373	2023-03-09	INFO	f	Amirova Zarifa	3	3
1374	2023-03-09	INFO	f	Sagdullayeva Go'zal	3	3
1375	2023-03-09	INFO	f	Qurbonova Gulzor	3	3
1376	2023-03-09	INFO	f	Asatova Parvina	3	3
1377	2023-03-09	INFO	f	Rasulova Dilnoza	3	3
1378	2023-03-09	INFO	f	Xasanova Samara	3	3
1379	2023-03-09	INFO	f	Umarov Soyibnazar	3	3
1380	2023-03-09	INFO	f	Xaydaroova Dilfuza	3	3
1381	2023-03-09	INFO	f	Uljayeva Lola	3	3
1382	2023-03-09	INFO	f	Xudaynazarova Feruza	3	3
1383	2023-03-09	INFO	f	Rajabova Marifat	3	3
1384	2023-03-09	INFO	f	Norqobilova Gulandon	3	3
1385	2023-03-09	INFO	f	Nurmamatova Dilshoda	3	3
1386	2023-03-09	INFO	f	Quchqorova Gulasal	3	3
1387	2023-03-09	INFO	f	Turayeva Munira	3	3
1388	2023-03-09	INFO	f	Mustafayeva Marxabo	3	3
1389	2023-03-09	INFO	f	Astanova Uytula	3	3
1390	2023-03-09	INFO	f	Amirova  Malika	3	3
1391	2023-03-09	INFO	f	Tursunov Sirojiddin	3	3
1392	2023-03-09	INFO	f	Butayeva Shohista	3	3
1393	2023-03-09	INFO	f	Xujanova Rayxona	3	3
1394	2023-03-09	INFO	f	Choriyeva Muqaddas	3	3
1395	2023-03-09	INFO	f	Mirzayeva Matluba	3	3
1396	2023-03-09	INFO	f	Maxmudova Saida	3	3
1397	2023-04-10	INFO	f	Farxodova Shaxzoda	1	3
1398	2023-03-10		t	Norboyev Ruslan	1	3
1399	2023-03-10		f	Ochiltoshova  Gulasal	1	3
1400	2022-10-22	INFO	t	Umrzoqov Mehrojhon	1	3
1401	2023-04-15	INFO	t	Mamaraimov Muhammad	1	3
1402	2023-04-15		f	Irisov Farrux	1	3
1403	2023-03-18	INFO	t	Muqaddasov Savlatjon	1	3
1404	2023-03-18	INFO	f	G'ulomova Sevinchbonu 	1	3
1405	2023-03-18	INFO	f	Xidirova Sevinch 	1	3
1406	2023-03-18	INFO	f	Abdunorov Asilbek 	1	3
1407	2023-03-18	INFO	t	Xudoyberdiyev Shaxobiddin 	1	3
1408	2023-03-18	INFO	t	Rizayev Ozodbek	1	3
1409	2023-03-18	INFO	t	Bahromov Maruf 	1	3
1410	2023-03-18	INFO	f	Safarova Zarina 	1	3
1411	2023-03-18	INFO	f	Toshtemirova Sevinchbonu 	1	3
1412	2023-04-03	INFO	t	Xushiyev Samandar 	1	3
1413	2023-04-03	INFO	t	Karimjonov Alisher 	1	3
1414	2023-04-03	INFO	f	Ziyatova Sevara 	1	3
1415	2023-04-03	INFO	t	Bekov Doniyor 	1	3
1416	2023-04-03	INFO	t	Jurayev Abdulaziz 	1	3
1417	2023-04-03	INFO	t	Abdurahimov Nodirbek 	1	3
1418	2023-04-03	INFO	t	Axrorov Anvar 	1	3
1419	2023-04-03	INFO	t	Yunusov Davlat 	1	3
1420	2023-04-03	INFO	t	Kamolov Abdulaziz	1	3
1421	2023-04-03	INFO	f	Jabborova Durdona 	1	3
1422	2023-04-03	INFO	f	Umrzoqova Fazilat  	1	3
1423	2023-04-03	INFO	t	Namozov Behruz 	1	3
1424	2023-04-03	INFO	t	O'ktamov Temur 	1	3
1425	2023-03-18	INFO	f	Xusanova Jonona 	1	3
1426	2022-11-11	INFO	t	Shogdorov Firdavs 	1	3
1427	2022-09-08	INFO	f	Normurodova Dilfuza 	1	3
1428	2022-09-08	INFO	f	Ergasheva Nilufar 	1	3
1429	2023-04-03	INFO	f	Sanatova Munavvara 	1	3
1430	2023-02-09	INFO	t	Kamolova Gulmira 	3	3
1431	2023-02-09	INFO	f	Ilmurodova Nilufar 	3	3
1432	2023-02-09	INFO	f	Fozilova Nargiza 	3	3
1433	2023-02-09	INFO	f	Rahmonova Dildora 	3	3
1434	2023-02-09	INFO	t	Sharopova Gulshoda 	3	3
1435	2023-02-09	INFO	t	Saitmuratova Zaynab 	3	3
1436	2023-02-09	INFO	t	Xaitova Dildora 	3	3
1437	2023-02-09	INFO	f	Babadjanova Madina 	3	3
1438	2023-02-09	INFO	f	Bo'diqova Rano 	3	3
1439	2023-01-25	INFO	t	Narzullayev Ulug'bek 	1	10
1440	2023-01-25		f	Ilhomov Oybek 	1	10
1441	2023-01-25		f	Nosirov Temur 	1	10
1442	2023-01-25		f	Sattorov Maxsud 	1	10
1443	2023-01-25		f	Ruptullayev Nurnazar 	1	10
1444	2023-01-25		f	Qurbonov Bobur 	1	10
1445	2023-01-25		f	Izzatullayev Asadbek 	1	10
1446	2023-01-25		f	Xushmurodov Shoxruz 	1	10
1447	2023-01-25		f	Odilov Bobosher 	1	10
1448	2023-01-25		f	Xolov Bekzod	1	10
1449	2022-11-10		f	Azimov Isfandiyor 	1	10
1450	2022-11-10		f	Shavqiddinov Jahongir 	1	10
1451	2023-03-15	INFO	t	Shomurodov Shoxjahon 	1	2
1452	2023-03-16	INFO	f	Axmedova Gulshan	1	3
1453	2023-04-20		t	Barakayev Fayoz	1	4
1454	2023-03-09	INFO	f	Tojiyeva Gulbahor	1	3
1455	2023-03-09		f	Mardonov Jasur	1	3
1456	2023-04-10	INFO	f	Xaydarova Dilfuza	1	3
1457	2023-03-10		f	Nurmamatova Dilshoda	1	3
1458	2023-04-10		f	Mustafayeva Dildor	1	3
1459	2023-04-10		f	Butayeva Shohista	1	3
1460	2023-04-10		f	Xujanova Rayxona	1	3
1461	2023-04-10		f	Choriyeva Muqaddas	1	3
6622	2024-08-20	INFO	t	Rafiqov  Javohir 	2	3
1464	2023-04-10		f	Mizamov Saidmurod	1	3
1465	2023-04-10	INFO	f	Azizov Begali	3	3
1466	2023-04-10	INFO	f	Xaydarova Dilfuza	3	3
1467	2023-04-10		f	Nurmamatova Dilshoda	3	3
1468	2023-04-10		f	Mustafayeva Dildor	3	3
1469	2023-02-01	INFO	f	Boriyeva Dilrabo	1	3
1470	2023-02-01		f	Alikulova  Zarnigor	1	3
1471	2023-02-01		f	Karimova Dilnoza	1	3
1472	2023-02-01		f	Xalilova\tDilfuza	1	3
1473	2023-02-02		f	Toraqulov  Dilshod	1	3
1474	2023-02-01		f	Jorqulova  Sevinch	1	3
1475	2023-03-10		f	Karjabova Dilnoza 	3	3
1476	2023-04-10	INFO	f	Seytmefayeva Ilmira	3	3
1477	2023-04-10		f	Vafokulova Dilfuza	3	3
1478	2023-04-10		f	Pirmuxamedova Jamila	3	3
1479	2023-04-10		f	Urdiyeva Mamura	3	3
1480	2023-04-10		f	Davronova Shaxlo	3	3
1481	2023-04-10		f	Sevarqulova Zarina	3	3
1482	2023-04-10		f	Hojimurodova Dilfuza	3	3
1483	2023-04-20	INFO	t	Qabulov Abdurauf	1	4
1484	2023-02-04	INFO	t	Toshmurodov  Zuxriddin	1	4
1485	2023-04-07	INFO	t	Hotamov Quvonchbek	1	3
1486	2023-04-17	INFO	f	Shodiyeva Sevinch	1	3
1487	2023-04-01	INFO	t	Buriyev Sardor	1	1
1489	2023-01-10	INFO	t	Yaxshimurodov Islombek	1	3
1490	2023-05-02	INFO	t	Isomiddinov Asomiddin	1	3
1491	2023-05-02		f	Jo'raqulov Zahriddin	1	3
1492	2023-05-02		f	Jalilov Sardor	1	3
1493	2023-05-02		f	Xolboyeva Xosila	1	3
1494	2023-05-02		f	Kamolov Sherbek	1	3
1495	2023-05-02		f	Orolov  Jonibek	1	3
1496	2023-05-02		f	Shermuhamedov Salex	1	3
1497	2023-05-02		f	Amonjonova Halima	1	3
1498	2023-05-02	INFO	t	    Jabborov Ansor	1	3
1499	2023-05-02		f	Aliyev Isroil	1	3
1500	2023-05-02		f	Sadriddinov Asilbek	1	3
1501	2023-05-02		f	Yusufjonova Zarina	1	3
1502	2023-05-02		f	Ravshanov Otabek	1	3
1503	2023-05-02	INFO	t	O'ktamov Damirjon	1	3
1504	2023-05-02		f	Islomov Aminjon	1	3
1505	2023-05-02		f	Norqulov Daler	1	3
1506	2023-05-02		f	Yuldashov Faridun	1	3
1507	2023-05-02		f	Norboboyev Elbek	1	3
1508	2023-05-02		f	Norboyev Elbek	1	3
1509	2023-05-02	INFO	t	Mansurov  Islombek	1	4
1510	2023-03-23	INFO	f	Habiyeva\tSevinch	1	3
1511	2023-03-23		t	Davranov\tKemran	1	3
1512	2023-03-23		f	Hojiqurbonov \tBahodir	1	3
1513	2023-03-23		f	Hajiqurbonov \tBobur	1	3
1514	2023-03-23	INFO	t	Umarov \tBunyod	1	3
1515	2023-03-23		f	Usmonov \tFayoz	1	3
1516	2023-03-23		f	Davronov \tOg'abek	1	3
1517	2023-03-23		f	Akromov\tLaziz	1	3
1518	2023-03-23		f	Tursunov\tMexroj	1	3
1519	2023-03-23		f	Saidov \tShaxzodxon	1	3
1520	2023-03-23		f	Do'smaxatov\t Sharof	1	3
1521	2023-03-30		f	Ergashev \tXasan	1	9
1522	2023-03-30		f	Orziqulova Samira	1	9
1523	2023-04-23	INFO	t	Mamaraximov \tShoxruz	1	3
1524	2023-03-23		f	Toxirova \tFeruza	1	3
1525	2023-03-23		f	Turdiyeva\tGuzal	1	3
1526	2023-04-23		f	Yuldasheva\tMehribon	1	3
1527	2023-04-23		f	Eshpulatova \tAziza	1	3
1528	2023-04-23		f	Nasrullayeva \tOzoda	1	3
1529	2023-04-23		f	Saidqulova \tAziza	1	3
1530	2023-04-23		f	Sulaymonova\tOyjamol	1	3
1531	2023-04-01	INFO	t	Egamov Asilbek	2	3
6623	2024-09-07	INFO	t	Boymirzayev Uchqun	2	2
1534	2023-04-01		f	Atoqulova Gulchehra	2	3
1535	2023-02-04		t	Eshtursinov Temurbek	2	3
1536	2023-04-01		f	Quvonov Behruz	2	3
6646	2024-09-07	INFO	t	Xudoyqulov Sunnat	2	2
6647	2024-09-07	INFO	t	Shamsiddinov Komiljon	2	2
1539	2023-04-01		f	Axmedjanov Amir	2	3
1540	2023-04-01		f	Saidmurodov Fayozbek	2	3
1541	2023-04-01		f	Yusupov Lazizbek	2	3
1542	2023-04-01		f	Zaidov Damir	2	3
1543	2023-04-01		f	Ga'niyev Sardor	2	3
1544	2023-03-16	INFO	f	Bo`ronova Zilola	3	3
1545	2023-03-16		f	Hosilova Dilshoda	3	3
1546	2023-03-16		f	Vafoyiva Umida	3	3
1547	2023-03-16		f	Xayitova Dildora	3	3
1548	2023-03-20		f	Xayitova Gulirano	3	3
1549	2023-03-20		f	Rasulova Dilobar	3	3
1550	2023-03-20		f	Jumayeva Shahodat	3	3
1551	2023-03-16		f	Murodova Shahnoza	3	3
1552	2023-03-20		f	Islomova Gulshoda	3	3
1553	2023-02-20		f	Qodirova  Feruza	3	3
1554	2023-03-20		f	Nigmatova Shohsanam	3	3
1555	2023-03-20		f	Shovvoziva Yulduz	3	3
1556	2023-03-20		f	Qayumova Mohira	3	3
1557	2023-03-12		t	Alimov Dadaxon	1	3
1558	2023-03-22		f	Muhtorov Shamshod	1	3
1559	2023-03-29		f	Ivadullayev Boburmirzo	1	3
1560	2023-04-10		f	Karimova Feruza	1	3
1561	2023-04-05		f	Toirov Bobur	1	3
1562	2023-04-13		f	Hayitova Sevinch	1	3
1563	2023-04-13		f	Pulatov Hojiakbar	1	3
1564	2023-04-23		f	Arziyeva Mastura	1	3
1565	2023-04-17		f	Ruziyeva  Navruza	1	3
1566	2023-04-24		f	Muhtorova Madina	1	3
1567	2023-04-24		f	Hasanova  Shabbona	1	3
1568	2023-04-24		f	Usmonova  Yulduz	1	3
1569	2023-04-20		f	Boboqulova Sarvinoz	1	3
1570	2023-04-20		f	G`aybullayeva Malika	1	3
1571	2023-04-20		f	Tursunova Malika	1	3
1572	2023-04-20		f	Axmadov Doniyor	1	3
1573	2023-04-20		f	Bobomurodova Odina	1	3
1574	2023-04-20		f	Norqobilova Mohinur	1	3
1575	2023-04-20		f	Musardinova Sevinch	1	3
1576	2023-04-20		f	Xo`jayorov Abror	1	3
1577	2023-04-20		f	Hasanov Sherzod	1	3
1578	2023-04-20		f	Haydarova  Nigora	1	3
1579	2023-02-25		f	Ro`ziyeva Kumush	1	3
1580	2023-02-25		f	Xolmonov Nurali	1	3
1581	2023-02-25		f	Yodgorova Gulruh	1	3
1582	2023-02-25		t	Toxirov Xurshid	1	3
1583	2023-02-25		f	Ro`ziyeva Marhabo	1	3
1584	2023-05-01		f	Nazarova Baxtigul	3	3
1585	2023-05-01		f	Inoyatova Mehriniso	3	3
1586	2023-05-01		f	Xudayqulova Zilola	3	3
1587	2023-05-01		f	Xudayqulova Zilola	3	3
1588	2023-05-01		f	Radjabova Madina	3	3
1589	2023-05-01		f	Mirzayeva Nafisa	3	3
1590	2023-05-01		f	Samiddinova Shaxlo	3	3
1591	2023-05-01		f	Ostonova Dilafro'z	3	3
1592	2023-05-01		f	Jo'rayeva Feruza	3	3
1593	2023-05-01		f	Xamrayeva Gulxayo	3	3
1594	2023-05-01		f	Gadayeva Shaxlo	3	3
1595	2023-05-01		f	Yuldoshov Muxammad	3	3
1596	2023-05-01		f	Abdunabiyev Jo'rabek	3	3
1597	2023-05-01		f	Amanova Mamura	3	3
1598	2023-05-01		f	Abdilova Matluba	3	3
1599	2023-05-01		f	Qo'shmonava Nazokat	3	3
1600	2023-05-01		f	Boboqulova Maxsuda	3	3
1601	2023-05-01		f	Maxamatova Rano	3	3
1602	2023-05-01		f	Jiyanova Gulnoz	3	3
1603	2023-05-01		f	Qurbonova Sojida	3	3
1604	2023-05-01		f	Aminova Volida	3	3
1605	2023-05-01		f	Eshqobilova Dildora	3	3
1606	2023-05-01		f	Amirova Munavar	3	3
1607	2023-05-01		f	Juliboyeva Nodira	3	3
1608	2023-05-01		f	Normamatova Oyshirin	3	3
1609	2023-05-01		f	Faxriddinov Jaloliddin	3	3
1610	2023-05-01		f	Qo'shnazarov Fayzullo	3	3
1611	2023-05-01		f	Mizrapov Abriy	3	3
1612	2023-05-01		f	Shamsiyev Asliddin	3	3
1613	2023-05-01		f	Yalg'ashova Shoira	3	3
1614	2023-05-01		f	To'liyeva Firuza	3	3
1615	2023-05-01		f	Shoniyozova Nigora	3	3
1616	2023-05-01		f	Abduqodirova Saboxat	3	3
1617	2023-05-01		f	Mixliyeva Dildora	3	3
1618	2023-05-01		t	Rabbimov Anvar	3	3
1619	2023-01-05		f	Egamov Olimjon	3	3
1620	2023-05-01		f	Eshqobilov Sherali	3	3
1621	2023-05-01		f	To'xtasheva Dildora	3	3
1622	2023-05-01		f	Ergashova Muborak	3	3
1623	2023-05-01		f	Xasanova Gulhayo	3	3
1624	2023-05-01		f	Avazova Gulnoza	3	3
1625	2023-05-01		f	Dushanova Maloxat	3	3
1626	2023-05-01		f	Xamidov Sardor	1	3
1627	2023-01-05		f	Musurmonov Jo'rabek	1	3
2664	2023-07-02	INFO	f	Aliakbarova Sokina	1	3
1629	2023-04-05		f	Botirova\tRoziya	3	3
1630	2023-04-05		f	Norboboyeva\tMuyassar	3	3
1631	2023-04-05		f	Qo'ng'irova\tYulduz	3	3
1632	2023-04-05		f	Diyarova\tShoira	3	3
1633	2023-04-05		f	Suyarova\tZebo	3	3
1634	2023-04-05		f	Xalbayeva \tZibinisa	3	3
1635	2023-04-05		f	Irisova\tGulnora	3	3
1636	2023-04-05		f	Irisova\tGulnora	3	3
1637	2023-04-05		f	Rayimqulova\tDilorom	3	3
1638	2023-04-05		f	Abdunazarova\tSharbat	3	3
1639	2023-04-05		f	Arziqulova\tNilufar	3	3
1640	2023-04-05		f	Sabirova\tKlara	3	3
1641	2023-05-01		t	Mamaraximov  Shoxruz	1	3
1642	2023-05-01		f	Toxirova Feruza	1	3
1643	2023-05-01		f	Turdiyeva\tGuzal	1	3
1644	2023-05-01		f	Yuldasheva\tMehribon	1	3
1645	2023-05-01		f	Eshpulatova \tAziza	1	3
1646	2023-05-01		f	Nasrullayeva \tOzoda	1	3
1647	2023-05-01		f	Saidqulova  Aziza	1	3
1648	2023-05-01		f	Sulaymonova Oyjamol	1	3
1649	2023-04-25		f	Malikov Dilmurod	1	3
1650	2023-04-25		f	Malikov Dilmurod	1	3
1651	2023-04-25		f	Muhammadiyev Saidbek	1	3
1652	2023-04-25		f	Rustamov Tolibjon	1	3
1653	2023-04-25		f	Tog'ayev Nurmuhammad	1	3
1654	2023-04-25		f	Butunboyev Xudoyor	1	3
1655	2023-04-25		f	Tursunqulova Ziyoda	1	3
1656	2023-04-25		f	Yaxshiboyev Muhammad	1	3
1657	2023-04-25		f	Samatov Nodir	1	3
1658	2023-04-25		f	Nasriddinov Ozodbek	1	3
1659	2023-04-25		f	Isobekov Diyorbek	1	3
1660	2023-04-25		f	Yangiboyev Fozilbek	1	3
1661	2023-04-25		f	Norqulov Javohir	1	3
1662	2023-04-25		f	Po'latov Temur	1	3
1663	2023-04-25		f	Tolipov Amal	1	3
1664	2023-04-25		f	Bo'riboyeva Sevinch	1	3
1665	2023-04-25		f	Bozorov Uchqunjon	1	3
1666	2023-04-25		f	Mustafaqulov Mirjahon	1	3
1667	2023-04-25		f	Ismoilov Yorqinbek	1	3
1668	2023-04-25		f	Shobo'tayeva Shaxnoza	1	3
1669	2023-04-25		f	Absamatov Diyorbek	1	3
1670	2023-04-25		f	Toshpo'latov Nurali	1	3
1671	2023-04-25		f	Axtamov Ravshan	1	3
1672	2023-04-25		f	Sharofov Jamshid	1	3
1673	2023-04-25		f	Ilchiyev Bekzod	1	3
1674	2023-04-25		f	Samatov Hojiakbar	1	3
1675	2023-04-25		f	Ismoilov Yorqinbek	1	3
1676	2023-05-05	INFO	f	Ostonova Roxila	3	3
1677	2023-01-20	INFO	f	Xujamuratova Muxayyo	1	3
1678	2023-04-24	INFO	t	Murodullayev Abdulaziz	1	6
1679	2023-05-02	INFO	t	Xolbutayev  Azizbek	1	4
1680	2023-05-13	INFO	t	Abdullayev Azamat	1	2
1681	2023-05-12	INFO	f	Xursandova O'g'iloy	1	3
1682	2023-05-12		f	Tursunova Dinora	1	3
1683	2023-05-12		f	Mamirov Ma'rufjon	1	3
1684	2023-05-12		f	Bagirova Yulduz	1	3
1685	2023-05-12		f	Olimova Nasiba	1	3
1686	2023-05-12		f	Xamzayeva Mexribon	1	3
1687	2023-05-12		f	Yormamatova Sevinch	1	3
1688	2023-05-12		t	Yarmuhammedov Begzod	1	3
1689	2023-05-12		f	Ravshanov Shoxabbos	1	3
1690	2023-05-12		f	Matlabov Doniyor	1	3
1691	2023-05-12		f	Ubaydullayev Mavlonbek	1	3
1692	2023-05-12		f	Ahrorov Anisjon	1	3
1693	2023-05-12		f	Buronov Asiljon	1	3
1694	2023-05-12		f	Azimjonov Ibrohim	1	3
1695	2023-05-12		f	Abduraxmonov Zarux	1	3
1696	2023-05-12		f	Karimov Firdavs	1	3
1697	2023-05-12		f	Abdurayimov Doniyor	1	3
1698	2023-05-12		f	Erkinov Behruz	1	3
1699	2023-03-10		f	Toxirjonov Samir	1	3
1700	2023-05-16	INFO	t	Sultonov Shohjaxon	1	4
1701	2023-05-18	INFO	t	Abduqaxorov Rasulbek	1	6
1702	2023-04-19	INFO	t	Elmurodov Sayyor	1	3
1703	2023-04-04	INFO	t	Razokov Ozodbek	1	2
1704	2023-05-10	INFO	f	Xolboyeva Zebo	3	3
1705	2023-05-27	INFO	t	Shavkatov Shaxbozxon	2	1
1706	2023-05-27	INFO	t	Rayimov Muhammadjon	1	7
1707	2023-05-27	INFO	t	Habidillayev  Jamshidbek	1	3
1708	2023-06-05	INFO	f	Normuradova\tSevara	1	3
1709	2023-06-05		f	Ulug'muradova\tZilola	1	3
1710	2023-06-05		f	Turg'unova\tGulmira	1	3
1711	2023-06-05		f	Suyarova\tXusnora	1	3
1712	2023-06-05		f	Shodmanova\tHulkar	1	3
1713	2023-06-05		f	Toshpo'latova\tDilnoza	1	3
1714	2023-06-05		f	Toshmuradova\tFeruza	1	3
1715	2023-06-05		f	Primova\tIroda	1	3
1716	2023-06-05		f	Abduraimova\tMuhayyo	1	3
1717	2023-06-05		f	Bo'tayeva\tInobat	1	3
1718	2023-06-05		f	Quvvatova\tInobat	1	3
1719	2023-06-05		f	Sa'dinova\tFlyura	1	3
1720	2023-06-05		f	Jo'rayeva\tMuxlisa	1	3
1721	2023-06-05		f	Allayarova\tNargiza	1	3
1722	2023-06-05		f	Boboxolova\tGuldasda	1	3
1723	2023-05-10		f	Berdiyeva\tXurshida	1	3
1724	2023-05-10		f	Elmuradova\tUmida	1	3
1725	2023-05-10		f	Urinova\tShalola	1	3
1726	2023-05-10		f	Karimova\tMarvarid	1	3
1727	2023-05-10		f	Shodiyorov\tUmid	1	3
1728	2023-05-10		f	Baxronov\tSuxrob	1	3
1729	2023-05-10		f	Raximjonov\tHumoyun	1	3
1730	2023-05-10		f	Ruzimuradova\tRushana	1	3
1731	2023-05-25	INFO	t	Xolboyev Sarvarbek	1	3
1732	2023-05-31	INFO	t	Muqaddasov Savlatjon	1	3
1733	2023-05-31	INFO	t	Ergashev Jaloliddin	1	3
1734	2023-05-31	INFO	t	O'ralboyev Og'abek	1	3
1735	2023-05-31	INFO	t	Usmonov Muhammadali	1	3
1736	2023-05-31	INFO	t	Safarov Bobur	1	3
1737	2023-05-31	INFO	t	Xursandov Musurmon	1	3
1738	2023-05-31	INFO	t	Xolboyev Sarvarbek	1	3
1739	2023-05-31	INFO	t	Tolibov Muxammad Ali	1	3
1740	2023-05-31	INFO	t	Tolibova Shaxnoza	1	3
1741	2023-05-31	INFO	t	Shakarov Davlatbek	1	3
1742	2023-05-31	INFO	t	O'ktamov Azizbek	1	3
1743	2023-05-31	INFO	t	Toliibayeva Munisa	1	3
1744	2023-05-31	INFO	t	Hasanov Zafarbek	1	3
1745	2023-05-31	INFO	t	Murodinov Sarvarbek	1	3
2665	2023-01-13	INFO	t	Tohirov Davlat	1	3
1747	2023-05-31	INFO	t	Akbarov Akbarjon	1	3
1748	2023-05-31	INFO	t	Baxtiyorov Xasan	1	3
1749	2023-05-31	INFO	t	O’lmasov Muxammadjon	1	3
1750	2023-05-31	INFO	t	Ummatov Abdulhamid	1	3
1751	2023-05-31	INFO	t	Negmatov Tulkinjon	1	3
1752	2023-05-31	INFO	t	Jabborqulov Dilbek	1	3
1753	2023-05-31	INFO	t	Normuradov Sardorbek	1	3
1754	2023-05-31	INFO	t	G‘aybullayev Boburbek	1	3
1755	2023-05-31	INFO	t	Yusufov Shahriyor	1	3
1756	2023-05-31	INFO	t	Salyamov Daler	1	3
1757	2023-05-31	INFO	t	Amonaliyev Davlatbek	1	3
1758	2023-05-31	INFO	t	Tolibjonov Sardor	1	3
1759	2023-05-31	INFO	t	Xidirov Bobur	1	3
1760	2023-05-31	INFO	t	Sadullayev Mirsaid	1	3
1761	2023-05-31	INFO	t	Amirxonova Saidabonu	1	3
1762	2023-05-31	INFO	t	Amirxonov Ikrom	1	3
1763	2023-05-31	INFO	t	Xushvaqtov Bexruz	1	3
1764	2023-05-31	INFO	t	Shodiyev Jahongir	1	3
1765	2023-05-31	INFO	t	  Doniyorov   Shahzod	1	3
1766	2023-05-31	INFO	t	  Solexov Shexroz	1	3
1767	2023-05-31	INFO	t	  Davletova  Zilola	1	3
1768	2023-05-31	INFO	t	  Axatqulov  Dilshod	1	3
1769	2023-05-31	INFO	t	  Nabiyev Ramizjon	1	3
1771	2023-05-31	INFO	t	  Mustafoqulov Farhod	1	3
1772	2023-05-31	INFO	t	  Norqulova Shalola	1	3
1773	2023-05-31	INFO	t	  Quldoshev Islombek	1	3
1774	2023-05-31	INFO	t	  Nosejonov Diyorjon	1	3
1775	2023-05-31	INFO	t	  Irisbayeva  Umida	1	3
1776	2023-05-31	INFO	t	  Shodikulova Shaxzoda	1	3
1777	2023-05-31	INFO	t	  Ibragimova Marjona	1	3
1778	2023-05-31	INFO	t	  Axatqulova Aziza	1	3
1779	2023-05-31	INFO	t	Qosimov Tehron	1	3
1780	2023-05-31	INFO	t	Sadikov Zafar	1	3
1781	2023-05-31	INFO	t	Raxmonova Jasmina	1	3
1782	2023-05-31	INFO	t	Hikmatov Husen	1	3
1783	2023-05-31	INFO	t	Davronova Lola	1	3
1784	2023-05-31	INFO	t	Akbarova Nigina	1	3
1785	2023-05-31	INFO	t	Xodjiyev Xojimuhammad	1	3
2674	2023-07-18	INFO	t	Ibragimov Jonibek	1	2
1787	2023-05-31	INFO	f	Tollibayeva Munisa	1	3
1788	2023-05-31	INFO	t	Muqaddasov Savlatjon	1	3
1789	2023-05-31	INFO	t	Xiyasova Go'zal	1	3
1790	2023-05-31	INFO	t	Orifjonova Sharvatoy	1	3
1791	2023-05-31	INFO	t	Abdug'opirov Asilbek	1	3
1792	2023-05-31	INFO	t	Oybekov Jahongir	1	3
1793	2023-05-31	INFO	t	Isayeva Sultonposhsho	1	3
1794	2023-05-31	INFO	t	Ergasheva Iroda	1	3
1795	2023-05-31	INFO	t	Rustamov Farxod	1	3
1796	2023-05-31	INFO	t	Mahammatov Lazizjon	1	3
1797	2023-05-31	INFO	t	Yo'ldoshev Sardor	1	3
1798	2023-05-31	INFO	t	Karimov Samandar	1	3
1799	2023-05-31	INFO	t	Abdurahimov Azizbek	1	3
1800	2023-05-31	INFO	t	Azimova Nilufar	1	3
1801	2023-05-31	INFO	t	Uzoqov Abdumannon	1	3
1802	2023-05-31	INFO	t	Nortojiyev A'zam	1	3
1803	2023-05-30	INFO	t	Elshod Toshtemirov	1	3
1804	2022-10-10	INFO	t	Rajabov Abduvali	1	3
1805	2023-05-31	INFO	t	Sag'dullayev  Akbar	1	3
1806	2023-04-01	INFO	t	Musurmonov Jo'rabek	1	3
1807	2023-04-01		f	 Xamidov Sardor	1	3
1808	2023-06-01		f	Izzatullayev Elbek	1	3
2684	2023-06-30	INFO	t	Davronov Aziz	1	2
1810	2023-04-30	INFO	f	Xapizova   Dilafruz	3	3
1811	2023-04-30	INFO	f	Handamova  Zarina	3	3
1812	2023-04-30	INFO	f	G'afurova  Nigora	3	3
1813	2023-04-30	INFO	f	Rahmonova  Feruza	3	3
1814	2023-04-30	INFO	f	Pardaboyeva  Gulxayo	3	3
1815	2023-04-30	INFO	f	Sultonova    Nigora	3	3
1816	2023-04-30	INFO	f	Mardiyeva  Shahnoza	3	3
1817	2023-04-30	INFO	f	Artiqova  Xafiza	3	3
1818	2023-04-30	INFO	f	Abdurasulova    Barchinoy	3	3
1819	2023-04-30	INFO	f	Kubayeva  Gulnoza 	3	3
1820	2023-04-30	INFO	f	Shomirzayeva   Adolat	3	3
1821	2023-04-30	INFO	f	Raximova  Marguba	3	3
1822	2023-04-30	INFO	f	Murtazayeva  Shahnoza	3	3
1823	2023-04-30	INFO	f	Tayirova  Aziza	3	3
1824	2023-04-30	INFO	f	Sulaymanova Gavhar	3	3
1825	2023-04-30	INFO	f	Yakubova Shaxodat	3	3
1826	2023-04-30	INFO	f	Raxmanova  Eldona	3	3
1827	2023-04-30	INFO	f	Abduraimova Shaxlo 	3	3
1828	2023-04-30	INFO	f	Quvondiqova Marjona	3	3
1829	2023-04-30	INFO	f	Fayzullayeva Tabasum	3	3
1830	2023-04-30	INFO	f	Qabulova Muhabbat	3	3
1831	2023-04-30	INFO	f	Xudoyberdiyeva  Noila	3	3
1832	2023-04-30	INFO	f	Xudoykulova Saodat	3	3
1833	2023-04-30	INFO	f	Odirova  Xilola	3	3
1834	2023-04-30	INFO	f	Amirova Zilola	3	3
1835	2023-04-30	INFO	f	Toshbekova  Adiba	3	3
1836	2023-04-30	INFO	f	Xujanova  Gulzoda	3	3
1837	2023-04-30	INFO	f	Mamatkulova Dilnoza	3	3
1838	2023-04-30	INFO	f	Azimova  Gulbaxor	3	3
1839	2023-04-30	INFO	f	Rustamova  Laylo	3	3
1840	2023-04-30	INFO	f	Namozova  Gulnoz	3	3
1841	2023-04-30	INFO	f	Abdukarimova  Komila	3	3
1842	2023-04-30	INFO	f	Kamolova Zebo	3	3
1843	2023-04-30	INFO	f	Mamarasulova Fazilat	3	3
1844	2023-04-30	INFO	f	Ishkuvatova  Mubora	3	3
1845	2023-04-30	INFO	f	Uralova  Nodira	3	3
2713	2023-06-01		f	Kamolova Ozoda	1	3
2714	2023-06-01		f	Abduazova Shoxista	1	3
1846	2023-04-30	INFO	f	Soriyeva  Dilfuza	3	3
1847	2023-04-30	INFO	f	Yusupova  Feruza	3	3
1848	2023-04-30	INFO	f	Mardiyeva Matluba	3	3
1849	2023-04-30	INFO	f	Rashidova Mukarram	3	3
1850	2023-04-30	INFO	f	Mamatova Dilora	3	3
1851	2023-04-30	INFO	f	Raxmonova Umida	3	3
1852	2023-04-30	INFO	f	Jurakobilova  Gulandom	3	3
1853	2023-04-30	INFO	f	Shomirzayeva   Xurshida	3	3
1854	2023-04-30	INFO	f	Sirliboyeva Marg'uba	3	3
1855	2023-04-30	INFO	f	Mirzashayeva Sanobar	3	3
1856	2023-04-30	INFO	f	Murtazayeva  Zuxra	3	3
1857	2023-04-30	INFO	f	Sadiyeva Maftuna 	3	3
1858	2023-04-30	INFO	f	Boratova Dilnoza	3	3
1859	2023-04-30	INFO	f	 Najmiddinova Nigora	3	3
1860	2023-04-30	INFO	f	Mehribanov Saydulla	3	3
1861	2023-04-30	INFO	f	Sindarov Baxodir	3	3
1862	2023-04-30	INFO	f	Muratova Nafisa  	3	3
1863	2023-04-30	INFO	f	Ko'rkamova  Dilara 	3	3
1864	2023-04-30	INFO	f	Maxammatova Durdona	3	3
1865	2023-04-30	INFO	f	Rajabova Dildora 	3	3
1866	2023-04-30	INFO	f	Ozi uchun keladi	3	3
1867	2023-04-30	INFO	f	Beknazarova Gulbaxor	3	3
1868	2023-04-30	INFO	f	Umirzaqova Xurshida	3	3
1869	2023-05-10	INFO	t	Yalg'ashev Farrux	1	3
1870	2023-05-10		f	Xasanova Dilfuza	1	3
1871	2023-05-10		f	Qudratov Bobomurod	1	3
1872	2023-05-10		f	Rasulova Hilola	1	3
1873	2023-05-10		f	Fayziyev Xojakbar	1	3
1874	2023-06-06	INFO	t	Muqaddasov Savlatjon	3	3
1875	2023-06-06	INFO	f	Ortiqova Halima	3	3
1876	2023-06-06	INFO	f	Sayfuddinova Yulduzxon	3	3
1877	2023-06-06	INFO	f	Ergasheva E'zoza	3	3
1878	2023-06-06	INFO	f	Xujanova Iroda	3	3
1879	2023-06-06	INFO	f	Soliyeva Shohzoda	3	3
1880	2023-06-06	INFO	f	Turdiyeva Nafisa	3	3
1881	2023-06-06	INFO	f	Xudaykulova Lola	3	3
1882	2023-06-06	INFO	f	Xudaykulova Dilshoda	3	3
1883	2023-06-06	INFO	f	Norqulova  Feruza	3	3
1884	2023-06-06	INFO	f	Mamadiyarova Manzura	3	3
1885	2023-06-06	INFO	f	Xujanova Ma'mura	3	3
1886	2023-06-06	INFO	f	Shomurodova  Farangiz	3	3
1887	2023-06-06	INFO	f	Ro'ziyeva Gulzamon	3	3
1888	2023-06-06	INFO	f	Bobokulova Kamola	3	3
1889	2023-06-06	INFO	f	Malikova  Lobar	3	3
1890	2023-06-06	INFO	f	Yo'dosheva  Umida	3	3
1891	2023-06-06	INFO	f	Eshkabilova  Nargiza	3	3
1892	2023-06-06	INFO	f	Ziyodullayeva Tursuntosh	3	3
1893	2023-06-06	INFO	f	Axmedova Nafosat	3	3
1894	2023-06-06	INFO	f	Ashurova Marxabo	3	3
1895	2023-06-06	INFO	f	Axbduraxmanova Dilrabo	3	3
1896	2023-06-06	INFO	f	Po'atov Shohruh	3	3
1897	2023-06-06	INFO	f	Xayrullayeva Zamira	3	3
1898	2023-06-06	INFO	f	Ashurova  Nodira	3	3
1899	2023-06-06	INFO	f	Nasrullayeva Dilfuza	3	3
1900	2023-06-06	INFO	f	Sariboyeva Madina	3	3
1901	2023-06-06	INFO	f	Toshova Maxbuba	3	3
1902	2023-06-06	INFO	f	Boboqulova Rohila	3	3
1903	2023-06-06	INFO	f	Esanova Gulnora 	3	3
1904	2023-06-06	INFO	f	Ishmamatova  Zarifa	3	3
1905	2023-06-06	INFO	f	Murodova Sanobar 	3	3
1906	2023-06-06	INFO	f	Allayeva Dilfuza 	3	3
1907	2023-06-06	INFO	f	Ochilova Shaxnoza 	3	3
2667	2023-07-02	INFO	t	Ilxomov Izzat	1	3
2676	2023-06-17		f	Erkinov Sarvarbek	1	1
2685	2023-07-12	INFO	f	Aliakbarova Rahima	1	3
2715	2023-06-01		f	Amirova Maftuna	1	3
2716	2023-06-01		f	Isanbayeva Ozoda	1	3
2717	2023-06-01		f	Yunusova O'g'iloy	1	3
2740	2023-06-01		f	Yadgarova Xilola	1	3
2741	2023-06-01		f	Toshpo'latova  Dilfuza	1	3
2771	2023-03-02		f	Xolboyeva Dilfuza	1	3
2772	2023-03-02		t	O'rolov To'rabek	1	3
2773	2023-03-02		f	Quvondiqova Sevinch	1	3
2774	2023-03-02		f	Rasulova Hulkar	1	3
2775	2023-04-01		f	Yusupova Rayhona	1	3
2776	2023-03-02		f	Eshmurodova Nasiba	1	3
2777	2023-03-02		t	Xudoyberdiyev Diyorbek	1	3
2779	2023-04-05		t	Raimov Dilshod	1	3
2780	2023-03-02		f	Sayfullayev Sardor	1	3
2781	2023-03-02		f	Muxtarova Shaxzoda	1	3
2782	2023-03-02		t	Maxmudov Behruz	1	3
2786	2023-03-02		f	Mavlanova Zilola	1	3
1933	2023-05-25	INFO	f	Jumaboyeva Munisa	1	3
1934	2023-05-25		t	Otabekov Shamshod	1	3
1935	2023-05-25		f	Ergashov Murod	1	3
1936	2023-05-25		f	Suyunov Yoqub	1	3
1937	2023-05-25		f	Jumaboyev Zoxid	1	3
1938	2023-05-25		f	Mamasoliyev Ro'zimurod	1	3
2787	2023-03-02		t	Norqulov Jasur	1	3
1940	2023-04-27	INFO	t	Saipov Ohunjon 	1	3
1941	2023-04-27	INFO	t	Sobirjonov Xushnud	1	3
1942	2023-04-27	INFO	t	Sayidova Shaxzoda 	1	3
1943	2023-04-27	INFO	t	Azamatov Muhammadjon 	1	3
1944	2023-04-27	INFO	t	O'ktamov Aminjon 	1	3
1945	2023-04-27	INFO	t	Rustamov Boburmirzo 	1	3
1946	2023-04-27	INFO	t	Alimjonov Jahongir 	1	3
1947	2023-04-27	INFO	t	Usmonov Javohir 	1	3
1948	2023-04-27	INFO	t	Xidirov Muhammad 	1	3
2793	2023-03-02	INFO	f	Nuritdinova Shaxzoda	1	2
2806	2023-04-05		t	Ismatov Izatullo	1	3
2815	2023-04-20		f	Shukurova Nafisa	1	3
2816	2023-07-01		f	Fayziyeva  Zulfizar	3	3
2817	2023-07-01		f	Haydarova  Dilafruz	3	3
1949	2023-04-27	INFO	t	Ibragimov Asadbek 	1	3
1950	2023-04-27	INFO	t	Odilov Kamronbek	1	3
1951	2023-04-27	INFO	t	Xudoyberdiyev Baxriddin 	1	3
1952	2023-05-15	INFO	t	Salaydinova Nodira	1	3
1953	2023-05-15	INFO	t	Qurbonova Sohiba	1	3
1954	2023-05-15	INFO	t	Bahodirov Farrux	1	3
1955	2023-05-15	INFO	t	Axadov Sanjar	1	3
1956	2023-05-15	INFO	t	Axadov Sarvar	1	3
1957	2023-05-15	INFO	t	Rahmatulin Marsel	1	3
1958	2023-05-15	INFO	t	Odilov Jonibek	1	3
1959	2023-05-15	INFO	t	Olimjonov Qamariddin	1	3
1960	2023-05-15	INFO	t	Ko'chimova Gulxayo	1	3
1961	2023-05-15	INFO	t	Shokirov Kamron	1	3
1962	2023-05-15	INFO	t	Xudoyberdiyeva Maftuna	1	3
1963	2023-05-15	INFO	t	Isroilov Jonibek 	1	3
1964	2023-05-15	INFO	t	Qurbonov Maxmud	1	3
1965	2023-05-15	INFO	t	Komilova Jasmina	1	3
1966	2023-05-15	INFO	t	Muzaffarov Javoxir	1	3
1967	2023-05-15	INFO	t	Safarov Ozodbek	1	3
1968	2023-05-15	INFO	t	Shokirov Davron	1	3
1969	2023-05-15	INFO	t	Shukurov Shodiyor	1	3
1970	2023-04-05	INFO	f	O'lmasova Nasiba	1	6
1971	2023-04-10		f	Qudratov Jaxongirjon 	1	2
1972	2023-04-10		t	Mamadiyev Shohjahon	1	2
1973	2023-01-15		f	Xudoyberdiyeva Iskandar	1	10
1974	2023-01-15		f	Xudoyberdiyeva Malika	1	10
1975	2023-01-15		t	Rahmatullayev Habibullo 	1	10
1976	2023-01-15		f	Abdullayev Nurjahon 	1	10
1977	2023-01-15		f	Annayev Kamronbek	1	10
1978	2023-06-01	INFO	t	Muqaddasov Savlatjon	3	3
1979	2023-06-01	INFO	t	Ahmedova  Gulbahor	3	3
1980	2023-06-01	INFO	t	Arziqulova  Go`zal	3	3
1981	2023-06-01	INFO	f	Ro'zimurodova Shodiya	3	3
1982	2023-06-01	INFO	f	Hamdamova  Shahlo	3	3
1983	2023-06-01	INFO	f	Po`latova  Dilafro`z	3	3
1984	2023-06-01	INFO	f	Badalova Dilbar	3	3
1985	2023-06-01	INFO	f	Jo`rayeva Mohinur	3	3
1986	2023-06-01	INFO	f	Mileyeva Oydiniso	3	3
1987	2023-06-01	INFO	f	Islomova Marjona	3	3
1988	2023-06-01	INFO	f	Norbekova Shahnoza	3	3
1989	2023-06-01	INFO	f	Rajabova Lobar	3	3
1990	2023-06-01	INFO	f	Boymurodova Aziza	3	3
1991	2023-06-01	INFO	f	Normuminova  Munisa	3	3
1992	2023-06-01	INFO	f	Muhammadeyeva Munojat	3	3
1993	2023-06-01	INFO	f	Normurodova Dilshoda	3	3
1994	2023-04-01		f	Musurmonov Jo'rabek	1	3
1995	2023-04-01		f	 Xamidov Sardor	1	3
1996	2023-04-01		f	Izzatullayev Elbek	1	3
1998	2023-06-01	INFO	t	Utasheva Zulfiya 	3	3
1999	2023-06-01	INFO	t	Samatova Marhabo	3	3
2000	2023-06-01	INFO	f	Murodova Maxliyo	3	3
2001	2023-06-01	INFO	f	Sag‘dullayeva Shoxsanam	3	3
2002	2023-06-01	INFO	f	Zubaydullayeva Maysara 	3	3
2003	2023-06-01	INFO	f	Karimova Kamola 	3	3
2004	2023-06-01	INFO	f	Otakulova Malika 	3	3
2005	2023-06-01	INFO	f	Nosirova Gulchehra	3	3
2006	2023-06-01	INFO	f	Xolmurodova Iroda 	3	3
2007	2023-06-01	INFO	f	Abdujamilova Maloxat 	3	3
2008	2023-06-01	INFO	f	Xurramova Maloxat 	3	3
2009	2023-06-01	INFO	f	Turdiyeva Noila 	3	3
2010	2023-06-01	INFO	f	Berdiyeva Marxabo 	3	3
2011	2023-06-01	INFO	f	Toshmurodova Dilshoda 	3	3
2012	2023-06-01	INFO	f	Jamalova Umida 	3	3
2013	2023-06-01	INFO	f	Pardayeva Manzura 	3	3
2014	2023-06-01	INFO	f	Dagarova Shoxista 	3	3
2015	2023-06-01	INFO	f	Qilichova Mahfuza 	3	3
2016	2023-06-01	INFO	f	Niyozova Nodira 	3	3
2017	2023-06-01	INFO	f	Hayitova Munojaat 	3	3
2018	2023-06-01	INFO	f	Bobonarova Latofat 	3	3
2019	2023-06-01	INFO	f	Usmonova Gulnoza 	3	3
2020	2023-06-01	INFO	f	Egamberdiyeva Gulshod 	3	3
2021	2023-06-01	INFO	f	Ismoilova Iroda	3	3
2022	2023-06-01	INFO	f	Bo‘ronova Shohista	3	3
2023	2023-06-01	INFO	f	Boliyeva Gavhar 	3	3
2024	2023-06-01	INFO	f	Esirgapova Dildora	3	3
2025	2023-06-01	INFO	f	Bulyakova Maftuna 	3	3
2026	2023-06-01	INFO	f	Danyeva Klara	3	3
2027	2023-06-01	INFO	f	Kadirova Nilufar 	3	3
2028	2023-06-01	INFO	f	Muminova Nilufar 	3	3
2029	2023-06-01	INFO	f	Nazarova Tojixol 	3	3
2030	2023-06-01	INFO	f	Hamraqulova Nilufar 	3	3
2031	2023-06-01	INFO	f	O‘roqova Ozoda 	3	3
2032	2023-06-01	INFO	f	Bobobekova Xusniya	3	3
2033	2023-06-01	INFO	f	Azimova Moxira 	3	3
2034	2023-06-01	INFO	f	Boboxo‘jayeva Dilfuza 	3	3
2035	2023-06-01	INFO	f	Rahmatova Mahliyo	3	3
2036	2023-06-01	INFO	f	Allayeva Nigora 	3	3
2037	2023-06-01	INFO	f	Maxamatova Dildora	3	3
2038	2023-06-01	INFO	f	Ibragimov Jaxongir	3	3
2039	2023-06-01	INFO	f	Suyunova Nargiza 	3	3
2040	2023-06-01	INFO	f	Usanova Guljaxon 	3	3
2041	2023-06-01	INFO	f	Xayrullayeva Nilufar 	3	3
2042	2023-06-01	INFO	f	Haydarova Zuxra 	3	3
2043	2023-06-01	INFO	f	Avazova Oyrajab 	3	3
2044	2023-06-01	INFO	f	Absalamova Dilnoza 	3	3
2045	2023-06-01	INFO	f	Shodmanova Nasiba 	3	3
2046	2023-06-01	INFO	f	Juliboyeva Lola 	3	3
2047	2023-06-01	INFO	f	Ergasheva O'giloy 	3	3
2048	2023-06-01	INFO	f	Eshquvatova Guzal 	3	3
2049	2023-06-01	INFO	f	Alikulova Xusniya 	3	3
2050	2023-06-01	INFO	f	Niyozova Nafisa 	3	3
2051	2023-06-01	INFO	t	Muqaddasov Savlatjon	1	3
2052	2023-06-01	INFO	t	Xiyasova Go'zal	1	3
2053	2023-06-01	INFO	t	Orifjonova Sharvatoy	1	3
2054	2023-06-01	INFO	f	Abdug'opirov Asilbek	1	3
2055	2023-06-01	INFO	f	Oybekov Jahongir	1	3
2056	2023-06-01	INFO	f	Isayeva Sultonposhsho	1	3
2057	2023-06-01	INFO	f	Ergasheva Iroda	1	3
2058	2023-06-01	INFO	f	Rustamov Farxod	1	3
2059	2023-06-01	INFO	f	Mahammatov Lazizjon	1	3
2060	2023-06-01	INFO	f	Yo'ldoshev Sardor	1	3
2061	2023-06-01	INFO	f	Karimov Samandar	1	3
2062	2023-06-01	INFO	f	Abdurahimov Azizbek	1	3
2063	2023-06-01	INFO	f	Azimova Nilufar	1	3
2064	2023-06-01	INFO	f	Uzoqov Abdumannon	1	3
2065	2023-06-01	INFO	f	Nortojiyev A'zam	1	3
2066	2023-06-01	INFO	t	Temirov\tFiruz	1	3
2067	2023-06-01		f	Nosirova\tUmida	1	3
2068	2023-06-01		f	Sulaymonova \tNilufar	1	3
2069	2023-06-01		f	Xasanova \tLobar	1	3
2070	2023-06-01		f	Astanov \tSoxibxo'ja	1	3
2071	2023-06-01		t	Mardiboyev \tAsilbek	1	3
2072	2023-06-01		f	Elmurodova\tE'zoza	1	3
2073	2023-06-01		f	Saidaliyeva \tSarvinoz	1	3
2074	2023-06-01		f	Astanov \tSoxibxo'ja	1	3
2075	2023-06-01		f	Sanaqulov\tJavohir	1	3
2076	2023-06-01		f	Saidmurodova\tFarzona	1	3
2077	2023-06-04		f	Suyarova Moxina	1	2
2078	2023-06-04		f	Sa'dullayeva Shaxrizoda	1	2
2079	2023-06-04		f	Nasriyeva Zebiniso	1	2
2080	2023-05-01	INFO	f	Tagayeva Muazzam	3	3
2081	2023-06-01		f	Parmanova Noila	3	3
2082	2023-05-25	INFO	t	Baxtiyorov Bunyod	1	2
2083	2023-06-01	INFO	f	Raximberdiyeva \tAziza	1	3
2084	2023-06-01	INFO	t	Temirov\tFiruz	1	3
2085	2023-06-01	INFO	f	Nosirova\tUmida	1	3
2086	2023-06-01	INFO	f	Sulaymonova Nilufar	1	3
2087	2023-06-01	INFO	f	Xasanova \tLobar	1	3
2088	2023-06-01		f	Astanov \tSoxibxo'ja	1	3
2089	2023-06-01		t	Mardiboyev \tAsilbek	1	3
2090	2023-06-01		f	Elmurodova\tE'zoza	1	3
2091	2023-06-01		f	Saidaliyeva \tSarvinoz	1	3
2092	2023-06-01		f	Sanaqulov\tJavohir	1	3
2093	2023-06-01		f	Saidmurodova\tFarzona	1	3
2094	2023-05-08	INFO	t	Qurbonov Ismoil	1	2
2095	2023-05-08		f	Baratov Bunyod	1	2
2096	2023-05-08		f	Baxriddinov Sardor	1	2
2097	2023-05-08		f	Muxtorova Madina	1	2
2098	2023-05-08		f	Muxtorov Fatxulla	1	2
2099	2023-05-25		f	Yalg'ashev Farrux	1	2
2100	2023-05-25		f	Yalg'ashev Farrux	1	3
2101	2023-05-25		f	Xasanova Dilfuza	1	3
2102	2023-05-10		f	Qudratov Bobomurod	1	3
2103	2023-05-10		f	Rasulova Hilola	1	3
2104	2023-05-10		f	Fayziyev Xojakbar	1	3
2105	2023-01-05		f	Avg'anov Vohidjon	1	2
2106	2023-01-05		f	 Xushimov Abdullaxon	1	2
2107	2023-01-05		f	Muxammadiyev Javohir	1	2
2108	2023-01-05		f	Baxtiyorov Vosidjon	1	2
2109	2023-01-05		f	Eshqulov Oybek	1	2
2110	2023-01-05		f	Pardayev Og'abek	1	2
2111	2023-01-05		f	Eshqulov Xudayorbek	1	2
2112	2023-01-05		f	Abduraxmonov Dostonbek	1	2
2113	2023-06-17	INFO	t	Kobiljonov Abdurahim	1	7
2114	2023-04-01	INFO	f	Norquziyeva Dildora	1	3
2115	2023-04-01		f	Eshquvvatova E'zoza	1	3
2116	2023-04-01		f	Chinmirzayev Temur	1	3
2117	2023-04-01		t	Baxramov Ozodbek	1	3
2668	2023-06-01	INFO	t	Djuraqulov Bexruz	1	1
2119	2022-10-22		f	Umurzaqov Alixon	1	3
2120	2022-10-22	INFO	t	Umirzokov Mexrojxon	1	3
2121	2023-04-27	INFO	t	Alimjonov Jahongir 	1	3
2122	2023-04-27		f	Xidirov Muhammad 	1	3
2123	2023-04-22		f	Xudoyberdiyev Iskandar	1	3
2124	2023-04-27		f	Alisherov Ozodbek	1	3
2125	2023-04-27		f	Djo'rayeva Dilafruz	1	3
2126	2023-04-05		f	O'lmasova Nasiba	1	6
2127	2023-04-05		f	Salaydinova Nodira	1	3
2677	2023-02-15	INFO	t	Abduxamidov Abdug'ani	1	3
2912	2023-06-09		f	Ashirov Xusan	1	3
2130	2023-05-26		f	Raupova Kamila	1	6
2131	2023-05-26		t	Ziyodullayev Nurmuhammad	1	6
2132	2023-05-26	INFO	t	Ergashev Jahongir	1	6
2133	2023-05-30		f	Quvvatov Umidjon	1	3
2134	2023-05-30		f	Juraqulov Jahongir	1	3
2135	2023-05-30		f	Qodirov Samandar	1	3
2136	2023-05-30		f	Mamanova Dilfuza	1	3
2137	2023-05-30		f	Tolipov Asliddin	1	3
2138	2023-05-30		f	Isroilov Karimjon	1	3
2139	2023-05-30		f	Toshpo'latov Shaxriyor	1	3
2140	2023-05-30		f	Xudoyberdiyeva Nargiza	1	3
2141	2023-05-30		f	Sobirova Fotima	1	3
2142	2023-06-12		f	Ilhomjonov Ilhom	1	6
2143	2023-06-12		t	Annayev Kamronbek	1	6
2144	2023-06-12		f	Sharipov Abdulaziz	1	6
2145	2023-01-20		f	Sharipov Abdulaziz	1	6
2157	2023-04-08	INFO	f	Nizomova Sadoqat	3	3
2158	2023-04-08		f	Rayimova Roxila	3	3
2159	2023-04-08		f	Jurayeva Feruza	3	3
2160	2023-04-08		f	Umarova Oysara	3	3
2161	2023-04-08		f	Ergasheva Gulchexra	3	3
2162	2023-04-08		f	Jurayeva Maftuna	3	3
2163	2023-04-08		f	Raxmonova Fotima	3	3
2164	2023-04-08		f	Ramazonova Intizor	3	3
2165	2023-04-08		f	Muradova Yaxshigul	3	3
2166	2023-04-08		f	Rajabova Xurshida	3	3
2167	2023-04-08		f	Ergasheva Gulsara	3	3
2168	2023-04-08		f	Bekmurodova Anora	3	3
2169	2023-04-08		f	Temirova Hurmatoy	3	3
2171	2023-03-02	INFO	t	Abduazimov Jaxongir	1	3
2172	2023-03-02	INFO	t	Ruzibayeva Durdona	1	3
2173	2023-03-02	INFO	f	O'ktamova Zilola	1	3
2174	2023-03-02	INFO	t	Mamaraimov Jasurbek	1	3
2175	2023-03-02	INFO	f	Toshpo'latov Omunulla	1	3
2176	2023-03-02	INFO	f	Davidova Nigina	1	3
2177	2023-03-02	INFO	t	Anorboyev Sardor	1	3
2178	2023-03-02	INFO	f	Toshboyeva Marjona	1	3
2179	2023-03-02	INFO	t	Toshtemirov Behruz	1	3
2180	2023-03-02	INFO	t	Xamraqulov Behruz	1	3
2181	2023-03-02	INFO	f	Xolboyeva Dilfuza	1	3
2182	2023-03-02	INFO	t	O'rolov To'rabek	1	3
2183	2023-03-02	INFO	f	Quvondiqova Sevinch	1	3
2184	2023-03-02	INFO	t	Rasulova Hulkar	1	3
2185	2023-03-02	INFO	f	Eshmurodova Nasiba	1	3
2186	2023-03-02	INFO	t	Xudoyberdiyev Diyorbek	1	3
2187	2023-03-02	INFO	t	Xo'jamberdiyev Azizbek	1	3
2188	2023-03-02	INFO	t	Sayfullayev Sardor	1	3
2189	2023-03-02	INFO	f	Muxtarova Shaxzoda	1	3
2190	2023-03-02	INFO	t	Maxmudov Behruz	1	3
2191	2023-03-02	INFO	t	Isoqov Doniyor	1	3
2192	2023-03-02	INFO	t	Yaxshiboyev Fayozbek	1	3
2193	2023-03-02	INFO	f	Mavlanova Zilola	1	3
2194	2023-03-02	INFO	t	Norqulov Jasur	1	3
2195	2023-03-02	INFO	f	Nuritdinova Shaxzoda	1	3
2196	2023-03-02	INFO	t	Pulatov Bahrom	1	3
2197	2023-03-02	INFO	t	Vojipov Muhammadsodiq	1	3
2198	2023-03-02	INFO	t	Xo'janov Og'abek	1	3
2199	2023-06-18	INFO	t	Zarifjonov\tSherzod	1	3
2200	2023-06-20	INFO	t	Radjabov\tJonibek	1	3
2201	2023-03-02	INFO	f	Nuritdinova Shaxzoda	1	2
2202	2023-06-21		t	Ulug'bekov Sanjar	1	2
2203	2023-06-30	INFO	f	Elmurzayeva  Umida	1	3
2204	2023-06-15	INFO	t	Xalimjonov Hasanjon	1	3
2205	2023-06-20	INFO	t	Bekmurodov Sindor	1	3
2206	2023-01-15	INFO	t	Xudoyberdiyev Iskandar	1	10
2678	2023-07-15		f	Sirojiddinov Abdumurod	1	3
2208	2023-05-26	INFO	t	Ergashev Jahongir	1	6
2209	2023-01-20		f	Sharipov Abdulaziz	1	3
2210	2023-06-18		f	Jumayev Shoxjaxon	1	3
2211	2023-06-08	INFO	f	Nabiyeva Adolat	3	3
2212	2023-04-08	INFO	t	Muxtorova Umedaoy	3	3
2213	2023-06-08	INFO	f	Nasriyeva Venera	3	3
2214	2023-06-08	INFO	f	Normamatova Aziza	3	3
2215	2023-06-08	INFO	f	Majiddova Mahliyo	2	3
2216	2023-06-08		f	Majiddova Mahliyo	3	3
2217	2023-06-08	INFO	f	Asliddinova Madina	3	3
2218	2023-06-08	INFO	f	Achilova Risolat	3	3
2219	2023-06-08		f	Xabibova Farangiz	3	3
2220	2023-06-08	INFO	f	Nazarova Saidaoy	3	3
2221	2023-09-08		f	Sirojeva Zarina	3	3
2222	2023-06-18	INFO	f	Dilshotova Shabbona	1	3
2223	2023-06-18	INFO	t	Abduraxmonov  Doniyor	1	3
2224	2023-05-25	INFO	t	Azimov Isfandiyor 	1	6
2225	2023-06-18	INFO	f	Ergashova Jasminabonu	1	3
2226	2023-06-18	INFO	f	Ergashova Muxlisabonu	1	3
2227	2023-06-18		f	Vafoyeva Gulnoza	1	3
2228	2023-06-18	INFO	t	Karimov Dilmurod	1	3
2229	2023-06-01	INFO	t	Muqaddasov Savlatjon	1	3
2230	2023-06-01	INFO	t	Abdullayeva Charos	1	3
2231	2023-06-01	INFO	t	Esanova  Sohiba	1	3
2232	2023-06-01	INFO	t	Sidiqova Qunduz	1	3
2233	2023-06-01	INFO	t	Annakulova  Zebo	1	3
2234	2023-06-01	INFO	t	Achilova Ozoda	1	3
2235	2023-06-01	INFO	t	Xasanova  Feruza	1	3
2236	2023-06-01	INFO	t	Ashurova  Xafiza	1	3
2237	2023-06-01	INFO	t	Ismoilova Komila	1	3
2238	2023-06-01	INFO	t	Nematova  Nafisa	1	3
2239	2023-06-01	INFO	t	Boshmanova  Shoxsanam	1	3
2240	2023-06-01	INFO	t	Qurbonova  Zebo	1	3
2241	2023-06-01	INFO	t	Qo'shbaqova Mohira	1	3
2242	2023-06-01	INFO	t	Yadgorova Xilola	1	3
2243	2023-06-01	INFO	t	Xasanova Muxlisa	1	3
2244	2023-06-01	INFO	t	Xalmatova Zamina	1	3
2245	2023-06-01	INFO	t	Eshnazarova Ozoda	1	3
2246	2023-06-01	INFO	t	Gaybullayeva Aziza	1	3
2247	2023-06-01	INFO	t	Kamolova Ozoda	1	3
2248	2023-06-01	INFO	t	Abduazova Shoxista	1	3
2249	2023-06-01	INFO	t	Amirova Maftuna	1	3
2250	2023-06-01	INFO	t	Isanbayeva Ozoda	1	3
2251	2023-06-01	INFO	t	Yunusova O'g'iloy	1	3
2252	2023-06-01	INFO	t	Jabborova Zarnigor	1	3
2253	2023-06-01	INFO	t	Norbekova Chexrozaxon	1	3
2254	2023-06-01	INFO	t	Turdimuratova Madina	1	3
2255	2023-06-01	INFO	t	Muqumova Xurshida	1	3
2256	2023-06-01	INFO	t	Xujamkulova Sayaro	1	3
2257	2023-06-01	INFO	t	Narmatova Nigora	1	3
2258	2023-06-01	INFO	t	Sayidova Sanabar	1	3
2259	2023-06-01	INFO	t	Kobilova Maxfuza	1	3
2260	2023-06-01	INFO	t	Suyarova Surayyo	1	3
2261	2023-06-01	INFO	t	Anarova Madina	1	3
2262	2023-06-01	INFO	t	Kayumova Gulbaxor	1	3
2263	2023-06-01	INFO	t	Usmonova Moxigul	1	3
2264	2023-06-01	INFO	t	Jurabekova Shahnoza	1	3
2265	2023-06-01	INFO	t	Karshiboyeva Nargiza	1	3
2266	2023-06-01	INFO	t	Kuchkarova Zuxra 	1	3
2267	2023-06-01	INFO	t	Ko'chkinova Sitora	1	3
2268	2023-06-01	INFO	t	Bultakova Sevara	1	3
2269	2023-06-01	INFO	t	Esirgapova Dilnoza	1	3
2270	2023-06-01	INFO	t	Atamuratova Nigina	1	3
2679	2023-07-15		f	Abduxamidov Abdug'ani	1	3
2271	2023-06-01	INFO	t	Eshmamatova Muxlisa	1	3
2272	2023-06-01	INFO	t	Rajabova Nargiza	1	3
2273	2023-06-01	INFO	t	Musurmanova Dilafruz 	1	3
2274	2023-06-01	INFO	t	Yadgarova Xilola	1	3
2275	2023-06-01	INFO	t	Toshpo'latova  Dilfuza	1	3
2276	2023-06-18	INFO	f	Baratova Nargiza	1	3
2277	2022-10-29		f	Xoldorova Aziza	1	3
2278	2023-06-22		f	Turdiyeva Aziza	1	3
2279	2023-06-22	INFO	t	Qarshiyev Muhammadjon	1	6
2280	2023-06-10	INFO	t	Norbekov Navro'z	1	6
2281	2023-06-28	INFO	t	Mamedov Baxtiyor	1	3
2282	2023-06-01	INFO	t	Nasimov Xumoyun	1	2
2283	2023-06-01		f	G'aybullayev Shaxboz	1	2
2284	2023-06-01	INFO	t	Mustafoqulov Azizbek	1	2
2285	2023-06-01	INFO	t	Ergashev Farrux	1	2
2286	2023-06-01		f	Tursunov Javohir	1	2
2287	2023-06-18	INFO	f	Saftaraliyeva Sabina	1	3
2670	2022-11-16	INFO	f	Muhibullayeva Farahnoz	1	3
2289	2023-06-01	INFO	t	Mustafaqulov Azizbek	1	2
2290	2023-03-26	INFO	t	Abdulaziziy Hikmatilloxon	1	2
2291	2023-06-18	INFO	t	Mirbaxromov Timur	1	3
2292	2023-06-01	INFO	t	Abdurashidov Sardor	1	2
2293	2023-06-01	INFO	t	Arslonov Faridun 	1	2
2294	2023-06-18	INFO	t	Zakirov Zarrux	1	2
2295	2023-06-18	INFO	t	Rustamov Isoq	1	2
2296	2023-06-18	INFO	t	Tohirov Abubakr	1	2
2297	2023-07-01	INFO	t	Ergashev Ramiz	1	2
2298	2023-07-01		f	Zaripov Orzuman	1	2
2299	2023-07-01		f	Jabborov Behruz	1	2
2300	2023-07-01		f	Uzoqov Miraziz	1	2
2301	2023-06-18	INFO	t	Mirmuxsinov Shaxram	1	2
2302	2023-07-01	INFO	t	Aslamov Abdulloxon	1	3
2680	2023-06-15	INFO	t	Temirov Firuzxon	1	3
2304	2023-06-18	INFO	t	Yuldashov Kamronbek	1	3
2305	2023-06-10		f	Ikromov Akobir	1	6
2306	2023-06-18	INFO	f	Sobirov Timur	1	2
2307	2023-06-18	INFO	t	Xalilov Jahongir	1	2
2308	2023-06-15	INFO	t	Turabayev Alibek	1	1
2309	2023-07-01	INFO	t	Sohibjonov Islom	1	3
2310	2023-07-01		f	Rajaboyev Aziz	1	3
2311	2023-07-01	INFO	t	Mamasharifova Dilshoda	1	3
2312	2023-10-05	INFO	f	Shovvozova Yulduz	3	3
2313	2023-10-05		f	Nurillayeva Muhlisa	3	3
2314	2023-07-02	INFO	f	Pulatova Nigora	1	3
2315	2023-07-02	INFO	t	Rabbimov Timur	1	3
2316	2023-07-02		f	Shomurodov Ikrom	1	3
2317	2023-07-02	INFO	t	Toxirov Shaxruz	1	3
2318	2023-07-01	INFO	t	Olimjonov Roziqbek	2	5
2321	2023-07-01		f	Baxrixo'jayev Oybekxo'ja	2	5
2322	2023-07-01		f	Abdusalimov Temur	2	3
2323	2023-07-01		f	Salaidinov Samir	2	3
2324	2023-07-01		f	Abdusalimov Savlat	2	3
2325	2023-07-01		f	Yusupov Lazizbek	2	3
2326	2023-07-01		f	Raximov Azizbek	2	3
2327	2023-07-01		f	Xalidinov Elnur	2	6
2328	2023-07-01		f	Tilavov Azizbek	2	6
2329	2023-07-01		f	Rashidov Elbek	2	6
2330	2023-07-01		f	Aziz Raximov	2	6
2331	2023-07-01		f	Aziz Raximov	2	3
2332	2023-07-01		f	Xikmatullayev Sanjar	2	3
2333	2023-06-01	INFO	t	Najmiddinov Xushnur	1	6
2334	2023-06-01	INFO	t	Jabborov Azizbek	1	1
2335	2023-06-18	INFO	t	Mavlonkulov  Alisher	1	3
2686	2023-07-12	INFO	t	Zokirov Javohir	1	3
2337	2023-07-01	INFO	t	Matyoqubova Ilmira	1	3
2338	2023-07-02	INFO	f	Tog'ayev Ulug'bek 	1	3
2339	2023-07-02	INFO	t	Berdiyev Ulug'bek	1	3
2340	2023-05-15	INFO	t	Davronov Shaxriyor	1	2
2341	2023-05-15	INFO	t	Tuychiev Xusenbek	1	2
2342	2023-06-01	INFO	t	Abdusattorov Behruz	1	1
2718	2023-06-01		f	Jabborova Zarnigor	1	3
2719	2023-06-01		f	Norbekova Chexrozaxon	1	3
2720	2023-06-01		f	Turdimuratova Madina	1	3
6377	2024-03-19		t	Istamov Diyor	1	3
6409	2024-05-02	INFO	t	Test Test	2	10
6410	2024-04-16	INFO	t	Test Test2	3	3
2745	2023-05-18		f	Аllаyorova Nigora	3	3
2746	2023-05-18		f	Fayzullaeva Sevara	3	3
2747	2023-05-18		f	Buriyeva Lobarxon	3	3
2748	2023-05-18		f	Boymuradova Shoxista	3	3
2749	2023-05-18		f	Eshmatova Dilnoza	3	3
2750	2023-05-18		f	Otaqulova Nilufar	3	3
2751	2023-05-18		f	Tongotarova Guljaxon	3	3
2752	2023-05-18		f	Otaqulova Dildora	3	3
2753	2023-05-18		f	Samanova Malika	3	3
2754	2023-05-18		f	Tursunova Gulmira	3	3
2359	2023-07-05	INFO	f	Mansurova Fotima	1	3
2360	2023-07-05		f	Rasulova Dilnoza	1	3
2361	2023-07-05		f	Axmedova Guljahon	1	3
2362	2023-07-05		t	Bekmurodov\tAbbos	1	3
2363	2023-07-05		f	Ergashova Gulbahor	1	3
2364	2023-07-05		f	Qudratova Feruza	1	3
2365	2023-07-05		f	Ashurova Tursuntosh	1	3
2366	2023-07-05		f	To'xtayeva O'raltosh	1	3
2367	2023-07-05		f	O'tanova Gulhayyo	1	3
2368	2023-07-05		f	Ro'ziyeva Muhabbat	1	3
2369	2023-07-05		f	Ergashova Feruza	1	3
2370	2023-07-05		f	Bo'riyeva  Xosila	1	3
2371	2023-07-05		f	Eshquvatova\tXafiza	1	3
2372	2023-07-05		f	Qo'ziboyeva\tShohsanam	1	3
2373	2023-07-05		f	Nomozova Fotima	1	3
2374	2023-07-05		f	Norbekova Mohidil	1	3
2375	2023-07-05		f	Djumanova Gulchehra	1	3
2755	2023-05-18		f	Qiyomova Nilufar	3	3
2756	2023-05-18		f	Nurmurodova Zilola	3	3
2376	2023-05-18		f	Nasriyeva Zebiniso	1	6
2377	2023-03-15	INFO	t	Muqaddasov Savlatjon	3	3
2378	2023-03-15	INFO	f	Ismatillayeva Sojida	3	3
2379	2023-03-15	INFO	f	Ismatillayeva Shodiya	3	3
2380	2023-03-15	INFO	f	O'rinboyeva Muxabbat	3	3
2381	2023-03-15	INFO	f	Rizaqulova Laylo	3	3
2382	2023-03-15	INFO	f	Muxammadiyeva Zilola	3	3
2383	2023-03-15	INFO	f	Shonazarova Qunduz	3	3
2384	2023-03-15	INFO	f	Raxmatillayeva Orzigul	3	3
2385	2023-03-15	INFO	f	Qalandarova Maxliyo	3	3
2386	2023-03-15	INFO	f	Karimova Zumrad	3	3
2387	2023-03-15	INFO	f	Aliqulova Dilso'z	3	3
2388	2023-03-15	INFO	f	Burxonova Rushona	3	3
2389	2023-03-15	INFO	f	G'aniyeva Madina	3	3
2390	2023-03-15	INFO	f	Hamrayeva Shohsanam	3	3
2391	2023-03-15	INFO	f	Ibragimova Gulrux	3	3
2392	2023-03-15	INFO	f	Qarshiyeva Zilola	3	3
2393	2023-03-15	INFO	f	Qayumova Shoxida	3	3
2394	2023-03-15	INFO	f	Quldasheva Dilnoza	3	3
2395	2023-03-15	INFO	f	Qurbonova Dinora	3	3
2396	2023-03-15	INFO	f	Tursunova Gulzoda	3	3
2397	2023-03-15	INFO	f	Xasanova Sanoat	3	3
2398	2023-03-15	INFO	f	Xaydarova Zamira	3	3
2399	2023-03-15	INFO	f	Yuldasheva Shaxnoza	3	3
2400	2023-03-15	INFO	f	Safarova Sojida	3	3
2401	2023-03-15	INFO	f	Xolmo`minova Maftuna	3	3
2402	2023-03-15	INFO	f	Xushvaqtova Dildora	3	3
2403	2023-03-06	INFO	f	Murodullayev Shexroz	3	3
2404	2023-03-06	INFO	f	Davronov Diyorbek	3	3
2405	2023-03-06	INFO	f	Jamolov Sardorbek	3	3
2406	2023-03-06	INFO	f	Azamova Dilafruz	3	3
2407	2023-03-06	INFO	f	Boymurodov Muhammadali	3	3
2408	2023-03-06	INFO	f	Doniyev Mexriddin	3	3
2409	2023-03-06	INFO	f	Maxmatnosirov Shoxjaxon	3	3
2410	2023-03-06	INFO	f	Sherboyeva Gulsana	3	3
2411	2023-03-12	INFO	f	Xudoyberdiyeva Yulduz	3	3
2412	2023-03-12	INFO	f	Jurayeva Anora	3	3
2413	2023-03-12	INFO	f	Samiev Ramazon	3	3
2414	2023-03-12	INFO	f	Xasanova Gulbadan	3	3
2415	2023-03-12	INFO	f	Ermatov Yorbek	3	3
2416	2023-03-12	INFO	f	Maxmudov Jafar	3	3
2417	2023-03-12	INFO	f	Nabiyeva Charos	3	3
2418	2023-03-12	INFO	f	Olimova Ziyoda	3	3
2419	2023-03-12	INFO	f	Sultonova Zarina	3	3
2420	2023-03-12	INFO	f	Axmedova Mamura	3	3
2421	2023-03-12	INFO	f	Kenjaeva Nasiba	3	3
2422	2023-03-12	INFO	f	Saidmurodova Xurshida	3	3
2423	2023-03-12	INFO	f	Tursunova Gulshona	3	3
2424	2023-03-12	INFO	f	Oblamurodova Munira	3	3
2425	2023-03-12	INFO	f	Keilichova Nodira	3	3
2426	2023-03-12	INFO	f	Toshpulotova Gulnoza	3	3
2427	2023-03-12	INFO	f	Muxtorova Guzal	3	3
2428	2023-03-12	INFO	f	Raxmonova Dilorom	3	3
2429	2023-03-12	INFO	f	Raxmonova Nuriya	3	3
2430	2023-03-12	INFO	f	Nurmatova Gulbaxor	3	3
2431	2023-03-12	INFO	f	Maxmadaminova Maysara	3	3
2432	2023-03-12	INFO	f	O'sarov Akbar	3	3
2433	2023-03-12	INFO	f	Shodiyev Shavkat	3	3
2434	2023-03-12	INFO	f	Ibodullayev Mardon	3	3
2435	2023-03-12	INFO	f	Malapov Abduvoxid	3	3
2436	2023-03-12	INFO	f	Xasanova Moxida	3	3
2437	2023-03-12	INFO	f	Qurbonova Umida	3	3
2438	2023-03-12	INFO	f	Xoshimova Xolida	3	3
2439	2023-03-12	INFO	f	Sharipov Baxrillo	3	3
2440	2023-03-12	INFO	f	Utashov Ziyaviddin	3	3
2441	2023-03-12	INFO	f	Eshonqulov Orif	3	3
2442	2023-03-12	INFO	f	Abdullayeva Dilfuna	3	3
2443	2023-03-12	INFO	f	Dustov Muhammadi	3	3
2444	2023-03-12	INFO	f	Xurramova Gulshoda	3	3
2445	2023-03-12	INFO	f	Ro'ziqulova Gulzira	3	3
2446	2023-03-12	INFO	f	Mamurov Rushan	3	3
2447	2023-03-12	INFO	f	Tojiyev Jamshit	3	3
2448	2023-03-12	INFO	f	Ulashova Umida	3	3
2449	2023-03-12	INFO	f	Xursandova Gulmira	3	3
2450	2023-03-12	INFO	f	Elnazarova Gulbar	3	3
2451	2023-03-12	INFO	f	Halimova Sevinch	3	3
2452	2023-03-12	INFO	f	Ruziqulova Munisa	3	3
2453	2023-03-12	INFO	f	Himmatova Shoira	3	3
2454	2023-04-25	INFO	f	Maxmayusupova Ulkan	3	3
2455	2023-05-06	INFO	f	Ziyayeva Dilnavoz	3	3
2456	2023-05-06	INFO	f	Rajabova Mushtariy	3	3
2457	2023-05-06	INFO	f	Mamadiyorova Shoxsanam	3	3
2458	2023-05-06	INFO	f	Temirova Dilshoda	3	3
2459	2023-05-06	INFO	f	Baxronov Shaxzod	3	3
2460	2023-05-06	INFO	f	Alijonov Musulmon	3	3
2461	2023-05-06	INFO	f	Isroilov Muxammadyusuf	3	3
2462	2023-05-06	INFO	f	Fayzullayeva Muborak	3	3
2463	2023-05-06	INFO	f	Ganiyeva Dilora	3	3
2464	2023-05-06	INFO	f	Namozov Janobidin	3	3
2465	2023-05-06	INFO	f	Ashurov Shoxjahon	3	3
2466	2023-05-06	INFO	f	Mavlonqulov Navro'z	3	3
2467	2023-05-06	INFO	f	Marupov Sharifjon	3	3
2468	2023-05-06	INFO	f	Saidova Maftuna	3	3
2469	2023-05-06	INFO	f	Hazratqulov Ismoil	3	3
2470	2023-05-06	INFO	f	To'ychiqulov Zafar	3	3
2471	2023-05-06	INFO	f	Narziyev Xursanmurod	3	3
2472	2023-05-06	INFO	f	Karoyev Musulmon	3	3
2473	2023-05-06	INFO	f	Raximov Sunnat	3	3
2474	2023-05-06	INFO	f	O'roqova Sadoqat	3	3
2475	2023-06-30	INFO	f	Meliyeva Sadoqat	3	3
2476	2023-06-30	INFO	f	Mirzayev Najmiddin	3	3
2477	2023-06-30	INFO	f	Sadullayeva Raxima	3	3
2478	2023-06-30	INFO	f	Negmatova Munira	3	3
2479	2023-07-05	INFO	f	Asatullayeva Marjona	3	3
2480	2023-07-05	INFO	f	Qahramonov Abdusalom	3	3
2481	2023-07-05	INFO	f	Izzatullayev Jahongir	3	3
2482	2023-07-05	INFO	f	Juramurodov Mansur	3	3
2483	2023-07-05	INFO	f	Axmadjonov Odiljon	3	3
2484	2023-07-05	INFO	f	Raximova Zarina	3	3
2485	2023-07-05	INFO	f	Usarova Xursheda	3	3
2486	2023-07-05	INFO	f	Obloberdiyev Naim	3	3
2487	2023-07-05	INFO	f	Tilavova Mehribon	3	3
2488	2023-07-05	INFO	f	Xalilova Dilshoda	3	3
2489	2023-07-05	INFO	f	Axadova Nasiba	3	3
2490	2023-07-05	INFO	f	Fayzullayeva Muxayo	3	3
2491	2023-07-05	INFO	f	Axrorova Yulduz	3	3
2492	2023-07-05	INFO	f	Mamadoliyeva Maloxat	3	3
2493	2023-07-05	INFO	f	Xasanova Durdona	3	3
2494	2023-07-05	INFO	f	Salomova Gulchiroy	3	3
2495	2023-07-05	INFO	f	Olimova Binobar	3	3
2496	2023-07-05	INFO	f	Shodiyeva Anora	3	3
2497	2023-07-05	INFO	f	Raxmonberdieva Maftuna	3	3
2498	2023-07-05	INFO	f	Sultonova Sayyora	3	3
2499	2023-07-05	INFO	f	Soyipova Shahnoza	3	3
2500	2023-07-05	INFO	f	Turdiyeva Soxiba	3	3
2501	2023-07-05	INFO	f	Qo'yliyeva Soxiba	3	3
2502	2023-07-05	INFO	f	Esanova Nargiza	3	3
2503	2023-07-05	INFO	f	Quliyeva Soxida	3	3
2504	2023-07-05	INFO	f	Xursandov Dilmurod	3	3
2505	2023-07-05	INFO	f	Murodov Sobit	3	3
2506	2023-03-15	INFO	f	Bekmurodova Umida	3	3
2507	2023-03-15	INFO	f	Rashidova Yulduz	3	3
2508	2023-03-15	INFO	f	Nazarova Ra'no	3	3
2509	2023-03-15	INFO	f	Orolova Sayyora	3	3
2510	2023-03-15	INFO	f	Zohidov Sardor	3	3
2511	2023-03-15	INFO	f	Arziyeva Diloro	3	3
2512	2023-03-15	INFO	f	Azizov Akmal	3	3
2513	2023-03-15	INFO	f	Mardonova Matluba	3	3
2514	2023-03-15	INFO	f	Oblokulov Zuxriddin	3	3
2515	2023-03-15	INFO	f	Ruziqulova Sherali	3	3
2516	2023-03-15	INFO	f	Zokirova Xolida	3	3
2517	2023-03-15	INFO	f	Karimova Xilola	3	3
2518	2023-03-15	INFO	f	Usmonova Mashxura	3	3
2519	2023-03-15	INFO	t	Muqaddasov Savlatjon	3	3
2520	2023-03-15	INFO	f	Ismatillayeva Sojida	3	3
2521	2023-03-15	INFO	f	Ismatillayeva Shodiya	3	3
2522	2023-03-15	INFO	f	O'rinboyeva Muxabbat	3	3
2523	2023-03-15	INFO	f	Rizaqulova Laylo	3	3
2524	2023-03-15	INFO	f	Muxammadiyeva Zilola	3	3
2525	2023-03-15	INFO	f	Shonazarova Qunduz	3	3
2526	2023-03-15	INFO	f	Raxmatillayeva Orzigul	3	3
2527	2023-03-15	INFO	f	Qalandarova Maxliyo	3	3
2528	2023-03-15	INFO	f	Karimova Zumrad	3	3
2529	2023-03-15	INFO	f	Aliqulova Dilso'z	3	3
2530	2023-03-15	INFO	f	Burxonova Rushona	3	3
2531	2023-03-15	INFO	f	G'aniyeva Madina	3	3
2532	2023-03-15	INFO	f	Hamrayeva Shohsanam	3	3
2533	2023-03-15	INFO	f	Ibragimova Gulrux	3	3
2534	2023-03-15	INFO	f	Qarshiyeva Zilola	3	3
2535	2023-03-15	INFO	f	Qayumova Shoxida	3	3
2536	2023-03-15	INFO	f	Quldasheva Dilnoza	3	3
2537	2023-03-15	INFO	f	Qurbonova Dinora	3	3
2538	2023-03-15	INFO	f	Tursunova Gulzoda	3	3
2539	2023-03-15	INFO	f	Xasanova Sanoat	3	3
2540	2023-03-15	INFO	f	Xaydarova Zamira	3	3
2541	2023-03-15	INFO	f	Yuldasheva Shaxnoza	3	3
2542	2023-03-15	INFO	f	Safarova Sojida	3	3
2543	2023-03-15	INFO	f	Xolmo`minova Maftuna	3	3
2544	2023-03-15	INFO	f	Xushvaqtova Dildora	3	3
2545	2023-03-06	INFO	f	Murodullayev Shexroz	3	3
2546	2023-03-06	INFO	f	Davronov Diyorbek	3	3
2547	2023-03-06	INFO	f	Jamolov Sardorbek	3	3
2548	2023-03-06	INFO	f	Azamova Dilafruz	3	3
2549	2023-03-06	INFO	f	Boymurodov Muhammadali	3	3
2550	2023-03-06	INFO	f	Doniyev Mexriddin	3	3
2551	2023-03-06	INFO	f	Maxmatnosirov Shoxjaxon	3	3
2552	2023-03-06	INFO	f	Sherboyeva Gulsana	3	3
2553	2023-03-12	INFO	f	Xudoyberdiyeva Yulduz	3	3
2554	2023-03-12	INFO	f	Jurayeva Anora	3	3
2555	2023-03-12	INFO	f	Samiev Ramazon	3	3
2556	2023-03-12	INFO	f	Xasanova Gulbadan	3	3
2557	2023-03-12	INFO	f	Ermatov Yorbek	3	3
2558	2023-03-12	INFO	f	Maxmudov Jafar	3	3
2559	2023-03-12	INFO	f	Nabiyeva Charos	3	3
2560	2023-03-12	INFO	f	Olimova Ziyoda	3	3
2561	2023-03-12	INFO	f	Sultonova Zarina	3	3
2562	2023-03-12	INFO	f	Axmedova Mamura	3	3
2563	2023-03-12	INFO	f	Kenjaeva Nasiba	3	3
2564	2023-03-12	INFO	f	Saidmurodova Xurshida	3	3
2565	2023-03-12	INFO	f	Tursunova Gulshona	3	3
2566	2023-03-12	INFO	f	Oblamurodova Munira	3	3
2567	2023-03-12	INFO	f	Keilichova Nodira	3	3
2568	2023-03-12	INFO	f	Toshpulotova Gulnoza	3	3
2569	2023-03-12	INFO	f	Muxtorova Guzal	3	3
2570	2023-03-12	INFO	f	Raxmonova Dilorom	3	3
2571	2023-03-12	INFO	f	Raxmonova Nuriya	3	3
2572	2023-03-12	INFO	f	Nurmatova Gulbaxor	3	3
2573	2023-03-12	INFO	f	Maxmadaminova Maysara	3	3
2574	2023-03-12	INFO	f	O'sarov Akbar	3	3
2575	2023-03-12	INFO	f	Shodiyev Shavkat	3	3
2576	2023-03-12	INFO	f	Ibodullayev Mardon	3	3
2577	2023-03-12	INFO	f	Malapov Abduvoxid	3	3
2578	2023-03-12	INFO	f	Xasanova Moxida	3	3
2579	2023-03-12	INFO	f	Qurbonova Umida	3	3
2580	2023-03-12	INFO	f	Xoshimova Xolida	3	3
2581	2023-03-12	INFO	f	Sharipov Baxrillo	3	3
2582	2023-03-12	INFO	f	Utashov Ziyaviddin	3	3
2583	2023-03-12	INFO	f	Eshonqulov Orif	3	3
2584	2023-03-12	INFO	f	Abdullayeva Dilfuna	3	3
2585	2023-03-12	INFO	f	Dustov Muhammadi	3	3
2586	2023-03-12	INFO	f	Xurramova Gulshoda	3	3
2587	2023-03-12	INFO	f	Ro'ziqulova Gulzira	3	3
2588	2023-03-12	INFO	f	Mamurov Rushan	3	3
2589	2023-03-12	INFO	f	Tojiyev Jamshit	3	3
2590	2023-03-12	INFO	f	Ulashova Umida	3	3
2591	2023-03-12	INFO	f	Xursandova Gulmira	3	3
2592	2023-03-12	INFO	f	Elnazarova Gulbar	3	3
2593	2023-03-12	INFO	f	Halimova Sevinch	3	3
2594	2023-03-12	INFO	f	Ruziqulova Munisa	3	3
2595	2023-03-12	INFO	f	Himmatova Shoira	3	3
2596	2023-04-25	INFO	f	Maxmayusupova Ulkan	3	3
2597	2023-05-06	INFO	f	Ziyayeva Dilnavoz	3	3
2598	2023-05-06	INFO	f	Rajabova Mushtariy	3	3
2599	2023-05-06	INFO	f	Mamadiyorova Shoxsanam	3	3
2600	2023-05-06	INFO	f	Temirova Dilshoda	3	3
2601	2023-05-06	INFO	f	Baxronov Shaxzod	3	3
2602	2023-05-06	INFO	f	Alijonov Musulmon	3	3
2603	2023-05-06	INFO	f	Isroilov Muxammadyusuf	3	3
2604	2023-05-06	INFO	f	Fayzullayeva Muborak	3	3
2605	2023-05-06	INFO	f	Ganiyeva Dilora	3	3
2606	2023-05-06	INFO	f	Namozov Janobidin	3	3
2607	2023-05-06	INFO	f	Ashurov Shoxjahon	3	3
2608	2023-05-06	INFO	f	Mavlonqulov Navro'z	3	3
2609	2023-05-06	INFO	f	Marupov Sharifjon	3	3
2610	2023-05-06	INFO	f	Saidova Maftuna	3	3
2611	2023-05-06	INFO	f	Hazratqulov Ismoil	3	3
2612	2023-05-06	INFO	f	To'ychiqulov Zafar	3	3
2613	2023-05-06	INFO	f	Narziyev Xursanmurod	3	3
2614	2023-05-06	INFO	f	Karoyev Musulmon	3	3
2615	2023-05-06	INFO	f	Raximov Sunnat	3	3
2616	2023-05-06	INFO	f	O'roqova Sadoqat	3	3
2617	2023-06-30	INFO	f	Meliyeva Sadoqat	3	3
2618	2023-06-30	INFO	f	Mirzayev Najmiddin	3	3
2619	2023-06-30	INFO	f	Sadullayeva Raxima	3	3
2620	2023-06-30	INFO	f	Negmatova Munira	3	3
2621	2023-07-05	INFO	f	Asatullayeva Marjona	3	3
2622	2023-07-05	INFO	f	Qahramonov Abdusalom	3	3
2623	2023-07-05	INFO	f	Izzatullayev Jahongir	3	3
2624	2023-07-05	INFO	f	Juramurodov Mansur	3	3
2625	2023-07-05	INFO	f	Axmadjonov Odiljon	3	3
2626	2023-07-05	INFO	f	Raximova Zarina	3	3
2627	2023-07-05	INFO	f	Usarova Xursheda	3	3
2628	2023-07-05	INFO	f	Obloberdiyev Naim	3	3
2629	2023-07-05	INFO	f	Tilavova Mehribon	3	3
2630	2023-07-05	INFO	f	Xalilova Dilshoda	3	3
2631	2023-07-05	INFO	f	Axadova Nasiba	3	3
2632	2023-07-05	INFO	f	Fayzullayeva Muxayo	3	3
2633	2023-07-05	INFO	f	Axrorova Yulduz	3	3
2634	2023-07-05	INFO	f	Mamadoliyeva Maloxat	3	3
2635	2023-07-05	INFO	f	Xasanova Durdona	3	3
2636	2023-07-05	INFO	f	Salomova Gulchiroy	3	3
2637	2023-07-05	INFO	f	Olimova Binobar	3	3
2638	2023-07-05	INFO	f	Shodiyeva Anora	3	3
2639	2023-07-05	INFO	f	Raxmonberdieva Maftuna	3	3
2640	2023-07-05	INFO	f	Sultonova Sayyora	3	3
2641	2023-07-05	INFO	f	Soyipova Shahnoza	3	3
2642	2023-07-05	INFO	f	Turdiyeva Soxiba	3	3
2643	2023-07-05	INFO	f	Qo'yliyeva Soxiba	3	3
2644	2023-07-05	INFO	f	Esanova Nargiza	3	3
2645	2023-07-05	INFO	f	Quliyeva Soxida	3	3
2646	2023-07-05	INFO	f	Xursandov Dilmurod	3	3
2647	2023-07-05	INFO	f	Murodov Sobit	3	3
2648	2023-03-15	INFO	f	Bekmurodova Umida	3	3
2649	2023-03-15	INFO	f	Rashidova Yulduz	3	3
2650	2023-03-15	INFO	f	Nazarova Ra'no	3	3
2651	2023-03-15	INFO	f	Orolova Sayyora	3	3
2652	2023-03-15	INFO	f	Zohidov Sardor	3	3
2653	2023-03-15	INFO	f	Arziyeva Diloro	3	3
2654	2023-03-15	INFO	f	Azizov Akmal	3	3
2655	2023-03-15	INFO	f	Mardonova Matluba	3	3
2656	2023-03-15	INFO	f	Oblokulov Zuxriddin	3	3
2657	2023-03-15	INFO	f	Ruziqulova Sherali	3	3
2658	2023-03-15	INFO	f	Zokirova Xolida	3	3
2659	2023-03-15	INFO	f	Karimova Xilola	3	3
2660	2023-03-15	INFO	f	Usmonova Mashxura	3	3
2671	2023-06-18	INFO	f	Zaitov Diyor	1	1
2681	2023-07-12	INFO	t	Alisherov Amir	1	3
2687	2023-07-04	INFO	f	Ibragimova  Nargiza	1	3
2688	2023-07-08	INFO	f	Karimova Gulshan	1	3
2721	2023-06-01		f	Muqumova Xurshida	1	3
2722	2023-06-01		f	Xujamkulova Sayaro	1	3
2757	2023-05-18		f	Uljayeva Iroqbegim	3	3
4449	2023-07-28		f	Xolmatova Nigora 	1	3
4492	2023-10-01	INFO	f	Xojiyeva Maxliyo	3	3
4493	2023-10-01		f	Xikmatova Iroda	3	3
2819	2023-07-01		f	Xayitova Xurshida	3	3
2823	2023-07-01		f	Xayitova  Charos	3	3
2825	2023-04-20		f	Umirava Ozoda	1	3
2826	2023-07-01		f	Axmedova Aziza	3	3
2827	2023-04-20		f	Ergashova Bahtiniso	1	3
2829	2023-07-01		f	Butayeva Xabiba	3	3
2833	2023-04-20		f	Fayziyeva Zulfiya	1	3
2835	2023-04-20		t	Ro`ziyev Sharofiddin	1	3
2837	2023-04-20		f	Yo`ldoshova Sarvinoz	1	3
2847	2023-07-01		t	Okbayev Nurullo	3	3
2849	2023-07-01		f	Abdusattarova  Muxayyo	3	3
2850	2023-07-01		t	Eraliyev Tulqin	3	3
2852	2023-07-01		f	Umarova Shaxnoza	3	3
2854	2023-07-01		t	Berkinov Berdiyor	3	3
2855	2023-07-01		f	Mamirova Shaxnoza	3	3
4450	2023-07-28		f	Qulmamatova Zamira 	1	3
4451	2023-07-28		f	Mamatova Dilrabo 	1	3
2858	2023-07-05		f	Mansurova Fotima	1	3
2859	2023-07-05		f	Rasulova Dilnoza	1	3
4452	2023-07-28		f	Ruziyeva Xafiza 	1	3
2861	2023-07-05		t	Bekmurodov Abbos	1	3
2862	2023-07-05		f	Ergashova Gulbahor	1	3
2863	2023-07-05		f	Qudratova Feruza	1	3
2864	2023-01-01		t	Abdishukurov Odilbek	1	3
2865	2023-01-01		t	Normamatov Suxrobbek	1	3
2866	2023-07-05		f	Ashurova Tursuntosh	1	3
2867	2023-01-01		t	Alisherov Behro'z	1	3
2868	2023-07-05		f	To'xtayeva O'raltosh	1	3
2869	2023-07-05		f	O'tanova Gulhayyo	1	3
2870	2023-01-01		t	Nuraliyev Behro'z	1	3
2871	2023-07-05		f	Ro'ziyeva Muhabbat	1	3
4453	2023-07-28		f	Qosimova Muqaddas 	1	3
2873	2023-07-05		f	Ergashova Feruza	1	3
2874	2023-07-05		f	Bo'riyeva Xosila	1	3
2875	2023-06-01		t	G'iyosov Ilyos	1	3
2876	2023-07-05		f	Eshquvatova Xafiza	1	3
2877	2023-07-05		f	Qo'ziboyeva Shohsanam	1	3
2878	2023-03-01		t	Shukurullayev Ravshanbek	1	3
2879	2023-07-05		f	Nomozova Fotima	1	3
2880	2023-07-05		f	Norbekova Mohidil	1	3
2881	2023-07-05		f	Djumanova Gulchehra	1	3
2882	2023-05-18		f	Nasriyeva Zebiniso	1	6
2883	2023-01-05		t	Avg'anov Vohidjon	1	2
2884	2023-03-15		f	Ismatillayeva Sojida	3	3
2885	2023-01-05		t	 Xushimov Abdullaxon	1	2
2886	2023-03-15		f	Ismatillayeva Shodiya	3	3
2887	2023-01-05		t	Muxammadiyev Javohir	1	2
2888	2023-03-15		f	O'rinboyeva Muxabbat	3	3
2889	2023-01-05		t	Baxtiyorov Vosidjon	1	2
2890	2023-03-15		f	Rizaqulova Laylo	3	3
2891	2023-01-05		t	Eshqulov Oybek	1	2
2892	2023-03-15		f	Muxammadiyeva Zilola	3	3
2893	2023-03-15		f	Shonazarova Qunduz	3	3
2894	2023-01-05		t	Pardayev Og'abek	1	2
2895	2023-03-15		f	Raxmatillayeva Orzigul	3	3
2896	2023-01-05		t	Eshqulov Xudayorbek	1	2
2897	2023-03-15		f	Qalandarova Maxliyo	3	3
2898	2023-03-15		f	Karimova Zumrad	3	3
2899	2023-03-15		f	Aliqulova Dilso'z	3	3
2900	2023-01-05		t	Abduraxmonov Dostonbek	1	2
2901	2023-06-09		f	Uzoqboyeva Shaxzoda	1	3
4454	2023-07-28		f	Xudoyqulova Dilnoza 	1	3
2903	2023-06-09		t	Uzoqboyev Diyor	1	3
4455	2023-07-01		f	Xujaqulova Diyora	1	3
4456	2023-07-01		f	Xujaqulova Dinara	1	3
4457	2023-05-29		f	Mardonova Dinara	1	3
2907	2023-06-09		f	Toshpo'latov Omonulla	1	3
4458	2023-07-04		f	Bo'ronova Fotima	1	3
2909	2023-06-09		t	Musulmonov Baxtiyor	1	3
2910	2023-06-09		f	Saydullayev Suhrobbek	1	3
2911	2023-06-09		f	Absalamov Akobir	1	3
4459	2023-07-04		f	Umarqulova Sevinch	1	3
4460	2023-05-08		f	Xolmuminova Nigora	1	3
4461	2023-05-22		t	Qurbonnazarov Ilyosbek	1	3
4462	2023-05-29		f	Elomonova Sitora	1	3
4463	2023-08-08		t	Ziyadullayev Jasurbek	1	3
4494	2023-10-01		f	Ko'chimova Gulzoda	3	3
4495	2023-10-01		f	Jomurodova Mohinur	3	3
4496	2023-10-01		f	Allayarova  Shaxnoza 	3	3
4497	2023-10-01		f	Tillayeva Firuza	3	3
4498	2023-10-01		f	Buronova  Nargiza	3	3
4499	2023-10-01		f	Bahronova  Gavhar	3	3
4500	2023-05-05		t	Turg'unboyev Nurbek	1	3
4501	2023-05-05		f	Muxtarova Zarnigor	1	3
4502	2023-05-05		f	Xamdamova Ruxshona	1	3
4503	2023-05-05		t	Baxramov Farrux	1	3
4504	2023-05-05		f	Mamarajabov Fayozbek	1	3
4505	2023-05-05		f	Xoliqov Aslbek	1	3
4523	2023-08-30	INFO	t	Ibadullayev Bunyod	1	3
4524	2023-08-30		f	Tashatov Ozodbek	1	3
4525	2023-08-30		f	Jumanov Oybek	1	3
4526	2023-08-30		f	Sattarov Murodjon	1	3
4532	2023-09-29	INFO	t	Ag'zamov Samandar	1	4
4535	2023-09-18	INFO	t	Niyazova Manzura	1	5
4539	2023-10-10		f	Kurbanov Eldor	1	6
4563	2023-09-01		f	Bobomuradova Shoxista 	3	3
4571	2023-08-09		f	Karimov Isroil	1	3
4573	2023-09-18	INFO	f	Dilshodov Muhammadamin	1	3
4575	2023-09-06		f	Qurbonov Bobur	1	6
4576	2023-08-20		f	Usmonov Behruz	1	3
4577	2023-08-20		f	Usmonov Amirxon	1	3
4578	2023-08-20		f	Shukurov Javohir	1	3
4579	2023-08-20		f	Islomov Javohir	1	3
4580	2023-08-20		f	Toshpo'latov Shohrux	1	3
4581	2023-08-20		f	Ergashev Raimjon	1	3
4582	2023-08-20		f	Xamidov Akramjon	1	3
4584	2023-09-05	INFO	t	Xasanov Nazarbek	1	3
4585	2023-09-05		f	Daminov Mehroj	1	3
4586	2023-07-26		f	Tursunov Temur	1	3
4587	2023-07-26		f	Rustamov Umrzoq	1	3
4588	2023-07-26		f	Nosirova Xilola	1	3
4589	2023-07-26		f	Xusanov Sarvar	1	3
4591	2023-10-05		f	Nurbayeva  Laylo	1	3
4592	2023-10-05		f	Normuradova Munira	1	3
4593	2023-10-05		f	Mahmanova Muhayyo	1	3
4594	2023-10-05		f	Nurmanova Dilorom	1	3
4595	2023-10-05		f	Ergashova Mohichexra	1	3
4596	2023-10-05		f	Dilmonova Saodat	1	3
4599	2023-10-10		f	Eshtemirov Abbos	1	3
4600	2023-10-10		f	Ergasheva Durdona	1	3
4601	2023-10-10		f	Komilov Jonibek	1	3
2913	2023-03-15		f	Burxonova Rushona	3	3
2914	2023-03-15		f	G'aniyeva Madina	3	3
2915	2023-06-09		f	Abduazimova  Xadicha	1	3
2916	2023-03-15		f	Hamrayeva Shohsanam	3	3
2917	2023-03-15		f	Ibragimova Gulrux	3	3
2918	2023-06-09		f	Baxronova Shaxzoda	1	3
2919	2023-03-15		f	Qarshiyeva Zilola	3	3
2920	2023-06-09		f	Tagayeva Nargiza	1	3
2921	2023-03-15		f	Qayumova Shoxida	3	3
2922	2023-03-15		f	Quldasheva Dilnoza	3	3
2923	2023-06-01		t	Abduraimov Isfandiyor	1	3
2924	2023-03-15		f	Qurbonova Dinora	3	3
2925	2023-03-15		f	Tursunova Gulzoda	3	3
2926	2023-06-09		f	Raximova Xilola	1	3
2927	2023-03-15		f	Xasanova Sanoat	3	3
2928	2023-03-15		f	Xaydarova Zamira	3	3
2929	2023-03-15		f	Yuldasheva Shaxnoza	3	3
2930	2023-03-15		f	Safarova Sojida	3	3
2931	2023-06-09		f	Inyatillayeva Gulnigor	1	3
2932	2023-03-15		f	Xolmo`minova Maftuna	3	3
2933	2023-06-09		t	Ruziboyev Bexruz	1	3
2934	2023-06-09		f	Fayzullaev Abdurauf	1	3
2935	2023-03-15	INFO	f	Xushvaqtova Dildora	3	3
2937	2023-06-09		f	Abduxalilov Sardor	1	3
2939	2023-06-09		f	Sarimsakova Sarvinoz 	1	3
2941	2023-06-09		t	Xidirov Kamron	1	3
2943	2023-06-09		f	Isaboyeva Shahnoza	1	3
2947	2023-06-09		f	Isaboyeva Marjona	1	3
2950	2023-06-09		f	Norboyeva Gulchehra	1	3
2951	2023-06-09		t	Abdullayeva Muborak	1	3
2954	2023-07-12		f	Saydullayev Abdulvosid	1	3
2955	2023-07-12		f	Xolboyeva Rushana	1	3
2956	2023-07-12		t	Xolboyev Behruz	1	3
2957	2023-07-12		f	Rashidova Nigora	1	3
2958	2023-07-12		f	Mamarajabova Sabrina	1	3
2959	2023-04-06		t	Murodullayev Shexroz	3	3
2960	2023-07-12		f	Abdukadirova Durdona	1	3
2961	2023-04-06		f	Davronov Diyorbek	3	3
2962	2023-04-06		f	Jamolov Sardorbek	3	3
2963	2023-07-12		f	Abdukadirova Laylo	1	3
2964	2023-04-06		f	Azamova Dilafruz	3	3
2965	2023-07-12		f	Abdusattarova Dilnavoz	1	3
2966	2023-04-06		f	Boymurodov Muhammadali	3	3
2967	2023-07-12		f	Saydullayeva Sevinch	1	3
2968	2023-04-06		f	Doniyev Mexriddin	3	3
2969	2023-04-06		f	Maxmatnosirov Shoxjaxon	3	3
2970	2023-07-12		f	Najmiddinova Shaxlo	1	3
2971	2023-04-06		f	Sherboyeva Gulsana	3	3
2972	2023-04-12		f	Xudoyberdiyeva Yulduz	3	3
2973	2023-04-12		f	Jurayeva Anora	3	3
2974	2023-04-12		f	Samiev Ramazon	3	3
2975	2023-07-12		t	Eshqulov Shoxrux	1	3
2976	2023-04-12		f	Xasanova Gulbadan	3	3
2977	2023-07-12		f	Murodova Hilola	1	3
2979	2023-07-12		t	Mamaraupov Javohir	1	3
2980	2023-07-12		f	Uzoqboyev Sardor	1	3
2981	2023-04-12		t	Ermatov Yorbek	3	3
2982	2023-04-12		f	Maxmudov Jafar	3	3
2983	2023-04-12		f	Nabiyeva Charos	3	3
2984	2023-07-12		f	Aliboyev Abdumalik	1	3
2985	2023-04-12		f	Olimova Ziyoda	3	3
2986	2023-04-12		f	Sultonova Zarina	3	3
2987	2023-07-12		f	Abdumo'minov Sunnatbek	1	3
2988	2023-04-12		f	Axmedova Mamura	3	3
2989	2023-04-12		f	Kenjaeva Nasiba	3	3
2990	2023-07-12		f	Abdumo'minov Shodiyor	1	3
2991	2023-04-12		f	Saidmurodova Xurshida	3	3
2992	2023-04-12		f	Tursunova Gulshona	3	3
2993	2023-04-12		f	Oblamurodova Munira	3	3
2994	2023-07-12		f	Anarboyev G'olibjon	1	3
2995	2023-04-12		f	Keilichova Nodira	3	3
2996	2023-07-12		f	Abduxalilov Sardor	1	3
2997	2023-04-12		f	Toshpulotova Gulnoza	3	3
2998	2023-04-15		f	Muxtorova Guzal	3	3
2999	2023-07-12		f	Tuychiyeva Zebiniso	1	3
3000	2023-04-15		f	Raxmonova Dilorom	3	3
3001	2023-04-15		f	Raxmonova Nuriya	3	3
3002	2023-07-12		f	Xoltemirov Javohir	1	3
3003	2023-04-12		f	Nurmatova Gulbaxor	3	3
3004	2023-04-12		f	Maxmadaminova Maysara	3	3
3005	2023-07-12		t	Subanov G'ayrat	1	3
3006	2023-04-12		f	O'sarov Akbar	3	3
3007	2023-04-12		f	Shodiyev Shavkat	3	3
3008	2023-07-12		f	Musurmonqulov Ashurbek	1	3
3009	2023-04-12		f	Ibodullayev Mardon	3	3
3010	2023-04-12		f	Malapov Abduvoxid	3	3
3011	2023-07-12		f	Eshnazarov Alijon	1	3
3012	2023-07-12		f	Aliqulov Alisher	1	3
3014	2023-07-12		f	Xoltemirov Javohir	1	3
3015	2023-07-12		f	Subanov G'ayrat	1	3
3020	2023-07-12		f	Musurmonqulov Ashurbek	1	3
3021	2023-07-12		f	Eshnazarov Alijon	1	3
3022	2023-07-12		f	Aliqulov Alisher	1	3
3023	2023-07-12		f	Norbekova Nozigul	1	3
3024	2023-04-12		f	Xasanova Moxida	3	3
3025	2023-04-12		f	Qurbonova Umida	3	3
3026	2023-04-12		f	Xoshimova Xolida	3	3
3027	2023-07-12		f	Muhammadiyeva Yulduz	1	3
3028	2023-07-12		t	Toxirov Bekjahon	1	3
3029	2023-04-12	INFO	f	Sharipov Baxrillo	3	3
3030	2023-07-12		f	Do'stboyev Jahongir	1	3
3031	2023-04-12		f	Utashov Ziyaviddin	3	3
3032	2023-07-12		f	Yaxshiboyev Azizbek	1	3
3033	2023-04-12		f	Eshonqulov Orif	3	3
3034	2023-07-12		f	Qo'shboqev Mehroj	1	3
3035	2023-04-12		f	Abdullayeva Dilfuna	3	3
3037	2023-07-12		f	Bohadirov Doniyor	1	3
3041	2023-04-12		f	Mamurov Rushan	3	3
3044	2023-04-12		f	Tojiyev Jamshit	3	3
3048	2023-04-12		f	Elnazarova Gulbar	3	3
4464	2023-08-08		f	Xushbaqova Amina	1	3
4465	2023-03-01		f	Sodiqov Bexruz	1	2
4466	2023-03-01		f	Kenjayev Shuxrat	1	2
4467	2023-03-01		f	Isorova Mehrangiz	1	2
4468	2023-03-01		t	Nurmuradov Akobir	1	2
4469	2023-03-01		f	Allamuradov Shohjahon	1	2
4470	2023-03-01		f	Abdujalilov Javohirbek	1	2
4471	2023-03-01		f	Ziyadullayev Bobur	1	2
4472	2023-03-01		f	Ergashov Xasan	1	2
4473	2023-03-01		f	Namozov Sardor	1	2
4506	2023-05-05		f	Mirzayev Shehroz	1	3
4507	2023-05-05		f	Abjalilov Umirzoq	1	3
4508	2023-05-06		f	Amonov Saloxiddin	1	3
4527	2023-08-30		f	Sayfullayeva Mexribon	1	3
4528	2023-08-30		f	Abdivopayeva Sanobar	1	3
4536	2023-03-10	INFO	f	Ilhomjonova Aziza	1	3
4540	2023-09-01	INFO	t	Yusupova Shahnoza	3	3
4541	2023-09-01		f	Shonazarova Zamira	3	3
4542	2023-09-01		f	Komilova Shoxista	3	3
4543	2023-09-01		f	G'aniyeva Dildora	3	3
4544	2023-09-01		f	Halimova  Asolat	3	3
4545	2023-09-01		f	Erdanova Dildora	3	3
4546	2023-09-01		f	Zoirova  Go'zal	3	3
4547	2023-09-01		f	Ismoilova Dilshoda 	3	3
4548	2023-09-01		f	Kurbanova  Ra'no	3	3
4549	2023-09-01		f	Xurramova  Barchinoy 	3	3
4550	2023-09-01		f	Ro'ziqulova Surayyo	3	3
4551	2023-09-01		f	Qarshiyeva Gulmira	3	3
4552	2023-09-01		f	Parmanova Nilufar 	3	3
4564	2023-09-01		f	Tojinorova Rushana	1	3
4565	2023-09-01		f	Sharofboyeva Sarvinoz	1	3
4566	2023-09-01		f	Xudoyqulov Shoxro'z	1	3
4567	2023-09-01		f	Umarov Muhammad	1	3
4568	2023-09-01		f	Ubaydullayev Diyorbek	1	3
4569	2023-09-01		f	Xazratov  Sardor	1	3
4570	2023-09-01		f	Turdiyev Baxodir	1	3
4572	2023-04-08		f	Muhammadov Fatxulla	1	2
4574	2023-09-18		t	Dilshodov Amirdovud	1	3
4590	2023-06-17	INFO	t	Hamdamov Bunyod	1	1
4597	2023-10-13	INFO	t	Shukurov Alisher	1	7
4602	2023-10-10		f	Toshboltayeva Dildora	1	3
4603	2023-10-10		f	Hayitov Feruz	1	3
4604	2023-10-10		f	Abduhalekov Humoyun	1	3
4605	2023-10-10		f	Kasimov Ismatillo	1	3
4606	2023-10-10		f	Kosimov Qosimali	1	3
4607	2023-10-10		f	Yuldoshev Suhrob	1	3
4609	2023-10-10		f	Akramova Munisa	1	3
4610	2023-10-10		f	Aramova Mexribon	1	3
4611	2023-10-10		f	Xusnidinova Soliha	1	3
4612	2023-10-10		f	Qarsheyiv Jahongir	1	3
4613	2023-10-10		f	Karimova Dilrabo	1	3
4614	2023-10-10		f	Abduhalekov Humoyun	1	3
4615	2023-10-10		f	Saparov Davlatbek	1	3
4616	2023-10-10		f	Saparov Doniyorbek	1	3
4617	2023-10-10		f	Shomurodov Muhammad	1	3
4618	2023-10-10		f	Shamsikulov Jonibek	1	3
4619	2023-10-10		f	Xamroqulov Bobur	1	3
4620	2023-10-10		f	Sayfiyev Otajon	1	3
4621	2023-10-10	INFO	t	Qarsheyiv Jahongir	1	3
4622	2023-10-10		f	Ismatullayev Munis	1	3
4623	2023-10-10	INFO	t	Nurmaxmatov Bexruz	1	6
4624	2023-10-13	INFO	t	Shokirov Umurzoq	2	3
4625	2023-10-07	INFO	t	Shokirov Umrzoq	1	3
4627	2023-10-10	INFO	t	Abdug ʼafforov Doston	1	3
4628	2023-10-10	INFO	t	Abdugafforov Doston	1	3
4629	2023-10-10	INFO	t	Nosirov Diyor	1	6
4630	2023-09-18	INFO	t	Nuriddinov Zarrux	1	3
4631	2023-09-18		f	Marufjonova Rayhona	1	3
4632	2023-09-18		f	Ilxomjonova Zinnura	1	3
4633	2023-08-30	INFO	t	Amriddinov Lazizxon	1	3
4634	2023-10-16	INFO	t	Elmamatov Nazarbek	1	3
4635	2023-10-10		f	Qarshiyev Muxammadjon	1	7
4636	2023-10-10	INFO	t	Haqberdiyeva Malika	1	3
4637	2023-10-10	INFO	f	Bekniyozov Mansurjon	1	3
4638	2023-10-17	INFO	t	Norxo'jayeva Adolatxon	1	6
4639	2023-10-10		f	Djabbarova Ruxshona	1	6
4640	2023-01-11	INFO	t	Tokhirjon Soliev	1	3
4641	2023-09-04	INFO	t	Uzoqov Temurbek	1	3
4642	2023-09-04		f	Rasulberdiyev Mashrabjon	1	3
4645	2023-06-06	INFO	t	Arslonov Javoxir	2	3
4646	2023-09-18	INFO	t	Xursanmurodova Sevinch	1	2
4647	2023-08-18	INFO	t	Sharipov Dilshod	1	6
4648	2023-06-26	INFO	t	Sobirov Zarshed	1	2
4649	2023-10-16	INFO	f	Boliyeva Gulyora	1	3
4651	2023-10-20	INFO	t	Mingbayev Lazizbek	1	3
4652	2023-10-20	INFO	t	Xasanova Jasmina	1	3
4653	2023-10-20		f	Xasanova Shaxrizoda	1	3
4654	2023-11-03	INFO	f	Andiyorova Aziza	1	6
4655	2023-11-04	INFO	f	Solejonova Sabrina	2	3
4656	2023-11-04	INFO	t	Ravshanov Alisajjod	2	3
4657	2023-11-06	INFO	t	Sobirov Amir	2	3
4658	2023-11-06	INFO	f	Utkurova Tanzila	2	3
4659	2023-11-06		f	Utkurova Nargiza	2	3
4660	2023-11-06	INFO	t	Abdunabiyev Abdukabir	2	3
4662	2023-11-06		t	Shuxratjonov Muxammadimron	2	3
4663	2023-11-06	INFO	t	Shokirov Shaxriyor	2	3
4664	2023-11-06	INFO	t	Rafikov Abdulaziz	2	3
4665	2023-11-06		t	Savriyev Bobur	2	3
4666	2023-11-06		t	Savriyev Bekzod 	2	3
4667	2023-11-06	INFO	t	Axadov Aminjon	2	3
3036	2023-04-12		f	Dustov Muhammadi	3	3
3038	2023-04-12		f	Xurramova Gulshoda	3	3
3039	2023-04-12		f	Ro'ziqulova Gulzira	3	3
4474	2023-10-01		f	Juraqulova  Iroda	3	3
3042	2023-07-12		f	Aktamov Shaxboz 	1	3
3043	2023-07-12		f	Abduraximov Behruz	1	3
3045	2023-04-12		f	Ulashova Umida	3	3
3046	2023-07-12		t	Kozimov Ziyovuddinxon	1	3
3047	2023-04-12		f	Xursandova Gulmira	3	3
3049	2023-04-12		f	Halimova Sevinch	3	3
3050	2023-04-12		f	Ruziqulova Munisa	3	3
3051	2023-04-12		f	Himmatova Shoira	3	3
4475	2023-10-01		f	Tojiyeva Nargiza	3	3
3053	2023-07-06		f	Nasriddinova Sevara	1	3
3054	2023-05-25		f	Maxmayusupova Ulkan	3	3
3055	2023-06-02		f	Ziyayeva Dilnavoz	3	3
3056	2023-06-02		f	Rajabova Mushtariy	3	3
3057	2023-06-02		f	Mamadiyorova Shoxsanam	3	3
3058	2023-06-02		f	Temirova Dilshoda	3	3
3059	2023-06-02		f	Baxronov Shaxzod	3	3
3060	2023-06-02		f	Alijonov Musulmon	3	3
3061	2023-06-02		f	Isroilov Muxammadyusuf	3	3
3062	2023-07-06		t	Saidov Tulqin	1	3
3063	2023-06-05		f	Fayzullayeva Muborak	3	3
3064	2023-06-05		f	Ganiyeva Dilora	3	3
3065	2023-07-06		f	Jamilova Sitora	1	3
3066	2023-06-05		f	Namozov Janobidin	3	3
3067	2023-06-05		f	Ashurov Shoxjahon	3	3
3068	2023-07-06		f	Tovmurodova Maftuna	1	3
3069	2023-06-05		f	Mavlonqulov Navro'z	3	3
3070	2023-06-05		f	Marupov Sharifjon	3	3
3071	2023-06-05		f	Saidova Maftuna	3	3
3072	2023-06-05		f	Hazratqulov Ismoil	3	3
3073	2023-06-05		f	To'ychiqulov Zafar	3	3
3074	0023-07-06		f	Ximmatova Sarvinoz	1	3
3075	2023-06-05		f	Narziyev Xursanmurod	3	3
3076	2023-06-05		f	Karoyev Musulmon	3	3
3077	2023-06-05		f	Raximov Sunnat	3	3
3078	2023-07-06		f	Ergasheva Zulxumor	1	3
3079	2023-06-05		f	O'roqova Sadoqat	3	3
3080	2023-06-30		f	Meliyeva Sadoqat	3	3
3081	2023-07-06		f	Majidova Gulmira	1	3
3082	2023-06-30		f	Mirzayev Najmiddin	3	3
3083	2023-07-06		f	Boboyorova Muxabbat 	1	3
3084	2023-06-30		f	Sadullayeva Raxima	3	3
3085	2023-06-30		f	Negmatova Munira	3	3
3086	2023-07-06		f	Baratova Zumrad	1	3
3087	2023-07-06		f	Ergasheva Adashoy	1	3
3088	2023-07-06		f	Usmonova Muattar	1	3
3089	2023-07-06		f	Nomozova Kamola	1	3
3090	2023-07-05		f	Asatullayeva Marjona	3	3
3091	2023-07-06		f	Saidova Sevara	1	3
3092	2023-07-05		f	Qahramonov Abdusalom	3	3
3093	2023-07-05		f	Izzatullayev Jahongir	3	3
3094	2023-07-05		f	Juramurodov Mansur	3	3
3095	2023-07-05		f	Axmadjonov Odiljon	3	3
3096	2023-07-06		f	Yaxyoyeva Nodira 	1	3
3097	2023-07-05		f	Raximova Zarina	3	3
3098	2023-07-06		f	Yaxyoyeva Nodira 	1	3
3099	2023-07-05		f	Usarova Xursheda	3	3
3100	2023-07-05		f	Obloberdiyev Naim	3	3
3101	2023-07-06		f	Zavqiyeva Florida 	1	3
3102	2023-07-05		f	Tilavova Mehribon	3	3
3103	2023-07-06		f	Xusainova Farog‘at	1	3
3104	2023-07-05		f	Xalilova Dilshoda	3	3
3105	2023-07-06		f	Kilicheva Zulfiya	1	3
3106	2023-07-05		f	Axadova Nasiba	3	3
3107	2023-07-06		f	Kilicheva Zulfiya	1	3
3108	2023-07-06		f	Kilicheva Zulfiya	1	3
3109	2023-07-06		f	Sobirova Zebiniso	1	3
3110	2023-07-05		f	Fayzullayeva Muxayo	3	3
3111	2023-07-05		f	Axrorova Yulduz	3	3
3112	2023-07-05		f	Mamadoliyeva Maloxat	3	3
3113	2023-07-06		f	Isaxonova Nilufar	1	3
3114	2023-07-06		f	Azizxonova Qirmiz	1	3
3115	2023-07-05		f	Xasanova Durdona	3	3
3116	2023-07-05		f	Salomova Gulchiroy	3	3
3117	2023-07-05		f	Olimova Binobar	3	3
3118	2023-07-05		f	Shodiyeva Anora	3	3
3119	2023-07-05		f	Raxmonberdieva Maftuna	3	3
3120	2023-07-05		f	Sultonova Sayyora	3	3
3121	2023-07-05		f	Soyipova Shahnoza	3	3
3122	2023-07-05		f	Turdiyeva Soxiba	3	3
3123	2023-07-06		f	Uzakova Mastura	1	3
3124	2023-07-05		f	Qo'yliyeva Soxiba	3	3
3125	2023-07-05		f	Esanova Nargiza	3	3
3126	2023-07-06		f	Mavlonova Nazokat	1	3
3127	2023-07-05		f	Quliyeva Soxida	3	3
3128	2023-07-05		f	Xursandov Dilmurod	3	3
3129	2023-07-06		f	Toshmanova Lola	1	3
3130	2023-07-06		f	Murodov Sobit	3	3
3131	2023-03-15		f	Bekmurodova Umida	3	3
3132	2023-07-06		f	Xudayberdiyeva Gulnora	1	3
3133	2023-03-15		f	Rashidova Yulduz	3	3
3134	2023-03-15		f	Nazarova Ra'no	3	3
3135	2023-07-06		f	Tangirova Lola 	1	3
3136	2023-03-15		f	Orolova Sayyora	3	3
3137	2023-07-06		f	Mamatova Nodira  	1	3
3138	2023-03-15		f	Zohidov Sardor	3	3
3139	2023-03-15		f	Arziyeva Diloro	3	3
3140	2023-03-15		f	Azizov Akmal	3	3
3141	2023-07-06		f	Xursanova Nasivali	1	3
3142	2023-03-15		f	Mardonova Matluba	3	3
3143	2023-07-06		f	Norova Karomat	1	3
3144	2023-03-15		f	Oblokulov Zuxriddin	3	3
3145	2023-03-15		f	Ruziqulova Sherali	3	3
3146	2023-07-06		f	Rahmatova Matluba	1	3
3147	2023-03-15		f	Zokirova Xolida	3	3
3148	2023-03-15		f	Karimova Xilola	3	3
3149	2023-07-06		f	Qunishova Gavhar	1	3
3150	2023-03-15		f	Usmonova Mashxura	3	3
3151	2023-07-06		f	Xatamova Shaxlo	1	3
3152	2023-07-06		f	Xidirova Munisa	1	3
3153	2023-05-18		f	Аllаyorova Nigora	3	3
3154	2023-05-18		f	Fayzullaeva Sevara	3	3
3155	2023-05-18		f	Buriyeva Lobarxon	3	3
3156	2023-05-18		f	Boymuradova Shoxista	3	3
3157	2023-05-18		f	Eshmatova Dilnoza	3	3
3158	2023-05-18		f	Otaqulova Nilufar	3	3
3159	2023-05-18		f	Tongotarova Guljaxon	3	3
3160	2023-08-01		f	Nurmamatova Shaxnoza	1	3
3161	2023-05-18		f	Otaqulova Dildora	3	3
3162	2023-05-18		f	Samanova Malika	3	3
3163	2023-05-18		f	Tursunova Gulmira	3	3
3164	2023-08-06		f	Malikova Maftuna	1	3
3165	2023-05-18		f	Qiyomova Nilufar	3	3
3166	2023-05-18	INFO	f	Nurmurodova Zilola	3	3
3167	2023-05-18		f	Uljayeva Iroqbegim	3	3
3168	2023-08-08		f	Sobirova Lola	1	3
3169	2023-08-08		t	Bolqulov  Azamat	1	3
3170	2023-06-23		f	Iskanova Gulola	3	3
3171	2023-08-03		f	Toshmurodova Madina	1	3
3172	2023-06-23		f	Saparova Sevara	3	3
3173	2023-08-05		f	Davronova sevinch	1	3
3174	2023-06-23		f	Barakayeva Gulbaxor	3	3
3175	2023-06-23		f	Uzaqova Gulxayo	3	3
3176	2023-06-23		f	Tursunova Lobar	3	3
3177	2023-08-12		f	Davronov Asilbek	1	3
3178	2023-06-23		f	Fayziyeva Nargiza	3	3
3179	2023-06-23		f	Suvonova Yulduz	3	3
3180	2023-08-12		f	Davronov Asilbek	1	3
3181	2023-06-23		f	Murodova Nasiba	3	3
3182	2023-06-23		f	Eshnazarova Shaxnoza	3	3
3183	2023-08-12		f	Davronova sevinch	1	3
3184	2023-06-23		f	Yarqulova Navbaxor	3	3
3185	2023-06-23		f	Boboqulova Feruza	3	3
3186	2023-08-12		f	Davronova Sarvara	1	3
3187	2023-08-12		f	Murodullayeva Zarina	1	3
3188	2023-08-13		f	G`aniyeva Gulhayo	1	3
3189	2023-06-21		f	Yunusov Shahzod	1	3
3190	2023-06-13		f	Suvonov Sarvar	1	3
3191	2023-06-16		f	Hamroqulova  Zahro	1	3
4476	2023-10-01		f	Ergasheva  Ma'mura	3	3
3193	2023-06-10		f	Hamidov Umidjon10062023	1	3
4477	2023-10-01		f	Tog'ayeva Anzirat	3	3
3195	2023-06-16		f	Salomov Shuxrat	1	3
4478	2023-10-01		f	Raximova  Aziza	3	3
3197	2023-06-19		f	Ibodullayev Akobir	1	3
4509	2023-08-17		f	Narzullayeva Feruza	1	3
4510	2023-08-17	INFO	f	Narzullayeva Feruza	1	3
3200	2023-06-22		f	Boymurodova  Gulmira	1	3
4511	2023-08-17		f	Isakobulova Zulfiya	1	3
4512	2023-09-18		f	Abilova Matluba	1	3
3203	2023-06-22		f	Nematova Ruxsora	1	3
4513	2023-09-18		t	Sadullayev Boboxon	1	3
4514	2023-09-18		f	Valiboyev Ruslan	1	3
4515	2023-09-18		f	Daminova Gulmira	1	3
4516	2023-07-29		t	Saydullayev Ergash	1	3
4517	2023-08-30		f	Mamasoliyev Sardor	1	3
4518	2023-08-30		f	Abdivopayeva Aziz	1	3
4519	2023-08-30		t	Raxmatov Ozodbek	1	3
4520	2023-08-30		f	Abduraymova Munisa	1	3
4521	2023-08-30		f	Ibadullayev Bunyod	1	3
3213	2023-06-01		f	Gaybullayeva Aziza	1	3
3214	2023-06-01		f	Kamolova Ozoda	1	3
3215	2023-06-01		f	Abduazova Shoxista	1	3
3216	2023-06-01		f	Amirova Maftuna	1	3
3217	2023-06-01		f	Isanbayeva Ozoda	1	3
3218	2023-06-01		f	Yunusova O'g'iloy	1	3
3219	2023-06-01		f	Jabborova Zarnigor	1	3
3220	2023-06-01		f	Norbekova Chexrozaxon	1	3
3221	2023-06-01		f	Turdimuratova Madina	1	3
3222	2023-06-01		f	Muqumova Xurshida	1	3
3223	2023-06-01		f	Xujamkulova Sayaro	1	3
3224	2023-06-01		f	Narmatova Nigora	1	3
3225	2023-06-01		f	Sayidova Sanabar	1	3
3226	2023-06-01		f	Kobilova Maxfuza	1	3
3227	2023-06-01		f	Suyarova Surayyo	1	3
3228	2023-06-01		f	Anarova Madina	1	3
3229	2023-07-04		f	Ibragimova  Nargiza	1	3
3230	2023-06-01		f	Kayumova Gulbaxor	1	3
3231	2023-07-08		f	Atako`lova  Gavhar	1	3
3232	2023-06-01		f	Usmonova Moxigul	1	3
3233	2023-06-01		f	Jurabekova Shahnoza	1	3
3234	2023-07-15		f	Normurodova  Suxana	1	3
3235	2023-06-01		f	Karshiboyeva Nargiza	1	3
3236	2023-06-01		f	Kuchkarova Zuxra 	1	3
3237	2023-06-01		f	Ko'chkinova Sitora	1	3
3238	2023-07-17		f	Hayitova Sevinch	1	3
3239	2023-07-20		f	Yusupova  Madina	1	3
3240	2023-06-01		f	Bultakova Sevara	1	3
3241	2023-07-27		f	Quvondiqov  Fazliddin	1	3
3242	2023-06-01		f	Esirgapova Dilnoza	1	3
3243	2023-06-01		f	Atamuratova Nigina	1	3
3244	2023-06-01		f	Eshmamatova Muxlisa	1	3
3245	2023-06-01		f	Rajabova Nargiza	1	3
3246	2023-07-27		f	Nurullayeva  Sarvinoz	1	3
3247	2023-06-01		f	Musurmanova Dilafruz 	1	3
3248	2023-06-01		f	Yadgarova Xilola	1	3
3249	2023-06-01		f	Toshpo'latova  Dilfuza	1	3
3250	2023-05-29		f	Usmonova  Yulduz	1	3
3251	2023-06-01		f	Yusupova  Rayhona	1	3
3252	2023-06-05		f	Raimov Dilshod	1	3
3253	2023-06-05		f	Olimov  Dilshod	1	3
3254	2023-06-05		f	Ismatov Izatullo	1	3
3255	2023-06-01		f	Ozodov Salohiddin	1	3
3256	2023-06-20		f	Shukurova Nafisa	1	3
3257	2023-05-02		f	Mamayusupova Aziza	1	3
3258	2023-05-02		f	Mamayusupova Aziza	1	3
3259	2023-04-04		f	Yo`ldoshova Farangiz	1	3
3260	2023-06-11		f	Qo`ldoshova Muhlisa	1	3
3261	2023-06-27		f	Maxfiratova Soxiba	1	3
3262	2023-05-02		f	Kucharov Asilbek	1	3
3263	2023-06-13		f	Abduraxmonova Xusnora	1	3
3264	2023-07-10		f	Xayrullayev Dilshod	1	3
3265	2023-07-05	INFO	f	Saibov Ohunjon	1	10
3266	2023-07-05		t	Namozov Abdulloh	1	10
3267	2023-07-05		f	Ismoilov Jahongir	1	10
3268	2023-07-05		f	Asatullayev Shoxjahon	1	10
3269	2023-05-02		f	Asadova Dilshoda	1	3
3270	2023-05-02		f	Asadova Bahora	1	3
3271	2023-05-02		f	Kamolova Navbahor	1	3
3272	2023-05-02		f	Boboqulova Dildora	1	3
3273	2023-05-02		f	Diyorov Murodbek	1	3
3274	2023-03-02		f	Nosirov Olmosbek	1	3
3275	2023-07-05		f	Niyatov Rustam	1	3
3276	2023-07-05		f	Mingyasharova Nozima	1	3
3277	2023-07-05		f	Annayev Kamronbek	1	3
3278	2023-05-22	INFO	t	Olmosov Otajon	1	7
3279	2023-07-24	INFO	t	Islomov Botir	2	3
4479	2023-10-01		f	Mamadaliyeva Ijobat	3	3
3281	2023-07-24	INFO	f	Nurmaxmadova Charos	2	3
3282	2023-07-24	INFO	t	Xamzaev Umedjon	2	3
4480	2023-10-01		f	O'lmasova  Maxbuba	3	3
3284	2023-07-24	INFO	f	Sobirova Go'zal	2	3
3285	2023-07-24	INFO	t	Raximov Jasurbek	2	3
3286	2023-07-24	INFO	t	Isroilov Ibroxim	2	3
3287	2023-07-24	INFO	t	Tolibov Kamron	2	3
4481	2023-10-01		f	Xalilova  Munisa	3	3
3290	2023-05-18	INFO	t	Salyamov Muhammadamin	2	7
3291	2023-07-24	INFO	t	Murodkulov Fariz	2	3
3293	2023-06-28	INFO	f	Temirov Nurbek	1	1
3294	2023-07-12	INFO	t	Farmonov Ramziddin	1	3
3295	2022-03-21	INFO	t	Teshayev Abbos	1	3
3296	2022-12-28		f	Teshayev Abbos	1	5
3297	2022-03-21	INFO	t	Salohiddinov Muslim	1	3
3298	2023-01-24		f	Salohiddinov Muslim	1	5
3299	2023-06-25	INFO	t	Alikov Aminjon	1	7
3300	2023-02-20	INFO	f	Aliqulova Zamira	3	3
3301	2023-07-20		f	Anorboyeva  Dilnoza	1	3
3302	2023-07-20		f	Rustamova Nozima	1	3
3303	2023-02-20	INFO	f	 Aliqulova Zamira	1	3
3304	2023-07-01	INFO	t	Urinboyev Sardor	1	2
3305	2023-08-02	INFO	t	Karimov Ilhom	2	3
3306	2023-08-02	INFO	t	Karimov Islom	2	3
3308	2023-08-02		f	Akramov Abdurahim	2	3
3309	2023-08-02		f	Muxsinova Shaxina	2	3
3310	2023-08-02		f	Muxsinova Gulzoda	2	3
3311	2023-08-02		t	Botirov Bexnur	2	3
3312	2023-08-02		f	Sameyeva Marjona	2	3
3313	2023-08-02		t	Musayev Savlat	2	3
3318	2023-08-02		f	Yakubova Gulsuma	2	3
3319	2023-08-02		f	Fayzullayev Doniyor	2	3
3321	2023-08-02		f	Kuziboyev Uktam	2	3
3322	2023-08-02	INFO	t	Oblokulov Doston	2	3
3324	2023-08-02		t	Baratov Jurabek	2	3
3325	2023-08-02		t	Sadulloyev Suxrob	2	3
3326	2023-08-02		t	Mardonkulov Shoxjaxon	2	3
3327	2023-08-02		t	Davronov Amir	2	3
3328	2023-07-01	INFO	t	Abdishukurov Odilbek	1	9
3329	2023-07-01		f	Normamatov Suxrobbek	1	9
3330	2023-07-01		f	Alisherov Behro'z	1	9
3331	2023-07-01		f	Nuraliyev Behro'z	1	9
3332	2023-07-01		f	Shukurullayev Ravshanbek	1	3
3333	2023-07-01		f	G'iyosov Ilyos	1	3
3334	2023-07-01		f	Jumayeva Muborak	3	3
3335	2023-07-01		f	Bekmurova Shohista	3	3
3336	2023-07-01		f	Saidova  Ra'no	3	3
3337	2023-07-01		f	Ro'zimorodova Shaxnoza 	3	3
3338	2023-07-01		f	Beknazarova  Yulduz	3	3
3339	2023-07-01		f	Xatamova Zarifa	3	3
3340	2023-07-01		f	Raximova Guzal	3	3
3341	2023-07-01		f	Tuychiyeva Ma'rifat	3	3
3342	2023-07-01		f	Ibodova  Shahlo	3	3
3343	2023-07-01		f	Ujalova Maloxat	3	3
3344	2023-07-07	INFO	f	Xakimova Farangiz	1	3
3345	2023-05-31	INFO	t	Negmatov To'lqinjon	1	3
3346	2023-08-01	INFO	t	Xubbumov Ma'ruf	1	4
3348	2023-08-02		f	Gulyamuhammedov Alijon	2	3
3349	2023-08-02		t	Lutfullayev Otabek	2	3
3350	2023-08-02		t	Nematjonov Diyor	2	3
3351	2023-08-02		f	Ruzimurodova Shaxina	2	3
3353	2023-08-02		t	Burxanov Azizbek	2	3
3356	2023-08-02		t	Shaxriyorov Mironshox	2	3
3357	2023-07-05	INFO	t	Ishkobilov Sherkobil	1	1
3358	2023-08-02	INFO	t	Nazarov Samirjon	2	3
3359	2023-08-02		t	Farxutdinov Shoxrux	2	3
3360	2023-08-02		t	Baxronov Timursher	2	3
3361	2023-08-02		t	Shoxruxov Davlatjon	2	3
3362	2023-08-02		f	Shoxruxova Shaxrizoda	2	3
3363	2023-08-02		t	Mavlonov Sherbek	2	3
3364	2023-08-02		f	Baxriddinova Malika	2	3
3365	2023-08-02		f	Jurakulova Luiza	2	3
3367	2023-08-02		f	Asliddinov Dalerjon	2	3
3368	2023-08-02		f	Xolmurodov Azim	2	3
3369	2023-08-02		f	Xolmurodov Aslam	2	3
3370	2023-08-02		t	Askarov Davlat	2	3
3373	2023-08-02	INFO	t	Xamrokulov Shaxram	2	3
3374	2023-08-02		t	Samaritdinov Samir	2	3
3375	2023-08-02		t	Mardonkulov Abubakr	2	3
3377	2023-08-02		t	Turobov Muxammadamin	2	3
3378	2023-08-02	INFO	t	Sanatullayev Yodgor	2	3
3379	2023-08-02		t	Sanatullayev Davron	2	3
3380	2023-08-02		t	Djurakulov Diyor	2	3
3381	2023-08-02		t	Ilxomov Davlat	2	3
3382	2023-08-02	INFO	t	Jamshedov Mirjon	2	3
3383	2023-08-02		f	Isxakov Orzujon	2	3
3384	2023-08-02		f	Dyo Polina	2	3
3385	2023-08-02		t	Abdaxatov Sardor	2	3
3386	2023-08-02	INFO	t	Abdaxatov Samandar	2	3
3387	2023-08-02		t	Toxirov Mumtozbek	2	3
3389	2023-08-02		t	Turokulov Amir	2	3
3391	2023-08-02		f	Nizamutdinov Artur	2	3
3392	2023-08-02		t	Axrorov Sabur	2	3
3393	2023-08-02		t	Shodikulov Daler	2	3
3394	2023-08-02		f	Shodikulov Timur	2	3
3395	2023-08-02		f	Shodikulov Amir	2	3
3396	2023-08-02		t	Abrorov Saidazzam	2	3
3398	2023-08-02		f	Abrorov Saidakbar	2	3
3399	2023-08-02		t	Maxmudov Mustafo	2	3
3400	2023-08-02		t	Akramov Akramjon	2	3
3401	2023-08-02		t	Mamedov Yunadiy	2	3
3402	2023-08-02		t	Sharipov Sherbek	2	3
3403	2023-08-02		f	Ablakulova Banur	2	3
3404	2023-08-02	INFO	t	Sobirjonov Amir	2	3
3405	2023-08-02		t	Raxmatov Mirali	2	3
3406	2023-08-07		t	Usmonov Timur	2	3
3407	2023-08-07		t	Erkinov Baxodir	2	3
3408	2023-08-07		t	Omonkulov Mirzobek	2	3
3409	2023-08-07		t	Amonkulov Sardorbek	2	3
3411	2023-08-07		f	Sharipov Diyor	2	3
3412	2023-08-07		f	Matlubjonov Jonibek	2	3
3414	2023-08-07		t	Jumanov Asilbek	2	3
3415	2023-08-07		t	Mansurov Amir	2	3
3416	2023-08-07		f	Alikulov Muxammad	2	3
3417	2023-08-07		t	Alikulov Abdullo	2	3
3418	2023-08-07		t	Rustamov Elnur	2	3
3419	2023-08-02		t	Baxromov Islombek	2	3
3420	2023-08-02		t	Toshpulatov Masrur	2	3
3421	2023-08-02		f	Djafarova Yasmina	2	3
3422	2023-08-02		t	Shavkatov Davlat	2	3
3423	2023-08-02		f	Shavkatova Maftuna	2	3
3424	2023-08-02		t	Kilichev Sheroz	2	3
3425	2023-08-02		t	Ismatilloyev Javoxir	2	3
3426	2023-08-02		f	Turayeva Zarina	2	3
3427	2023-08-02	INFO	t	Rustamov Elnur	2	3
3428	2023-08-02		f	Gafurova Fotimaniso	2	3
3429	2023-08-02		t	Gafurov Muxammadamin	2	3
3430	2023-08-02	INFO	t	Sobirdjonov Solexjon	1	3
3431	2023-08-02		t	Sobirdjonov Solexjon	2	3
3432	2023-08-02		t	Xabibjonov Aziz	2	3
3433	2023-08-02		t	Islomov Samir	2	3
3434	2023-07-28	INFO	t	Qurbonboyev Jahongir	1	6
3435	2023-08-02		t	Xamrokulov Shaxram	2	3
3436	2023-08-02	INFO	t	Xudoynazarov Xojiakbar	2	3
3437	2023-08-02	INFO	t	Nuritdinov Ruslan	2	3
3438	2023-07-31	INFO	t	Uralov Turabek	1	3
3439	2023-08-07	INFO	t	Vafokulov Avazbek	2	3
3440	2023-08-07		t	Sayfullayev Xumoyun	2	3
3441	2023-08-07		t	Mizrobov Aziz	2	3
3442	2023-08-07		f	Mizrobova Safina	2	3
3443	2023-08-07		t	Musinjonov Javlonbek	2	3
3444	2023-08-07		t	Radjabaliyev Uktamjon	2	3
3445	2023-08-07		f	Radjabaliyev Ramazon	2	3
3446	2023-08-07		t	Axmedov Shoxjaxon	2	3
3447	2023-08-07		t	Axmedov Yodgorjon	2	3
3448	2023-06-01		t	Jobirov Begzod	2	3
3449	2023-08-07	INFO	t	Atakulov Asilbek	2	3
3450	2023-08-07		t	Sattarov Shaxboz	2	3
3451	2023-08-07		t	Sattarov Shaxzod	2	3
3452	2023-08-07		f	Yusupova Amina	2	3
3453	2023-08-07		f	Ergashkulova Shirin	2	3
3454	2023-08-07		t	Shaxobov Farxod	2	3
3455	2023-08-07		t	Samiyev Parviz	2	3
3457	2023-08-07		f	Samiyeva Sevinch	2	3
3458	2023-08-07		f	Mirzayeva Shaxina	2	3
3459	2023-08-07		f	Abdusalomova Marjona	2	3
3460	2023-08-07		t	Abdusalomov Oybek	2	3
3461	2023-08-07		t	Sameyev Savlatjon	2	3
3462	2023-08-07		t	Sattorov Davlat	2	3
3463	2023-08-07		f	Alimova Parizoda	2	3
3464	2023-08-07		t	Sayfutdinov Bilol	2	3
3465	2023-08-07		t	Olimov Parvizjon	2	3
3466	2023-08-07		t	Urolboyev Timurbek	2	3
3467	2023-08-07		f	Aliyev Ashur	2	3
3468	2023-08-07		f	Aliyev Alijon	2	3
3469	2023-08-07		t	Sobirov Samirjon	2	3
3471	2023-08-07		t	Akmaljonov Shaxriyor	2	3
3472	2023-07-28	INFO	t	Rahimov Mehrojbek	1	3
3473	2023-03-28	INFO	t	Aminov Diyorjon	1	3
3474	2023-08-01	INFO	t	Abdurazzaqov Umid	1	3
3475	2023-08-01		f	Abdiyeva Maxliyo	1	3
3476	2023-08-01		t	Muradov Mirvoxid	1	3
3477	2023-08-01		f	Bolbekov Azizbek	1	3
3478	2023-07-28	INFO	f	Mirzoyeva Rayhona	1	3
3479	2023-07-28		f	Sharofiddinov Safroz	1	3
3480	2023-07-28		f	Akmalov Parviz	1	3
3481	2023-07-28		f	Baxromov  Jonibek	1	3
3482	2023-07-28		t	Majidov Samir	1	3
3483	2023-07-28		f	Bahriddinov Anvarjon	1	3
3484	2023-07-28		f	Muxammadiyev Ismoil	1	3
3485	2023-07-28		f	Qushmanbekov Asadbek	1	3
3487	2023-07-28	INFO	t	Egamberdiyev Aslom	1	3
3488	2023-07-28		f	fayzulloyev Fayoz	1	3
3489	2023-07-28		f	Ergashev Sherzod	1	3
3490	2023-07-28		f	Eshnazarov Yahyobek	1	3
3491	2023-08-27		f	Xamrakulov Rustam	1	3
3492	2023-07-28		f	Amonov Jaloliddin	1	3
3493	2023-05-24	INFO	t	Salyamov Muhammadamin	1	7
3494	2023-07-28	INFO	t	Sobirqulov Og'abek	1	3
3495	2023-07-28		f	Abdullayev Baxtiyor	1	3
3496	2023-07-28		f	Baxtiyorov Faridun	1	3
3497	2023-07-28	INFO	t	Baxtiyorov Farid	1	3
3498	2023-07-28	INFO	t	Xojikurbonov Laziz	1	3
3499	2023-07-28	INFO	f	Alimova Shahzoda	1	3
4598	2023-10-10		f	Aliev Ismail	1	3
3501	2023-07-28	INFO	t	\tSuyunov Sardor	1	2
3502	2023-07-28		f	Suponov Muhammadrasul	1	2
3503	2023-07-28		f	Istamov Xurshed	1	2
3504	2023-07-28		f	Qodirova Dilnura	1	3
3505	2023-07-28	INFO	t	Keldiyorov Asadbek	1	3
3506	2023-04-01	INFO	t	Doniyarov Shoxrux	2	3
3508	2022-12-04	INFO	t	Qurbonova  Dildor	3	3
3509	2023-12-04		f	Yuzboyeva  Barno	3	3
3510	2023-12-04		f	Nurullayeva Muxlisa	3	3
3511	2023-12-07		t	Umrzoqov Amirqul	3	3
3512	2023-12-07		f	Parmonova Madina	3	3
3513	2023-12-07		f	Xudayqulova O`g`iloy	3	3
3514	2023-12-07		f	Ulug`iva Dildora	3	3
3515	2023-12-07		f	Ro`ziyeva  Maftuna	3	3
3516	2023-12-07		f	Tursunova Rushana	3	3
3517	2023-07-28		f	Abdujabborov Ashraf	1	2
3518	2023-08-10	INFO	t	Kuchkarboev Akobir	1	3
3519	2023-08-10	INFO	t	Alisherov Zamonbek	1	3
3520	2023-08-07	INFO	t	Shukurov Azizjon	1	3
3521	2023-07-28		f	Aminov Sheroz	1	3
3522	2023-07-28		f	Baratov Zafar	1	3
3524	2023-08-10	INFO	f	Jurakulova Shahlo	1	3
3525	2023-08-10		f	Xusanova Shaxrizoda	1	3
3526	2023-08-10		f	Xidirova Nozima	1	3
3527	2023-08-10		t	Alirizoyev Mamarizo	1	3
3528	2023-08-10		f	Istamov Sardorbek	1	3
3529	2023-08-10		f	O'rozov Mironsher	1	3
3530	2023-08-10		f	Akbarov Shaxriyor	1	3
3531	2023-08-10		f	Abdusalomov Abdulatif	1	3
3532	2023-08-10		f	O'lmasova Ruxshona	1	3
3533	2023-08-10		f	Shavkatov Shaxriyor	1	3
3535	2023-08-10		f	Amridinov Amirbek	1	3
3536	2023-08-10		f	O'lmasov Azizjon	1	3
3537	2023-08-10		f	Bekmirzayev Jasurbek	1	3
3538	2023-08-10	INFO	t	Payzulloyev Behruz	1	3
3539	2023-08-11	INFO	t	Shukurulloyev Zubaydullo 	1	2
3540	2023-08-11		f	Ibrohimov Sayyodbek	1	2
3541	2023-08-28		f	Baxronov O'lmas	1	3
3542	2023-07-28		f	Akramov Abror	1	2
3544	2023-07-28	INFO	t	Abdullayev Shaxriyor	1	2
3545	2023-07-28		f	Toshtemirov Azim	1	2
3546	2023-02-08	INFO	t	 O'sarov Bekzod	1	2
3547	2023-02-10		f	 O'sarov Bekzod	1	1
3548	2023-07-28	INFO	f	Shokirova Marjona	1	3
3549	2023-08-08		f	Baxriddinova  Joziba	1	3
3550	2023-08-02		t	Kuvondikova Xumora	1	3
3551	2023-08-02		f	Abdimo'minova Zarnigor	1	3
3552	2023-08-02		f	Abdimo'minova Zarnigor	1	3
3553	2023-08-02		f	Abduvoyitova Maxliyo	1	3
3554	2023-08-08		f	Daminova  Dinora	1	3
3555	2023-08-08		f	Xidirova Chexrona	1	3
3556	2023-08-08		f	Xoldarova   Shaxzoda	1	3
3557	2023-08-08		f	Mingbayeva Janglish	1	3
3558	2023-08-08		f	Narqulova  Sevara	1	3
3559	2023-08-02		f	Mamadiyorova  Yulduz	3	3
3560	2023-04-02	INFO	t	Umarov Zohidxon	1	3
3561	2023-04-02	INFO	t	Zayniddinov Hojiakbar	1	3
3562	2023-04-02	INFO	f	Usmonov Shohjaxon	1	3
3563	2023-04-02	INFO	f	Baxtiyorboyev Asliddin	1	3
3564	2023-04-02	INFO	t	Rashidov Kamronbek	1	3
3565	2023-04-02	INFO	t	Shonazarov Husan	1	3
3566	2023-04-02	INFO	t	Xolmirzayeva Durdona	1	3
3567	2023-04-02	INFO	t	Murodova Gulandom	1	3
3568	2023-04-02	INFO	t	Nosirov Muhammad	1	3
3569	2023-04-02	INFO	t	Eshpo'latova Moxinur	1	3
3570	2023-04-02	INFO	f	Nurullayev Akromjon	1	3
3571	2023-04-02	INFO	t	Nosirova Viloyat	1	3
3572	2023-04-02	INFO	f	Murtazayeva Xumora	1	3
3573	2023-04-02	INFO	t	Nosirova Iroda	1	3
3574	2023-04-02	INFO	f	Uzoqov Alisher	1	3
3575	2023-04-02	INFO	t	Baxtiyorov Asilbek	1	3
3576	2023-04-02	INFO	f	Abduvaliyev Jahongir	1	3
3577	2023-04-02	INFO	f	Qahramonova Zarina	1	3
3578	2023-04-02	INFO	f	Rashidov  Kamronbek	1	3
3579	2023-04-02	INFO	t	Muhiddinova Umida	1	3
3580	2023-04-02	INFO	f	Muhiddinov Abduazizxon	1	3
3581	2023-04-02	INFO	f	Mamarajabova Hayotxon	1	3
3582	2023-04-02	INFO	t	Kodirova Dilnoza	1	3
3583	2023-04-02	INFO	t	Ismatullayeva Sevinch	1	3
3584	2023-04-02	INFO	f	Shakarboyev Temurbek	1	3
3585	2023-04-02	INFO	f	Erkinov Shohjaxon	1	3
3586	2023-04-02	INFO	f	Absamatov Xasan	1	3
3587	2023-04-02	INFO	f	Absamatov Husan	1	3
3588	2023-04-02	INFO	f	Jo'raqulova Gulsanam	1	3
3589	2023-04-02	INFO	f	Saidmurodov Majid	1	3
3590	2023-04-02	INFO	t	Umarov Zohidxon	1	3
3591	2023-04-02	INFO	t	Zayniddinov Hojiakbar	1	3
3592	2023-04-02	INFO	f	Usmonov Shohjaxon	1	3
3593	2023-04-02	INFO	f	Baxtiyorboyev Asliddin	1	3
3594	2023-04-02	INFO	t	Rashidov Kamronbek	1	3
3595	2023-04-02	INFO	t	Shonazarov Husan	1	3
3596	2023-04-02	INFO	t	Xolmirzayeva Durdona	1	3
3597	2023-04-02	INFO	t	Murodova Gulandom	1	3
3598	2023-04-02	INFO	t	Nosirov Muhammad	1	3
3599	2023-04-02	INFO	t	Eshpo'latova Moxinur	1	3
3600	2023-04-02	INFO	f	Nurullayev Akromjon	1	3
3601	2023-04-02	INFO	t	Nosirova Viloyat	1	3
3602	2023-04-02	INFO	f	Murtazayeva Xumora	1	3
3603	2023-04-02	INFO	t	Nosirova Iroda	1	3
3604	2023-04-02	INFO	f	Uzoqov Alisher	1	3
3605	2023-04-02	INFO	t	Baxtiyorov Asilbek	1	3
3606	2023-04-02	INFO	f	Abduvaliyev Jahongir	1	3
3607	2023-04-02	INFO	f	Qahramonova Zarina	1	3
3608	2023-04-02	INFO	f	Rashidov  Kamronbek	1	3
3609	2023-04-02	INFO	t	Muhiddinova Umida	1	3
3610	2023-04-02	INFO	f	Muhiddinov Abduazizxon	1	3
3611	2023-04-02	INFO	f	Mamarajabova Hayotxon	1	3
3612	2023-04-02	INFO	t	Kodirova Dilnoza	1	3
3613	2023-04-02	INFO	t	Ismatullayeva Sevinch	1	3
3614	2023-04-02	INFO	f	Shakarboyev Temurbek	1	3
3615	2023-04-02	INFO	f	Erkinov Shohjaxon	1	3
3616	2023-04-02	INFO	f	Absamatov Xasan	1	3
3617	2023-04-02	INFO	f	Absamatov Husan	1	3
3618	2023-04-02	INFO	f	Jo'raqulova Gulsanam	1	3
3619	2023-04-02	INFO	f	Saidmurodov Majid	1	3
3620	2023-07-25	INFO	t	Umarova Anora	1	3
3621	2023-07-28		f	Iskandarova Maftuna	1	3
3622	2023-07-25		f	Ismatullayeva Iroda	1	3
3623	2023-07-25		f	Omonqulova Aziza	1	3
3624	2023-07-25		f	Quldashova Gulnora	3	3
3625	2023-07-25		f	Qosimova Umida	3	3
3626	2023-07-25		f	Davlatova Soxiba	3	3
3627	2023-07-25		f	Xakimova Nigora	3	3
3628	2023-07-25		f	Quvondiqova Shaxnoza	3	3
3629	2023-07-25		f	Primova Mavjuda	3	3
3630	2023-07-25		f	Hatamova Matluba	3	3
3631	2023-07-25		f	Eshmonova Moxira	3	3
3632	2023-07-28		f	Xushbaqova Muazzam	3	3
3633	2023-03-01		f	Yo'ldoshev Ulugbek	1	2
3634	2023-03-01		f	Sarimsoqov Samandar	1	2
3635	2023-03-01		f	Keldiyorov Bexruz	1	2
3636	2023-03-01		f	Sattorov Madamin	1	2
3637	2023-03-01		f	Mexridinov Jonibek	1	2
3638	2023-03-01		f	O'ngboyev Shohjahon	1	2
3639	2023-07-05		f	Shamsiddinov Feruzbek	1	3
3640	2023-07-05		f	Luqmonov Mexroj	1	3
3641	2023-07-05		f	Erkayeva Mehrangiz	1	3
3642	2023-07-07		f	Erkayeva Diyora	1	3
3643	2023-07-05		f	Luqmonov Abdulyunus	1	3
3644	2023-07-05		f	Xamidova Marjona	1	3
3645	2023-07-05		f	Rajabova Maftuna	1	3
3646	2023-07-05		f	Uroqov\tBexruz	1	3
3647	2023-07-05		f	Soriyeva\tSurayyo	1	3
3648	2023-07-05		f	Sadinova Mashxura	1	3
3649	2023-07-05		f	Mavlonova Mashxura	1	3
3650	2023-07-07		f	Djumanova Gulchexra	1	3
3651	2023-07-05		f	Mamanov  Xasan	1	3
3652	2023-07-05		f	Berdiqulov Mirsaid	1	3
3653	2023-07-05		f	Xaliyorova Dilnoza	1	3
3654	2023-07-05		f	Barnayeva Madina	1	3
3655	2023-07-05		f	Umirova\tGuldona	1	3
3656	2023-07-05		f	Quchqarova\tDilshoda	1	3
3657	2023-07-05		f	Quvvatova Muxlisa	1	3
3658	2023-07-05		f	Mamayusupov Azizbek	1	3
3659	2023-07-05		f	Berdiqulova\tMaftuna	1	3
3660	2023-07-05		f	Abdieva\tKamola	1	3
3661	2023-07-05		f	Abdiev Shoxjaxon	1	3
3662	2023-08-10		f	Toshboyev Aslbek	1	3
3663	2023-08-10		f	Nematulloyev Xurshid	1	3
3664	2023-08-10		f	Niyozov\tKamolliddin	1	3
3665	2023-08-10		f	Turdiyev  Obidjon	1	3
3666	2023-06-09		f	Mustafoyeva Zarina	1	3
4482	2023-10-01		f	Nurboyeva  Sabohat	3	3
4483	2023-10-01		f	Bahronova  Nargiza	3	3
4484	2023-10-01		f	Pirnazarova  Zilola	3	3
3670	2023-07-04	INFO	t	Xayrullayeva Xumora	3	3
3671	2023-07-04		f	Jalilova Uljon	3	3
3672	2023-07-04		f	Muxtorova Go'zal	3	3
3673	2023-07-04		f	Axmedov Zufar	3	3
3674	2023-07-04		f	Azamova Zarifa	3	3
3675	2023-07-04		f	Jo'ramurodova Shoxsanam	3	3
3676	2023-07-04		f	Amirova Gulnora	3	3
3677	2023-07-04		f	Abalboyev Muhammad	3	3
3678	2023-07-04		f	Adashova Gulnora	3	3
3679	2023-07-04		f	To'raqulova Gulhayo	3	3
3680	2023-07-04		f	Samadova Muxlisa	3	3
3681	2023-07-04		f	Akramova Guljahon	3	3
3682	2023-07-04		f	Hamroyeva Nodira	3	3
3683	2023-07-04		f	Narzullayeva Shahlo	3	3
3684	2023-07-05		f	Muxtorova Elmira	3	3
3685	2023-07-04		f	Zayniddinova Gulhavas	3	3
3686	2023-07-05		f	Turaqulova Zarina	1	3
3687	2023-07-04		f	Tohirov Xusan	1	3
3688	2023-07-04		f	Mirzomurodova Nigina	1	3
3689	2023-08-01		f	Suyunov Diyorbek	1	3
3690	2023-08-01		f	Ochilov Umid 	1	3
3691	2023-08-01		f	Ochilov Umid 	1	3
3692	2023-08-01	INFO	f	Mirzayeva  Dilfuza	1	3
3693	2023-08-01	INFO	t	Umarov Zohidxon	3	3
3694	2023-08-01	INFO	t	Shomurodova Vazira	3	3
3695	2023-08-01	INFO	f	Shukurova  Feruza 	3	3
3696	2023-08-01	INFO	f	Karshiyeva Madina	3	3
3697	2023-08-01	INFO	t	Nurullayev Baxtiyor	3	3
3698	2023-08-01	INFO	t	Atamuradova Marhabo	3	3
3699	2023-08-01	INFO	t	Yuldosheva Shaxnoza 	3	3
3700	2023-08-01	INFO	t	Sharipova Gulnoza	3	3
3701	2023-08-01	INFO	t	Axmatova Nazokat	3	3
3702	2023-08-01	INFO	t	Aliqulova  Dilorom	3	3
3703	2023-08-01	INFO	f	Ikromova Shaxlo	3	3
3704	2023-08-01	INFO	t	Rashidova Xandona 	3	3
3705	2023-08-01	INFO	f	Ashurov Xayrulla 	3	3
3706	2023-08-01	INFO	t	Ro'ziyeva Gulmira 	3	3
3707	2023-08-01	INFO	f	Tog'ayeva Manzura	3	3
3708	2023-08-01	INFO	t	Nizomiddinova  Shahrinoz	3	3
3709	2023-08-01	INFO	f	Sultonova  Nafisa 	3	3
3710	2023-08-01	INFO	f	Nurmamatova Iroda	3	3
3711	2023-08-01	INFO	f	Sadinova Baxtigul	3	3
3712	2023-08-01	INFO	t	Berdiyorova Nargiza 	3	3
3713	2023-08-01	INFO	f	Fayziyeva Dilfuza	3	3
3714	2023-08-01	INFO	f	Lutfullayeva Zarina	3	3
3715	2023-08-01	INFO	t	Normurodova Dinora	3	3
3716	2023-08-01	INFO	t	Atayeva  Gulnora 	3	3
3717	2023-08-01	INFO	f	Julanova  Gulchexra	3	3
3718	2023-08-01	INFO	f	Eshmurodova  Marjona	3	3
3719	2023-06-27		t	O'raqova Mohigul	3	3
3720	2023-06-27		f	Xasanova Yulduz	3	3
3721	2023-06-26		f	Qodirova Aziza	3	3
3722	2023-06-26		f	Xudoyberdiyeva Saboxat	3	3
3723	2023-06-26		f	Uzoqova Muqaddas	3	3
3724	2023-06-26		f	Mexmonova Muxayyo	3	3
3725	2023-06-26		f	Hamrayeva Nazokat	3	3
3726	2023-06-26		f	Xudoyberdiyeva Gulbaza	3	3
3727	2023-06-26		f	Shodmonova Gulshoda	3	3
3728	2023-07-27		f	Ochilova Norbuvi	3	3
3729	2023-07-28	INFO	t	Baxriddinov Feruzbek	1	2
3730	2023-07-28	INFO	f	Ilhomova Parizoda	1	3
3731	2023-07-28		f	Baxtiyorov Azizbek	1	2
3732	2023-07-28		t	Suyunov Davron 	1	2
3733	2023-07-28		f	Rakhimov Shakhruh	1	2
3734	2023-02-28		f	Axrorov Akobir	1	2
3735	2023-07-28	INFO	f	Rakhimov Shokhruh	1	2
3736	2022-12-17		f	Musurmanova  Muqaddas	3	3
3737	2023-08-14	INFO	t	Xatamova Guliston	1	3
3738	2023-08-14		f	Ismoilova Elmira	1	3
3739	2023-08-14		f	Fayziyeva Nilufar	1	3
3740	2023-08-14		f	Haqberdiyeva Manzura	1	3
3741	2023-08-14		f	Mardieva Latofat	1	3
3742	2023-08-14	INFO	t	Azamov Bexruz	1	3
4781	2023-09-04		f	Ochilov Jasur	1	3
3744	2023-08-14		f	Sheralieva Salima	1	3
3745	2023-07-28	INFO	f	Mediyeva Fotimaniso	1	3
3746	2023-08-03		t	Umurzaqov Alixon	1	6
3747	2023-08-11	INFO	t	Khalimov Umedjon 	1	3
3749	2023-07-28	INFO	t	Baxriddionov Doston	1	2
3750	2023-08-15		f	Yadgorov Bekzod	1	2
3751	2023-08-15	INFO	t	Baxronov Abdulvoxid	1	2
3752	2023-08-15	INFO	t	Hasanov Elyor	1	2
3753	2023-08-15	INFO	t	Abdusalomov Abdukarim	1	7
3754	2023-08-15	INFO	t	Azimov Johongir	1	3
3755	2023-08-07	INFO	t	Razikova Dilafruz	1	3
3756	2023-08-15	INFO	t	Shamsidinov Komiljon	2	3
3758	2023-08-15	INFO	t	Tursunov Sardor	1	7
3759	2023-07-28	INFO	f	Xasanov Ulugbek	1	2
3760	2023-08-15		t	Aminov Uktamjon	2	3
3761	2023-08-15		t	Baxtiyorov Bexruz	2	3
3762	2023-08-15		f	Kudratullaeva Amina	2	3
3763	2023-07-21	INFO	t	Jalolova Madina	1	3
3764	2023-07-21		f	Nosirova Munira	1	3
3765	2023-07-21		f	Xusanov Sarvar	1	3
3766	2023-07-21		f	Do'sanov Xamza	1	3
3767	2023-07-21		f	Qurbonov Baxtiyor	1	3
3768	2023-08-09		f	Xamidova Madinabonu	1	3
3769	2023-08-09		f	Meyliyev Sardorbek	1	3
3770	2023-08-09		f	Karimov Isroil	1	3
3771	2023-08-09		f	Razakova Nilufar	1	3
3772	2023-08-09		f	Ubaydullayeva Bahora	1	3
3773	2023-07-21		f	Ubaydullayev Bahrom	1	3
3774	2023-08-09		f	Shamsiyev Firdavs	1	3
3775	2023-08-09		f	Ismatova Sarvinoz	1	3
3782	2023-08-10	INFO	t	Bobonazarova Gullola	1	3
3783	2023-08-11		f	Bobonazarova Gullola	3	3
3784	2023-08-11		f	Daminova Inobat	3	3
3785	2023-08-11		f	Rahimova Dildora	3	3
3786	2023-08-11		f	Abdullayeva Nigora	3	3
3787	2023-08-11		f	Razzoqova Umida	3	3
3788	2023-08-11		f	Toshpulatova Gulshoda	3	3
3789	2023-08-11		f	Shodiyova Dildora	3	3
3790	2023-08-11		f	Avantoshova Dilnovoz	3	3
3791	2023-08-11		f	Mingyasharova Holida	3	3
3792	2023-08-11		f	Usmonova Iroda	3	3
3793	2023-08-11		f	Ahmedova Nilufar	3	3
3794	2023-08-11		f	Bekniyozova Nargiza	3	3
3795	2023-08-11		f	Teshayeva Oysaxat	3	3
3796	2023-08-11		f	Bektosheva Navruza	3	3
3797	2023-08-11		f	Toirova Navbahor	3	3
3798	2023-08-11		f	Kubayeva Shahnoza	3	3
3799	2023-08-11		f	Xudoyarova Nilufar	3	3
3800	2023-07-31		f	Ashurova Halima	1	3
3801	2023-07-28	INFO	t	Tolibov Jahongir	1	2
3802	2023-07-28		f	Radjabov Elbek	1	2
3803	2023-08-15	INFO	t	Turokulov Og'abek	2	3
3804	2023-08-15		t	Zayniddinov Asadbek	2	3
3805	2023-08-15		t	Vaxidov Raximjon	2	3
3806	2023-06-28	INFO	t	Zokirov Shaxzod	1	2
3807	2023-08-15	INFO	f	Yunusova Jasmina	2	3
3808	2023-08-15		t	Abdunabiyev Asadbek	2	3
3809	2023-08-15	INFO	t	Zakirov Shaxzod	2	3
3810	2023-07-22		f	Xurshid Islomov	1	6
3811	2023-08-15		t	Axmedov Aleksandr	2	3
3812	2023-08-15		t	Shadiev Saxadin	2	3
3813	2023-08-15		f	Murodov Abdulloh	2	3
3814	2023-08-15		t	Abdusaidov Muxammadali	2	3
3816	2023-08-15		f	Gadayeva Mexrangiz	2	3
3817	2023-08-15		f	Saidaliyeva Asila	2	3
3818	2023-08-15		t	Napasov Azizbek	2	3
3819	2023-08-15		t	Ravshanov Laziz	2	3
3820	2023-08-15		t	Shuxratov Aliakbar	2	3
3821	2023-08-15		t	Kaxramonov Xondamir	2	3
3822	2023-08-15		t	Muxtarov Muxammadbexruz	2	3
3823	2023-08-15		f	Ravshanova Zaynura	2	3
3824	2023-08-15		t	Murodullayev Samir	2	3
3825	2023-08-15	INFO	t	Shodimurodov Amir	2	3
3826	2023-08-15		t	Saidov Umar	2	3
3827	2023-07-25	INFO	f	O'roqova Ruxshona	1	3
3828	2023-07-28	INFO	t	Sobirov Jasurbek	1	2
3829	2023-07-28		f	Sobirov Javoxir	1	2
3830	2023-07-06	INFO	t	Janieva Ug‘iloy 	3	3
3831	2023-07-06		f	Mardonova Oyrajab 	3	3
3832	2023-07-06		f	Tosheva Nargiza 	3	3
3833	2023-07-06		f	Xolmatova Nilufar 	3	3
3834	2023-07-06		f	Pardaeva Dilafruz 	3	3
3835	2023-07-06		f	Fayzieva Feruza 	3	3
3836	2023-07-06		f	G‘aybullaeva Iroda 	3	3
3837	2023-07-06		f	Abdullaeva Guliniso 	3	3
3838	2023-07-06		f	Shirinboeva Maxliyo 	3	3
3839	2023-07-06		f	To'xtamuradova Maftuna	3	3
3840	2023-07-06		f	Nurmatova Dilobar	3	3
3841	2023-07-06		f	Sanayeva Muxabbat	3	3
3842	2023-08-15		f	Bekmuradova Xilola	1	3
3843	2023-08-15		f	O'rinboyeva Mahliyo	1	3
3844	2023-08-15	INFO	t	Mallabayeva Guzaliya	1	3
3845	2023-05-01	INFO	t	Uktamov Azizbek	1	3
3846	2023-05-01		f	Uktamov Azizbek	1	4
3847	2023-07-28	INFO	t	Habibova Sabina	1	3
3848	2023-07-28		f	Vafoyev Asadbek	1	2
3849	2023-08-01		f	Boboyorova  Zumrad	3	3
3850	2024-08-01		f	Sobirova Shoxsanam	3	3
3851	2023-08-01		f	Nasiridinova Muborak	3	3
3852	2023-08-01		f	Jurayeva Shaxnoza 	3	3
3853	2023-08-01		f	Esanova  Zulfiya	3	3
3854	2023-08-01		f	Karimova Gulmira	3	3
3855	2023-08-01		f	Xaqqulova Sora	3	3
3856	2023-08-01		f	Aminova Muborak 	3	3
3857	2023-08-01		f	Ergasheva  Mexriniso	3	3
3858	2023-08-01		f	Shomurodova Vazira	3	3
3859	2023-07-28	INFO	t	Oltiboyev Islomjon	1	3
3861	2023-07-28	INFO	f	Umurqulov Faridun	1	2
3862	2023-04-10	INFO	f	Danieva Sojida	1	3
3863	2023-07-21	INFO	f	Qurbonov Baxtiyor	1	3
3864	2023-08-09		t	Ismatullayeva Asaloy	1	3
3865	2023-08-08		f	Karimov Isroil	1	3
3866	2023-08-09		f	Normurodova Mohigul	1	3
3867	2023-06-28	INFO	t	Kozimova Sultonposhsho	1	6
3868	2023-06-28		f	Muxiddinov Zafar 	1	1
3869	2023-06-28		f	Qo'shqulov Karimbek	1	1
3871	2023-07-20	INFO	t	Abdukomilov Nurbek	1	2
3872	2023-08-25	INFO	f	Ashurova Saodat	2	3
3873	2023-08-19	INFO	f	Sultonova Sojida	1	3
3874	2023-08-28	INFO	t	Gafurov Muxammadjon	2	3
3876	2023-08-28		t	Somonkulov Muxammadali	2	3
3877	2023-07-28	INFO	t	Tolibov Fayozxon	1	2
3878	2023-06-01	INFO	t	Uzokov Amirjon	2	3
3879	2023-06-18		f	G'aybulloyev Sadullo	1	1
3880	2023-08-15	INFO	t	Turkmanova Dilbar	1	3
3881	2023-08-15		f	Elmurodova Nurhayot	1	3
3882	2023-08-15		f	Hudoyberdiyev O'ktam	1	3
3883	2023-08-15		f	Ochilov Jalol	1	3
3884	2023-08-15		f	Ochilov Zuhriddin	1	3
3885	2023-08-15		f	Qorayeva Dilbar	1	3
3886	2023-08-15		f	Qarshiboyev Alisher	1	3
3887	2023-08-15		f	Musayev Nomoz 	1	3
3888	2023-07-28	INFO	t	Orifjonov Aslam 	1	2
3889	2023-08-19	INFO	f	Hotamova  Latofat	1	3
3890	2023-06-09	INFO	f	 Baхrоmоvа  SHахnоzа	1	3
3891	2023-08-29	INFO	t	Asliddinov Shaxinbek	1	3
3892	2023-08-29	INFO	t	Quddusov Saidakmalxon	1	3
3893	2023-08-29		f	Erkinov Behruz	1	3
3894	2023-08-28		f	Abbosova Nigina	1	3
3895	2023-08-28		f	Rafiqov Samandar	1	3
3896	2023-08-28		f	Melikov Daler	1	3
3897	2023-08-28		f	Ulmasova Sevinch	1	3
3898	2023-08-28		f	Yazdonqulova Maftuna	1	3
3899	2023-08-28		f	Ravshanov Og'abek	1	3
3900	2023-08-28		f	Abdumutalibova Jasmina	1	3
3901	2023-08-28		f	Abdumutalibova Sabrina	1	3
3902	2023-08-28		f	Yazdonqulova Komila	1	3
3903	2023-08-28		f	Ziyotov Husan	1	3
3904	2023-08-28		f	Xo'jamurodov Jasur	1	3
3905	2023-08-28		f	Siddiqov Azamat	1	3
3906	2023-08-28		f	Sobiriddinov Nozimjon	1	3
3907	2023-08-28		f	Ravshanov Aslbek	1	3
3908	2023-08-28		f	Sharifov Muhammad	1	3
3909	2023-08-28		f	Ashrafov Sunnatbek	1	3
3910	2023-08-28		f	Abdumutalibov Maxmud	1	3
3911	2023-08-28		f	Muhammadkozimova Mayram	1	3
3912	2023-08-28		f	Yazdonqulov Zahiriddin	1	3
3913	2023-08-28		f	Abdumutolibov Muhammadsaid	1	3
3914	2023-06-10	INFO	t	 Olimov Asadbek 	1	2
3915	2023-06-10	INFO	t	 Olimov Asadbek 	1	2
3916	2023-08-24		f	Oblaqulova Dilorom	1	3
3917	2023-06-19		f	Baxromova Shaxnoza	1	3
3918	2023-08-29		f	Sharipov Faridjon 	1	4
3919	2023-08-29		f	Abduraxmonov Ozod	1	4
3922	2023-07-20	INFO	t	\tToshniyozov Javohir	1	2
3923	2023-07-28		f	Subhonov Ibroxim	1	7
3924	2023-08-28	INFO	f	Shamsieva Zilola	2	3
3925	2023-08-28	INFO	f	Akramova Nargilya	2	3
3926	2023-08-28		f	Alimova Elif	2	3
3927	2023-08-03	INFO	f	Xamidov Elyor	1	6
3928	2023-08-03		t	Muzaffarov Diyor	1	6
3929	2023-07-20	INFO	t	Xamidov Baxriddin	1	2
3930	2023-06-20	INFO	t	Isroilov Ozodbek	1	2
3931	2023-09-04	INFO	t	Hamraqulov Vorisjon	1	3
3932	2023-08-28		f	Nematova Zulxayo	1	3
3933	2023-08-28		f	Ergasheva Shaxrizoda	1	3
3934	2023-08-28		f	Valiaxtamov Amirjon	1	3
3935	2023-08-28		f	Sadullayev Daler	1	3
3936	2023-08-28		f	Djumayev Ikrom	1	3
3937	2023-08-28		f	Muxtorova Sabina	1	3
3938	2023-08-28	INFO	t	Muhammadov Jamol	1	3
3939	2023-06-10		f	Sadullayev Daler	1	6
3940	2023-08-03	INFO	t	Xamidov Elyor	1	6
3941	2023-08-28	INFO	t	Boboqulova Jasmina	1	3
3942	2023-09-05	INFO	t	Abdullayeva \tNargiza	1	3
3943	2023-09-04		f	Norxo'razova Sevinch	1	3
3944	2023-09-05		f	Norxo'razova Sevinch	1	3
3945	2023-09-05		f	Norxo'razova Malika	1	3
3946	2023-09-05		f	Daminova Dilfuza	1	3
3947	2023-09-05		f	Boboyeva Klara	1	3
3948	2023-09-05		f	Raximova Feruza	1	3
3949	2023-09-05		f	Norbayeva Xurshida	1	3
3950	2023-09-05		f	Ismatullayeva\tGulmera	1	3
3951	2023-09-05		f	Qurbonova\tGulchehra	1	3
3952	2023-09-05		f	Barakayeva \tXusnora	1	3
3953	2023-08-28	INFO	f	Bobodo'stova Feruza	1	3
3954	2023-09-05	INFO	f	Toshboltayev Ibrohimjon	1	7
3955	2023-09-06		t	Suxrobzoda Samir	1	3
3956	2023-09-05	INFO	t	Raxmonov Nodirxon	1	6
3957	2023-08-28	INFO	t	Suvonova Jasmina	1	3
3958	2023-09-07		f	Baxtiyorova Komillaxon	1	6
3959	2023-09-07		f	Tursunova Dinora	1	6
3960	2023-09-07		f	Suvanov Islombek	1	6
3961	2023-09-06		f	Mamadjonov Lazizjon	1	3
3962	2023-09-06		f	Baxrilloyev Abdullo	1	3
3963	2023-07-01		f	Abdullayeva  Charos	3	3
3964	2023-07-01		f	Esanova   Sohiba	3	3
3965	2023-07-01		f	Siddiqova  Qunduz	3	3
3966	2023-07-01		f	Musurmonova  Dilafruz	3	3
3967	2023-07-01		f	Toshpo'latova  Dilfuza	3	3
3968	2023-07-01		f	Abdiyev Mahmud	1	3
3969	2023-07-01		f	Qo'chqorov Salovat	1	3
3970	2023-07-01		f	Usanova  Malika	1	3
3971	2023-07-01		f	Shukuriddinova Rayxona	1	3
3972	2023-07-01		f	Taylokova  Shaxnoza	1	3
3973	2023-07-01		f	Narqulova  Sevara	1	3
3974	2023-07-01		f	Okbayev Nurullo	1	3
3975	2023-07-01		f	Abdusattarova  Muxayyo	1	3
3976	2023-07-01		f	Eraliyev Tulqin	1	3
3977	2023-07-01		f	Umarova Shaxnoza	1	3
3978	2023-07-01		f	Berkinov Berdiyor	1	3
3979	2023-07-01		f	Mamirova Shaxnoza	1	3
3980	2023-09-07	INFO	t	Muxtorova Zaxro	2	3
3981	2023-09-06	INFO	t	Avazov  Sharif	1	3
6937	2025-02-07		f	Zarifov Sarva	2	6
3983	2023-09-05	INFO	f	Baxtiyorova Kamillaxon	1	6
3984	2023-09-11	INFO	f	Achilova Bexrona	2	3
3985	2023-07-20	INFO	t	Ermuxammatov Rustam	1	2
3986	2023-09-05	INFO	t	Rustamkulov Shahzod	1	6
3987	2023-08-26	INFO	f	Bobomurotov Og'abek	1	4
3988	2023-09-11	INFO	f	Isroilova Zaynabxonim	2	3
3989	2023-07-03	INFO	t	Abilkasimov Mirjahon	1	3
3990	2023-06-10		f	Iskandarov Timur	1	1
3991	2023-06-10		t	Jaxongirov Abdulaziz 	1	1
3992	2023-08-01	INFO	t	Ali Sajid	1	3
3993	2023-08-01		f	Shuxatova Yulduz	1	3
3994	2023-08-01		f	Farxodov Farrux	1	3
3995	2023-08-01		f	Davronov Suxrob	1	3
3996	2023-08-01		f	Yoqubov Shohjahon	1	3
3997	2023-08-01		f	Normaxmatova Baxora	1	3
3998	2023-08-01		f	Turdiboyeva Nozima	1	3
3999	2023-08-01		f	Turdiboyev Shamsiddin	1	3
4000	2023-07-01		f	Mamadoliyev Maxsud	1	3
4001	2023-07-01		f	Hasanov Azizbek	1	3
4002	2023-07-01		f	Soliyev Timurchin	1	3
4003	2023-07-01		f	Asrorov Xumoyun	1	3
4004	2023-07-01		f	Yuldasheva Shaxlo	1	3
4005	2023-07-01		f	Ziyodullayeva Nafosat	1	3
4006	2023-07-01		f	Toshpulatov Shaxriyor	1	3
4007	2023-07-01		f	Boyjigitov Akobir	1	3
4008	2023-07-01		f	Raximov Sardor	1	3
4009	2023-07-01		f	Eshmamatov Valijon	1	3
4010	2023-07-01		f	Sadullayeva Nilufar	1	3
4011	2023-07-01		f	Xasanjonova Kamola	1	3
4012	2023-07-01		f	Abdurayimova Sadoqat	1	3
4013	2023-07-01		f	Xusanov Aziz	1	3
4014	2023-07-01		f	Erkinov Ixtiyor	1	3
4015	2023-07-20		f	Raximov Atamjon	1	2
4016	2023-08-14	INFO	t	Abdullayev Mexroj	1	3
4017	2023-08-20	INFO	f	Davronov Laziz	1	2
4018	2023-09-13	INFO	t	Mustafakulova Roxila	1	3
4019	2023-07-20	INFO	t	Ashurov Mirjahon	1	2
4020	2023-09-16	INFO	f	Muxtorov sarvar	1	3
4021	2023-09-16		t	Xayrilloyev Ozodbek	1	3
4022	2023-09-15	INFO	f	Absalamova Madina	1	3
4023	2023-09-06	INFO	t	Aliyev Xakimbek	1	3
4024	2023-09-18	INFO	t	Kadirov Arslan	2	3
4025	2023-09-18		t	Shodiyev Murod	2	3
4026	2023-09-18		t	Elmirov Eldor	2	3
4027	2023-09-18		t	Akbarov Abubakr	2	3
4028	2023-09-18		t	Baxtiyorov Bexruz	2	3
4029	2023-09-18		f	Salixova Rayxona	2	3
4030	2023-09-18		f	Muminova Ruxshona	2	3
4031	2023-09-18		t	Xasanov Amir	2	3
4032	2023-09-18		f	Djurakulova Sevinch	2	3
4033	2023-09-18		f	Ibragimova Rushana	2	3
4034	2023-09-18		t	Maxmudov Samandar	2	3
4035	2023-09-18		f	Maxmudova Sabina	2	3
4036	2023-09-18		t	Raupov Baxtiyor	2	3
4037	2023-09-18		t	Sharofov Fariz	2	3
4038	2023-09-18		f	Melimerova Milana	2	3
4039	2023-09-18		t	Xodjayev Samir	2	3
4040	2023-09-18		t	Zaxirov Rustam 	2	3
4041	2023-09-18		t	Olimov Aziz 	2	3
4042	2023-09-18		t	Kuchkarov Sardor	2	3
4043	2023-09-18		t	Salaxiddinov Muxammad	2	3
4044	2023-09-18	INFO	t	Abduxakimova Ismigul	1	3
4045	2023-08-31	INFO	t	Balbekov Jonibek	1	3
4046	2023-08-31		f	Abdiyeva Dilnoza	1	3
4047	2023-08-31		f	Tursunova Gulchehra	1	3
4048	2023-08-31		f	Salomova Klara	1	3
4049	2023-08-31		f	Qurbonova Bazorgul	1	3
4050	2023-08-31		f	O'rolova Dilshoda	1	3
4051	2023-08-31		f	Jumanazarova Nargiza	1	3
4052	2023-08-31		f	Madjidova Shaira	1	3
4053	2023-08-31		f	Ergashov Laziz	1	3
4054	2023-08-31		f	Muhammadiyev Xamza	1	3
4055	2023-08-31		f	Murodov Farxod	1	3
4056	2023-08-31		f	Toshmurodov Faxriddin	1	3
4057	2023-08-31		f	Narimov Sayxalbek	1	3
4058	2023-08-31		f	Kodirov Shodi	1	3
4059	2023-08-31		f	Mavlonov Vohidjon	1	3
4060	2023-08-31		f	Bakayeva Farog'at	1	3
4061	2023-08-31		f	Raxmonqulov Zokir	1	3
4062	2023-08-31		f	Raxmonov Shuhrat	1	3
4063	2023-08-31		f	Pardayev Nodir	1	3
4064	2023-08-31		f	Ablakulova Dilafruz	1	3
4065	2023-08-31		f	Zoirova Mukaddas	1	3
4066	2023-08-31		f	Norqulov Rustamjon	1	3
4067	2023-08-31		f	Safarov Aziz	1	3
4068	2023-08-31		f	Hamdamova Malohat	1	3
4069	2023-08-31		f	Yuldoshev Jamol	1	3
4070	2023-08-31		f	Vohidov Ilhom	1	3
4071	2023-08-31		f	Baratova Nodira	1	3
4072	2023-08-31		f	Habibullayeva Qunduz	1	3
4073	2023-08-31		f	Mirzayeva Nasiba	1	3
4074	2023-08-31		f	Murodov Sirojiddin	1	3
4075	2023-08-31		f	Amanov Bekzod	1	3
4076	2023-08-31		f	Saipov Dilshod	1	3
4077	2023-08-31		f	Nurnazarov Baxtiyor 	1	3
4078	2023-08-31		f	O'rinboyev Davrboy	1	3
4079	2023-08-31		f	To'xtayev Jaxongir	1	3
4080	2023-08-31		f	Suyarov Fayozjon	1	3
4081	2023-08-31		f	Sirojev Alijon	1	3
4082	2023-08-31		f	Habiyeva Sevinch	1	9
4083	2023-08-31		f	Hojiqurbonov Bahodir	1	9
4084	2023-07-03		f	Turdialiyeva Nozima	1	3
4086	2023-09-19		f	Ruziboyev Azim	1	3
4087	2023-09-19		f	G'ofurov Asilbek	1	3
4088	2023-09-19		f	Nurmamatov Kamronbek	1	3
4089	2023-09-19		f	Qodirova Dilshoda	1	3
4090	2023-09-19		f	Ashurov Alisher	1	3
4091	2023-09-19		f	Zayniddinov Shoxjahon	1	3
4092	2023-09-19		f	Jo'raqulov Iskandar	1	3
4093	2023-09-19		f	Hamrokulov Azizjon	1	3
4094	2023-09-19		f	Jamoliddinov Timur	1	3
4095	2023-09-19		f	Xursandov Dilshodbek	1	3
4096	2023-09-19		f	Hamrokulova Farangiz	1	3
4097	2023-09-19		f	Umarova Shukrona	1	3
4098	2023-09-19		f	Ayubova Xilola	1	3
4099	2023-09-19		f	Isroilov Tolibjon	1	3
4100	2023-09-19		f	Qodirov Amirjon	1	3
4101	2023-09-19		f	Qarshiboyev Ulug'bek	1	3
4102	2023-09-19		f	Qarshiboyev Bobur	1	3
4103	2023-09-19		f	Raxmonov Azizbek	1	3
4104	2023-09-19		f	Tohirov Mironshoh	1	3
4105	2023-09-19		f	To'xtayev Asadbek	1	3
4106	2023-09-19		f	Toshpulatova Madinabonu	1	3
4107	2023-09-19	INFO	f	Abdug'aniyeva Samira	1	3
4108	2023-09-19	INFO	t	Berdiqulova Shahzoda	1	3
4109	2023-09-19	INFO	t	Ismatov Farid	1	3
4111	2023-09-20		f	Yakubov Murodillo	1	6
4112	2023-09-20		t	Suloymonov Komiljon	1	6
4113	2023-09-20		f	Ergashev  Otamurod	1	3
4114	2023-09-20	INFO	t	Orifova Nigina	1	3
4115	2023-09-15	INFO	t	Janizakov Sardor	1	3
4116	2023-09-15		f	Alikulov Parviz	1	3
4117	2023-09-15		f	Umarov Jamol	1	3
4118	2023-09-18		f	Maxmudov Anvar	1	3
4119	2023-09-18		f	Mavlanov Dilshodbek	1	3
4120	2023-09-18		f	Samandarov Doston	1	3
4121	2023-09-18	INFO	f	Maxmudov Bekzod	1	2
4122	2023-09-15	INFO	t	Inoyatova Sevinch	1	3
4123	2023-09-15		f	Ergashev Musobek	1	2
4125	2023-09-15		f	Shukurov Xusan	1	2
4126	2023-09-15	INFO	t	Doliyev Sardor	1	2
4127	2023-09-18	INFO	t	Ibragimova Sadoqat	1	3
4128	2023-09-18	INFO	f	Qurbonov Xushnud	1	3
4129	2023-09-18		t	Toshpulatov Shaxram	1	2
4130	2023-09-18	INFO	f	Aliyev Shohjahon	1	2
4131	2023-09-18		f	EShturdiyev Faridun	1	3
4132	2023-09-18		f	G'aniyeva Mahliyo	1	6
4134	2023-09-25		f	Ametova Roksana	2	3
4135	2023-09-25	INFO	t	Odilov Islom	1	3
4136	2023-09-25		f	Isanov Sherjaxon	1	4
4139	2023-09-25	INFO	t	Umrzoqov Shaxriyor	1	4
4140	2023-09-09		f	Hatamova Safina	1	6
4142	2023-08-26		f	Musurmonov Nurmuhammad	1	3
4143	2023-09-15	INFO	t	Ahmadjonov Shoxrux	1	2
4144	2023-09-09		f	Husenov Xushnud	1	3
4146	2023-09-15		f	Jamilov Ezozbek	1	2
4147	2023-07-18	INFO	t	Tursunov Sardor	1	2
4148	2023-09-04	INFO	t	Xushvaqov  Navro'z	1	3
4485	2023-10-01		f	Rashidova  Umida	3	3
4150	2023-09-15	INFO	t	\tNapasov Davronjon	1	3
4151	2023-08-26		f	Abdusalomov Azamat 	1	1
4152	2023-09-15		f	Radjabboyev Shoxrux	1	2
4153	2023-09-09	INFO	t	Ibragimov Shoxjaxon	1	2
4154	2023-09-26	INFO	t	Ulashev Vohidjon	1	6
4155	2023-09-27	INFO	t	Aslonov Diyorbek	2	3
4156	2023-09-27		t	Tolibov Amir	2	3
4157	2023-09-27		f	Ibragimova Mexribon	2	3
4158	2023-09-27		f	Kasimova Zaira	2	3
4159	2023-09-27		t	Pulatov Asilbek	2	3
4160	2023-09-27		f	Sattorova Dilnura	2	3
4161	2023-09-27		f	Tolibova Nasiba	2	3
4162	2023-09-27		t	Djumabayev Isox	2	3
4163	2023-09-27		t	Saidmurodov Bexruz	2	3
4164	2023-09-27		t	Xusenov Kamronbek	2	3
4165	2023-09-27		f	Aslonova Diana	2	3
4166	2023-09-27		f	Ibraximova Intizor	2	3
4167	2023-09-27		t	Mardiyev Amir	2	3
4168	2023-09-27		t	Musinov Javoxir	2	3
4169	2023-09-27		t	Musinov Jaxonbek	2	3
4170	2023-09-27		f	Axrorov Shaxboz	2	3
4171	2023-09-27		t	Sunnatullaev Saidazim	2	3
4172	2023-09-15	INFO	f	Ibragimov Sheroz	1	3
4173	2023-09-04	INFO	t	Sunnatullayeva  Jasmina	1	3
4174	2023-09-04		f	 Quisinova  Sevara	1	3
4175	2023-09-04		f	Nuriddinov   Lochinbek	1	3
4176	2023-09-04		f	Hikmatova   Umida	1	3
4177	2023-09-04		f	Nagmatov  Abbos	1	3
4178	2023-08-21		f	Asadova  Mohira	1	3
4179	2023-08-21		f	Nabiqulov  Shohinur	1	3
4180	2023-08-21		f	Yoqubova  Dinora	1	3
4181	2023-09-03		f	Pardayeva Gavhar	1	3
4182	2023-09-03		f	Elmamatova Hulkar	1	3
4183	2023-09-03		f	Sultonova Madina	1	3
4184	2023-09-03		f	Ahrorov Sherzod	1	3
4185	2023-09-03		f	Sag`dullayeva  Begoyim	1	3
4186	2023-09-16		f	Boymurodova Shaxina	1	3
4187	2023-09-16		f	Ro`zimurodova Shahnoza	1	3
4188	2023-09-16		f	Ismatov  Sardor 	1	3
4189	2023-09-16		f	Safarova Hilola	1	3
4190	2023-09-16		f	Shamsindinov  Shamshod	1	3
4191	2023-09-16		f	Hayitov  Yorqinbek	1	3
4192	2023-09-16		f	Ergashova  Zarina	1	3
4193	2023-09-16		f	Oslonova  Aziza	1	3
4194	2023-07-27		f	Qurbonov Baxtiyor	1	3
4195	2023-08-09		f	Karimov Isroil	1	3
4196	2023-08-09		f	Normurodova Mohigul	1	3
4197	2023-08-09		f	Diyorov Murodbek	1	3
4198	2023-08-20		f	Rahmatullayev Shag'zod	1	3
4199	2023-08-20		f	Inatullayev Maruf	1	3
4200	2023-08-20		f	Narziyev Bahrom	1	3
4201	2023-08-20		f	Usmonov Behruz	1	3
4202	2023-08-20		f	Usmonov Amirxon	1	3
4203	2023-08-20		f	Shukurov Javohir	1	3
4204	2023-08-20		f	Naimjonov Javlon	1	3
4205	2023-08-20		f	Ziyodullayev Muhammad	1	3
4206	2023-08-20		f	Ismatullayeva Sevinch	1	3
4207	2023-08-20		f	Islomov Javohir	1	3
4208	2023-08-20		f	Ilhomov Bohodir	1	3
4209	2023-08-20		f	Toshpo'latov Shohrux	1	3
4210	2023-08-20		f	Botirov Shukurullo	1	3
4211	2023-08-20		f	Galiyeva Amaliya	1	3
4212	2023-08-20		f	Axtamov To'lqin	1	3
4213	2023-08-20		f	Mingboyev O'ktam	1	3
4214	2023-08-20		f	Yo'ldashev Zayniddin	1	3
4215	2023-08-20		f	Ergashev Raimjon	1	3
4216	2023-08-20		f	Xamidov Akramjon	1	3
4217	2023-08-20		f	Xasanboyev Nurbek	1	3
4218	2023-08-20		f	Qarshiboyeva Sarvinoz	1	3
4219	2023-08-20		f	Ravshanov Shaxboz	1	3
4220	2023-08-20		f	Xamrayev Jonibek	1	3
4221	2023-08-20		f	Xalilova Shaxnoza	1	3
4222	2023-08-20		f	Xasanov Nazarbek	1	3
4223	2023-08-20		f	Ashirov Aslbek	1	3
4224	2023-08-20		f	Ashirov Aziz	1	3
4225	2023-08-20		f	Tog'aynazarov Asadbek	1	3
4226	2023-08-20		f	Daminov Mehroj	1	3
4227	2023-08-20		f	Ishoxonov Umid	1	3
4228	2023-08-20		f	Izzatullayev Nazarbek	1	3
4229	2023-08-20		f	Norbutayeva Nigina	1	3
4230	2023-08-20		f	Muhammadiyev Asadbek	1	3
4486	2023-10-01		f	Sobirova  Gulshan	3	3
4232	2023-09-06		f	Toshtemirova Sevinchbonu	1	6
4233	2023-09-06	INFO	t	Bo'riyev Yodgor	1	6
4234	2023-09-06		f	Qurbonov Bobur	1	6
4235	2023-09-06		f	Xudayberdiyeva Nargiza	1	6
4236	2023-09-06		f	Qodirov Shuxrat	1	6
4237	2023-09-15	INFO	t	Ibragimov Sheroz	1	2
4238	2023-08-20	INFO	t	Turdialiyev Sardor	2	3
4239	2023-08-20		f	Sirliboyeva Munira	2	3
4240	2023-08-20		f	Abdullayev Sanjar	2	3
4241	2023-08-20		f	Boynazarova\tRuxshona	2	3
4242	2023-08-20		f	Boliboyev  Azizbek	2	3
4243	2023-08-20		f	Ubaydullayev\tAzizbek	2	3
4244	2023-09-20		f	Ulmasov  Behruz	2	3
4245	2023-08-20		f	Ulmasov  Fayruz	2	3
4246	2023-08-20		f	Xudoyberdiyev  Bexruz	2	3
4247	2023-08-20		f	Ravshanbekov  Abdulaziz	2	3
4248	2023-08-20		f	Muhiddinov \tJavoxir	2	3
4249	2023-08-20		f	Mardonov  Anis	2	3
4250	2023-08-20		f	Farxodov  MuhammadYusuf	2	3
4251	2023-08-20		f	Jurakulova  Lola	2	3
4252	2023-08-20		f	Toxirov  Nurmuhammad	2	3
4253	2023-08-20		f	Urinov Dilshod	2	3
4254	2023-09-20		f	Urinov  Begzod	2	3
4255	2023-08-20		f	Tolibov\tFeruzbek	2	5
4256	2023-08-20		f	Xaliddinov Elnur	2	6
4257	2023-08-20		f	Olimjonov \tRoziqbek	2	5
4258	2023-09-20		f	Xudoyberdiyev Bexruz	1	3
4259	2023-09-20		f	Mardonov Anis	1	3
4260	2023-09-06		f	Ne'matov Norbek	1	3
4261	2023-09-06		t	Ismatov Shoxruz	1	3
4262	2023-09-06		t	Xoljigitov Mirqodir	1	3
4263	2023-09-06		f	Ko'chimova Surayyo	1	3
4264	2023-09-06		f	Murodov Shoxjahon	1	3
4265	2023-09-06		f	Axmadova Farangiz	1	3
4266	2023-09-06		f	Xafizova Gulchehra	1	3
4267	2023-09-06		f	Yaxshiboyeva Sojida	1	3
4268	2023-09-06		f	Djuraboyev Sanjar	1	3
4269	2023-09-06		f	Turdiqulov Xusniddin	1	3
4270	2023-09-06		f	Samariddinov Og'abek	1	3
4271	2023-09-06		f	Erkinov Sardor	1	3
4272	2023-09-06		f	Xasanov Elbek	1	3
4273	2023-09-06		f	Qobulov Shohjahon	1	3
4274	2023-09-06		f	Muxsinova Xadicha	1	3
4275	2023-09-06		f	Norqulova Xurshida	1	3
4276	2023-09-06		f	Suyunova Saidabonu	1	3
4277	2023-09-06		f	Sultonov Iqboljon	1	3
4278	2023-09-06		f	Sultonova E'zoza	1	3
4279	2023-09-06		f	Abdullayeva Rayxona	1	3
4280	2023-09-06		f	Usmonova Marjona	1	3
4281	2023-09-06		f	Islomova Ruxsora	1	3
4282	2023-09-06		f	Abdusattarov Diyorbek	1	3
4283	2023-09-06		f	Toshtemirov Jasur	1	3
4284	2023-09-29	INFO	t	Shokirov Shoxjaxon	1	4
4285	2023-09-15	INFO	t	Abduraximova Maftuna	1	3
4286	2023-09-26	INFO	f	Sultonova Madinabonu	1	4
4287	2023-09-18	INFO	t	To'xtayev Samariddin	1	3
4288	2023-09-29	INFO	f	Abduraximova Maftuna	1	3
4289	2023-07-08		f	Atakulova Gavhar	1	3
4290	2023-10-02	INFO	t	Abduazizov Xusen	2	3
4291	2023-09-18	INFO	t	Abduraimov Qilichbek	1	3
4292	2023-07-21	INFO	t	Qurbonov Baxtiyor	1	3
4293	2023-08-09	INFO	f	Ismatullayeva Asaloy	1	3
4294	2023-08-09		t	Karimov Isroil	1	3
4295	2023-08-09		f	Normurodova Mohigul	1	3
4296	2023-07-05		t	Diyorov Murodbek	1	3
4297	2023-09-06		f	Toshtemirova Sevinchbonu	1	6
4298	2023-09-06		t	Bo'riyev Yodgor	1	6
4487	2023-10-01		f	Quldashova  Shaxnoza 	3	3
4300	2023-09-06		f	Qurbonov Bobur	1	6
4301	2023-09-06		f	Xudayberdiyeva Nargiza	1	6
4302	2023-09-06		t	Qodirov Shuxrat	1	6
4303	2023-08-20		f	Xamraqulov Daler	1	3
4304	2023-08-20		f	Rahmatullayev Shag'zod	1	3
4305	2023-08-20		f	Inatullayev Maruf	1	3
4306	2023-08-20		f	Narziyev Bahrom	1	3
4307	2023-08-20		f	Usmonov Behruz	1	3
4308	2023-08-20		f	Usmonov Amirxon	1	3
4309	2023-08-20		f	Shukurov Javohir	1	3
4310	2023-08-20		f	Naimjonov Javlon	1	3
4311	2023-08-20		f	Ziyodullayev Muhammad	1	3
4312	2023-08-20		f	Ismatullayeva Sevinch	1	3
4313	2023-08-20		f	Islomov Javohir	1	3
4314	2023-08-20		f	Ilhomov Bohodir	1	3
4315	2023-08-20		f	Toshpo'latov Shohrux	1	3
4316	2023-08-20		f	Botirov Shukurullo	1	3
4317	2023-08-20		f	Galiyeva Amaliya	1	3
4318	2023-08-20		t	Axtamov To'lqin	1	3
4319	2023-08-20		f	Mingboyev O'ktam	1	3
4320	2023-08-20		f	Yo'ldashev Zayniddin	1	3
4321	2023-08-20		f	Ergashev Raimjon	1	3
4322	2023-08-20		f	Xamidov Akramjon	1	3
4323	2023-08-20		f	Xasanboyev Nurbek	1	3
4324	2023-09-05		f	Qarshiboyeva Sarvinoz	1	3
4325	2023-09-05		t	Ravshanov Shaxboz	1	3
4488	2023-10-01		f	Sattorova  Dilrabo	3	3
4327	2023-09-05		f	Xalilova Shaxnoza	1	3
4328	2023-09-05		t	Xasanov Nazarbek	1	3
4329	2023-09-05		f	Ashirov Aslbek	1	3
4330	2023-09-05		t	Ashirov Aziz	1	3
4331	2023-09-05		f	Tog'aynazarov Asadbek	1	3
4332	2023-09-05		f	Daminov Mehroj	1	3
4333	2023-09-05		f	Ishoxonov Umid	1	3
4334	2023-09-05		f	Izzatullayev Nazarbek	1	3
4335	2023-09-05		f	Norbutayeva Nigina	1	3
4336	2023-09-05		t	Muhammadiyev Asadbek	1	3
4337	2023-07-26		f	Maxmayusufova Madina	1	3
4338	2023-07-26		f	Abdurahimova Yulduz	1	3
4339	2023-07-26		f	Abdurahimova Yulduz	1	3
4340	2023-07-26		f	Kamalova Yulduz	1	3
4341	2023-07-26		t	Kamolov Sarvarbek	1	3
4342	2023-07-26		f	Tursunov Temur	1	3
4343	2023-07-26		f	Rustamov Umrzoq	1	3
4344	2023-07-26		t	Rustamov Umrzoq	1	3
4345	2023-07-26	INFO	t	Rustamov Umrzoq	1	3
4346	2023-07-26		f	Nosirova Xilola	1	3
4347	2023-07-26		t	Sohibov Abdumutallib	1	3
4348	2023-04-20		f	Murodov Azim	1	2
4349	2023-06-20		f	Umirzoqova Hilola	1	2
4350	2023-04-20		t	Xusanov Asilbek	1	2
4351	2023-06-20		f	Muxtorova Hadicha	1	2
4352	2023-04-20		f	Shamsiddinova Gulshiroy	1	2
4353	2023-08-31		t	Balbekov Jonibek	1	3
4354	2023-08-31		f	Abdiyeva Dilnoza	1	3
4355	2023-08-31		f	Tursunova Gulchehra	1	3
4356	2023-08-31		f	Salomova Klara	1	3
4357	2023-08-31		f	Qurbonova Bazorgul	1	3
4358	2023-08-31		f	O'rolova Dilshoda	1	3
4359	2023-08-31		f	Jumanazarova Nargiza	1	3
4360	2023-08-31		f	Madjidova Shaira	1	3
4361	2023-08-31		t	Ergashov Laziz	1	3
4362	2023-08-31		f	Muhammadiyev Xamza	1	3
4363	2023-08-31		f	Murodov Farxod	1	3
4364	2023-08-31		f	Toshmurodov Faxriddin	1	3
4365	2023-08-31		f	Narimov Sayxalbek	1	3
4366	2023-08-31		f	Kodirov Shodi	1	3
4367	2023-08-31		f	Mavlonov Vohidjon	1	3
4368	2023-08-31		f	Bakayeva Farog'at	1	3
4369	2023-08-31		t	Raxmonqulov Zokir	1	3
4370	2023-08-31		f	Raxmonov Shuhrat	1	3
4371	2023-08-31		f	Pardayev Nodir	1	3
4372	2023-08-31		f	Ablakulova Dilafruz	1	3
4373	2023-08-31		f	Zoirova Mukaddas	1	3
4374	2023-08-31	INFO	f	Zoirova Mukaddas	1	3
4375	2023-08-31		t	Norqulov Rustamjon	1	3
4376	2023-08-31		f	Safarov Aziz	1	3
4377	2023-08-31		f	Hamdamova Malohat	1	3
4378	2023-08-31		t	Yuldoshev Jamol	1	3
4379	2023-08-31		f	Vohidov Ilhom	1	3
4380	2023-08-31		f	Baratova Nodira	1	3
4381	2023-08-31		f	Habibullayeva Qunduz	1	3
4382	2023-08-31		f	Mirzayeva Nasiba	1	3
4383	2023-08-31		t	Murodov Sirojiddin	1	3
4384	2023-08-31		f	Amanov Bekzod	1	3
4385	2023-08-31		f	Saipov Dilshod	1	3
4386	2023-08-31		f	Nurnazarov Baxtiyor 	1	3
4387	2023-08-31		f	O'rinboyev Davrboy	1	3
4388	2023-08-31		f	To'xtayev Jaxongir	1	3
4389	2023-08-31		f	Suyarov Fayozjon	1	3
4390	2023-08-31		f	Sirojev Alijon	1	3
4391	2023-08-31		f	Habiyeva Sevinch	1	9
4392	2023-08-31		t	Hojiqurbonov Bahodir	1	9
4393	2023-08-28		f	Normamatov Adham	1	3
4394	2023-08-28		f	Sobirov Azizbek	1	3
4395	2023-08-28		f	G'aniyev Ravshanbek	1	3
4396	2023-08-28		f	Baxtiyorov Nurbek	1	3
4397	2023-08-28		f	Ochilov Sardorbek	1	3
4398	2023-08-28		f	Po'latov Shamsiddin	1	3
4399	2023-08-28		f	Murtazayeva Nigina	1	3
4400	2023-08-28		t	Qaxramonov Iqbol	1	3
4401	2023-08-28		f	Rabbimov Kamoliddin	1	3
4402	2023-08-28		f	Sindarov javohir	1	3
4403	2023-08-28		f	Sheraliyeva Zarnigor	1	3
4404	2023-08-28		f	Omonova Barno	1	3
4405	2023-09-06	INFO	t	Ne'matov Norbek	1	3
4406	2023-09-06		f	Ismatov Shoxruz	1	3
4407	2023-09-06		f	Xoljigitov Mirqodir	1	3
4408	2023-09-06		f	Ko'chimova Surayyo	1	3
4409	2023-09-06		t	Murodov Shoxjahon	1	3
4410	2023-09-06		f	Axmadova Farangiz	1	3
4411	2023-09-06		f	Xafizova Gulchehra	1	3
4412	2023-09-06	INFO	f	Xafizova Gulchehra	1	3
4413	2023-09-06		f	Yaxshiboyeva Sojida	1	3
4414	2023-09-06		t	Djuraboyev Sanjar	1	3
4415	2023-09-06		f	Turdiqulov Xusniddin	1	3
4416	2023-09-06		f	Samariddinov Og'abek	1	3
4417	2023-09-06		f	Erkinov Sardor	1	3
4418	2023-09-06		f	Xasanov Elbek	1	3
4419	2023-09-06		f	Qobulov Shohjahon	1	3
4420	2023-09-06		f	Muxsinova Xadicha	1	3
4421	2023-09-06		f	Norqulova Xurshida	1	3
4422	2023-09-06		f	Suyunova Saidabonu	1	3
4423	2023-09-06		t	Sultonov Iqboljon	1	3
4424	2023-09-06		f	Sultonova E'zoza	1	3
4425	2023-09-06		f	Abdullayeva Rayxona	1	3
4426	2023-09-06		f	Usmonova Marjona	1	3
4427	2023-09-06		f	Islomova Ruxsora	1	3
4428	2023-09-15		t	Abdusattarov Diyorbek	1	2
4429	2023-09-15		f	Toshtemirov Jasur	1	2
4430	2023-07-24		f	Mirzayeva Maqsuda 	1	3
4431	2023-07-24		f	Abdug‘aniyeva Mamura 	1	3
4432	2023-07-24		f	Muzaffarova Umida 	1	3
4433	2023-07-24		f	Egamova Navbaxor 	1	3
4434	2023-07-24		f	Shodiyeva Sanobar 	1	3
4435	2023-07-24		f	Rasulova Surayyo 	1	3
4436	2023-07-24		f	Meylliyeva Gulabza 	1	3
4437	2023-07-24		f	Xasanova Dilshoda 	1	3
4438	2023-07-24		f	Quqanova Amina 	1	3
4439	2023-07-24		f	Usmonova Yulduz 	1	3
4440	2023-07-24		f	Xolbutayeva Umida 	1	3
4441	2023-07-24		f	Raxmonova Oysara 	1	3
4442	2023-07-24		f	Normurodova Aziza 	1	3
4443	2023-07-28		f	Ruziyeva Feruza 	1	3
4444	2023-07-28		f	Bekmurodova Iroda 	1	3
4445	2023-07-28		f	Xolmuminova Feruza 	1	3
4446	2023-07-28		f	Sodiqova Sayyora 	1	3
4447	2023-07-28		f	Ergasheva Zulfinur 	1	3
4489	2023-10-01		f	Abdiyeva Lobar	3	3
4490	2023-10-01		f	Kosimova Zilola	3	3
4491	2023-10-01		f	Zoyirova  Nigora	3	3
4522	2023-08-30		t	Ibadullayev Bunyod	1	3
4529	2023-10-04	INFO	t	Kadirov Adis	2	3
4530	2023-10-06	INFO	t	Raximov Kamronbek	2	3
4534	2023-10-04	INFO	t	Kadirov Adiz	2	3
4537	2023-10-06	INFO	t	Yunusov Azimjon	1	3
4538	2023-01-05		f	Xojmamedov Ibroxim	1	1
4553	2023-09-01		f	Nazarova Gulshoda	3	3
4554	2023-09-01		f	Mannonova Zulfiya	3	3
4555	2023-09-01		f	Nazarova Zebo 	3	3
4556	2023-09-01		f	Parmonova Irisgul	3	3
4557	2023-09-01		f	Toshpulatova  Dono	3	3
4558	2023-09-01		f	Jabbarova Gulzoda	3	3
4559	2023-09-01		f	Razzaqova Salomat	3	3
4560	2023-09-01		f	Qodirova Nodira	3	3
4561	2023-09-01		f	Shakirova  Gulchehra 	3	3
4562	2023-09-01		f	Zoyirova  Nilufar	3	3
4668	2023-11-01	INFO	t	Xokiyorov Azizjon	1	6
4669	2023-11-01	INFO	f	Muhitdinova Jasmina	1	6
4670	2023-11-01	INFO	t	Avazova Aliya	1	6
4671	2023-08-30	INFO	t	Bekniyozov Mansurjon	1	3
4672	2023-11-07	INFO	f	Ahmatov Avaz	1	7
4673	2023-11-07	INFO	t	Rajabov Behruz 	1	6
4674	2023-11-07	INFO	t	Fayzullayev Behro'z	1	3
4675	2023-11-15	INFO	t	Aliev Azamat	2	3
4676	2023-11-09	INFO	t	Tuychiyev Dilshod	2	3
4677	2023-11-09		t	Murodov Javoxir	2	3
4678	2023-11-10	INFO	t	Adham Pardayev	1	3
4679	2023-11-10	INFO	t	Toirov Jasur	1	3
4680	2023-11-04	INFO	t	Tuychiyev Pahlavon	1	3
4681	2023-11-09		f	Turdialiyev Sardor 	2	3
4682	2023-11-09		f	Ubaydullayev Asadbek 	2	3
4683	2023-11-09		f	G'aybullayev Muhammadsiddiq	2	3
4684	2023-11-09		f	Abdumutalipov Muhammadjon	2	3
4686	2023-11-09		f	Boynazarova Hadichabonu	2	3
4687	2023-11-09		f	Keldiyorov Umidjon	2	3
4688	2023-11-09		f	Abdumutalipov Muhammadjon	2	3
4689	2023-11-11		f	Abdusamatov Shohjahon	2	3
4690	2023-11-09		f	Abdurahimov Akbarjon	2	3
4691	2023-11-09		f	Abduvalikov Nurislom	2	3
4692	2023-11-09		f	Xolmuminov Javohir	2	4
4693	2023-09-11	INFO	t	Jiyanboyev Azizbek	1	2
4694	2023-11-11	INFO	t	JO‘RABEK RAH	1	6
4695	2023-11-11		f	Jo‘rabek Rahmatov	1	6
4696	2023-11-11	INFO	t	Abdusalomov Davlat	1	7
4697	2023-10-25	INFO	f	Mingbayev Lazizbek	1	3
4698	2023-10-25		t	Omonov Sohibbek	1	3
4699	2023-11-13	INFO	t	Manonov Aziz	2	3
4700	2023-11-15	INFO	t	Nuriddinov Davlatyor	2	3
4701	2023-11-15		t	Raufov Elbek	2	3
4702	2023-11-15		t	Mediyev Murtozoali	2	3
4703	2023-11-15		t	Yaxshilikov Isfandiyor	2	3
4704	2023-11-04	INFO	f	Tuychiyev Pahlavon	1	6
4705	2023-10-30	INFO	t	Xushvaqov  Navro'z	1	1
4706	2023-10-30		f	Rejabov \tBotirjon	1	1
4707	2023-10-30		f	Temirov  Saidakmal	1	2
4708	2023-10-30		f	Musaeva  Gulnoza	1	3
4709	2023-10-30		f	Amirova  Maftuna	1	3
4710	2023-10-30		f	Rashidov\tAbbos	1	3
4711	2023-10-30		f	Nuriddinov\tElyorbek	1	3
4712	2023-10-30		f	Ravshanova \tTursunoy	1	3
4713	2023-10-30		f	Raxmonov\tAlisher	1	3
4714	2023-11-15	INFO	t	Nematjonov Timur	2	3
4715	2023-11-15	INFO	f	Mediyeva Muqaddas	2	3
4716	2023-11-15	INFO	t	Sharipov Ravshan	2	3
4717	2023-11-15		t	Shuxratov Jafar	2	3
4718	2023-11-15		f	Shuxratov Mexroj	2	3
4719	2023-11-15		f	Abduxayrov Otabek	2	3
4720	2023-11-15		t	Xurshedov Abduxafizxon	2	3
4721	2023-11-15		f	Xalimov Davlatjon	2	3
4722	2023-11-15		f	Saimov Lazizbek	2	3
4723	2023-11-15		t	Hamroqulov Faridun	2	3
4724	2023-11-15		f	Hamroqulov Firdavs	2	3
4725	2023-11-15		t	Safarov Oybekjon	2	3
4726	2023-11-15		f	Alimjanova Maftuna	2	3
4727	2023-11-15		f	Kurbonaliyeva Dianaxonim	2	3
4728	2023-11-15		f	Farxodova Amira	2	3
4729	2023-11-15		f	Ochilova Munisxon	2	3
4730	2023-11-15		f	Muqumova Dilnoza	2	3
4731	2023-11-15		t	Ravshanov Kamron	2	3
4732	2023-11-15		t	Rustamov Ruslan	2	3
4733	2023-11-15		t	Amonkulov Shaxboz	2	3
4734	2023-10-31	INFO	f	Baxadirova Gulbahor	1	3
4735	2023-10-31		f	Nomozova Gulhayo	1	3
4736	2023-10-31		f	Elbekova Durdona	1	3
4737	2023-10-31		f	Raximova Gulchexra	1	3
4738	2023-10-31		f	Yunusova Gavhar	1	3
4739	2023-10-31		f	Isakulova Gulnora	1	3
4740	2023-10-31		f	Ismoilova Oydin	1	3
4741	2023-10-31		f	Polvonova Dilafruz	1	3
4742	2023-10-31		f	Xasanova Dilnora	1	3
4743	2023-10-31		f	Mannonov  Maqsudjon	1	3
4744	2023-10-31		f	Samandarova Lobar	1	3
4745	2023-10-31		f	Akbayeva Yulduz	1	3
4746	2023-10-31		f	Umirzakova Shoira	1	3
4747	2023-10-31		f	Aliboyeva Shahlo	1	3
4748	2023-10-31		f	Muxiddinova Dinora	1	3
4749	2023-10-31		f	Ismoilova Feruza	1	3
4750	2023-10-31		f	Ergasheva Sayyora	1	3
4751	2023-10-31		f	Choriyeva Maysara	1	3
4752	2023-10-31		f	Turayeva Maxfuza	1	3
4753	2023-10-31		f	Juraboyeva Komila	1	3
4754	2023-10-31		f	Burliyev Asliddin	1	3
4755	2023-10-31		f	Abduraxmonova Sojida	1	3
4756	2023-10-31		f	Oblakulova Nilufar	1	3
4757	2023-10-31		f	Umarova Feruza	1	3
4758	2023-10-31		f	O'roqboyev Sunnat	1	3
4759	2023-10-31		f	Qushaqov Feruz	1	3
4760	2023-10-31		f	Namozova Shoxsita	1	3
4761	2023-10-31		f	Xujanazarova Mexrangiz	1	3
4762	2023-10-31		f	Ergashev Akmal	1	3
4763	2023-11-16	INFO	t	Mamarasulov Firdavs	2	3
4764	2023-09-04	INFO	f	Isroilova  Nodira	3	3
4765	2023-09-04		f	Norqulova  Dilfuza	3	3
4766	2023-09-04		f	Abdurayimova  Zilola	3	3
4767	2023-09-04		f	Primova Barno	3	3
4768	2023-09-04		f	Jurayeva  Gulchiroy	3	3
4769	2023-09-04		f	Amanova Nasiba	3	3
4770	2023-09-04		f	Kamolova Sohiba	3	3
4771	2023-09-04		f	Astanova Feruza	3	3
4772	2023-09-04		f	Sayfiddinova Yulduz	3	3
4773	2023-09-04		f	Utamurodova  Shaxnoza	3	3
4774	2023-09-04		f	Taniyeva  Madina	3	3
4775	2023-09-04		f	Mominova Gavxar	3	3
4776	2023-09-04		f	Bobokulov  Vali	1	3
4777	2023-09-04		f	Uralboyeva  Nargiza	1	3
4778	2023-09-04		f	Ergasheva Ruzigul	1	3
4779	2023-09-04		f	Erkinova  Muxlisa	1	3
4780	2023-09-04		f	Xatamova Dildora	1	3
6625	2024-09-07		t	Sanakulov Amir	2	2
6626	2024-09-07		t	Oblokulov Doston	2	2
6627	2024-09-07		t	Asliddinov Daler	2	2
6629	2024-09-07		t	Abdusamatov Umidjon	2	2
6632	2024-09-07		t	Nusratullayev Shahriyor	2	2
6633	2024-09-07		t	Nusratullayev Axmad	2	2
6634	2024-09-07	INFO	t	Asanov Timur	2	2
6635	2024-09-07	INFO	t	Ashurov Shavkat	2	2
6636	2024-09-07	INFO	t	Husenov Shoxrux	2	2
6648	2024-09-13	INFO	t	Abduvaxobov Aliabbos	2	3
6656	2024-09-21	INFO	t	Raupov Diyorjon	2	3
6668	2024-09-22		f	Mamaradjabova Zebiniso	2	3
6669	2024-09-22		f	Sidikov Sanjarbek	2	3
6675	2024-09-30		t	Erkinov Alisher	2	3
6682	2024-08-25	INFO	t	Jamshidov  Mirjalil 	2	3
6688	2024-10-01	INFO	t	Azizov Azamat	2	7
6693	2024-10-07	INFO	t	Muhammadiyev Dilshod	2	6
6694	2024-10-11	INFO	t	Baxtiyorov Fariz	2	6
6705	2024-10-21		f	Djamolova Dilafruz	2	3
6721	2024-10-21		f	Baxriyeva Munira	2	3
6725	2024-10-21		f	Shokirova Nilufar	2	3
6739	2024-09-25	INFO	t	Samadova  Sevinch 	2	3
6740	2024-09-29	INFO	t	Samadova  Samir	2	3
6741	2024-07-11	INFO	t	Amirjonov Samir   	2	3
6742	2024-07-11	INFO	t	 Amirjonov Ramiz  	2	3
6748	2024-09-16	INFO	f	Kamolova Anora	2	3
6753	2024-09-25	INFO	f	Samatova Sevinch	2	3
6754	2024-09-25	INFO	t	Samatova Samira	2	3
6760	2024-11-18	INFO	f	Ayubova Zarina	2	3
6766	2024-11-16	INFO	t	Axmedov Shuxrat	2	3
6774	2024-11-08	INFO	f	Jo‘raqulov Elbek 	2	1
6775	2024-11-08	INFO	f	Usmanov Bobir 	2	1
6776	2024-11-08	INFO	f	Jumaniyazov Umrbek 	2	1
6783	2024-11-29	INFO	f	Raxmatova Guzal	2	3
6787	2024-11-29	INFO	t	Toxirov Muhammadamin	2	3
6788	2024-11-29		t	Ergashev Bexruz	2	3
6793	2024-10-22		f	Mardiyeva Xosiyat	4	3
6830	2024-12-07	INFO	t	Lapasov Jasur	2	3
6833	2023-12-16	INFO	t	Murodov Dilshod	2	3
6834	2024-12-24	INFO	t	Abdulloyev Azimsher	2	3
6835	2024-12-24	INFO	f	Amridinova Dilnoza	2	3
6839	2024-12-28		f	Xalimova Durdona	2	3
6840	2024-12-28		f	Suyarkulova Madina	2	3
6841	2024-12-28		t	Bekmuradov Jasur	2	3
6842	2024-12-28		f	Sharipova Kumri	2	3
6880	2024-12-28		f	Narzikulova Gulchexra	2	3
6881	2024-12-28		f	Asrorkulova Manzura	2	3
6882	2024-12-28		f	Ravshanova Mamlakat	2	3
6883	2024-12-28		f	Xabibova Dildora	2	3
6884	2024-12-28		f	Mirzayeva Firuza	2	3
6885	2024-12-28		f	Urunova Xursheda	2	3
6886	2024-12-28		t	Iskandari Arshadbek	2	3
6889	2024-11-01	INFO	f	Ibragimova Gulruxsor	4	3
6890	2024-11-01	INFO	f	Eshkuvvatova Nilufar	4	3
6891	2024-11-01		f	Xodjabekova Shoista	4	3
6892	2024-11-01		f	Buronova Navruza	4	3
6893	2024-11-01		f	Usanova Shoxista	4	3
6894	2024-11-01		f	Xojiyeva Munira	4	3
6895	2024-11-01		f	Isroilova Muxabbat	4	3
6896	2024-11-01		f	Qayumova Madina	4	3
6899	2024-11-01		f	Boltayeva Iqbol 	4	3
6900	2024-11-01		f	Sindarova Munisa 	4	3
6901	2024-11-01		f	Urolova Zarnigor	4	3
6902	2024-11-01		f	Abduhofizova Iroda 	4	3
6903	2024-11-01		f	Pardayeva Dilorom 	4	3
6904	2024-11-01		f	Jalilova Nazokat	4	3
6905	2024-11-01		f	Daminova Bibirajab	4	3
6906	2024-11-01		f	Abdunazarova Nasiba	4	3
6909	2024-11-01		f	Absamatova Muxlisa	4	3
6910	2024-10-24	INFO	t	Abduraxmonov Islom	2	1
6911	2025-01-11	INFO	t	Jonibek  Kadirov	2	3
6912	2025-01-11		f	Ablyamitov Eldar  	2	3
6914	2025-01-13		f	Xolmuminov Javohir	2	1
6915	2025-01-13		f	Savridinov Xushnudbek	2	3
6916	2024-09-25	INFO	f	Mu'tabarxon Normurotova	2	3
6918	2025-01-27		t	Shodiyev Damirjon	2	3
6919	2025-01-27		t	Uktamov Faridjon	2	3
6921	2025-01-27		t	Kurbanov Kurbonali	2	3
6923	2025-01-15	INFO	f	Xazratqulov Islomjon	2	6
6926	2025-01-29	INFO	t	Karimov Xasan	2	3
6928	2025-01-29	INFO	t	Sanginov Sardor	2	3
6932	2024-07-26	INFO	f	OBIDOVA LEYLA	2	5
6933	2024-08-12	INFO	t	PULATOV DONIYOR	2	2
6938	2025-01-26		f	Axmedov Farrux	2	3
6939	2025-02-03	INFO	t	Rafiqov Javohir	2	2
6941	2025-02-27	INFO	f	Muindjonova Marjona	2	3
6942	2025-03-05	INFO	t	Shavkatov Sherxon	2	3
6943	2025-01-31	INFO	f	Taxirova Diyora	2	3
6946	2025-03-12	INFO	t	Qobilov Diyor	2	2
6948	2025-03-18	INFO	f	Sayfidinova Ximmatoy	2	3
6949	2025-03-19		t	Fayzullayev Doniyor	2	3
6952	2025-03-19		f	Negmatova Amina	2	3
6955	2025-03-18		t	Tuqsanov Maxmud	2	3
4782	2023-09-04		f	Baxodirov Doniyor	1	3
4783	2023-10-03	INFO	f	Namazova Shohista	1	3
4784	2023-10-03		f	Achilova Shaxnoza	1	3
4785	2023-11-15		f	Sultonov Iqboljon	1	2
4786	2023-11-05		f	Abdusattarov Diyorbek	1	2
4787	2023-11-05		f	Toshtemirov Jasur	1	2
4788	2023-11-05		f	G'ofurov Abulfayz	1	2
4789	2023-11-05		t	Anorqulov Turdiali	1	6
4790	2023-09-08		f	Usmonqulova Maxkamoy 	1	3
4791	2023-10-10		f	Norqulov Orzubek	1	3
4792	2023-10-10		f	Karimov Xushnud	1	3
4793	2023-10-10		f	O'razaliyeva Zilola	1	3
4794	2023-10-10		f	Abdunasimov Alisher	1	3
4795	2023-10-10		f	Ortiqov Alijon	1	3
4796	2023-10-10		f	Ergashev Mehroj	1	3
4797	2023-10-10		f	Mirzayev Xudoyberdi	1	3
4798	2023-10-10		f	Abduxalilov Firdavs	1	3
4799	2023-10-10		f	Mamirov Ozodbek	1	3
4800	2023-10-10		f	Mamarajabov Sanjar	1	3
4801	2023-10-10		f	Mamatqulov Sardor	1	3
4802	2023-10-10		f	Abdurahmonov Alisher	1	3
4803	2023-10-10		f	Tugalov Muhammadali	1	3
4804	2023-10-10		f	Ablaqulov Abdulbosit	1	3
4805	2023-10-10		f	Normamatova Elmira 	1	3
4806	2023-10-10		f	Ergasheva Farangiz	1	3
4807	2023-11-15		f	Abdurahmonov Oybek	1	3
4808	2023-11-15		f	Eshimov Jonibek	1	3
4809	2023-11-15		f	Ubaydullayev Davlatnazar	1	3
4810	2023-11-15		f	Anorova Feruza	1	3
4811	2023-11-15		f	Isoqulov Diyorbek	1	3
4812	2023-11-15		f	Baxodirov Muhammadamin	1	3
4813	2023-11-15		f	Saffiddinova Parizoda	1	3
4814	2023-11-15		f	Omonova Farangiz	1	3
4815	2023-11-15		f	Raxmonova Nurzoda	1	3
4816	2023-11-15		f	Abdusalamov Diyorbek	1	3
4817	2023-11-15		f	Anorova Feruza	1	3
4818	2023-11-15		f	Abdumajidov Diyorbek	1	3
4819	2023-11-15		f	Baxranov Munisjon	1	3
4820	2023-11-15		f	Raxmatov Samandar	1	3
4821	2023-11-15		f	Xoliqulov Sardor	1	3
4822	2023-11-15		f	Turaboyev Fazliddin	1	3
4823	2023-11-15		f	Hayitboyeva Rohila	1	3
4824	2023-11-15		f	Nomozov Azim	1	3
4825	2023-11-15		f	Sulaymanov Raxmanberdi	1	3
4826	2023-11-15		f	Go'bayeva Umida	1	3
4827	2023-11-15		f	Davurov Kobil	1	3
4828	2023-06-17	INFO	t	To'raqulov Abbos	1	6
4829	2023-11-07	INFO	t	Quziboyev Ulug'bek	1	3
4830	2023-11-11		f	Nurullayeva Kumush	1	3
4831	2023-11-24		f	Pardayeva Zarina	1	3
4832	2023-11-15		f	O'roqov Tohir	1	3
4833	2023-11-15		f	Murodov Farhod	1	3
4834	2023-11-20		f	Murodov Farrux	1	3
4835	2023-11-15		f	Alisherov Ziyodullo	1	3
4836	2023-10-15		f	Shamsindinov Shamshod	1	3
4837	2023-11-22		f	Tagayeva Inobat	1	3
4838	2023-11-23		f	Ibragimov Ikromjon	1	3
4839	2023-11-23		f	Kozimova Farida	1	3
4840	2023-11-23		f	Muzaffarova Sarvinoz	1	3
4841	2023-11-23		f	Anvarova Laylo	1	3
4842	2023-11-23		f	Rustamov Muhammadali	1	3
4843	2023-11-23		f	Nasirullayev Diyorjon	1	3
4844	2023-11-23		f	Nazarova Lobar	1	3
4845	2023-11-23		f	Isroilov Azizjon	1	3
4846	2023-11-23		f	Hamidov Adhamjon	1	3
4847	2023-11-23		f	Sabriyorjon Fazliddinov	1	3
4848	2023-11-23		f	Jovliyev Shaxobiddin	1	3
4849	2023-11-23		f	Kobiljonov Munis	1	3
4850	2023-11-23		f	Shokirov Shahzod	1	3
4851	2023-11-23		f	Soliyeva Zarina	1	3
4852	2023-11-23		f	Kamalov Asadbek	1	3
4853	2023-11-23	INFO	t	Asqarov Aliasqar	2	3
4855	2023-11-23	INFO	t	Umarov Abdulaziz	1	3
4856	2023-11-24	INFO	t	Abduxalimov Otabek	2	3
4857	2023-11-23	INFO	t	Sharipov Mirzosaid	1	3
4858	2023-11-23	INFO	t	Sharifov Mirzosaid	1	3
4859	2023-11-24		f	Xafizov Farzod	2	3
4860	2023-11-24		f	Toshpulatova Laylo	2	3
4861	2023-11-27		t	O'ktamboyev Davlatyor	2	3
4863	2023-11-29		f	Ismoilov Samirjon	2	3
4864	2023-10-28	INFO	t	Saidov Mexrojxon	1	3
4865	2023-10-28		f	Quvondiqov Sayid	1	3
4866	2023-10-28		f	Tursunov Toshpo'lat	1	3
4867	2023-10-28		f	Giyazov Baxodir 	1	3
4868	2023-10-28		f	Ibodova Ozoda	1	3
4869	2023-10-28		f	Yaqubov Jasur	1	3
4870	2023-10-28		f	Yaxyayev Husan	1	3
4871	2023-10-28		f	Ravshanov Salohiddin	1	3
4872	2023-10-28		f	Shermatov Akmal	1	3
4873	2023-10-28		f	Оdinaev Axmаdjon	1	3
4874	2023-10-28		f	Tursunov Maqsud	1	3
4875	2023-10-28		f	Aliqulov Umidjon	1	3
4876	2023-10-28		f	Sindorov G'ulom	1	3
4877	2023-10-28		f	Norov To'lqin	1	3
4878	2023-10-28		f	Kamolov Jahongir	1	3
4879	2023-10-28		f	Sindarov O'tkir	1	3
4880	2023-10-28		f	 Nabiyev Shaxruz	1	3
4881	2023-11-04		f	Rahimov Saypilla	1	3
4882	2023-11-04		f	Bobomurodova Dilnoza	1	3
4883	2023-11-04		f	Dusmurodov Tal'at	1	3
4884	2023-11-04		f	Ashirov Lutfulla	1	3
4885	2023-11-04		f	Xolboyeva Dildora	1	3
4886	2023-11-04		f	Jonuzoqov Sherali	1	3
4887	2023-11-04		f	Togayev Shuxrat	1	3
4888	2023-11-04		f	Murodov Umid	1	3
4889	2023-11-04		f	Jurayev Sherali	1	3
4890	2023-11-04		f	Narzullayeva Nodira	1	3
4891	2023-11-04		f	Bobaqulov Anvar	1	3
4892	2023-11-04		f	Raximov Anvar	1	3
4893	2023-11-04		f	Berdiyev G'ulom	1	3
4895	2023-10-20		f	Shirinova Xosida 	3	3
4896	2023-10-20		f	Mamanazarova Dilfuza 	3	3
4897	2023-10-20		f	Abriyeva Dildora 	3	3
4898	2023-10-20		f	Roxatova Shoxida 	3	3
4899	2023-10-20		f	Turdaliyeva Muxayyo 	3	3
4900	2023-10-20		f	Pardayeva Fazilat 	3	3
4901	2023-10-20		f	Mavlonova Xayriniso 	3	3
4902	2023-10-20		f	Utayeva Ug‘iloy 	3	3
4903	2023-10-20		f	Murodova Gavhar	3	3
4904	2023-11-06		f	Ochilova Dilnoza	3	3
4905	2023-11-06		f	Suyunova Sanobar	3	3
4906	2023-11-06		f	Sharapova Nasiba	3	3
4907	2023-11-06		f	Abduraimova Hilola	3	3
4908	2023-11-06		f	Turdiyeva Shaxlo	3	3
4909	2023-11-06		f	Norbekova Diyora	3	3
4910	2023-11-06		f	Qalandarova Komila	3	3
4911	2023-11-06		f	Maxammatova Zulfiya	3	3
4912	2023-11-06		f	Miyassarova Dildora	3	3
4913	2023-11-06		f	Muminova Nafisa	3	3
4914	2023-11-06		f	Hayitova Zilola	3	3
4915	2023-11-06		f	Temirova Gulsanam	3	3
4916	2023-11-06		f	Xurramova Yulduz	3	3
4917	2023-11-06		f	Elmurodova Bahora	3	3
4918	2023-11-23		f	Xushvaqov Akmal	3	3
4919	2023-11-23	INFO	f	Jumayev Komil	1	4
4920	2023-11-23	INFO	t	Xushvaqov Akmal 	1	4
4921	2023-11-01	INFO	t	Rajabov Ilxom	3	3
4922	2023-11-01		f	Qarshiyeva Xurshida	3	3
4923	2023-11-01		f	Avazov Qalandar	3	3
4924	2023-11-01		f	Bazarov Nuridin	3	3
4925	2023-11-01		f	Boboxolova Mohichehra	3	3
4926	2023-11-01		f	Qudratova Shoira	3	3
4927	2023-11-01		f	O'tayeva Ruxsora	3	3
4928	2023-11-01		f	Xolmuminova Zebiniso	3	3
4929	2023-11-01		f	Karajanova Iroda	3	3
4930	2023-11-01		f	Nurmamatova  Dildora 	3	3
4931	2023-11-01		f	Doniyorova Soxiba	3	3
4932	2023-11-01		f	Ibodullayeva Oyniso	3	3
4933	2023-11-01		f	Omonova Madina	3	3
4934	2023-11-01		f	Alimova Ruxsora	3	3
4935	2023-11-01		f	O'rinboyeva Shohzoda	3	3
4936	2023-11-01		f	Isayeva Iroda	3	3
4937	2023-11-01		f	Raxmatullayeva Nafisa	3	3
4938	2023-11-01		f	Annayeva Dildor	3	3
4939	2023-11-01		f	Jomonova Ozoda 	3	3
4940	2023-10-05	INFO	t	Zoirova  Saodat	3	3
4941	2023-10-05		f	Zoirova  Saboxat	3	3
4942	2023-10-05		f	Bekmurodova  Xalima	3	3
4943	2023-10-05		f	Bozorova  Nigora	3	3
4944	2023-10-05		f	Boynazarova  Nilufar	3	3
4945	2023-10-05		f	Juraeva  Oltin	3	3
4946	2023-10-05		f	Xaydarova  Sanobar	3	3
4947	2023-10-05		f	Yovqachova  Maftuna	3	3
4948	2023-10-05		f	Ruzieva  Zarifa	3	3
4949	2023-10-05		f	Rajabova  Dildora	3	3
4950	2023-10-05		f	Tog'ayeva  Maftuna	3	3
4951	2023-11-03		f	Chalayeva  Nodira	3	3
4952	2023-11-03		f	Xudjamova  Zulayxo	3	3
4953	2023-11-03		f	Dusaliyeva  Dilorom	3	3
4955	2023-11-03	INFO	f	Toshboyeva  Kamola	3	3
4956	2023-11-03		f	Normurodova  Hulkar	3	3
4957	2023-11-03		f	Xolmuminova  Xusnora	3	3
4958	2023-11-03		f	Islomova  Visola	3	3
4959	2023-11-03		f	Eshavova  Mu'tabar	3	3
4960	2023-11-03		f	Xushbaqova  Mamlakatxon	3	3
4961	2023-11-03		f	Ziyoyeva  Rushana	3	3
4962	2023-10-05		f	Sharipova Yulduz	1	3
4963	2023-11-05		f	Meliyeva Dildora	1	3
4964	2023-11-05		f	Yusupova Yulduz	1	3
4965	2023-11-05		t	Ruzimurodova Shaxnoza	1	3
4966	2023-10-05		f	Xolbekova Sevara	1	3
4967	2023-11-05		f	Sulaymanova Maxfuza	1	3
4968	2023-10-05		f	Xayitova Nigora	1	3
4969	2023-10-05		f	Qurbonova Zilola	1	3
4970	2023-10-05		f	Eshpulatova Nilufar	1	3
4971	2023-10-05		f	Narmatova Gulmera	1	3
4972	2023-10-05		f	Turopova Roziya	1	3
4973	2023-10-05		f	Boymurodova Laylo	1	3
4974	2023-10-05		f	Ochilova Muxtaram	1	3
4975	2023-10-05		f	Omonova Nargiza	1	3
4976	2023-10-05		f	Turdiboyrva Orzigul	1	3
4977	2023-11-27	INFO	f	Oblokulova Sevara 	2	3
4978	2023-11-27		t	Obidjonov Farizjon	2	3
4979	2023-11-27		t	Xusanov Shaxriyor	2	3
4980	2023-11-27		t	Melikov Baxtiyor	2	3
4981	2023-11-27		f	Tolibov Parviz	2	3
4982	2023-11-27		f	Shermaxmatova Sabina	2	3
4983	2023-11-27		f	Xusenova Parizoda	2	3
4984	2023-11-20	INFO	f	Abrorxon Abrorov	2	5
4985	2023-11-10	INFO	t	Azamov Sunnat	1	3
4986	2023-09-04	INFO	t	Subxonov Samir 	1	6
4987	2023-10-06	INFO	t	Daminov Bexruz	1	3
4988	2023-10-06		f	Xamidova Nafisa	1	3
4989	2023-10-06		f	Elmurodova Zarnigor	1	3
4990	2023-10-06		f	Baxriddinov Jamoliddin	1	3
4991	2023-10-06		f	Nazarova Iroda	1	3
4992	2023-10-06		f	Sanaqulov O'lmas	1	3
4993	2023-10-06		f	Shodiyeva Xamida	1	3
4995	2023-11-03	INFO	f	Xidirov Muhammadjon	1	6
4996	2023-11-03		f	Karimjonov Sarvar	1	6
4997	2023-11-03		f	Karimjonov Alisher	1	6
4998	2023-11-03		f	Asatullayev Xushnud	1	6
4999	2023-11-30	INFO	f	Xamrayeva\tGulchexra	1	3
6000	2023-12-25		f	Hoshimov Aziz	1	3
5000	2023-11-30		f	Kuldashev\tAsliddin	1	3
5001	2023-11-30		f	Mamasoliyeva\tDilfuza	1	3
5002	2023-11-30		f	Norbutayeva\tNodira	1	3
5003	2023-11-30		f	Nizomova\tLobar	1	3
5004	2023-11-30		f	Utamishova\tMarxabo	1	3
5005	2023-11-30		f	Krupskaya\tNadejda	1	3
5006	2023-11-30		f	Muminova\tGulchexra	1	3
5007	2023-11-30		f	Samadova\tNilufar	1	3
5008	2023-11-30		f	Irgasheva\tMaysara	1	3
5009	2023-11-30		t	Norbayeva\tSoxiba	1	3
5010	2023-11-30		f	Jonkobilova\tMubara	1	3
5011	2023-11-30		f	Turanova\tSevinch	1	3
5012	2023-11-30		f	Yangibayeva\tRa'no	1	3
5013	2023-11-30		f	Bozorova\tDilafuruz	1	3
5014	2023-11-30		f	Otaboyeva\tNargiza	1	3
5015	2023-11-30		f	Sirajeva\tSevara	1	3
5016	2023-11-30		f	Akobirova\tShoxista	1	3
5017	2023-11-30		f	Kenjayeva\tNasiba	1	3
5018	2023-11-30		f	Jiyamuratov\tOlim	1	3
5019	2023-11-30		f	Xayrullayeva\tSarvinoz	1	3
5020	2023-11-30		f	Maxmudova\tDildora	1	3
5021	2023-11-30		f	Nazarov\tLaziz	1	3
5022	2023-11-30		f	Xidirova\tNasiba	1	3
5023	2023-11-30		f	Abduraxmonova\tShaxnoza	1	3
5024	2023-11-30		f	Gazibekova\tMatluba	1	3
5025	2023-11-30		f	Mamarasulova\tFazilat	1	3
5026	2023-11-30		f	Asqarova\tNasiba	1	3
5027	2023-11-30		f	Usarov\tBaxadir	1	3
5028	2023-11-30		f	Yunusova\tUmida	1	3
5029	2023-11-30		f	Abduraxmanova\tZebo	1	3
5030	2023-11-30		f	Xolmurodova Mubora	1	3
5031	2023-10-30		f	Baymanova\tHafiza	1	3
5032	2023-11-30		f	Baymanova\tHafiza	1	3
5033	2023-11-30		f	Eshanqulov\tZafar	1	3
5034	2023-11-30		f	Yunusova\tMasura	1	3
5035	2023-11-30		f	Jumanova\tSurayyo	1	3
5036	2023-11-30		f	Xudoyberdiyeva\tFazilat	1	3
5037	2023-11-30		f	Bozorova\tNoila	1	3
5038	2023-11-30		f	Siddiqova Aziza	1	3
5039	2023-11-30		f	Abdialimov\tAlisher	1	3
5040	2023-11-30		f	Boliboyev\tLatif	1	3
5041	2023-11-30		f	Qambarov\tSaydirasul	1	3
5042	2023-11-30		f	Mamarasulova\tGo'zal	1	3
5043	2023-11-30		f	Yalg'ashev\tFaxriddin	1	3
5044	2023-10-30		f	Omonturdiyeva\tShahnoza	1	3
5045	2023-11-30		f	Yunusova\tSurayyo	1	3
5046	2023-11-30		f	Ruzimuradova\tDilbar	1	3
5047	2023-11-30		f	Samiyeva\tMalika	1	3
5048	2023-11-30		f	Kazakbayeva\tGulshan	1	3
5049	2023-11-30		f	Ungalova\tDilnoza	1	3
5050	2023-11-30		f	Xudayqulova\tNodira	1	3
5051	2023-11-30		f	Imomova\tFeruza	1	3
5052	2023-11-30		f	Kaxorboyeva\tShoxista	1	3
5053	2023-10-06		f	Esanova  Firuza	1	3
5054	2023-10-06		f	Raxmatova Feruza	1	3
5055	2023-10-06		f	Norbutayeva  Nigora	1	3
5056	2023-10-06		f	Maxmudova  Surrayo	1	3
5057	2023-10-06		f	Ochilova  Dilafruz	1	3
5058	2023-10-06		f	Kurakulova  Sahiba	1	3
5059	2023-10-06		f	Nurtayeva Nafisa	1	3
5060	2023-10-06		f	Nobo'tayev Aziz	1	3
5061	2023-10-06		f	Alikulova  Dilnoza	1	3
5062	2023-10-06		f	Nasimova Gavhar	1	3
5063	2023-10-06		f	Yuldasheva Baxtigul	1	3
5064	2023-10-06		f	Sanaqulova Feruza	1	3
5065	2023-10-06		f	Qudratova Yulduz	1	3
5066	2023-10-06		f	Shakarova Ra'no	1	3
5067	2023-10-06		f	Shakarova Moxinur	1	3
5068	2023-10-06		f	Darxanova Kibora	1	3
5069	2023-10-06		f	Boliyeva Madina	1	3
5070	2023-10-06		f	Tog'ayeva Dilbar	1	3
5071	2023-10-06		f	Nizomov Komil	1	3
5072	2023-10-06		f	Shirinboyeva Mshxura	1	3
5073	2023-10-06		f	Ismatova   Saodat	1	3
5074	2023-10-06		f	Yaqubova  Sevinch	1	3
5075	2023-10-06		f	Bo'riqulova  Dilobar	1	3
5076	2023-10-06		f	Ismatova  Nasiba	1	3
5077	2023-10-06		f	Xoldorova Rayxon	1	3
5078	2023-10-06		f	Kurokova  Nigina 	1	3
5079	2023-10-06		f	Kaxxarov Shaxriddin	1	3
5080	2023-10-06		f	Kuchkarova Dilafruz	1	3
5081	2023-10-06		f	Xayrullayev Erali	1	3
5082	2023-10-06		f	Davlatova  Lola	1	3
5083	2023-10-06		f	Tojiboyev Mirjamol	1	3
5084	2023-10-06		f	Uralova  Diyora	1	3
5085	2023-09-04	INFO	t	Jamilov Ezozbek	1	2
5086	2023-09-04	INFO	t	Jamilov E'zozbek	1	2
5087	2023-12-01	INFO	f	Yusupova Xurshida	1	3
5088	2023-12-01	INFO	t	Ziyoviddinov Bexruz	2	3
5089	2023-12-01	INFO	t	Fayzillayev Muxammadali	2	3
5090	2023-12-01	INFO	t	Fayzillayev Muhammadali	2	3
5091	2023-12-01	INFO	t	Tolibjonov Abdullo	2	3
5092	2023-12-02	INFO	t	Rasulova Marjona	1	3
5093	2023-09-05	INFO	f	Jurayeva\tNaima	3	3
5094	2023-09-05		f	Abriyeva\tGulchexra	3	3
5095	2023-09-05		f	Jurayeva\tMaxliyo	3	3
5096	2023-09-05		f	Qazoqova\tNodira	3	3
5097	2023-10-05		f	Turayeva\tGavxar	3	3
5098	2023-10-05		f	Davronova\tMaqsuda	3	3
5099	2023-10-05		f	Ergashov\tVaxob	3	3
5100	2023-10-05		f	Jumayeva\tFeruza	3	3
5101	2023-10-05		f	Toshtemirova\tSadoqat	3	3
5102	2023-09-05		f	Mavlonova\tOrzugul	3	3
5103	2023-09-05		f	Usmonova\tFeruza	3	3
5104	2023-09-05		f	Quziboyeva\tLola	3	3
5105	2023-09-05		f	Abdualimova\tMaxliyo	3	3
6108	2023-12-30		f	Hamidov Ilhom	1	3
5106	2023-10-05		f	Xamidova\tBarno	3	3
5107	2023-10-05		f	Fayzullayeva\tNaima	3	3
5108	2023-09-05		f	Berdiqulova\tGulshoda	3	3
5109	2023-10-05		f	Ruziyeva\tBarno	3	3
5110	2023-10-05		f	Amirqulova\tOzoda	3	3
5111	2023-10-05		f	Amirqulova\tOzoda	3	3
5112	2023-10-05		f	Ergashova\tGo'zal	3	3
5113	2023-10-05		f	Davirova\tNazira	3	3
5114	2023-10-05		f	Rustamova\tMaxfarat	3	3
5115	2023-10-05		f	Esonqulova\tDilfuza	3	3
5116	2023-10-05		f	Mirzayeva\tLaylo	3	3
5117	2023-10-05		f	Rayimshukurova\tXabiba	3	3
5118	2023-10-05		f	Eshmirzayeva\tGulbaxor	3	3
5119	2023-10-05		f	Sharipova\tMohinur	3	3
5120	2023-10-05		f	Tog'ayeva\tZarifa	3	3
5121	2023-10-05		f	Axmedova\tDilnoza	3	3
5122	2023-10-05		f	Xabibova\tZuxra	3	3
5123	2023-10-05		f	Shamshiyeva\tMexriniso	3	3
5124	2023-10-05		f	Saloxiddinova\tSobira	3	3
5125	2023-10-05		f	Butayev\tOzodbek	3	3
5126	2023-10-05		t	Butayev\tOzodbek	3	3
5127	2023-10-05		f	Suyarova\tDilbar	3	3
5128	2023-10-05		f	Suyarova\tDilbar	3	3
5129	2023-10-05		f	Umarova\tShaxnoza	3	3
5130	2023-10-05		f	Maxmudova\tGulhayo	3	3
5131	2023-10-05		f	Maxmudova\tYulduz	3	3
5132	2023-10-05		f	Odilova\tOysara	3	3
5133	2023-10-05		f	Saloxiddinova\tRayxona	3	3
5134	2023-10-05		f	Rajabova\tShoxista	3	3
5135	2023-10-05		f	Doniyorova\tYulduzxon	3	3
5136	2023-11-05		f	Pulatova\tNilufar	3	3
5137	2023-11-05		f	Babayarova\tQandalat	3	3
5138	2023-11-05		f	Abdusalomova\tShoxista	3	3
5139	2023-11-05		f	Qazoqova\tDilbar	3	3
5140	2023-11-05		f	Mustafayeva\tMavjuda	3	3
5141	2023-04-01		f	Keldiyorova\tSabina	1	3
5142	2023-11-05		f	Boyqobulova\tElnura	1	3
5143	2023-11-05		f	Normurodov\tJavohir	1	3
5144	2023-11-05		f	Uroqova\tSevinch	1	3
5145	2023-11-05		f	Nurullayev\tSubxonbek	1	3
5146	2023-11-05		f	Jurayev\tSuxrob	1	3
5147	2023-09-05		f	Turdiyeva Orzigul	1	3
5148	2023-12-03	INFO	t	Oybek Xushvaqtov	4	1
5149	2023-12-03	INFO	t	Shokhzod Samariddinov	4	3
5150	2023-11-01	INFO	t	Bakhtiyorova Bakhora	1	3
5151	2023-12-04	INFO	t	Aminov Sherozbek	2	3
5152	2023-12-04	INFO	t	Buriyev Akmaljon	2	3
5153	2023-12-06	INFO	t	Sulaymanov Raxmanberdi	4	3
5154	2023-12-07		f	Go'bayeva Umida	4	3
5155	2023-12-07		t	Davurov Kobil	4	3
5156	2023-12-07		f	Eshmuradov Ulug'bek 	4	3
5157	2023-12-07		f	Javmanov Jamshed	4	3
5158	2023-12-07		f	Xamrayev Arslon 	4	3
5159	2023-12-07		f	Sattarov Zayniddin	4	3
5160	2023-12-07		f	Usmonova Lola	4	3
5161	2023-12-07		t	Mardanov Nodirjon	4	3
5162	2023-08-05	INFO	f	Davronova Zarina	1	3
5163	2023-08-05		t	Davronov Asilbek	1	3
5164	2023-08-05		f	Davronov Suhrob	1	3
5165	2023-08-05		f	Davronova Zarina	1	3
5166	2023-12-05		f	Rajabboyev Farid	1	3
5167	2023-12-05		f	Jo'rayeva Shoxisanam	1	3
5168	2023-08-05	INFO	t	Davronov Asilbek	1	3
5169	2023-11-20		f	Murodov Farruh	1	3
5170	2023-11-11	INFO	t	Xolmonov Behzod	1	3
5171	2023-11-11		f	Isanova Zamira 	1	3
5172	2023-11-11		f	Tagayev Shuxratjon 	1	3
5173	2023-11-11		f	Fayziyeva Mu’tabar 	1	3
5174	2023-11-11		f	Jabborov Moxsud 	1	3
5175	2023-11-11		f	Nosirova Muxayyo 	1	3
5176	2023-11-11		f	Vahobov Azizjon 	1	3
5177	2023-11-11		f	Fozilova Nargiza 	1	3
5178	2023-11-11		f	Salimova Ozoda 	1	3
5179	2023-11-11		f	Petrova Natalya 	1	3
5180	2023-11-11		f	Salimova Firuza 	1	3
5181	2023-11-11		f	Sharipova Umeda	1	3
5182	2023-11-11		f	Urunov Baxtiyor 	1	3
5183	2023-11-11		f	Bazarova Matluba	1	3
5184	2023-11-11		f	Rustamova Dilfuza 	1	3
5185	2023-11-11		f	Dustmurodov G’ayrat 	1	3
5186	2023-11-11		f	Xamdamov Ozodjon	1	3
5187	2023-11-11		f	Quchqorov Asqar 	1	3
5188	2023-12-09	INFO	f	Bozorov\tYodgor	1	6
5189	2023-12-09	INFO	t	Pulatov\tPulat	1	6
5190	2023-12-11	INFO	t	Kaxramonov Muhammadrozik	2	3
5191	2023-12-11	INFO	t	Shadiyev Muhammadyusuf	2	3
5192	2023-12-11	INFO	t	Kazimov Kozimjon	2	3
5193	2023-12-11	INFO	f	Jumayev Jasur	1	3
5194	2023-12-11		f	Ruziboyev Firdavs	1	3
5195	2023-12-11		f	Baydullayev Dilshod	1	3
5196	2023-12-11		f	Farhodov Parviz	1	3
5197	2023-12-11		f	Baxtiyorov Amirjon	1	3
5198	2023-12-11		f	Davronov Isroil	1	3
5199	2023-12-11		f	Toxirov Azim	1	3
5200	2023-12-11		f	Ne'matullayev Azim	1	3
5201	2023-12-11		f	Qo'ziyev Begalijon	1	3
5202	2023-12-11		f	Xakimov Muso	1	3
5203	2023-12-11		f	Abdulaxatov Feruz	1	3
5204	2023-12-11		f	Shahovaddinov Sunnat	1	3
5205	2023-12-11		f	Mirsoliyeva Noila	1	3
5206	2023-12-11	INFO	f	Islomov Bekali	1	3
5207	2023-12-11		f	Abdulaxatov Feruz	1	3
5208	2023-12-11		f	Ne'matullayev Husniddin	1	3
5209	2023-12-11		f	Hamroyev Ulug'bek	1	3
5210	2023-11-30	INFO	t	Maxmudjonova Parizoda	2	3
5211	2023-11-30		f	Qanahatova Navbahor	2	3
5212	2023-11-30		f	Ulug'bekov Asilbek	2	3
5213	2023-11-30		f	Sharofiddinov Jaxongir	2	3
5214	2023-11-30		f	Shukurullayev Farrux	2	3
5215	2023-11-30		f	Tursunova Mohisimo	2	3
5216	2023-11-30		f	Ergasheva Lola	2	3
5217	2023-11-30		f	Elimova Zarnigor	2	3
5218	2023-08-17		f	Abdulxayeva Maxzuna	2	3
5219	2023-12-12	INFO	t	Davronov Dilmurod	1	6
5220	2023-10-16		f	Yakubov Azizbek	1	1
5221	2023-12-11	INFO	t	Kambaraliyev Muxammadali	2	3
5222	2023-12-11		f	Sobirov Ibragim	2	3
5223	2023-12-09	INFO	f	Ibragimova Marjona	1	6
5224	2023-12-02	INFO	f	Suvonova Zilola	1	3
5225	2023-12-16	INFO	t	Murodqulov Damirjon	2	7
5226	2023-12-18	INFO	t	Muinov Laziz	2	3
5227	2023-12-18		f	Uktamova Gulbaxor	2	3
5228	2023-12-18		t	Isayev Sayid	2	3
5229	2023-12-18		f	Erkinova Sarvarabonu	2	3
5230	2023-12-18		t	Nazarov Doniyorjon	2	3
5231	2023-12-18		t	Toxirov Shoxsuvor	2	3
5232	2023-12-18		t	Mardonkulov Samirshox	2	3
5233	2023-12-05	INFO	t	Mashrab Sharipov	4	3
5234	2023-12-18	INFO	t	Maxmarimov Ozodbek	2	5
5235	2023-12-18	INFO	t	Maxmadkulov Mirsaid	2	5
5236	2023-12-09	INFO	f	Mediyeva Fotimaniso	1	6
5237	2023-12-16	INFO	f	Ashurov Adiz	1	3
5238	2023-12-16		f	Ilhomov Asadbek	1	3
5239	2023-12-16		t	Abduraxmonov Shahrizod	1	3
5240	2023-12-16		f	Xolboyev Umidjon	1	3
5241	2023-12-16		f	Abdullayev Ulug'bek	1	3
5242	2023-12-16		f	Abdullayeva Anisa	1	3
5243	2023-12-16		f	Rayimqulov Quvonchbek	1	3
5244	2023-12-16		f	Abduraxmonova Sevinch	1	3
5245	2023-12-16		f	Akramov Iftixor	1	3
5246	2023-12-16		f	Mardonkulov Faridun	1	3
5247	2023-12-16		f	Nabilloyev Farruxbek	1	3
5248	2023-09-09		f	Jo'rayev Sardor	1	2
6695	2024-08-24	INFO	t	asdf	4	3
5250	2023-12-20	INFO	t	Zakirov Zarruh	2	5
5251	2023-12-20		f	Tuychiev Shoxjaxon	2	5
5252	2023-12-20		f	Abdullaev Shaxruz	2	5
5253	2023-12-20		f	Axmedov Aslbek	2	5
5254	2023-12-20		f	Azodov Elmurod	2	5
5255	2023-12-20		f	Seyranan Artem	2	5
5256	2023-11-15	INFO	t	Shodmanov Otabek	1	3
5257	2023-09-22	INFO	t	Nurtdenova Dilafruz 	1	3
5258	2023-11-30	INFO	t	O'talova Maftuna	1	3
5259	2023-11-30		f	Maxmudova Dildora	1	3
5260	2023-11-30		f	Ibragimov Javohirxon	1	3
5261	2023-11-30		f	Ibragimov Saidahrorxon	1	3
5262	2023-11-30		f	Jo'liyev Kamron	1	3
5263	2023-11-30		f	Ro'ziyev Firdavs	1	3
5264	2023-11-30		f	Xudayberdiyeva Odina	1	3
5265	2023-11-30		f	Abdusamatova Farangiz	1	3
5266	2023-11-30		f	Ergashev Asadbek	1	3
5267	2023-11-30		f	Maksumov Begzod	1	3
5268	2023-11-30		f	Xamrayeva Mahliyo	1	3
5269	2023-11-30		f	Begimqulov Mexroj	1	3
5270	2023-11-30		f	Holmirzayev Abbos	1	3
5271	2023-11-30		f	Tolibjonova Rayxona	1	3
5272	2023-11-30		f	Nurullayeva Nozanin	1	3
5273	2023-12-01	INFO	t	Toshmuradova Mohigul	3	3
5274	2023-12-01	INFO	t	Xakimova Ra'no	3	3
5275	2023-12-01	INFO	t	Rabbimova Dilbar	3	3
5276	2023-12-01	INFO	f	Isroilov Oybek	3	3
5277	2023-12-01	INFO	t	Tilovov Erkin	3	3
5278	2023-12-01	INFO	t	Shodmonova  Gulzoda	3	3
5279	2023-12-01	INFO	t	Xasanova Nargiza	3	3
5280	2023-12-01	INFO	t	Suvonova Nargiza	3	3
5281	2023-12-01	INFO	t	Tilovov Shermamat	3	3
5282	2023-12-01	INFO	t	Turayeva Dilafruz	3	3
5283	2023-12-01	INFO	t	Omonov Shuxrat	3	3
5284	2023-12-01	INFO	t	Pardayev Begboy	3	3
5285	2023-12-01	INFO	t	Narzullayev  Safobek	3	3
5286	2023-12-01	INFO	t	Allayorova Sevara	3	3
5287	2023-12-01	INFO	t	Ruziyev G'ulomjon	3	3
5288	2023-12-01	INFO	t	Bobokulova Laylo	3	3
5289	2023-12-01	INFO	t	Norqulova  Muhayyo	3	3
5290	2023-12-01	INFO	t	Komolova Mohinur	3	3
5291	2023-12-01	INFO	t	Gafforova Sadoqat	3	3
5292	2023-12-01	INFO	t	Ruziyeva Aziza	3	3
5293	2023-12-01	INFO	t	Xudoyberdiyeva Nigora	3	3
5294	2023-12-01	INFO	t	Quvonova Mavluda	3	3
5295	2023-12-01	INFO	t	Saparova Dilnoza	3	3
5296	2023-12-01	INFO	t	Usmonova Mavjuda	3	3
5297	2023-12-01	INFO	t	Toshmuradova Mohigul	3	3
5298	2023-12-01		f	Toshmuradova Mohigul	3	3
5299	2023-12-01		f	Xakimova Ra'no	3	3
5300	2023-12-01		f	Rabbimova Dilbar	3	3
5301	2023-12-01		f	Isroilov Oybek	3	3
5302	2023-12-01		f	Tilovov Erkin	3	3
5303	2023-12-01		f	Shodmonova  Gulzoda	3	3
5304	2023-12-01		f	Xasanova Nargiza	3	3
5305	2023-12-01		f	Suvonova Nargiza	3	3
5306	2023-12-01		f	Tilovov Shermamat	3	3
5307	2023-12-01		f	Turayeva Dilafruz	3	3
5308	2023-12-01		f	Omonov Shuxrat	3	3
5309	2023-12-01		f	Pardayev Begboy	3	3
5310	2023-12-01		f	Narzullayev  Safobek	3	3
5311	2023-12-01		f	Allayorova Sevara	3	3
5312	2023-12-01		f	Ruziyev G'ulomjon	3	3
5313	2023-12-01		f	Bobokulova Laylo	3	3
5314	2023-12-01		f	Norqulova  Muhayyo	3	3
5315	2023-12-01		f	Komolova Mohinur	3	3
5316	2023-12-01		f	Gafforova Sadoqat	3	3
5317	2023-12-01		f	Ruziyeva Aziza	3	3
5318	2023-12-01		f	Xudoyberdiyeva Nigora	3	3
5319	2023-12-01		f	Quvonova Mavluda	3	3
5320	2023-12-01		f	Saparova Dilnoza	3	3
5321	2023-12-01		f	Usmonova Mavjuda	3	3
5322	2023-12-01		f	Toshmuradova Mohigul	3	3
5323	2023-12-05		f	Turayeva Gulhayyo	3	3
5324	2023-12-05		f	Yakubova Oygul	3	3
5325	2023-12-05		f	Usmanova Dilorom	3	3
5326	2023-12-05		f	Xatamova Dilfuza	3	3
5327	2023-12-05		f	Sheraliyeva Shodiya	3	3
5328	2023-12-05		f	Xudoyberdiyeva Muxlisa	3	3
5329	2023-12-05		f	Nurmatova Nigora	3	3
5330	2023-12-05		f	Butayeva Shaxnoza	3	3
5331	2023-12-05		f	Qilichova Dilshoda	3	3
5332	2023-12-05		f	Botirova Shaxnoza	3	3
5333	2023-12-05		f	Norbekova Matluba	3	3
5334	2023-12-05		f	Xaydarova Ra'no	3	3
5335	2023-12-05		f	Xaydarova Marxabo	3	3
5336	2023-12-05		f	Tog'ayeva Dilnoza	3	3
5337	2023-12-05		f	Mardanova Uroloy	3	3
5338	2023-12-05		f	Axmirzayev Bobomurod	3	3
5339	2023-12-05		f	Quziyeva Matluba	3	3
5340	2023-12-05		f	Xolbayeva Nilufar	3	3
5341	2023-12-05		f	Tuxtayeva Nargiza	3	3
5342	2023-12-05		f	Jo'rayeva Dilfuza	3	3
5343	2023-12-05		f	Xasanova Komila	3	3
5344	2023-12-05		f	Botirova Zulfiya	3	3
5345	2023-12-05		f	Suyunova Sayyora	3	3
5346	2023-12-05		f	Usamanova Zilola	3	3
5347	2023-12-05		f	Botirova Zubayda	3	3
5348	2023-12-05		f	Shaymanova Dilorom	3	3
5349	2023-12-05		f	Muhammadiyeva Shahnoza	3	3
5350	2023-12-05		f	Usmanova Roxila	3	3
5351	2023-12-05		f	Turkmanova Dilnoza	3	3
5352	2023-12-05		f	Xaydarova Kamola	3	3
5353	2023-12-05		f	Ismoilova Feruza	3	3
5354	2023-12-05		f	Norboyeva O'g'iloy	3	3
5355	2023-12-05		f	Xolmuminova Mayram	3	3
5356	2023-12-05		f	Malikulova Gulmira	3	3
5357	2023-12-05		f	Abduxakimova Durdona	3	3
5358	2023-12-05		f	Davlatova Gullola	3	3
5359	2023-12-05		f	Rasulov Temur	3	3
5360	2023-11-22		f	Saidahmadov Akmal	1	3
5361	2023-12-22		f	Rahmonov Bahrom	1	3
5363	2023-12-20	INFO	t	Kutfidinov Burxon	2	6
5364	2023-12-20		f	Jo'raqulov to'rabek	1	3
5365	2023-12-20		f	Akparov Asadbek	1	3
5366	2023-12-20		f	Tursunboyev Frunza	1	3
5367	2023-12-20		f	Abduxafizova Dildora	1	3
5368	2023-12-20		f	Raimov Bekzot	1	3
5369	2023-12-20		f	Xamrokulov Shaxzod	1	3
5370	2023-12-20		f	Diyorov Jamshid	1	3
5371	2023-12-20		f	Eshmamatov Muxsin	1	3
5372	2023-12-20		f	Abdug'forov Asilbek	1	3
5373	2023-12-20		f	Izatullayev Nurmuhammad	1	3
5374	2023-12-20		f	Yaxshilikov Ulug'bek	1	3
5375	2023-12-20	INFO	t	Abdugafurov Asilbek	1	3
5376	2023-11-11		f	Shodiyev Jamoliddin	1	3
5377	2023-11-11	INFO	f	Djumayev Uzoq	1	3
5378	2023-11-11		f	Gaybullayev Xoshimjon	1	3
5379	2023-11-11		f	Bultakov Feruz	1	3
5380	2023-11-11		f	Xandamov Abduvohid	1	3
5381	2023-11-11		f	Musurmonov Fozil	1	3
5382	2023-11-11		f	O'rozov Mansur	1	3
5383	2023-11-11		f	Mustafayev Abror	1	3
5384	2023-11-11		f	Balkiyev Akram	1	3
5385	2023-11-11		f	Shukurov Ergash	1	3
5386	2023-11-11		f	Mixliboyev Saloxiddin	1	3
5387	2023-11-11		f	Xolmanov Ilyos	1	3
5388	2023-11-11		f	Nazarov Uktam	1	3
5389	2023-11-11		f	Eshaliyeva Roxiya	1	3
5390	2023-11-18		f	Eshimov Murodulla	1	3
5391	2023-11-18		f	Axmedov Habib	1	3
5392	2023-11-18		f	Adilov  Alisher	1	3
5393	2023-11-18		f	Ismoilov Ulug'bek	1	3
5394	2023-11-18		f	Alaviddinov Nursaid	1	3
5395	2023-11-18		f	Usarova Charos	1	3
5396	2023-11-18		f	Ergashev Odil	1	3
5397	2023-11-18		f	Muhiddinov Muhammad	1	3
5398	2023-11-18		f	Uraqov Muxtor	1	3
5399	2023-11-18		f	Shodiyev Ulashboy	1	3
5400	2023-11-18		f	Muqimov Kamoliddin	1	3
5401	2023-11-18		f	Suyunov Husniddin	1	3
5402	2023-11-18		f	Bobomurodov Alisher	1	3
5403	2023-11-18		f	Ibragimov Rahmiddin	1	3
5404	2023-11-18		f	Yo'ldosheva Nodira	1	3
5405	2023-11-18		f	Bozorov Kamoliddin	1	3
5406	2023-12-02		f	Boboyev Olimjon	1	3
5407	2023-12-02		f	Sayduvaliyev Umid	1	3
5408	2023-12-02		f	Abdurasulova Nafisa	1	3
5409	2023-12-02		f	Jurayev Utkir	1	3
5410	2023-12-02		f	Akramov Ashrafjon	1	3
5411	2023-12-02		f	Mirzoqodirov Oybek	1	3
5412	2023-12-02		f	Xubbimov Raxmat	1	3
5413	2023-12-02		f	Shodmonov Elyor	1	3
5414	2023-12-02		f	Irzayev Ulug'bek	1	3
5415	2023-12-02		f	Sanaqulov Orzi	1	3
5416	2023-12-02		f	Tovboyeva Umida	1	3
5418	2023-12-02	INFO	t	Abdiyev Murodjon	1	3
5419	2023-12-02		f	Kubayev Turdimurot	1	3
5420	2023-12-02		f	Raximova Shaxodat	1	3
5421	2023-12-02		f	Suvanov Bexruz 	1	3
5422	2023-12-02		f	Norkulov Zoir	1	3
5423	2023-12-02		f	Amonova Nargiza	1	3
5424	2023-12-02		f	Shukurova Dilbar	1	3
5425	2023-12-02		f	Norqulov Abdulla	1	3
5426	2023-12-02		f	Turdaliyev Eldor	1	3
5427	2023-12-28		f	Turayeva Gulhayyo	3	3
5428	2023-12-28		f	Yakubova Oygul	3	3
5429	2023-12-28		f	Usmanova Dilorom	3	3
5430	2023-12-28		f	Xatamova Dilfuza	3	3
5431	2023-12-28		f	Sheraliyeva Shodiya	3	3
5432	2023-12-28		f	Xudoyberdiyeva Muxlisa	3	3
5433	2023-12-28		f	Nurmatova Nigora	3	3
5434	2023-12-28		f	Butayeva Shaxnoza	3	3
5435	2023-12-28		f	Qilichova Dilshoda	3	3
5436	2023-12-28		f	Botirova Shaxnoza	3	3
5437	2023-12-28		f	Norbekova Matluba	3	3
5438	2023-12-28		f	Qurbanova Zebiniso	3	3
5439	2023-12-28		f	Butayeva Gulnora	3	3
5440	2023-12-28		f	Malikova Dilafruz	3	3
5442	2023-12-28	INFO	f	Usmanova Aziza	3	3
5443	2023-12-28		f	Quldosheva Gulshanoy	3	3
5444	2023-12-28		f	Boboyeva Salima	3	3
5445	2023-12-28		f	Yusupova Sarvinoz	3	3
5446	2023-12-28		f	Ruziyeva Nargul	3	3
5447	2023-12-28		f	Qorjovova Feruza	3	3
5448	2023-12-28		f	Abdullayeva Go'zal	3	3
5449	2023-12-28		f	Doniyorova Nasiba	3	3
5450	2023-12-28		f	Xasanova Gulsarvi	3	3
5451	2023-12-28		f	Abdusattorova Go'zal	3	3
5452	2023-12-28		f	Abdusattorova Muxlisa	3	3
5453	2023-12-28		f	Sultonova Sharofat	3	3
5454	2023-12-28		f	Qurbonova Dilorom	3	3
5455	2023-12-28		f	Janiyeva Nodira	3	3
5456	2023-12-28		f	Norboyeva Nasiba	3	3
5457	2023-12-28		f	Norqabulova Nargiza	3	3
5458	2023-12-28		f	Ergashova Lola	3	3
5459	2023-12-28		f	Rasulova Gulnoza	3	3
5460	2023-12-28		f	Sharipova Muxlisa	3	3
5461	2023-12-28		f	Parchayeva Maxbuba	3	3
5462	2023-12-28		f	Ruziyeva Jang'iloy	3	3
5463	2023-12-28		f	Achilova Matluba	3	3
5464	2023-12-28		f	Utasheva Shoxida	3	3
5465	2023-12-28		f	Boymurodova Feruza	3	3
5466	2023-12-28		f	Xoliqova Dilfuza	3	3
5467	2023-11-20	INFO	f	Aliev Elshan 	2	5
5468	2023-11-20		f	Mansurjonov Marufxon	2	5
5469	2023-11-20		f	Majidov Yusufxon	2	5
5470	2023-12-28	INFO	f	Xoliyorova Sobira	3	3
5471	2023-12-28		f	Xaliqulova Muborak	3	3
5472	2023-03-01		f	Shopurov Muhammad	1	2
5473	2023-03-01		f	Salimova Nigina	1	2
5474	2023-12-20	INFO	t	Shomurodov Ikrom	1	6
5475	2023-12-02	INFO	f	Zokirov Inomjon	1	3
5476	2023-12-12	INFO	f	Eshpo'latov Jahongir	1	3
5477	2023-12-20		f	Xolmurodova Orastabonu	1	3
5478	2023-12-20		f	Samatov Akrom	1	3
5479	2023-12-20		f	Xonimqulov Sardor	1	3
5480	2023-12-20		f	Eshpo'latov Azizbek	1	3
5481	2023-12-20		f	Fayzullayev Javohir	1	3
5482	2023-12-20		f	Usanova Gulshan	1	3
5483	2023-12-20		f	Alisherova Dinora	1	3
5484	2023-12-20		f	Qayumov Fazliddin	1	3
5485	2023-12-20		f	Tangirova Marjona	1	3
5486	2023-12-20		f	Mirzaqulova Jasmina	1	3
5487	2023-12-20		f	Yoqubov Samandar	1	3
5488	2023-12-20		f	Pardaboyev Sanjarbek	1	3
5489	2023-12-25		f	Pardaboyev Sanjarbek	1	3
5490	2023-12-20		f	Jonzoqov Sherzod	1	3
5491	2023-12-25		f	Axralov Azamat	1	3
5492	2023-12-20		f	Xurozboyev Olmos	1	3
5493	2023-12-25		f	O'rolov Ikrom	1	3
5494	2023-12-20		f	Abdumannatova Sevinch	1	3
5495	2023-12-20		f	O'rolov Kamronbek	1	3
5496	2023-12-20		f	Xamrayev Abdulla	1	3
5497	2023-12-20		f	Zayniddinov Sardor	1	3
5498	2023-12-26		f	Murotov Axror	1	3
5499	2023-12-20		f	Sirojjidinov Tursunboy	1	3
5500	2023-12-20		f	Muzaffarov Diyorbek	1	3
5501	2023-12-20		f	Qahharov Jamshid	1	3
5502	2023-12-20		f	Sharofov Ziyonur	1	3
5503	2023-12-20		f	Ne'matullayev Shoxrux	1	3
5504	2023-12-20		f	Lapasov G'anisher	1	3
5505	2023-12-20		f	Bozorov Shohjahon	1	3
5506	2023-12-20		f	Ismoilov Shaxriyor	1	3
5507	2023-12-20		f	Saydullayev Shoxdiyor	1	3
5508	2023-12-20		f	Xo'jamqulov Alimbek	1	3
5509	2023-12-20		f	Xabibullayev Azizbek	1	3
5510	2023-12-20		f	Xoshimxonov Saidfotix	1	3
5511	2023-12-20		f	Eshbekov Bekbota	1	3
5512	2023-12-20		f	Aktamov Shaxboz	1	3
5513	2023-12-20		f	Aktamov Shaxboz	1	3
5514	2023-12-20		f	Anvarov Umid	1	3
5515	2023-12-20		f	Ummatova Sevara	1	3
5516	2023-12-20		f	Saydahmadov Sardor	1	3
5517	2023-12-20		f	Xamrayeva Maftuna	1	3
5518	2023-12-20		f	Xakimov Elmurod	1	3
5519	2023-12-25		f	Abduvoitov Alisher Shavkatovich	1	1
5520	2023-10-15		f	Abduvoitov Alisher Shavkatovich	1	10
5521	2023-11-25		f	Abduvoitov Alisher Shavkatovich	1	2
5522	2023-12-15		f	Muminova Iroda	1	3
5523	2023-12-15		f	Sharofov Azimjon	1	1
5524	2023-12-15		f	Toshtemirov Jasur	1	1
5525	2023-12-15		f	Duvlanov Jamshid	1	6
5526	2023-11-15		f	Bo'riboyev Shavkat	1	3
5527	2024-01-05	INFO	f	Abduvoitov Alisher Shavkatovich	1	8
5528	2023-12-15		f	Toxirov Shohjahon	1	4
5529	2023-11-20		f	Oromova Feruzabonu	1	3
5530	2023-11-20		f	Oromov Rustam	1	3
5531	2023-11-20		f	Ishonqulov A'zambek	1	3
5532	2023-11-20		f	Djumayeva Tulg'anoy	1	3
5533	2023-11-20		f	Sattarova Nozima	1	3
5534	2023-11-20		f	Boysarov Daler	1	3
5535	2023-11-20		f	Muhammadiyev Sardor	1	3
5536	2023-11-20		f	Muhammadiyev Sarvar	1	3
5537	2022-12-12	INFO	f	Eshpo'latov Jahongir	1	3
5542	2023-11-17	INFO	t	Nurmuhammad Soibjamalov	2	3
5543	2023-11-17		t	Saxriddinov Navruz	2	3
5544	2023-11-17		f	Nodirov Akmal	2	3
5545	2023-11-17	INFO	t	Shermanov Behruz	2	3
5546	2023-11-17		f	Qozoqboyeva Dilnura	2	3
5547	2023-10-03	INFO	t	Abdumalikov Nurislom	2	3
5548	2023-10-03		f	 Abdusamatov Shoxjahon	2	3
5550	2023-11-11	INFO	t	Raximov Daler	2	3
5553	2023-12-20		t	Axmadov Zarrux	2	3
5554	2023-12-20		t	Ilhomjonov  Zafar	2	3
5555	2023-12-20		t	Abduvoxidov  Iftixor	2	3
5556	2023-08-30	INFO	f	Eshquvvatova Yulduz	1	1
5557	2023-11-01	INFO	f	Hamdamov Ulug'bek	1	3
5558	2023-11-01		f	Arzikulova Elnora	1	3
5559	2023-11-01		f	Ibragimova Maftuna	1	3
5560	2023-11-01		f	Abdullin Ruslan	1	3
5561	2023-11-01		f	Shomuorodov Umidjon	1	3
5562	2023-11-01		f	Mirzayeva Dilorom	1	3
5563	2023-11-30	INFO	f	Nazarov Laziz  	1	3
5564	2023-11-30		f	Boqiyeva Barno	1	3
5565	2023-11-30		f	 Xudoyberdiyeva Fazilat	1	3
5566	2023-01-05	INFO	t	Salaydinova Xumora	1	3
5567	2024-01-03	INFO	t	Ochilova Malika	1	3
5568	2024-01-03		f	Mahmudova Jasmina	1	3
5569	2024-01-03		f	Hayitova Shabnam	1	3
5570	2024-12-18		f	Saidahmadov Akmal	1	3
5573	2024-01-04	INFO	t	Rahmonov Bahrom	1	3
5574	2024-01-04	INFO	t	Rahmonov Bahrom	1	3
5575	2024-01-04	INFO	t	Saidahmadov Akmal	1	3
5576	2024-01-08	INFO	t	Kurbonnazarov Otabek	2	3
5577	2024-01-08	INFO	t	Usmonov Shaxboz	2	3
5578	2024-01-08	INFO	f	Arslonova Moxsanam	2	3
5579	2024-01-08	INFO	t	Ravshanov Faris	2	3
5580	2023-12-15	INFO	f	Xodjamova Munisa	2	3
5581	2024-01-08	INFO	f	Muxtoraliyeva Ruxshona	2	3
5582	2024-01-08	INFO	t	Ummatov Timur	2	3
5583	2023-12-25	INFO	f	Odilova Farzona	2	3
5584	2023-10-10	INFO	t	Isomiddinov Muhammad	1	3
5585	2023-10-10		f	Isomiddinov Mirzabek	1	3
5586	2023-10-04		f	Mehriddinova Vazira	1	3
5587	2023-11-04		f	Otamurodova Sitora	1	3
5588	2023-11-04		f	Otamurodov Sarvar	1	3
5589	2023-11-04		f	Abalova Olmaxon	1	3
5590	2023-10-10		f	Saydullayev Quvonchbek	1	3
5591	2023-10-10		f	Sultonova Dilafruz	1	3
5592	2023-09-15		f	Primova Nafosat	3	3
5593	2023-09-15		f	Hakimova Munira	3	3
5594	2023-09-15		f	Boltayeva Nigora	3	3
5595	2023-09-15		f	Salaev Shoxrux	3	3
5596	2023-09-15		f	Shonazarova Shaxnoza	3	3
5597	2023-09-15		f	Tursunova Husnora	3	3
5598	2023-09-15		f	Narzullayeva Zulfiya	3	3
5599	2023-09-15		f	Xudoyqulova Moxigul	3	3
5600	2023-09-15		f	Turaqulova Nodira	3	3
5601	2023-09-15		f	Eshonkqulova Gulchexra	3	3
5602	2023-09-15		f	Qodirova Shoxida	3	3
5603	2023-09-15		f	Parmanova Munojat	3	3
5604	2023-09-15		f	Baxriddinova Ozoda	3	3
5605	2023-09-15		f	Botirova Dilnoza	3	3
5606	2023-11-20		f	Kamolov Sanjar	1	3
5607	2023-11-20		f	Po`latova Marjona	1	3
5608	2023-12-25		f	Bekmurodova Savinch	1	3
5609	2023-12-25		f	Xudoyberdiyeva Farangiz	1	3
5610	2023-12-25		f	Jumayeva Mahliyo	1	3
5611	2023-12-25		f	Toirov Sherzod	1	3
5612	2023-12-25		f	Xasanova Zulayho	1	3
5613	2023-12-25		f	Muhammadiyeva Hulkaroy	1	3
5614	2023-11-20		f	Jabborova Xulkar	2	3
5615	2023-11-20		f	Ro’ziboyeva Shaxzoda	2	3
5616	2023-11-20		f	Shodiyeva Dilbar	2	3
5617	2023-11-20		f	Turaeva Shoxida	2	3
5618	2023-11-20		f	Ergashova Maxfuza	2	3
5619	2023-11-20		f	Mexmonova Charos	2	3
5620	2023-11-20		f	Usmonova Ayruza	2	3
5621	2023-11-20		f	Turaeva Munisa	2	3
5622	2023-11-20		f	Muxiddinova Zarina	2	3
5623	2023-11-20		f	Zoyirova Muyassar	2	3
5624	2023-11-20		f	Tangirova Dilrabo	2	3
5625	2023-11-20		f	Esanova Sayyora	2	3
5626	2023-12-24		f	Ergashova Zarnigor	2	3
5627	2023-12-24		f	Eshnazarova Muxlisa	2	3
5628	2023-12-24		f	Baratova Iroda	2	3
5629	2023-12-24		f	Usmonova Muyassar	2	3
5630	2023-12-24		f	Jumayeva Maloxat	2	3
5631	2023-12-24		f	Jumayeva Maloxat	2	3
5632	2023-12-24		f	Doniyeva Barchinoy	2	3
5633	2023-12-24		f	Otamurodova Dilorom	2	3
5634	2023-12-24		f	Shovxiyeva Zuhra	2	3
5635	2023-12-24		f	Xayitova Maxliyo	2	3
5636	2023-07-28	INFO	t	Tolibov Jaxongir	1	2
5637	2023-12-20	INFO	t	Mediyev Salmonbek	1	4
5638	2023-12-20		f	Musinova Hamrobonu	1	6
5639	2024-01-22	INFO	f	Salomov Mironshox	1	6
5640	2023-11-16	INFO	t	Dilshodbek Ahmadov	1	1
5641	2024-01-15	INFO	f	Iskandarova Sabrina	2	3
5642	2024-01-15		f	Mamasoliyeva Shabbona	2	3
5643	2024-01-15		f	Mamasoliyeva Xolida	2	3
5644	2024-01-15		t	Jabborov Behruz	2	3
5645	2024-01-15		f	Buriboyeva Pokiza	2	3
5646	2024-01-15		f	Normamatova Saidaxon	2	3
5648	2024-01-15		t	Dustmurodov Og'abek	2	3
5649	2024-01-15		t	Hasanov Dilshod	2	3
5650	2024-01-15		t	Qulmurodov Jahongir	2	3
5651	2024-01-15		f	Xazratova Shabnam	2	3
5652	2024-01-15		t	Tuxtayev Timur	2	3
5653	2024-01-15		t	Ulmasov lazizjon	2	3
5654	2024-01-15		t	Akramov Amirjon	2	3
5655	2024-01-15		f	Abduraxmanova Shirin	2	3
5656	2024-01-15		t	Rustamov Doston	2	3
5657	2024-01-15		f	Merojiddinova Nilufar	2	3
5658	2024-01-15		t	Matlabjonov Xasan	2	3
5660	2024-01-15		t	Matlabjonov Jasur	2	3
5661	2023-11-07	INFO	t	San'at  Bozorov	2	3
5662	2023-11-07		t	Donyor  Qurbonov	2	3
5663	2023-11-07		t	Ismat  Turg'unov	2	3
5664	2023-11-07		t	Rustam  Norjigitov	2	3
5665	2023-11-07		t	Muhammad Meliqulov	2	3
5666	2023-10-02	INFO	t	Abdusamatov Shoxjahon	2	3
5667	2024-01-08	INFO	t	Rustamov Fayozbek	2	3
5669	2023-12-01		t	Alisherov Kamron	2	3
5670	2023-12-01		f	Maxmudova  Shahinabonu	2	3
5671	2023-12-01		f	Abdujamolov Faxrillo	2	3
5672	2023-11-15		t	Baxtiyorov Fariz	2	3
5673	2024-01-09		t	Shirinqulov Shaxram 	2	3
5674	2024-01-09		t	Usarov Kamronbek	2	3
5675	2024-01-09		t	Abduraxmonov Islom	2	3
5676	2024-01-08	INFO	t	Abduraxmonov Nurmuhammadxon 	2	3
5678	2024-01-16	INFO	t	Shodiyor Salaydinov	4	3
5679	2024-01-16	INFO	t	Rajabov Firdavs	1	2
5680	2024-01-17	INFO	t	Fayzilloyev Laziz	1	3
5681	2024-01-18	INFO	t	Baxtiyorov Xasan	1	6
5682	2024-01-18	INFO	t	Ilxomov Bexruz	1	6
5683	2023-07-22	INFO	t	\tIlxomov Bexruz	1	3
5684	2024-01-18	INFO	t	Ilhomov Bexruz	1	6
5685	2023-07-22	INFO	t	Ilhomov Bexruz	1	3
5686	2023-10-15	INFO	t	Izzatillayev Shahzod	4	3
5687	2023-10-15	INFO	t	Izzatillayev Shahzod	1	3
5688	2023-10-15	INFO	t	Najimov  Mirabbos	1	3
5689	2024-01-20	INFO	t	Akromov O'lmas	1	2
5690	2022-10-22		f	Radjabov Botirjon	1	3
5691	2023-10-09		f	Radjabov Botirjon	1	2
5692	2024-01-20	INFO	f	Murtazayev Ozodbek	1	1
5694	2023-01-09	INFO	t	Shermamatov Islom	2	3
5695	2024-01-09		f	Umarov Samir	2	3
5696	2024-01-09		f	Abdusamotov Shohjahon	2	3
5697	2024-01-09		f	Mirvafoyeva Muazzam	2	3
5698	2023-12-30	INFO	t	Hamidov Ilhom 	1	3
5699	2023-12-30		f	Musaeva Umida	1	3
5700	2023-12-30		f	Abduraximov Yodgor 	1	3
5701	2023-12-30		f	Isaev Zokir Inatullaevich	1	3
5702	2023-12-30		f	Usmonova Mexriniso 	1	3
5703	2023-12-30		f	Joʻraqulova Gulnora 	1	3
5704	2023-12-30		f	Jumaev Vahobjon 	1	3
5705	2023-12-30		f	Xudoyqulov Furqat	1	3
5706	2023-12-30		f	Ochilov Bekmurod	1	3
5707	2023-12-30		f	Hayitov Alisher 	1	3
5708	2023-12-30		f	Bobayorov Navruz	1	3
5709	2023-12-30		f	Nabiyev Zuxridin	1	3
5710	2023-12-30		f	Murodimov Uchqun	1	3
5711	2023-12-30		f	Rustamov Zokir 	1	3
5712	2023-12-30		f	Djamolova Lola	1	3
5713	2023-12-30		f	Rayimberdiyev O'lmasjon	1	3
5714	2023-12-30		f	Djuraev Asatullo 	1	3
5715	2023-12-30		f	Djoʻraev Nabijon 	1	3
5716	2023-12-30		f	Hasanova Kibora 	1	3
5717	2023-12-30		f	Ruziev Jaxongir 	1	3
5718	2023-12-30		f	Turdimuradov Davron	1	3
5719	2023-12-30		f	Ashiraliev Oʻktam	1	3
5720	2023-12-30		f	Tuvalov Shuxrat 	1	3
5721	2023-12-30		f	Toʻraeva Zarina 	1	3
5722	2023-12-30		f	Shodiev Akbar 	1	3
5723	2023-11-25		f	Karshiyeva Gulbaxor	1	3
5724	2023-11-25		f	Alishova Sayida	1	3
5725	2023-11-25		f	Begmanova Dilafruz	1	3
5726	2023-11-25		f	Djurayeva Nasiba	1	3
5727	2023-11-25		f	Xatamova Robiya	1	3
5728	2023-11-25		f	Raxmanqulova Madina	1	3
5729	2023-11-25		f	Kushmonova Zamira	1	3
5730	2023-11-25		f	Ismatova Ozoda	1	3
5731	2023-11-25		f	O'sarova Go'zal	1	3
5732	2023-11-25		f	Xolboyeva Dilfuza	1	3
5733	2023-11-25		f	Urinova Mu'atar	1	3
5734	2023-11-25		f	Eshmamatov Shahriyor	1	3
5735	2023-11-25		f	Bektemirov Bexruz	1	3
5736	2023-11-25		f	Mansurova Dilshoda	1	3
5737	2023-11-25		f	Musayeva Nafisa	1	3
5738	2023-11-25		f	Akramova Umida	1	3
5739	2023-11-25		f	Kubayeva Zamira	1	3
5740	2023-11-25		f	Imamova Feruza	1	3
5741	2023-11-25		f	Farxatova Ruxshona	1	3
5742	2023-11-25		f	Abjalova Marg'uba	1	3
5743	2023-11-25		f	Qarshiboyeva Gullola	1	3
5744	2023-11-25		f	Xamidova Rayhona	1	3
5745	2023-11-25		f	Tuxboyeva Gulmira	1	3
5746	2023-11-25		f	Baydullayeva Navruza	1	3
5747	2023-11-25		f	Islomova Feruza	1	3
5748	2023-11-25		f	Raxmonova Zilola	1	3
5749	2024-01-10	INFO	t	Fayzilloyev Laziz	2	3
5750	2024-01-22	INFO	t	Xamrokulov Amir	2	3
5751	2024-01-22		t	Narzilloyev Sardorbek	2	3
5752	2024-01-22	INFO	t	Gulyamov Erkin	2	3
5753	2023-10-06		t	Shodikulov Aziz	2	3
5754	2024-01-22	INFO	t	Asliddinov Zahiriddin	1	1
5755	2024-01-22	INFO	t	Asliddinov Zahiriddin	1	1
5756	2023-12-24	INFO	t	Xolmirzayeva Maftuna	1	6
5757	2023-10-16	INFO	t	Raimov  Zamir	1	1
5758	2023-10-16	INFO	t	Ashurqulov Orzubek	1	1
5759	2023-12-20	INFO	t	Pulatov\tPulat	1	6
5760	2024-02-01	INFO	t	Xadjayeva Dilorom	4	3
5761	2024-02-01		f	Xaqberdiyeva Dilnavoz 	4	3
5762	2024-02-01		f	Amanova Muhabbat	4	3
5763	2024-02-01		f	Hamidullayeva Nigora 	4	3
5764	2024-02-01		f	Turapova Guzal	4	3
5765	2024-02-01		f	Mamatkarimova Nargiza	4	3
5766	2024-02-01		f	Kobilova Charos	4	3
5767	2024-02-01		f	Eshonkulova Fotima 	4	3
5768	2024-02-01		f	Umirzoqov Mizrof	4	3
5769	2024-02-01		f	Samiyeva Zebinso 	4	3
5770	2024-02-01		f	Samiyeva Nilufar 	4	3
5771	2024-02-01		f	Abdurazzaqov Dadaxon	4	3
5772	2024-02-01		f	Pardayeva Ra'no 	4	3
5773	2024-02-01		f	Boymatova Shoira 	4	3
5774	2024-02-01		f	Mamanov Sirojiddin	4	3
5775	2024-02-01		f	Mukumova Saodat 	4	3
5776	2024-02-01	INFO	t	Meliyev Dilshod	2	3
5777	2024-02-01		f	Bobobekov Xusan	2	3
5778	2024-02-01		f	Elmurodov Azizbek 	2	3
5779	2024-02-01		t	Sayfiddinov G'anisher	2	3
5780	2024-01-25	INFO	t	Mamirzayeva Xumoraxon	2	3
5781	2024-02-05	INFO	t	Raxmatov Bekzod	2	3
5782	2024-02-05		f	Azizov Azamat	2	3
5783	2024-02-05		t	Islomov Hasanali	2	3
5784	2024-02-05		t	Tugalov Saydullo	2	3
5785	2024-02-05		t	Murodov Samandar	2	3
5786	2024-02-05		t	Fayzilloyev Abdumalik	2	3
5787	2024-02-05		t	Abrorov Firdavs	2	3
5788	2024-02-05		f	Zubaydullayeva Aziza	2	3
5789	2024-02-05		f	Mamatkulova Husnora	2	3
5790	2024-02-05		t	Hasanov Ulmasjon	2	3
5791	2024-02-05		t	Maxkamov Asadbek	2	3
5792	2024-02-05		f	Sayfiyeva Charos	2	3
6637	2024-09-07	INFO	t	Ismatullayev Ulug'bek	2	2
5794	2024-02-05		t	Erkinov Davlatshox	2	3
5795	2024-02-05		t	Xamrayev Zafar	2	3
5796	2024-02-05		f	Xamrayeva Madina	2	3
5797	2024-02-05		t	Raximjonov Diyor	2	3
5798	2024-02-05		f	Erkinov Jaxongir	2	3
5799	2024-02-05		f	Abdullayev Abdulaziz	2	3
5800	2024-02-05		f	Raimjonova Shaxina	2	3
5801	2024-02-05		t	Shaxobiddinov Qodirbek	2	3
6649	2024-09-13	INFO	t	Ibodullayev Ilxom	2	3
5803	2024-02-05		t	Abdirashidov Do'styor	2	3
5804	2024-02-05	INFO	t	Uzoqov Nodir	2	3
5805	2024-01-03	INFO	t	Iskandarova  Nafosat	3	3
5806	2024-01-03		f	Allamurodova Ozoda	3	3
5807	2024-01-03		f	Ibragimov Anvar	3	3
5808	2024-01-03		f	Jizbayeva Feruza	3	3
5809	2024-01-03		f	Xamrayeva Gullola	3	3
5810	2024-04-03		f	Xasanova Dilbar	3	3
5811	2024-01-03		f	Turayeva Zebiniso	3	3
5812	2024-01-03		f	Shonazarova Gulzora	3	3
5813	2024-01-03		f	Berdiyeva  Zilola	3	3
5814	2024-01-03		f	Mirzayeva Surayyo	3	3
5815	2024-01-03		f	Uzokova Xurshida	3	3
5816	2024-01-03		f	Sadinova Go'zal	3	3
5817	2024-01-03		f	Xasanova Shaxnoza 	3	3
5818	2024-01-03		f	Eshmurzayeva Sayyora	3	3
5819	2024-01-03		f	Xusanova Sojida	3	3
5820	2024-01-03		f	Yoriyeva Shaxnoza 	3	3
5821	2024-01-03		f	Turayeva  Noila	3	3
5822	2024-01-03		f	Usmonova  Moxinur	3	3
5823	2024-01-03		f	Usmonova  Moxinur	3	3
5824	2024-01-03		f	Ruziyeva Surayyo	3	3
5825	2024-01-03		f	Qulinova Zamira	3	3
5826	2023-12-29	INFO	t	Xolmirzayev Abbos	1	3
5827	2023-12-29		f	Suyunov Og'abek 	1	3
5828	2023-12-23		f	Baxridinov  Bekzod	1	3
5829	2023-12-29		f	Xasanov Shoxrux	1	3
5830	2023-12-29		f	Raxmatov Baxrom	1	3
5831	2023-12-29		f	Quvondiqov Firdavs	1	3
5832	2023-12-29		f	Manitov Ibratjon	1	3
5833	2023-12-23		f	Jonzoqov Bexruz	1	3
5834	2023-12-29		f	Raxmatullayev Doston	1	3
5835	2023-12-29		f	Padayev Shavkat	1	3
5836	2023-12-29		f	Bozorboyeva Marjona	1	3
5837	2023-12-29		f	Suyunov Murod	1	3
5838	2023-12-29		f	Hudoyqulov Humoyun	1	3
5839	2023-12-29		f	Hudoyqulov Lazizbek	1	3
5840	2023-12-29		f	Quvondiqov Jayxun	1	3
5841	2023-12-29		f	Baxromov Nurali	1	3
5842	2023-12-29		f	Mavlonov Nurali	1	3
5843	2023-12-29		f	Isrolov Javoxir	1	3
5844	2023-12-29		f	Lapasov Quvonchbek	1	3
5845	2023-12-29		f	Qobilov Og'abek	1	3
5846	2023-12-29		f	Sobirov Eldor	1	3
5847	2024-01-05		f	Baxramov Husniddin 	1	3
5848	2024-01-05	INFO	f	Urinova Dilbar	3	3
5849	2024-01-05		t	Muminova Marhabo	3	3
5850	2024-01-05		f	Muminova Marhabo	3	3
5851	2024-01-05		f	Tuytayeva Nuriya	3	3
5852	2024-01-05		f	Mamarasulova Xolida	3	3
5853	2024-01-05		f	Yusupov Abduqodir	3	3
5854	2024-01-05		f	Hamrayeva Muxtaram	3	3
5855	2024-01-05		f	Raxmanova Muxabbat	3	3
5856	2024-01-05		f	Maxamova Xurmat	3	3
5857	2024-01-05		f	Qilichova Nazokat	3	3
5858	2024-01-05		f	Xudaynazarova Dilfuza	3	3
5859	2024-01-05		f	Qilicheva Dilfuza	3	3
5860	2024-01-05		f	Shodmanova Fotima	3	3
5861	2024-01-05		f	Xalimova Dilnora	3	3
5862	2024-01-05		f	Dustmurodova Nazokat	3	3
5863	2024-01-05		f	Janiyeva Durdona	3	3
5864	2024-01-05		f	Bobomurodova Muborak	3	3
5865	2024-01-05		f	Shukurova Nasiba	3	3
5866	2024-01-05		f	Musurmanova Nodira	3	3
5867	2024-01-05		f	Abdullayeva Tursunoy	3	3
5868	2024-01-05		f	Suvanova Mashg'ulot	3	3
5869	2024-01-05		f	Xudayorova Nasiba	3	3
5870	2024-01-05		f	Xolbayeva Muyassar	3	3
5871	2024-01-05		f	Usanova Sharbat	3	3
5872	2024-01-05		f	Irisova Nigora	3	3
5873	2024-01-05		f	Sobirov Samariddin	3	3
5874	2024-01-05		f	Xasanova Zuxra	3	3
5875	2024-01-05		f	Sanaqulova Uralbuvi	3	3
5876	2024-01-05		f	Jumanova Feruza	3	3
5877	2024-01-05		f	Radjabova Oyimgul	3	3
5878	2024-01-05		f	Toshtemirov Ruslan	3	3
5879	2024-01-05		f	Norboyeva Gulbahor	3	3
5880	2024-01-05		f	Utayeva Gulnora	3	3
5881	2024-01-05		f	Murtozayeva Pardagul	3	3
5882	2024-01-05		f	Boboqulova Gulnoza	3	3
5883	2024-01-05		f	Yuldosheva Zohida	3	3
5884	2024-01-05		f	Egamberdiyeva Maxliyo	3	3
5885	2024-01-05		f	Saidova Munira	3	3
5886	2024-01-05		f	Eshniyozova Marhabo	3	3
5887	2024-01-05		f	Muxtorova Charos	3	3
5888	2024-01-05		f	Sadinova Oygul	3	3
5889	2024-01-05		f	Urolova Dinora	3	3
5890	2024-01-05		f	Xolboboyeva Olmagul	3	3
5891	2024-01-05		f	Shukurova Maxbuba	3	3
5892	2024-01-05		f	Najmiddidinova Nigora	3	3
5893	2024-01-05		f	Qayumova Nargiza	3	3
5894	2024-01-05		f	Odinova Maftuna	3	3
5895	2024-01-05		f	Bobonazarova Dilorom	3	3
5896	2024-01-05		f	Xolmonova Gulrux	3	3
5897	2024-01-05		f	Elmuradov Quvan	3	3
5898	2024-01-05		f	Turniyazov Nurshodbek	3	3
5899	2024-02-10	INFO	t	Saidjon Samejonov	2	7
5900	2023-10-16	INFO	t	Xolbekov Bexruz	1	1
5901	2024-01-29	INFO	t	Ulmasov Daler	2	3
5902	2024-01-29		t	Xabibov Muhammad	2	3
5903	2024-02-14	INFO	t	Abdurasulov Islom	2	3
5904	2024-02-14		t	Muinjonov Bexruz	2	3
5905	2024-02-14		t	Baxronov Diyor	2	3
5906	2024-02-05	INFO	t	Abduraxmonov Abdulvohid	2	3
5907	2023-06-06	INFO	t	Turg'unboyev Nurbek	1	3
5908	2023-06-06		f	Muxtarova Zarnigor	1	3
5909	2023-06-06		f	Xamdamova Ruxshona	1	3
5910	2023-06-06		f	Baxramov Farrux	1	3
5911	2023-06-06		f	Mamarajabov Fayozbek	1	3
5912	2023-06-06		f	Xoliqov Aslbek	1	3
5913	2023-06-06		f	Mirzayev Shehroz	1	3
5914	2023-06-06		f	Abjalilov Umirzoq	1	3
5915	2023-06-06		f	Amonov Saloxiddin	1	3
5916	2023-06-06		f	Narzullayeva Feruza	1	3
5917	2023-06-06		f	Isakobulova Zulfiya	1	3
5918	2023-06-06		f	Abilova Matluba	1	3
5919	2023-06-06		f	Sadullayev Boboxon	1	3
5920	2023-06-06		f	Valiboyev Ruslan	1	3
5921	2023-06-06		f	Daminova Gulmira	1	3
5922	2023-06-06		f	Saydullayev Ergash	1	3
5923	2023-08-30		f	Mamasoliyev Sardor	1	3
5924	2023-08-30		f	Abdivopayeva Aziz	1	3
5925	2023-08-30		f	Raxmatov Ozodbek	1	3
5926	2023-08-30		f	Abduraymova Munisa	1	3
5927	2023-08-30		f	Ibadullayev Bunyod	1	3
5928	2023-08-30		f	Tashatov Ozodbek	1	3
5929	2023-08-30		f	Jumanov Oybek	1	3
5930	2023-08-30		f	Sattarov Murodjon	1	3
5931	2023-08-30		f	Sayfullayeva Mexribon	1	3
5932	2023-08-30		f	Abdivopayeva Sanobar	1	3
5933	2023-07-20		f	Janiqulova Laylo	1	3
5934	2023-09-20		f	Annaqulova Muborak	1	3
5935	2023-10-31		f	Nurullayev Diyorbek	1	3
5936	2023-10-31		f	Narzullayeva Shaxlo	1	3
5937	2023-10-31		f	Xoshimova Zuxra	1	3
5938	2023-10-31		f	Sanaqulova Maftuna	1	3
5939	2023-10-31		f	Begimqulov Temur	1	3
5940	2023-10-31		f	Suyunboyeva Xurshida	1	3
5941	2023-10-31		f	Bektoshev Ikrom	1	3
5942	2023-10-31		f	Tohirova Xojar	1	3
5943	2023-10-31		f	Najmiddinova Sharbatoy	1	3
5944	2023-10-31		f	Qo'shboqov Ravshan	1	3
5945	2023-10-28		f	Alisherov Odilbek	1	3
5946	2028-10-28		f	O'ktamov Baxodir	1	3
5947	2024-02-14	INFO	f	Saxobiddinova Mushtariy	1	3
5948	2023-10-31	INFO	t	Baxodirova Dilafruz	1	3
5949	2023-10-31		f	Baxriddinov Najimxon	1	3
5950	2023-10-31		f	Pirnazarov Nurkamol	1	3
5951	2023-10-31		f	Mo'minov Firdavs	1	3
5952	2023-10-31		f	Musurmonov Ibrohim	1	3
5953	2023-10-31		f	Musurmonov Ibrohim	1	3
5954	2023-10-31		f	Sayidmurodov Shohruh	1	3
5955	2023-10-31		f	Isoyeva Dilafruz	1	3
5956	2023-10-31		f	Narmanov Asilbek	1	3
5957	2023-10-31		f	Xolbekova Sevinch	1	3
5958	2023-10-31		f	Sadinova Sevara	1	3
5959	2023-10-31		f	Samariddinov Lazizbek	1	3
5960	2023-10-31		f	Ozodova Fayoza	1	3
5961	2023-10-31		f	Ataqulova Durdona	1	3
5962	2023-10-31		f	Qurdoshboyeva Mahzuna	1	3
5963	2023-05-12	INFO	t	Yarmuhammedov Behzod 	1	3
5964	2023-10-16	INFO	f	Sobirov Sherzod	1	1
5965	2023-10-31	INFO	t	Musurmonov Suxrob	1	3
5966	2023-10-31		f	Qurbonboyev Iskandar	1	3
5967	2023-10-31		f	Jo'raqulov Ibrohim	1	3
5968	2023-12-29	INFO	t	Mamatova Gavxar	1	3
5969	2023-10-24	INFO	t	Ergashev Otamurod	1	3
5970	2023-12-05	INFO	t	Musalitdinov Shoxrux	1	6
5971	2023-12-05		f	Toshpo'latov Shaxriyor	1	6
5972	2023-12-05		f	Izzatullayev Asadbek	1	6
5973	2023-12-05		f	Tolipov Asliddin	1	6
5974	2023-12-24		f	Sayfullayeva Gulzoda	1	2
5975	2023-12-27		f	Ibraev Ilgis	1	2
5976	2023-12-27		f	Olimjonov Muhammadjon	1	2
5977	2023-12-28		f	Nurmurodov Temur	1	2
5978	2023-12-28		f	Qurbonov Maxmud	1	2
5979	2023-12-28		f	Olimjonov Qamariddin	1	2
5980	2023-12-28		f	Turdialiyev Ramazon	1	2
5981	2023-12-28		f	Qodirov A'zamjon	1	2
5982	2023-12-28		f	Rustamov Boburmirzo	1	2
6638	2024-09-07	INFO	t	Nasriddinov Zafar	2	2
6639	2024-09-07		t	Qambarov Alijon	2	2
6640	2024-09-07		f	Sameeva Marjona	2	2
6650	2024-09-13		t	Ismoilov O'lmasboy	2	3
6657	2024-07-27	INFO	t	Murodkulov Diyor	2	3
5988	2023-12-25	INFO	t	Nurmurodov Shuxrat	1	3
5989	2023-12-25		f	Xakimova Komila	1	3
5990	2023-12-25		f	Bashirova Gulchexra	1	3
5991	2023-12-25		f	Davronov Muhammadali	1	3
5992	2023-12-25		f	Abdurahmonov Otabek	1	3
5993	2023-12-25		f	Normurodova Odina	1	3
5994	2023-12-25		f	Raimova Nozanin	1	3
5995	2023-12-25		f	Saidjonov Ahmad	1	3
5996	2023-12-25		f	Raimov Murodullo	1	3
5997	2023-12-25		f	Suyarova Dilfuza	1	3
5998	2023-12-25		f	Boliyev Saidaxmad	1	3
5999	2023-12-25		f	Mamadaliyev Suxrob	1	3
6658	2024-09-24	INFO	t	Xafizov Farzod	2	7
6659	2024-09-24		t	Normurodov Shoxjaxon	2	7
6660	2024-09-24		t	Rustamov Savlat	2	7
6676	2024-09-30		t	Maxsudjonov Nuriddin	2	3
6677	2024-09-30		f	Muxtoraliyeva Nozima	2	3
6683	2024-09-12	INFO	t	Asatullayev Mashhurbek	2	3
6684	2024-09-10	INFO	t	Qobilov Muxlisjon	2	3
6689	2024-10-07	INFO	t	Murodkulov Islom	2	3
6696	2024-10-18	INFO	t	Yusupov Jalil	2	3
6706	2024-10-21		f	Asadova Fotima	2	3
6707	2024-10-21		f	Islamova Dildora	2	3
6727	2024-10-21		f	Nabiyeva Firuza	2	3
6730	2024-10-21		f	Islomova Dilnoza	2	3
6731	2024-10-21		f	Djurakulova Muyassar	2	3
6733	2024-10-21		f	Kurbonova Shoira	2	3
6735	2024-10-21		f	Salohitdimova Marluba	2	3
6743	2024-11-01	INFO	t	Ismailov Ismail	2	3
6744	2024-11-01		f	Gayratova Marjona	2	3
6749	2024-10-15	INFO	f	Baxtiyorova Sevinch	2	3
6755	2024-11-14	INFO	t	Jamshitov Davlatjon	2	3
6761	2024-11-18	INFO	t	Xaitov Shukrullo	2	3
6763	2024-11-18	INFO	f	Malikova Ruxshona	2	3
6767	2024-11-08	INFO	t	Abdullayev Sanjarbek	2	1
6768	2024-11-08	INFO	t	Narzullayev Shuhrat 	2	1
6777	2024-11-08	INFO	t	Karimov Islom	2	1
6784	2024-11-28	INFO	t	Erkinov Amalbek	2	3
6789	2024-11-29		t	 Xaydaraliyev Alisher	2	3
6794	2024-10-21		f	Eshmatova Farida	4	3
6795	2024-10-22		f	Onorova  Muxayyo	4	3
6796	2024-10-22		f	Tugizboyeva Dilrabo	4	3
6798	2024-10-22		f	Almamatova Mukaddas	4	3
6799	2024-10-22		f	Artiqova Dildora	4	3
6800	2024-10-22		f	Ergasheva Dilorom	4	3
6801	2024-10-22		f	Qodirova Zarifa	4	3
6802	2024-10-22		f	Umarova Marxabo	4	3
6805	2024-10-22		f	Quvondiqova Sarvinoz	4	3
6806	2024-10-22		f	Xudayberganova Dildora	4	3
6807	2024-10-22		f	Gulaliyeva Madina	4	3
6808	2024-10-22		f	Gaziyeva Lola	4	3
6809	2024-10-22		f	Mustabova Guzal	4	3
6810	2024-10-22		f	Arslanova Feruza	4	3
6811	2024-10-22		f	Djamalova Nodira	4	3
6812	2024-10-22		f	Jomonqulov Eshdavlat	4	3
6815	2024-10-22		f	Murodova Dilbar	4	3
6816	2024-10-22		f	Alikulova Zohida	4	3
6817	2024-10-22		f	Norqulova Dilorom	4	3
6818	2024-10-22		f	Mirzayeva Malika	4	3
6819	2024-10-22		t	Sulaymonova Xursanoy	4	3
6831	2023-12-12	INFO	t	Eshbekov Sanjar	2	3
6836	2024-12-23	INFO	t	Ismatulloyev Fayruzjon	2	3
6837	2024-12-28	INFO	f	Shukurova Dildora	2	3
6843	2024-12-28		f	Shamsiddinova Xolida	2	3
6844	2024-12-28		t	Odilov Abdusalom	2	3
6845	2024-12-28		f	Muxiddinnova Noila	2	3
6846	2024-12-28		t	Abdullayev Turakul	2	3
6847	2024-12-28		f	Xamdamova Firuza	2	3
6848	2024-12-28		f	Kamalova Aziza	2	3
6849	2024-12-28		f	Yusupova Dilsara	2	3
6850	2024-12-28		f	Djurakulova Etibor	2	3
6851	2024-12-28		t	Shomaxmedov Ashurboy	2	3
6852	2024-12-28		f	Negmatova Dilorom	2	3
6853	2024-12-28		f	Zoxidova Shaxnoza	2	3
6854	2024-12-28		t	Zaxidov Anvar	2	3
6855	2024-12-28		t	Kichibayev Mirxasan	2	3
6856	2024-12-28		f	Eshonkulova Roxila	2	3
6857	2024-12-28		f	Daniyarova Iroda	2	3
6858	2024-12-28		t	Toshmirzoyev Otabek	2	3
6859	2024-12-28		f	Xatamova Bashorat	2	3
6860	2024-12-28		t	Muhiddinov Murodkul	2	3
6861	2024-12-28		f	Buranova Nodira	2	3
6862	2024-12-28		t	Djabbarov Ismail	2	3
6863	2024-12-28		t	Rustamov Alisher	2	3
6864	2024-12-28		f	Normatova Kimat	2	3
6865	2024-12-28		t	Ergashev Xamrokul	2	3
6866	2024-12-28		t	Abdurashidov To'xtamurod	2	3
6867	2024-12-28		f	Azizova Sayyora	2	3
6868	2024-12-28		f	Madjidova Nilufar	2	3
6869	2024-12-28		t	Nuritdinov Azimjon	2	3
6001	2023-12-25		f	Karimova Aziza	1	3
6002	2023-12-25		f	Yavkachova Gulshoda	1	3
6003	2023-12-29	INFO	t	Murodillayev In'omjon	1	3
6004	2023-11-30	INFO	t	Shukurova Farog‘at   	3	3
6005	2023-11-30		f	Nuriddinova Zarifa   	3	3
6006	2023-11-30		f	Xalilova Iroda	3	3
6007	2023-11-30		f	Tishaboyeva Aziza	3	3
6008	2023-11-30		f	Umirzoqova Fazilat	3	3
6009	2023-11-30		f	Alimova Moxira	3	3
6010	2023-11-30		f	Viloyatova Mashxura	3	3
6011	2023-11-30		f	Djiyanova Dilobar	3	3
6012	2023-11-30		f	Alimova Shoxista	3	3
6013	2023-11-30		f	Bozorova Xafiza	3	3
6014	2023-11-30		f	Kurbonova Adashoy	3	3
6015	2023-11-30		f	Murodov Tolib	3	3
6016	2023-11-30		f	Mamadaliyeva Gulnoza	3	3
6017	2023-11-30		f	Ashirova Malika 	3	3
6018	2023-11-30		f	Yusupova Zebo 	3	3
6019	2023-11-30		f	Sayfiyeva Ozoda 	3	3
6020	2023-11-30		f	Jamshidova Dildora 	3	3
6021	2023-11-30		f	Mamaeva Madina 	3	3
6022	2023-11-30		f	Norbekova Dilnoza 	3	3
6023	2023-11-30		f	Sultonova Vasila 	3	3
6024	2023-11-30		f	Shodiyorova Xamida 	3	3
6025	2023-11-30		f	Yuldasheva Mushtariy 	3	3
6026	2023-11-30		f	Urinova Nilufar 	3	3
6027	2023-12-25		f	Xolmatova Maftuna 	3	3
6028	2023-11-30		f	Bulakova Surayyo 	3	3
6029	2023-12-27		f	Bulakova Surayyo 	3	3
6030	2023-12-27		f	Sindarova Zarnigor 	3	3
6031	2023-12-27		f	Tursunova Dilnoza 	3	3
6032	2023-12-27		f	Karimova Umida 	3	3
6033	2023-12-27		f	Bobomurodova Xilola 	3	3
6034	2023-12-27		f	Bobomurodova Xilola 	3	3
6035	2023-12-27		f	Qarshieva Gulnora 	3	3
6036	2023-12-27		f	Ibodova Nasiba 	3	3
6037	2023-12-27		f	Aminoova Aziza 	3	3
6038	2023-12-27		f	Sayfiddinova Dilfuza 	3	3
6039	2023-12-27		f	Mardiev Sodiq 	3	3
6040	2023-12-27		f	Qarshieva Zamira 	3	3
6041	2023-12-27		f	Zopirova Sabohat	3	3
6042	2023-12-27		f	Nabiyeva Ruxshona	3	3
6043	2023-12-27		f	Ibragimova Sadoqat	3	3
6044	2023-12-27		f	Tolliyeva Malohat 	3	3
6045	2023-12-27		f	Dastamova Shaxnoza 	3	3
6046	2024-03-01	INFO	t	Komiljonov Qosim	2	3
6047	2024-03-01		t	Komiljonov Davlat	2	3
6048	2024-03-01	INFO	t	Negmatov Shaxram	2	3
6049	2024-03-01	INFO	t	Abduvahobov Farid	2	3
6641	2024-08-30	INFO	t	Abduraxmonov Qodirbek	2	3
6642	2024-08-30		f	Turaqulov Ozodbek	2	3
6052	2024-01-07	INFO	t	Xaqberdiyeva Laylo	1	3
6053	2024-01-13		f	Muxtorova Sug'diyona	1	3
6054	2024-02-09		f	Yokubova Bashorat	1	3
6055	2024-02-09		f	Ro'zimurodov Diyorbek	1	3
6056	2023-02-21		f	Xolmurodov Sherxon	1	3
6057	2024-02-13		f	Raufova Feruza	1	2
6058	2024-02-13		f	Qudratov Abdumalik	1	2
6059	2024-02-13		f	Aliyev Alisher	1	2
6060	2024-02-13		f	Shokirov Zafarjon	1	2
6061	2024-02-13		f	Abdurashidov Abdulaziz	1	2
6062	2024-02-13		f	Rustamov Doston	1	2
6063	2024-02-13		f	Nurmurodov Shag'zod	1	2
6651	2024-09-05	INFO	t	Alijonov Alisher	2	1
6065	2024-02-12	INFO	f	Rahimov Sarvar	1	3
6066	2024-02-12		f	Churbayeva Alina	1	3
6067	2024-02-12		f	Xamedova Dilrabo	1	3
6068	2024-02-12		f	Olimjonov Olimjon	1	3
6069	2024-02-12		f	Amirov Donyor	1	3
6070	2024-02-12		f	Qilichev Jamshid	1	3
6071	2024-02-12		f	Qilichev Shoxjaxon	1	3
6072	2024-02-12		f	Nosirov Davron	1	3
6073	2024-02-12		f	Salohiddinov Abdulxamid	1	3
6074	2024-02-12		f	Abduxakimova Munisa	1	3
6075	2024-02-12		f	Berdiyev Elbek	1	3
6076	2024-02-04		f	Azimova Laylo	3	3
6077	2024-02-04		f	Hamrayeva Yulduz	3	3
6078	2024-02-04		f	Ergashova Dilshoda	3	3
6079	2024-02-04		f	Ro'zieva Nargiza	3	3
6080	2024-02-04		f	Raximova Durdona	3	3
6081	2024-02-04		f	Eshniyozova Saboxat	3	3
6082	2024-02-04		f	Baratova Iboxon	3	3
6083	2024-02-04		f	Xalilova Shalola	3	3
6084	2024-02-04		f	Qahhorova Gulfina	3	3
6085	2024-02-04		f	Ro`ziqulova Gulirano	3	3
6086	2024-02-04		f	Nurmatova Qunduz	3	3
6087	2024-02-04		f	 Qudratova Surayyo	3	3
6088	2024-02-29	INFO	f	Astanova Xonimoy	1	3
6089	2024-02-29		f	Naxolova Zilola	1	3
6090	2024-02-29		f	Eshquvatova Maftuna	1	3
6091	2024-02-29		f	Mamanov Javohir	1	3
6092	2024-02-29		f	Botayeva Zarnigor	1	3
6093	2024-02-29		f	Lapasova Durdona	1	3
6094	2024-02-29		f	Saydulayev Abduxoshim	1	3
6095	2024-02-29		f	Omonturdiyeva Soxiba	1	3
6096	2024-02-29		f	Boymurzayeva Gulzoda	1	3
6097	2024-02-29		f	Muhamatova Noila	1	3
6098	2024-02-29		f	Raxmanova Maxliyo	1	3
6099	2024-02-29		f	Usmonova Gulbaxor	1	3
6100	2024-02-29		f	Musayeva Fazilat	1	3
6101	2024-02-29		f	Amirov Mexroj	1	3
6102	2024-02-29		f	Obilov Sirojidin	1	3
6103	2024-02-29		f	Nizomov Vaxob	1	3
6104	2024-02-29		f	Ruziyeva Muattar	1	3
6105	2024-02-29		f	Joniqulova Dilorom	1	3
6106	2024-02-29		f	Mannanova Maqsuda	1	3
6107	2024-02-29		f	Alikulova Nargiza	1	3
6110	2023-12-30		f	Abduraximov Yodgor	1	3
6111	2023-12-30		f	Isaev Zokir 	1	3
6112	2023-12-30		f	Usmonova Mexriniso	1	3
6113	2023-12-30		f	Joʻraqulova Gulnora	1	3
6114	2023-12-30		f	Jumaev Vahobjon	1	3
6115	2023-12-30		f	Xudoyqulov Furqat	1	3
6116	2023-12-30		f	Ochilov Bekmurod	1	3
6117	2023-12-30		f	Hayitov Alisher	1	3
6118	2023-12-30		f	Bobayorov Navruz	1	3
6119	2023-12-30		f	Nabiyev Zuxridin	1	3
6120	2023-12-30		f	Murodimov Uchqun	1	3
6121	2023-12-30		f	Rustamov Zokir	1	3
6122	2023-12-30		f	Djamolova Lola	1	3
6123	2023-12-30		f	Rayimberdiyev O'lmasjon	1	3
6124	2023-12-30		f	Djuraev Asatullo	1	3
6125	2023-12-30		f	Djoʻraev Nabijon	1	3
6126	2023-12-30		f	Xushmatova Muhabat	1	3
6127	2023-12-30		f	Ruziev Jaxongir	1	3
6128	2023-12-30		f	Turdimuradov Davron 	1	3
6129	2023-12-30		f	Ashiraliev Oʻktam	1	3
6130	2023-12-30		f	Tuvalov Shuxrat	1	3
6131	2023-12-30		f	Toʻraeva Zarina	1	3
6132	2023-12-30		f	Shodiev Akbar	1	3
6133	2023-12-30		f	Hasanova Kibora	1	3
6134	2024-01-31		f	Rabbimova  Munisa	1	3
6135	2024-01-31		f	Tuganboyeva Gulxayo	1	3
6136	2024-01-31		f	Qaxramonova Humora	1	3
6137	2024-01-31		f	Turg'unova Gulbaxor	1	3
6138	2024-01-31		f	Tursunova Shoyira	1	3
6139	2024-01-31		f	Abdimurotova Ma'mura	1	3
6140	2024-01-31		f	Toshboltayeva  Gulnora	1	3
6141	2024-01-31		f	Ergashova Dildora	1	3
6142	2024-01-31		f	Sidiqov Sirojidin	1	3
6143	2024-01-31		f	Arslonova  Nigina	1	3
6144	2024-01-31		f	Meyliyeva Fazilat	1	3
6145	2024-01-31		f	Begmaxammatova Sarvinoz	1	3
6146	2024-01-31		f	Sharipova  Dilafruz	1	3
6147	2024-01-31		f	Uzakova Dilnoza	1	3
6148	2024-01-31		f	Burxanova Nargiza	1	3
6149	2024-01-31		f	Qodirov  Jahongirxon	1	3
6150	2024-01-31		f	Usmonov  Shohrux	1	3
6151	2024-01-31		f	Bolibekov Alibek	1	3
6152	2024-01-31		f	Omonturdiyeva Soxiba	1	3
6153	2024-01-31		f	Nasimova Salima	1	3
6154	2024-01-31		f	Abdukarimova  Feruza	1	3
6155	2024-01-31		f	Kodirova  Mexriniso	1	3
6156	2024-01-31		f	Kenjayeva Madina	1	3
6157	2024-01-31		f	Miyliyeva Dilafro'z	1	3
6158	2024-02-01		f	Elmonova Ruxsora	3	3
6159	2024-02-01		f	Mamatova Munira	3	3
6160	2024-02-01		f	Raxmonova Gulbaxor	3	3
6161	2024-02-01		f	Qo‘rbonov Tulqin	3	3
6162	2024-02-01		f	Boymirzayeva Nigora	3	3
6163	2024-02-01		f	Xikmatullayeva Komuna	3	3
6164	2024-02-01		f	Sanayeva Gulchexra	3	3
6165	2024-02-01		f	Omonova Marjona	3	3
6166	2024-02-01		f	Usmonova Mutabar	3	3
6167	2024-02-01		f	Juraqulova Go‘lxayo	3	3
6168	2024-02-01		f	Baxronova Maftuna	3	3
6169	2024-02-01		f	Meliyeva Rushana	3	3
6170	2024-02-01		f	Daminova Aziza	3	3
6171	2024-02-01		f	Ergasheva Maxabo	3	3
6172	2024-02-01		f	Yangiboyeva Matluba	3	3
6173	2024-02-01		f	Pardayeva Nasiba	3	3
6174	2024-02-01		f	Axmadova Orzigul	3	3
6175	2024-02-01		f	Odilova Shoira	3	3
6176	2024-02-01		f	Nazarov Sodiq	3	3
6177	2024-02-01		f	Elmonov Norbek	3	3
6178	2024-02-01		f	Xushvakova Marxabo	3	3
6179	2024-02-01		f	Rustamov Umidjon	1	3
6180	2024-02-01		f	Xamdamova Shaxlo	1	3
6181	2024-02-01		f	Fayzullayeva Shabbona	1	3
6182	2024-02-05		f	Karimova Gulmera	1	3
6183	2024-02-05		f	Karimova Gulmera	3	3
6184	2024-02-05		f	Utanova Xurshida	3	3
6185	2024-02-05		f	Muminova Tanzila	3	3
6186	2024-02-05		f	Normurodova Mohinur	3	3
6187	2024-02-05		f	Xolbozorova Zulfuya	3	3
6188	2024-02-05		f	To'qsonova Umida	3	3
6189	2024-02-05		f	Artiqova Munira	3	3
6190	2024-02-05		f	Dustova Muxabbat	3	3
6191	2024-02-05		f	Abdumannonova Xulkar	3	3
6192	2024-02-05		f	Shaymanov Qaxramon	3	3
6193	2024-02-05		f	Xaitova Nilufar	3	3
6194	2024-02-05		f	Abduraximova Shoxida	3	3
6195	2024-02-05		f	Nurbayeva Feruza	3	3
6196	2024-02-05		f	Davronova Guzal	3	3
6197	2024-02-05		f	Boltayev Ulug'bek	3	3
6198	2024-02-05		f	Xoliyorova Muxbirat	3	3
6199	2024-02-05		f	Shaymanov Qaxramon	3	3
6200	2024-02-05		f	Hakimov Azamat	3	3
6201	2024-02-05		f	Pardayeva Nodira	3	3
6202	2024-02-05		f	Aralova Nuriya	3	3
6203	2024-02-05		f	Bekmuradova Muazzam	3	3
6204	2024-02-05		f	Suvanova Gulnora	3	3
6205	2024-02-05		f	Jonuzoqova Diyora	3	3
6206	2024-02-05		f	Maxmudova Guzal	3	3
6207	2024-02-05		f	Pardayeva Zulxumor	3	3
6208	2024-02-05		f	Sharipova Xolida	3	3
6209	2024-02-05		f	Todjiyeva Mavluda	3	3
6210	2024-02-05		f	Jumanova Xulkar	3	3
6211	2024-02-05		f	Nosirova Gavxar	3	3
6212	2024-02-05		f	Rizayeva Visola	3	3
6213	2024-02-05		f	Abulqosimova Gulrux	3	3
6214	2024-02-05		f	Begmatova Munis	3	3
6215	2024-02-05		f	Sadinova Dilnoza	3	3
6216	2024-02-05		f	Shamuradova Rashida	3	3
6217	2024-02-05		f	Irgashova Ma'mura	3	3
6218	2024-02-05		f	Bekbayeva Dilafruz	3	3
6219	2024-02-05		f	Alimova Xulkar	3	3
6220	2024-02-05		f	Toshbabayeva Madina	3	3
6221	2024-02-05		f	Kazakova Gulmira	3	3
6222	2024-02-05		t	Ishmuratova Farida	3	3
6223	2024-02-05		f	Bazorova Shoira	3	3
6224	2024-02-05		f	Berdiyorov Zokir	3	3
6225	2024-02-05		f	Toshtemirova O'g'iloy	3	3
6226	2024-02-05		f	Maxkamova Komila	3	3
6227	2024-02-05		f	Maxmudova Nafisa	3	3
6228	2024-02-05		f	Adilova Dilafruz	3	3
6229	2024-02-05		f	Ortiqova Farog'at	3	3
6230	2024-02-05		f	Kchayev Jamoliddin	3	3
6231	2024-02-05		f	Toshboyev Dilmurod	3	3
6232	2024-02-05		f	Shamsiddinova Mahfuza	3	3
6233	2024-02-05		f	Ergashev Abbos	3	3
6234	2024-02-05		f	Elmirzayeva Gulniso	3	3
6235	2024-02-05		f	Elmurzayev G'olib	3	3
6236	2024-02-05		f	Radjabov G'aybulla	3	3
6237	2024-02-05		f	Elmurzayev Orif	3	3
6238	2024-02-05		f	Isroilova Nargiza	3	3
6239	2024-02-05	INFO	f	Xoliyorova Maxbirat	3	3
6240	2024-02-05		f	Suyunova Nozli	3	3
6241	2023-10-28	INFO	t	O'ktamov Baxodir	1	2
6242	2023-10-28		f	Alisherov Odilbek	1	2
6243	2024-02-28	INFO	f	Berdiyeva Lola	1	3
6244	2024-02-28		f	Alimova Maxsuda	1	3
6245	2024-02-28		f	Kasimova Xurshida	1	3
6246	2024-02-28		f	Norkulova Dilnoza	1	3
6247	2024-02-28		f	Mamatqulova Maloxat	1	3
6248	2024-02-28		f	Achilova Dilorom	1	3
6249	2024-02-28		f	Eshbekova Feruza	1	3
6250	2024-02-28		f	Ernazarova Sojida	1	3
6251	2024-02-28		f	Shamuradova Gulchexra	1	3
6252	2024-02-28		f	Valiyeva Ra'no	1	3
6253	2024-02-28		f	Umarova Gulnoza	1	3
6254	2024-02-28		f	Mamatqulova Sanobar	1	3
6255	2024-02-28		f	Maxkamova Dilfuza	1	3
6256	2024-02-28		f	Nomazova Iroda	1	3
6257	2024-02-28		f	Sattarova Shoxida	1	3
6258	2024-02-28		f	Yunusova Zamira	1	3
6259	2024-02-28		f	Eshpo'latov Azizbek	1	3
6260	2024-02-28		f	Ishmamatov Toyir	1	3
6261	2024-02-28		f	Sirojiddinov Tursunboy	1	3
6262	2024-02-28		f	Saydahmadov Sardor	1	3
6263	2024-02-28		f	Abdunasimov Alisher	1	6
6264	2024-02-28		t	Ortiqov Alijon	1	6
6265	2024-02-28		f	Ergashev Mehroj	1	6
6266	2024-02-28		f	Mirzayev Xudoyberdi	1	6
6267	2024-02-28		f	Abduxalilov Firdavs	1	6
6268	2024-02-28		f	Mamirov Ozodbek	1	6
6269	2024-02-28		f	Tugalov Muhammadali	1	6
6270	2024-02-28		f	Jurakulov Ramzbek	1	6
6271	2024-02-28		f	Baxramov Munisjon	1	6
6272	2024-02-28		f	Xoljigitov Mirqodir	1	6
6273	2024-02-28		f	Xoliqulov Sardor	1	6
6274	2024-02-28		f	Jo'raboyev Sanjar	1	6
6275	2024-02-28		f	Ubaydullayev Davlatnazar	1	6
6276	2024-02-28		f	Turaboyev Fazliddin	1	6
6277	2024-02-28		f	Abdumajidov Diyor	1	6
6278	2024-01-29		f	Akramov Javohir	1	3
6279	2023-12-22	INFO	f	Shahobov  Abubakr	2	3
6280	2024-02-23		f	O'ktamov  Sarvar	2	3
6281	2024-02-23		f	Shahobov  Abubakr	2	3
6282	2024-02-28	INFO	f	Arziyev Faxriddin	1	3
6284	2023-03-05	INFO	f	Usmanova Shirin	3	3
6285	2024-03-05		f	Safarova Rohila 	3	3
6286	2024-03-05		f	Jabborova Shaxnoza 	3	3
6287	2024-03-05		f	Nuriddinova Nilufar 	3	3
6288	2024-03-05		f	Baxramova Mohigul 	3	3
6289	2024-03-05		f	Obloqulova Xursanoy 	3	3
6290	2024-03-05		f	Umarova Madina 	3	3
6291	2024-03-05		f	Murtazayeva Nigora 	3	3
6292	2024-03-05		f	Safarova Nazira 	3	3
6293	2024-03-05		f	Saidova Aziza 	3	3
6294	2024-03-05		f	Jabborova Zahrobonu 	3	3
6295	2024-03-05		f	Turonova Rushana 	3	3
6296	2024-03-05		f	Turayeva Zahro 	3	3
6297	2024-03-05		f	Rahmonova Nilufar 	3	3
6298	2024-03-05		f	Nodirova Ozoda 	3	3
6299	2024-03-05		f	Muxtarova Shahnoza 	3	3
6300	2024-03-05		f	Nabiyeva Lola 	3	3
6301	2024-03-05		f	Abdurahmonova Ra’no 	3	3
6302	2024-03-05		f	Rahmonova Sitora 	3	3
6303	2024-03-05		f	Bakaeva Dilafro’z 	3	3
6304	2024-03-05		f	Djurakulova Maknuna 	3	3
6305	2024-03-05		f	Xaqqulova Zarina 	3	3
6306	2024-03-05		f	Omonova Marjona 	3	3
6307	2024-03-05		f	Nabiyeva Orasta 	3	3
6308	2024-03-05		f	Jamolova Nargiza 	3	3
6309	2024-03-05		f	Nurillayeva Aziza 	3	3
6310	2024-03-05		f	Sharipova Mashhura 	3	3
6311	2024-03-05		f	Akramova Maftuna 	3	3
6312	2024-03-05		f	Muxammadiyeva Gulnoza 	3	3
6313	2024-03-05		f	Xursandova Muhiba 	3	3
6314	2024-03-05		f	Oripova Shaxnoza 	3	3
6315	2024-03-05		f	Siddiqova Nozima 	3	3
6316	2024-03-05		f	Hasanova Nodira 	3	3
6317	2024-03-05		f	Rajabova Ziyoda	3	3
6318	2024-03-05		f	Rajabova Lobar 	3	3
6319	2024-03-05		f	Jumayeva Mehribon 	3	3
6320	2024-03-05		f	Qayumova Gulnora 	3	3
6321	2024-03-05		f	Sherova Firuza 	3	3
6322	2024-03-05		f	Negmatova Firuza 	3	3
6323	2024-03-05		f	Hamdamova Ruqiya 	3	3
6396	2024-04-01		t	Uroqov Isobek	1	3
6324	2024-03-05		f	Pulatova Elmira 	3	3
6325	2024-03-05		f	Yakubova Saida 	3	3
6326	2024-03-05		f	Abduraxmonova Zarnigor 	3	3
6327	2024-03-05		f	To’raqulova Nigina 	3	3
6328	2024-03-05		f	Roziqulova Kumush 	3	3
6329	2024-03-05		f	Rustamova Nilufar 	3	3
6330	2024-03-05		f	Nurillayeva Dildora 	3	3
6331	2024-03-05		f	Obloqulova Aziza 	3	3
6332	2024-03-05		f	Xusenova Gulbaxor 	3	3
6333	2024-03-05		f	Xasanova Nigina 	3	3
6334	2024-03-05		f	Igamurodova Dilafruz 	3	3
6335	2024-03-05		f	Obloqulova Durdona 	3	3
6336	2024-03-05		f	Urinova Xursheda 	3	3
6337	2024-03-05		f	Sherova Maftuna 	3	3
6338	2024-03-05		f	Baxriyeva Zilola 	3	3
6339	2024-03-05		f	Ne’matova Zulfiya 	3	3
6340	2024-03-05		f	Xasanova Mexrubon 	3	3
6341	2024-03-05		f	Baqoyeva Surayyo 	3	3
6342	2024-03-05		f	Sheraliyeva Lola 	3	3
6343	2024-03-05		f	Mardonova Hilola 	3	3
6344	2024-03-05		f	Mavlonova Nigina 	3	3
6345	2024-03-05		f	Sameeva Sitora 	3	3
6346	2024-03-05		f	Ibragimova Mexrubon 	3	3
6347	2024-03-05		f	Ahrorova Mohisitora 	3	3
6348	2024-03-05		f	Shodiyeva Shahnoza 	3	3
6349	2024-03-05		f	Jumanazarova Sabina 	3	3
6350	2024-03-05		f	Karimova Munira 	3	3
6351	2024-03-05		f	O’zbekova Komila 	3	3
6352	2024-03-05		f	A’zamova Sitora 	3	3
6353	2024-03-05		f	Kenjayeva Madina 	3	3
6643	2024-09-11	INFO	t	Sharofiddinov Jaxongir	2	2
6355	2024-01-31		f	Nasirov  Baxtiyor	3	3
6356	2024-01-22	INFO	f	Yarmuxammedov Behzod	1	2
6357	2023-01-02	INFO	t	uuiiuiui ghg	1	3
6358	2024-03-19	INFO	t	Xashimov Saidjasur	1	3
6359	2024-03-19		t	Xashimov Saidjasur	1	3
6360	2024-03-19		t	Maryakov Samir	1	3
6361	2024-03-19		t	Sadriddinov Asadbek	1	3
6362	2024-03-19		t	Ravshanov Komil	1	3
6363	2024-03-19	INFO	t	Ziyodullayev Javoxir	1	3
6364	2024-03-19		t	Ziyodullayev Sardorbek	1	3
6365	2024-03-19		t	Kobilov Diyorbek	1	3
6366	2024-03-19		f	Axrorova Amira	1	3
6367	2024-03-19		f	Axrorova Amira	1	3
6368	2024-03-18	INFO	t	Tolibjonov Azizjon	1	3
6369	2024-03-19		t	Tolibjonov Azizjon	1	3
6370	2024-03-15		t	Tolibjonov Аzizjon	1	3
6371	2024-03-19	INFO	t	Tolibjonov Azizjon	1	3
6372	2024-03-19		f	Axrorova Amira	1	3
6373	2024-03-19		t	Xamrokulov Sunnatjon	1	3
6374	2024-03-25	INFO	t	Allamuradov Shaxzod	1	3
6375	2024-03-19		t	Pardakulov Muxammadamin	1	3
6376	2024-03-19		t	Sadriddinov Amirshoh	1	3
6378	2024-03-26	INFO	t	Ziyodullayev Imron	1	3
6379	2024-03-26		t	Ziyodullayev Siyavush	1	3
6380	2024-03-26		f	Ziyodullayeva Imona	1	3
6381	2024-03-27	INFO	t	Raximov Jonibek	1	3
6382	2024-04-01	INFO	f	Madjidova Moxinur	1	3
6383	2024-04-01		f	Yaxyayeva Maftuna	1	3
6384	2024-04-01		t	Xudoyberdiyev Adxambek	1	3
6385	2024-04-01		t	Nosirxonov Murodxon	1	3
6386	2024-04-01		t	Xayitboyev Asilbek	1	3
6387	2024-04-01		f	Zafarova Amina	1	3
6388	2024-04-01		t	Zafarova Amina	1	3
6389	2024-04-01		f	Zafarova Аmina	1	3
6390	2024-04-01		f	Zafarova Amina	1	3
6391	2024-04-01		f	Zafarova Amina	1	3
6392	2024-04-01		t	Abduvosiyev Jonibek	1	3
6393	2024-04-01		t	Аbduvosiyev Dilshodbek	1	3
6394	2024-04-01		t	Abduvosiyev Dilshodbek	1	3
6395	2024-04-01		f	Abduvosiyev Dilshodbek	1	3
6397	2024-01-29	INFO	f	Shirinqulov  Shohin	1	3
6398	2024-01-30	INFO	t	Asatov Asomiddin	1	3
6399	2024-02-02	INFO	t	Rabbimqulov  Ozodbek 	1	3
6400	2024-03-28	INFO	t	Oltiboyev Islomjon	1	1
6401	2024-03-28	INFO	t	Oltiboyev Islomjon	1	1
6402	2024-04-08	INFO	t	Saydullayev Shoxjaxon	1	3
6403	2024-04-08		t	Mamarajabov Bekzod	1	3
6404	2024-04-08		f	Azimova Jasmina	1	3
6405	2024-04-08		f	Supxonov Amirjon	1	3
6406	2024-04-08		t	Djurayev Amir	1	3
6407	2024-04-08		f	Ravshanov Javoxir	1	3
6408	2024-04-08		t	Nasimov Jaloliddin	1	3
6652	2024-09-16	INFO	f	Muyinova Shaxzoda	2	3
6661	2024-08-08	INFO	f	Faxritdinova Gulsanam	2	3
6671	2024-02-17	INFO	t	Nomozov Sobit	2	4
6678	2024-09-30		f	Barotova Baxora	2	3
6685	2024-08-27	INFO	t	Umirov Javohir	2	3
6690	2024-08-24	INFO	f	Olmosova Sarvinoz	2	6
6697	2023-08-02	INFO	t	Khodjiev Malik	2	3
6708	2024-10-21		f	Abdullayeva Zarnigor 	2	3
6709	2024-10-21		f	Kuliyeva Zarina	2	3
6728	2024-10-21		f	Jabborova Rano	2	3
6729	2024-10-21		f	Amonova Durdona	2	3
6732	2024-10-21		t	Muminov Azamat	2	3
6734	2024-10-21		f	Xidirova Zarina	2	3
6736	2024-10-21		f	Xurramova Fariza	2	3
6745	2024-10-31	INFO	f	Bektimirova Zulxumor	2	3
6750	2024-11-01	INFO	t	Xayrullayev Asadbek	2	3
6756	2023-09-05	INFO	t	Sanaqulov Shohruh	2	3
6762	2024-11-18	INFO	t	Shaxobov Abubakr	2	3
6769	2024-11-08	INFO	t	Choriyev Rajabali 	2	1
6778	2024-11-18	INFO	t	Shodiyorov Bekniyoz	2	3
6779	2024-11-18	INFO	t	Dilshodov Diyorbek	2	3
6411	2024-04-08	INFO	f	Test Test3	4	6
6412	2024-04-13	INFO	t	Shaxzod Samariddinov	4	2
6413	2024-04-15	INFO	t	KAXOROV SHERBEK 	2	1
6414	2024-04-15	INFO	t	Oltiboyev Islomjon	2	1
6415	2024-04-17	INFO	t	Ravshanbekov Azizbek	2	3
6416	2024-04-19	INFO	t	Ashurmamatov Aliimron	2	3
6417	2024-04-19		t	Murtazoyev Alijon 	2	3
6418	2024-04-19		t	Aliyev Muxammadali	2	3
6419	2024-04-19		f	Xasanova Moxinur	2	3
6420	2024-04-03	INFO	t	Djumanov Behruz	2	3
6421	2024-03-29		f	  Aktamov Temur	2	3
6422	2024-04-01		f	Saitqulov  Orzumurod	2	3
6423	2024-04-01		f	Dilmurodov  Elbek      	2	3
6424	2024-03-06		f	Alisher Aliqulov	2	3
6425	2024-03-06		f	Absalomov Xojiakbar	2	3
6426	2024-01-29		f	Shirinqulov  Shohin	2	3
6427	2024-01-30		f	Asomiddin Asatov	2	3
6428	2024-02-02		f	Rabbimqulov  Ozodbek	2	3
6429	2024-04-20	INFO	f	Jurakulova Shahlo	2	7
6430	2024-04-20	INFO	t	Ibraimbekov Bobur	2	3
6431	2024-04-20		f	Sharofiddinov Rustam	2	3
6432	2024-04-20		f	Negmatov Diyorbek	2	3
6433	2024-04-20		f	Davronov Behruz	2	3
6434	2024-03-30		f	Mahmadiyorova Marjona	2	3
6435	2024-01-03		f	Usmanov Seyman	2	2
6436	2023-12-27	INFO	t	Seyranyan Artyom	2	5
6437	2024-04-23	INFO	t	Asadov Mirazam	2	7
6439	2024-04-23	INFO	f	Isroilov  Azizbek 	2	3
6441	2024-05-01	INFO	t	Nodirqulov Azizbek	2	3
6447	2024-04-30	INFO	f	Pevneva Nadejda	2	3
6448	2024-05-08	INFO	t	Karimov Zarshed	2	3
6449	2023-10-16	INFO	t	Bozorov Jamshid	2	6
6450	2024-02-12	INFO	t	Hasanov Elyor	2	1
6451	2024-05-04	INFO	f	Xaydarova Sabina	2	7
6452	2024-05-04	INFO	f	Xaydarova Sabina	2	7
6453	2024-05-05	INFO	t	Asadov Shoxrux	2	7
6454	2024-05-05	INFO	t	Asadov Shoxrux	2	7
6455	2024-05-05		f	Xojikurbonov Laziz	2	7
6456	2024-05-12	INFO	f	Hasanov Abduxoliq	2	7
6457	2024-05-13		f	Hamroqulov Bobur	2	7
6458	2024-05-15	INFO	f	Ruziboyev Azimjon	2	7
6459	2024-03-13	INFO	t	BALXIYEV UMID	2	2
6460	0004-01-26	INFO	t	AHMADOV DILSHODBEK	2	1
6461	2024-01-26		f	AHMADOV DILSHODBEK	2	1
6462	2024-05-13	INFO	t	SALAYDINOVA NILUFAR	2	5
6463	2024-05-13	INFO	t	ORTIKOV UMID	2	5
6464	2024-05-13	INFO	f	ORTIKOV SHAXZOD	2	5
6465	2024-05-12	INFO	f	Hasanov Abduxoliq	2	7
6466	2024-05-01	INFO	f	Diyorbek Mamirzayev	2	1
6467	2024-05-01	INFO	f	Lazizbek Yusupov	2	1
6468	2024-05-01	INFO	f	Sanjar Xikmatullayev	2	1
6469	2024-05-01	INFO	t	Sardor G'aniyev	2	1
6470	2024-05-01	INFO	t	Temur Abdulhayev	2	1
6471	2024-05-29	INFO	t	Razakov Jonibek	2	3
6472	2024-05-29		t	Jabborov Davron	2	3
6473	2024-05-29		f	Karimova Amira	2	3
6474	2024-05-29		t	Mamasharifov Ali	2	3
6475	2024-05-29		t	Ulmasjonov Nozimjon	2	3
6476	2023-05-05	INFO	f	Ro'ziboyev Azimjon	2	7
6477	2024-03-23	INFO	t	Suyarqulov Firuz	2	2
6478	2024-03-23	INFO	t	Suyarqulov Firuz	2	2
6479	2024-03-23		f	Xudoyarov Timur	2	2
6480	2024-03-23		f	Kaxramonov Seyman	2	2
6481	2024-03-23		f	Tashtemirov  Kemran	2	2
6482	2024-05-20	INFO	f	Ummatova Ra'no	2	3
6484	2024-05-01		f	Razikova Gulmira	2	3
6485	2024-05-01		f	Mardonkulova  Nargiza	2	3
6486	2024-05-01		f	Shamsiyeva Dilsora	2	3
6487	2024-05-01		f	Muxammadiyeva Kamola	2	3
6488	2024-05-01		f	Xamrayeva Nargiza	2	3
6489	2024-05-01		f	Shukurova Shaxlo	2	3
6490	2024-05-01		f	Turdiyeva Naima	2	3
6491	2024-06-05		f	Kaxorova Dilfuza	2	3
6492	2024-06-05		f	Xodjimurodova Saboxat	2	3
6493	2024-06-05		f	RASULOVA MOXINUR 	2	3
6494	2024-06-05		f	Keldiyarova Mehriniso	2	3
6495	2024-06-05		f	Latipova Muqaddam	2	3
6496	2024-06-05		f	Ashurova Zilola	2	3
6497	2024-06-05		f	Normurodova Flora	2	3
6498	2024-06-05		f	Tuxtasheva Raxima	2	3
6499	2024-06-05		f	Sharipova Aziza	2	3
6500	2024-06-05		f	Xudoyberdiyeva Gulnoza	2	3
6501	2024-06-05		f	Rabbimova Mavluda	2	3
6502	2024-06-05		f	Jumayeva Ruxshona	2	3
6503	2024-06-05		f	Zaynitdinova Dilhumor	2	3
6504	2024-06-05		f	Esirgapova Dilnoza	2	3
6505	2024-06-05		f	Asrorova Gulsara	2	3
6506	2024-06-05		f	Sobirjonov Shahboz	2	3
6507	2024-05-01	INFO	f	Rasuli Umeda	2	3
6510	2024-06-08	INFO	t	Halilov Jonibek	2	3
6511	2024-06-10	INFO	f	Kamolova Umida	2	3
6512	2024-06-19	INFO	t	Botirov Saidaxrorxon	2	3
6513	2024-06-04	INFO	t	Toxirov Nurmuhammad	2	6
6514	2024-05-01	INFO	t	Norboyev Bekzod	2	3
6515	2024-05-30	INFO	t	Rustamov Shohjaxon 	2	2
6516	2024-06-26	INFO	t	Raufov Abdulloh	2	3
6517	2024-06-01	INFO	t	Norqulov Shoxrux 	2	3
6518	2024-03-16	INFO	f	Rasulova Mamura	2	3
6519	2024-06-14	INFO	t	Bobonazarov  Jurabek  	2	3
6520	2024-06-29	INFO	t	Rustamov Elnur	2	7
6521	2024-07-05	INFO	t	Bejashvili Vyacheslav 	2	3
6522	2024-07-05		t	Raximov Aznaur	2	3
6523	2023-05-23	INFO	t	Yusupov Onur	2	3
6524	2024-07-09	INFO	f	Ismailova Zaynab	2	3
6542	2024-07-24		f	Abidov Azim	2	3
6525	2024-07-09	INFO	f	Muxitdinova Djasmina	2	3
6526	2024-07-09	INFO	t	Muxitdinov Jaxongir	2	3
6527	2024-07-09	INFO	t	Muxitdinov Davlatshox 	2	3
6528	2024-07-10	INFO	t	Murtazokulov Amir	2	3
6529	2024-07-10	INFO	f	Mamedova Sitora	2	3
6530	2024-07-05	INFO	t	Adashev Muhammadyusuf	2	3
6653	2024-09-21	INFO	f	Mavlonkulova Moxinur	2	3
6533	2024-05-30	INFO	f	Narimanova Farida	3	3
6679	2022-12-18	INFO	t	Mamatqulova Madina	3	3
6686	2024-10-01	INFO	t	Qurbonov Amirjon	2	7
6691	2024-10-08	INFO	t	Abduraxmanov Aziz	2	3
6540	2024-01-05	INFO	t	Ismoilov Isoq	2	6
6541	2024-07-24	INFO	t	Baxtiyorov Dostonbek	2	3
6699	2024-10-21	INFO	f	Akobirova Laziza 	2	3
6544	2023-08-01	INFO	t	Fakhriddinov Amriddin	2	5
6545	2023-08-01		f	Isametdinov Doniyor	2	5
6546	2024-08-01		f	Boqiyev Abror	2	5
6547	2024-08-01		f	Rustamov Kamronbek	2	5
6548	2024-08-01		f	Rustamov Lazizjon	2	5
6549	2024-08-01		f	Esankulov Jasur	2	5
6550	2024-08-01		f	Mahmudov Fayruz	2	5
6551	2024-08-01		f	Djumakulov Muhammadali	2	5
6552	2024-08-01		f	Nasser Shohjahon	2	5
6553	2024-08-01		f	Aliyev Feruz	2	2
6554	2024-08-01		f	Ostonova Dilafruz	2	3
6555	2024-08-01		f	Kakabayeva Amina	2	3
6556	2024-08-01		f	Ernazarova Sohiba	2	3
6557	2024-08-01		f	Sattorova Durdona	2	3
6558	2024-08-01		f	Xo'jaqulova Nigora	2	3
6559	2024-08-01		f	Raxmonova Mavjuda	2	3
6560	2024-08-01		f	Abduraxmonova Xusniya	2	3
6561	2024-08-01		f	Shomurotova Maftuna	2	3
6562	2024-08-01		f	Karabayeva Dildora	2	3
6563	2024-08-01		f	Xolmurodova Marg'uba	2	3
6564	2024-08-01		f	Maxmudova Dilfuza	2	3
6565	2024-08-01		f	Ochilova To'xtatosh	2	3
6566	2024-08-02	INFO	t	Begiyev Shaxriyor	2	3
6567	2024-08-02		t	Xasanov Shaxriyor	2	3
6568	2024-08-02	INFO	t	Usmonov Boburbek	2	3
6569	2024-08-02	INFO	t	Murodov Samandar	2	3
6710	2024-10-21	INFO	f	Ochilova Maftuna 	2	3
6571	2024-08-20		f	Shermanov  Behruz     	2	2
6572	2024-08-20		f	Saxriddinov   Navruz 	2	2
6712	2024-10-21		f	Voseyeva Gulrux	2	3
6574	2024-08-20		f	Qozoqboyeva  Dilnura   	2	2
6575	2024-08-20	INFO	t	Soyibjamolov Nurmuhamma	2	2
6576	2024-08-09	INFO	f	Isroilova Munisa	2	3
6577	2024-08-12	INFO	t	Abduxakimov Ramizjon	2	3
6578	2024-08-12	INFO	t	Abduxakimov Lazizjon 	2	3
6579	2024-08-14	INFO	t	Xakimov Fariz 	2	3
6580	2024-08-06	INFO	t	Xudoyberdiyev   Sardor	2	3
6581	2024-08-13		f	Toshpo'latovv Damir   	2	3
6582	2024-08-10		f	Jonibek  Shavkatov 	2	3
6713	2024-10-21		f	Samatova Aziza	2	3
6716	2024-10-21		f	Sadullayeva Farida	2	3
6585	2024-08-08		f	Sarvar Raximov	2	3
6586	2024-07-02	INFO	t	Sardor Allamuratov	2	3
6737	2024-10-31	INFO	t	Sirojev Shoxjaxon	5	1
6589	2024-06-01	INFO	t	Xusanov Otabek 	2	3
6590	2024-09-04	INFO	t	Ulmasov Shuxrat	2	3
6591	2024-09-04		f	Shamsiyev Doniyor	2	3
6592	2024-09-04		f	Fayzullayev Parviz	2	3
6593	2024-09-04	INFO	t	Isomov Feruz	2	3
6751	2024-11-08	INFO	t	Botirovs Yoqutoy	2	3
6595	2024-09-04	INFO	t	Ismatullayev Savlat	2	3
6596	2024-09-04	INFO	t	Raupov Diyorjon	2	3
6597	2024-09-04	INFO	t	Mamurov Sulaymon	2	3
6598	2024-08-01	INFO	t	Ravshanov Abdumalik	2	3
6599	2024-08-01		f	Abdullayeva Ruxshona	2	3
6600	2024-08-01		f	Maxmudjonov Ansor	2	3
6601	2024-08-01		f	Muhibidinova Sabina	2	3
6602	2024-08-01		f	Maxmudjonov Anvar	2	3
6603	2024-08-01		f	TURSUNOVA DILDORA	2	3
6604	2024-08-01		f	NABIYEVA PARVINA	2	3
6605	2024-08-01		f	Shirinova Farog'at	2	3
6606	2024-08-01		f	Baykabilova Onarxol	2	3
6607	2024-08-01		f	Axtamova Sabina	2	3
6608	2024-08-30		f	Xaliyarov Maxsud	2	3
6609	2024-08-30		f	Xaliyarov Maxsud	2	5
6610	2024-08-30		f	Xusenov Sardor	2	5
6757	2024-11-15	INFO	t	Muxiddinov Baxodir	2	3
6758	2024-11-15		t	Xudoyorov Orzubek	2	3
6764	2024-08-03	INFO	t	Mahmudov Ulmas 	2	3
6770	2024-11-08		f	Choriyev Rajabali 	2	1
6780	2024-11-18	INFO	t	Marufjonov Masrurjon	2	3
6781	2024-11-18	INFO	t	Abdimajitov Sultonbek	2	3
6785	2024-11-29	INFO	t	Muhammadjonov Ibrohimjon	2	3
6790	2024-11-29	INFO	t	Baxrilloyev Muxammadrizo	2	3
6797	2024-10-20		f	Abduvoxidova Ro'zigul	4	3
6803	2024-10-22		f	Boltayeva Rayxona	4	3
6804	2024-10-22		f	Toyirova Nigora	4	3
6813	2024-10-22		f	Djalilova Xadicha	4	3
6814	2024-10-22		f	Mamaraximova Zamira	4	3
6820	2024-10-22		f	Safararova Zebo	4	3
6821	2024-10-22		f	Vaxitova Mavjuda	4	3
6822	2024-10-22		f	Turabova Ra'no	4	3
6823	2024-10-22		f	Mirsalova Gulnoza	4	3
6824	2024-10-22		f	Bektemirova Nargiza	4	3
6825	2024-10-22		f	Sodiqova Iroda	4	3
6826	2024-10-22		f	Tuganova Manzura	4	3
6611	2024-08-30		f	Kim Aleksey	2	5
6612	2024-08-30		f	Sheraliev Sherzod	2	5
6613	2024-08-30		f	Tolibov Oybek	2	5
6614	2024-08-30		f	Mardonov Shaxriyor	2	5
6615	2024-08-30		f	Muminov Sardor	2	5
6616	2024-08-30		f	Rashidov Dadajon	2	5
6617	2024-08-30		f	Abdugafarov Islombek	2	5
6618	2024-08-30		f	Saidov Azimjon	2	5
6619	2024-08-22		f	 Dilshod Urinov	2	9
6620	2024-07-20	INFO	t	Soibjamalov  Nurmuhammad 	2	2
6621	2024-08-20	INFO	t	Sunnatov  Sherzod	2	3
6645	2024-09-07	INFO	t	Baratov Jurabek	2	2
6654	2024-09-21	INFO	t	Radjabov Baxtiyor	2	3
6663	2024-09-08	INFO	t	Hamidov Oybek	2	5
6664	2024-09-08		f	Ziyatova Shaxrizoda	2	5
6665	2024-09-22		f	Xoldarova Dilafruz	2	3
6666	2024-09-22		f	Ibragimova Mohigul	2	3
6667	2024-06-20		f	Baxodirova Shaxrizoda	2	3
6673	2024-09-30	INFO	f	Nodirova Xurshida	2	3
6681	2024-09-20	INFO	t	Abduvoxidov  Iftixor	2	2
6687	2024-10-01	INFO	t	Samejonov Saidjon	2	7
6692	2024-10-09	INFO	t	Anorqulova Ozoda	2	3
6700	2024-10-21		f	Voseyeva Marjona	2	3
6701	2024-10-21		f	Xotamova Gulchexra	2	3
6702	2024-10-21		f	Usmanova Gulruxsor	2	3
6703	2024-10-21		f	Djurayeva Maysara	2	3
6704	2024-10-21		f	Rafiyeva Zulfiya	2	3
6711	2024-10-21		f	Qobilova Dilafro'z	2	3
6714	2024-10-21		f	Shadiyeva Baxora	2	3
6715	2024-10-21		f	Salimova Manzila	2	3
6717	2024-10-21		f	Axmedova Sayfura	2	3
6718	2024-10-21		f	Bakayeva Durdona	2	3
6719	2024-10-21		f	Ganiyeva Ta'lima	2	3
6720	2024-10-21		f	Shadiyeva Shaxnoza	2	3
6722	2024-10-21		f	Mirsaidova Sanobar	2	3
6723	2024-10-21		f	Baratova Gulmira	2	3
6724	2024-10-21		f	Baxriyeva Baxora	2	3
6726	2024-10-21		f	Qodirova Firuza	2	3
6738	2024-10-31	INFO	t	Sirojev Shoxjaxon	1	1
6747	2024-09-01	INFO	t	Tolibdjanov Abdullo	2	7
6752	2024-11-07	INFO	t	Qobuljonov lazizbek	2	3
6759	2024-11-15	INFO	t	Xamroqulov Jasurbek	2	3
6765	2024-11-16	INFO	t	Mamatqulov Umidjon	2	3
6771	2024-11-08	INFO	t	Turg‘unov Ixroriddin 	2	1
6772	2024-11-08	INFO	f	Lapasov Nurislom 	2	1
6773	2024-11-08	INFO	f	Abduraximov Mirjalol 	2	1
6782	2024-11-22	INFO	t	Shukurullayev Farrux	2	6
6786	2024-11-29	INFO	t	Yarov Samir	2	3
6791	2024-10-24	INFO	f	Xolboyeva Yaxshigul	3	3
6792	2024-10-24		f	Gulboyeva Shaxzoda	4	3
6827	2024-10-22		f	Xujakeldiyev Botir	4	3
6828	2024-10-22		f	Tadjibayeva Nilufar	4	3
6829	2024-10-22		f	Baxriyeva Surayyo	4	3
6838	2024-12-28	INFO	f	Berdikulova Moxichexra	2	3
6870	2024-12-28		t	Aliyev Ravshan	2	3
6871	2024-12-28		f	Murodova Muxarram	2	3
6872	2024-12-28		f	Nasriyeva Zuxro	2	3
6873	2024-12-28		f	Fayzieva Zulxumor	2	3
6874	2024-12-28		f	Xudaynazarova Dildora	2	3
6875	2024-12-28		f	Davronova Musavvar	2	3
6876	2024-12-28		t	Valixodjayev Firuz	2	3
6877	2024-12-28		t	Kichiboyev Jasur	2	3
6878	2024-12-28		f	To'xsanzoda Surayyoi	2	3
6879	2024-12-28		t	Artikov Sharaf	2	3
6887	2024-12-21	INFO	f	Muhammadrasul  Udasov 	2	3
6897	2024-11-01		f	Eshpulatova Dilrabo	4	3
6898	2024-11-01		f	Kodirova Manzura	4	3
6907	2024-11-01		f	Ismatova Sarvinoz	4	3
6908	2024-11-01		f	Xatamova Sarvinoz	4	3
6917	2025-01-27	INFO	t	Xamrakulov Jasurbek	2	3
6922	2022-05-31		t	Ismailov Islombek	2	3
6924	2025-01-29	INFO	t	Baxtiyorov Shoxrux	2	3
6925	2025-01-29	INFO	t	Muxiddinov Mironshox	2	3
6927	2025-01-29	INFO	t	Axmedjanov Abubakr	2	3
6929	2025-01-15	INFO	t	Turayev Shaxzod 	2	3
6930	2025-01-15		f	Tuxtamurodov Kenchabek	2	3
6931	2025-01-28		f	Shaxriyor Ablakimov	2	3
6934	2025-01-15	INFO	t	Tuxtamurodov Kenjabek	2	3
6935	2025-02-07		f	Abduhalimov Ramiz	2	6
6936	2025-02-07		f	Shavkatov Jonibek	2	6
6940	2025-02-18	INFO	t	Bunyodbek Yoqubov	2	3
6944	2025-02-07	INFO	t	Zarifov Sarvar	2	6
6945	2024-04-16		f	Shamsiddin Toxirov	2	3
6947	2025-03-12	INFO	t	Uralov Doston	2	2
6950	2025-03-19		t	Fayzullayev Diyor	2	3
6951	2025-03-18		t	Ulmasov Jasurbek	2	3
6953	2025-03-19		t	Amirov Amriddin	2	3
6954	2025-03-19		t	Davronov Ilhom	2	3
6956	2025-03-18		t	Abduxakimov Murodjon	2	3
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: cert_user
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
create-tables	itoshpulatov	db/changelog/changes/create-tables.xml	2023-03-03 08:30:12.283834	1	EXECUTED	8:39e7178264d306f8b64da30dfc37a582	sql		\N	4.16.1	\N	\N	7832212069
init-db	itoshpulatov	db/changelog/changes/init-db.xml	2023-03-03 08:30:12.32792	2	EXECUTED	8:41aee3f76f90d203fc93f048dafdfa24	insert tableName=users		\N	4.16.1	\N	\N	7832212069
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: cert_user
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cert_user
--

COPY public.users (id, login, name, password, role) FROM stdin;
1	root	SUPER_ADMIN	$2a$10$.rPXqH0fJ89ReaueIwtGKOQN.BGPN4YAiMLofG/prSptG1z.uAb.C	ADMIN
\.


--
-- Name: certificate_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cert_user
--

SELECT pg_catalog.setval('public.certificate_category_id_seq', 10, true);


--
-- Name: certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cert_user
--

SELECT pg_catalog.setval('public.certificates_id_seq', 6956, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cert_user
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: certificate_category certificate_category_pkey; Type: CONSTRAINT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.certificate_category
    ADD CONSTRAINT certificate_category_pkey PRIMARY KEY (id);


--
-- Name: certificates certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (id);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: certificates fkqrhnue65ptkugwk03gspjovvn; Type: FK CONSTRAINT; Schema: public; Owner: cert_user
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT fkqrhnue65ptkugwk03gspjovvn FOREIGN KEY (category_id) REFERENCES public.certificate_category(id);


--
-- PostgreSQL database dump complete
--

