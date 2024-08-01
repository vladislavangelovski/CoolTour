--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: object; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.object (
    id bigint NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    name character varying(255),
    type character varying(255),
    wikidata character varying(255)
);


ALTER TABLE public.object OWNER TO postgres;

--
-- Name: object_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.object_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.object_id_seq OWNER TO postgres;

--
-- Name: object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.object_id_seq OWNED BY public.object.id;


--
-- Name: user_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts (
    username character varying(255) NOT NULL,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255)
);


ALTER TABLE public.user_accounts OWNER TO postgres;

--
-- Name: user_accounts_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_accounts_objects (
    user_username character varying(255) NOT NULL,
    objects_id bigint NOT NULL
);


ALTER TABLE public.user_accounts_objects OWNER TO postgres;

--
-- Name: object id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object ALTER COLUMN id SET DEFAULT nextval('public.object_id_seq'::regclass);


--
-- Data for Name: object; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.object (id, latitude, longitude, name, type, wikidata) FROM stdin;
39	21.5387590290493	41.3616624992586	Маркови Кули	castle	Q1283784
40	21.5403343492389	41.3555997908526	Куќата на Мантови	archaeological_site	Q98356997
41	21.3922894003779	42.0165071087692	Скупи	archaeological_site	Q149203
42	21.4298353982129	42.0083467444412	Француски гробишта	monument	\N
43	20.9600026870848	42.0194932777611	Тетовско Кале	castle	\N
44	20.7909731975392	41.1153185071689	Самуилова тврдина	castle	Q1283801
45	20.7937553377039	41.1146471893845	Антички театар	archaeological_site	Q3180446
46	20.790949721424	41.1128003799649	Плаошник	archaeological_site	Q7201685
47	21.33389765	41.0308805	Саат Кула	tower	\N
48	21.3422019920684	41.0108876774661	Хераклеа Линкестис	archaeological_site	Q1142395
49	21.7226476705728	42.1454142539226	Споменик Костурница	monument	\N
50	21.4333832384547	41.9984655999692	Меморијален центар на холокаустот на Евреите од Македонија	memorial	Q3333150
51	20.7406422605021	40.9139503993244	Манастир „Свети Наум“	church	Q164216
52	22.3623531002732	42.208741462401	Манастир Св. Јоаким Осоговски	monastery	Q1283734
53	22.2282941120213	42.0132518371762	Лесновски манастир	monastery	\N
54	21.4282951297537	42.1256135314241	Манастир Св. Богородица	monastery	\N
55	21.4695997312076	42.1097792499087	Манастир Св. Никола	monastery	\N
56	22.4090663521405	41.9215489999365	Средновековна Кула	tower	\N
58	22.2904022024326	41.7987549876191	Баргала	ruins	\N
59	21.3384691845389	41.0349732005294	Џамија Ајдар Кади	mosque	\N
60	20.9663937833902	41.5129614767676	Китино Кале	monument	\N
61	20.9887439275927	40.8670435511419	Стара базилика	archaeological_site	\N
62	20.9904397065953	40.8681482498157	Римска цистерна	archaeological_site	\N
63	20.9907631	40.86889895	Старохристијанска базилика	archaeological_site	\N
64	20.99092272423	40.8685851988684	Римска Куќа	archaeological_site	\N
65	20.9904650061837	40.8692875001566	Римска куќа	archaeological_site	\N
66	20.9910665488439	40.869225198412	Ранохристијанска базилика	archaeological_site	\N
67	21.9732769362581	41.5519774489323	Стоби	archaeological_site	Q1371168
68	22.6298589096097	41.4324703816522	Цареви Кули	archaeological_site	\N
69	21.2463013938133	41.3744784755609	Спомен куќа Тоше Проески	memorial	\N
70	21.2483715068304	41.3774083920295	Македониум	monument	Q2717956
71	20.763053998257	41.1406504410491	Базилика Свети Еразмо"	ruins	\N
72	20.7409617022108	40.913847915588	Манастир „Свети Наум	monastery	\N
73	21.3147456561748	41.2581739144568	Кале	archaeological_site	\N
74	21.342132632302	41.0113980726256	Roman Theater of Heraclea Lyncestis	ruins	\N
76	22.5219821873112	41.1485746025518	Вардарски Рид	archaeological_site	\N
77	22.493717859445	41.2774695177062	Isar-Marvinci	archaeological_site	\N
78	21.5054241014021	42.0013715177902	Тумба Маџари	archaeological_site	Q3408436
80	21.43242535	41.9944541	Порта Македонија	monument	Q3078453
81	21.2185605036741	41.2409900028176	Градиште	archaeological_site	\N
82	21.3985736694403	41.2441667887854	Стибера	archaeological_site	\N
83	20.9667544392354	42.0057428923585	Шарена Џамија	mosque	Q1009896
85	21.4370402	42.00144135	Безистен	building	\N
86	22.1002722367565	41.5033905560184	Антигона	archaeological_site	\N
87	21.5545987022712	41.3341999148475	Могила на непобедените	memorial	Q3400797
88	21.8280767588256	42.1982400330532	Св. Великомаченик Георгиј	church	\N
89	21.5379213080229	41.4052994669413	Трескавец	archaeological_site	\N
90	22.1875375952684	41.7383855070042	Меморијален комплекс на паднатите борци на Револуцијата	memorial	Q12286474
91	22.1869328141275	41.7387537789144	Исар	ruins	Q20570361
93	22.18210515	41.73631045	Гоце Делчев	monument	\N
94	21.37854295	42.1027654	св. Тројица	monastery	\N
95	21.4330479364544	42.0008009459055	Скопско кале	castle	Q1262367
96	21.447648254489	42.0055286499369	Штакле	castle	\N
97	21.3424338015683	41.0110271511913	Голема Базилика	ruins	\N
98	21.29151425	41.9497131	Света Недела	monastery	\N
99	21.912475182447	41.847152882894	Билазора	archaeological_site	Q2929164
100	21.435834284568	41.9963933714568	Колонада	monument	\N
101	22.7537921826076	41.3824822038876	Roman & Ottoman Bathouse	archaeological_site	\N
102	20.7913899	41.11219845	Baptisterium	building	\N
103	21.9565055714971	41.8291368157473	Geoglif Sv. Nikole	archaeological_site	\N
104	22.1940374651987	41.737251231262	Александар Македонски	monument	\N
105	21.9099884	41.84973375	Bilazora - Water Reservoir	archaeological_site	\N
106	21.783420514631	41.7161520024949	Велешки Гемиџија	monument	\N
107	21.1839364036395	42.1566484002457	Црквиште	archaeological_site	\N
108	21.1675627800738	41.9769687565006	Масакр кај Карпалак	battlefield	\N
109	21.2009467056626	41.2381304619662	Гориче	archaeological_site	Q20565635
110	20.966115933074	41.4530878464477	Спомен плоча - Ѓурѓејца	memorial	\N
111	21.9388571173051	41.8647410292544	Споменик на Народоослободителната борба	memorial	\N
112	21.939816715659	41.8647301103647	Споменик „Александар Серафимов“	monument	\N
115	20.7934864191893	41.1128381761434	Archaeological site of Mancevci	\N	\N
116	21.744353400305	41.0880670490849	Пешта	archaeological_site	\N
117	21.5896205249576	41.2993699498709	Марков Ѕид	castle	\N
118	21.7260698717244	41.1650653764588	Мариовски Манастир	archaeological_site	Q97232594
119	21.7184588102331	41.2061566664856	Градот / Маркови Кули	archaeological_site	Q98793101
121	21.6521190257961	41.196779199831	Бабо	archaeological_site	\N
122	21.5883962800046	41.2066555720136	Старо Бонче	archaeological_site	Q12910706
123	21.6162425930187	41.2078923799286	Пелагон	archaeological_site	Q12909483
124	21.2735584715703	41.5070505005064	Кула	archaeological_site	Q20566679
125	21.7860548240333	40.9306998491239	Св. Петар	tomb	\N
126	21.0259093943887	42.0676126953671	Лешок	archaeological_site	\N
127	22.4069929757864	41.918889847185	Споменин на Слободата	monument	\N
128	21.2374158057834	41.5417573599786	Девини Кули	archaeological_site	Q20566325
129	21.3499781171094	41.5183837645049	Св. Никола	archaeological_site	Q23037880
130	22.5027350158683	41.877287608844	Viničko Kale	ruins	\N
131	21.5329398947498	41.3588267059619	Куќата на Ѓошеви	archaeological_site	Q97229810
132	21.3312879085943	41.0155508536879	Битолска Тврдина	castle	Q3078416
133	21.40006855	41.2017673	Мучеинци	archaeological_site	Q25553802
134	22.188295844629	41.7362862007982	Св Кирил и Методи	monument	\N
135	21.4188873	42.0223735	Аквадукт Скопје	aqueduct	Q862032
136	21.4328576	41.9968465	Камен мост	monument	\N
137	21.433319	41.993673726168	Питу Гули	\N	\N
141	21.4338778	42.000871626168	Влез на Скопското кале	city_gate	\N
143	22.0228463	41.432521226168	Костурница	monument	\N
144	20.7914836	41.115557626168	Лихнид	archaeological_site	\N
145	21.257898	41.337722826168	Мечкин Камен	monument	\N
146	21.2273776	41.388076826168	Слива	monument	\N
147	22.4069917	41.918890326168	Споменик на слободата	monument	Q3402642
148	22.3507979	42.291609426168	WWII Battle - 17th Macedonian Brigade ws Bulgarian army	monument	\N
149	20.679835	41.177661626168	Споменик на Револуцијата	monument	\N
150	21.4314474	41.995903526168	Споменик на Александар Македонски	monument	Q3497603
151	20.5620379	41.634628126168	Lukov	memorial	\N
152	21.3527926	42.058669726168	Rimska crkva	archaeological_site	\N
153	21.3548716	42.084345226168	Давина Кула	archaeological_site	\N
154	21.2786993	42.058749426168	Голема Кула - Кучково	archaeological_site	\N
155	21.2844339	42.058574126168	Мала Кула - Кучково	archaeological_site	\N
156	22.5899869	42.110244226168	Куцолиница / 86	boundary_stone	\N
157	22.3705411	42.308961226168	Китка	boundary_stone	\N
158	22.5162744	42.158009326168	Руен	boundary_stone	Q46499
159	21.7200501	42.135518926168	Zena	monument	\N
160	21.398848	42.076691326168	Gradiste kaj s.Brazda	archaeological_site	\N
161	21.2991931	41.950593626168	Манастир Св. Андреј	monument	\N
162	21.4617772	42.001723326168	Филип Втори	monument	\N
163	21.4349949	41.998460226168	Филип II Македонски	memorial	\N
164	21.4254968	41.998305726168	Св. Климент Охридски	memorial	Q158504
165	21.437162	41.999316326168	Скендербег	memorial	Q12289741
166	21.1195933	40.857020526168	Маркова Нога	monument	\N
167	21.809838	42.170666526168	Костоперска Карпа	archaeological_site	Q20570399
168	21.953118	42.263381826168	Кокино	archaeological_site	Q1326977
169	21.7194275	42.135577826168	Јосип Броз - Тито	monument	\N
170	22.2541295	41.409420326168	Марков Град	ruins	\N
171	21.8500367	42.278251126168	Меморијален центар АСНОМ	memorial	\N
172	20.9108574	41.794932026168	Sahat Kula	monument	\N
173	21.1545235	42.106879526168	Орашко Кале	ruins	\N
174	20.9702432	41.511926926168	Саат кула	monument	\N
176	22.4937679	41.277578426168	Isar / Idomenae	archaeological_site	\N
177	21.7192303	42.134696226168	Куде сат	monument	\N
178	21.7629669	41.429325126168	Ножот	memorial	Q12273269
179	21.5519842	41.345118226168	Народен Херој Кузман Јосифоски-Питу	monument	\N
180	21.554267	41.345151826168	Пеце Атанасоски	monument	\N
181	21.5522173	41.345261726168	Ѓорче Петров	monument	\N
183	21.2482546	41.374868626168	Тоше Проески	tomb	\N
184	21.2463296	41.373666526168	Никола Карев	monument	\N
185	21.3368929	41.024615026168	Стефан Наумов-Стив	memorial	\N
186	21.2497316	41.364969226168	Споменик на Питу Гули	monument	\N
187	21.2484409	41.365385626168	Наум Наумоски-Борче	monument	\N
188	21.9751675	41.551637926168	Римски театар	ruins	Q1371168
189	22.5001795	41.145858626168	Два Коња	monument	\N
190	21.9862589	42.083621826168	Цоцев Камен	archaeological_site	Q599269
191	20.9119981	40.976520326168	Преспанско Советување	monument	\N
192	21.5564074	41.347554426168	Карпалак	monument	\N
193	21.7853235	42.149136826168	Zebrnjak	memorial	Q3400817
194	20.7995376	41.112693626168	Свети Климент Охридски	monument	Q158504
195	20.799994	41.112047626168	Свети Кирил и Методиј	monument	Q239925
196	20.7990226	41.112295526168	Свети Наум Охридски Чудотворец	monument	Q350061
197	20.7977703	41.112460626168	Долна Порта	city_gate	\N
198	21.9627449	42.085398426168	Мачка камен	archaeological_site	\N
199	21.0770931	41.418229126168	Христо Узунов	monument	Q3407165
200	20.8135106	41.059679626168	Sv. Nikola	wayside_shrine	\N
201	20.9636151	41.906262926168	Споменик на жртви од НОВ	monument	\N
203	21.5528281	41.346254426168	Методија Андонов-Ченто	monument	\N
205	21.7360635	41.822914026168	Масакр кај Пуста Кула	memorial	\N
206	21.5479723	41.343432326168	Карпалак 2001	monument	\N
207	21.554646	41.334112326168	Крипта	monument	\N
208	21.5548417	41.345456026168	Итар Пејо	monument	\N
209	22.8187714	41.975162026168	Dedo Jakim - Mill	monument	\N
210	22.8193451	41.976905426168	Ilin Kamen	monument	\N
211	22.7768724	41.966861126168	Гоце Делчев (Биста)	monument	\N
213	22.7716387	41.965380126168	Споменик на паднати борци во НОБ	monument	\N
215	21.426153	41.995216926168	Josip Broz Tito	memorial	\N
217	22.5093733	41.139367026168	Леонид Јанков	monument	\N
218	21.4339766	41.997707926168	Св. Кирил и Методиј	memorial	\N
219	21.4341509	41.997562426168	Св. Климент Охридски и Наум Охридски Чудотворец	memorial	\N
220	21.4313414	41.995391726168	Цар Самоил	memorial	Q12910631
221	21.4321474	41.996494926168	Даме Груев	memorial	\N
222	21.4323054	41.996879926168	Јустинијан I	memorial	Q12910626
223	21.4344182	41.997904626168	Олимпија	memorial	\N
224	21.4337226	41.993303026168	Прометеј	monument	\N
225	21.439106	41.983433326168	Тодор Александров	monument	\N
226	21.4369668	41.986749026168	Стара Рампа	monument	\N
227	21.4317487	41.993668426168	Бегова кула	monument	\N
229	21.6749495	41.366107926168	Борка Талески-Модерното / Лазо Филиповски-Лавски	memorial	\N
230	20.7412554	40.914214926168	Свети Наум	memorial	\N
231	22.1903758	41.736405026168	Споменик на загинатите евреи	monument	\N
232	21.4375046	42.000853026168	Мустафа-пашина џамија	monument	\N
233	21.4333848	41.913046726168	Vila Varvarka	castle	\N
234	21.4108745	41.994927926168	Споменик на Јуриј Гагарин	monument	\N
236	21.4283664	42.001680426168	Вера Јоциќ	monument	\N
237	21.5532375	41.345541626168	Марко Мрњавчевиќ	monument	\N
238	21.5505634	41.345070426168	Круме Кепески	monument	\N
239	21.5506707	41.345132926168	Блаже Конески	monument	\N
240	21.5505581	41.345179226168	Марко Цепенков	monument	\N
243	22.3602199	42.311096326168	Шуплив Камен	boundary_stone	\N
244	20.7836677	41.278810126168	Ботун	memorial	\N
246	21.5025867	41.373852426168	Борецот	monument	\N
247	20.6783749	41.173652626168	Сергеј Есенин	monument	\N
248	22.1823517	42.076946126168	Емин-бегова кула	monument	\N
249	22.1826261	42.076883826168	Крстева кула	monument	\N
250	22.6878453	41.194993926168	Споменик „Солунски фронт“ од I светска војна	monument	\N
251	22.1822635	42.076862826168	Хаџикостова кула	monument	\N
252	22.1818109	42.079205326168	Саат-кула	monument	\N
253	22.1809805	42.078828926168	Златковичева кула	monument	\N
254	22.1794714	42.078695726168	Симиќева кула	monument	\N
255	22.6796979	41.440979626168	Струмица-Кристал-64	monument	\N
256	20.7958058	41.114203526168	Григор Прличев	tomb	\N
257	22.9275511	41.338454326168	Тумба / Τούμπα	boundary_stone	Q2458111
258	21.3415263	41.006774026168	Св. Троица	church	\N
259	22.5039935	41.884566126168	Теракота	memorial	\N
260	20.6778868	41.174527226168	Никола Кукунешоски - Дунѓерски	memorial	\N
261	20.6779485	41.174731126168	Крсте Јовановски	memorial	\N
262	20.6779833	41.174945126168	Димче Кошаркоски	memorial	\N
263	20.6782194	41.175653726168	Боро Шаин	memorial	\N
264	20.6781791	41.175518526168	Јово Стефановски - Риле	memorial	\N
265	20.6781416	41.175389326168	Разме Малески	memorial	\N
266	20.6781067	41.175284326168	Петре Гончески - Гиле	memorial	\N
267	20.8033957	41.059240026168	Св. Благовештение	wayside_shrine	\N
269	21.9665342	42.100301126168	Konjuh	archaeological_site	\N
270	21.9658672	42.094999526168	Rotonda Konjuh	ruins	\N
271	21.9606298	42.099574626168	Bosko Chapel	wayside_shrine	\N
272	22.289829	41.799512526168	Bargala	archaeological_site	\N
273	22.7542141	41.382516126168	Roman Bathhouse	archaeological_site	\N
274	21.4434502	42.016957126168	Doma	monument	\N
275	21.4319995	41.995275926168	Спомен плоча на Мајка Тереза	memorial	\N
276	20.8078335	41.105727826168	Ард ден Долард	memorial	\N
277	21.4422187	41.958616026168	Резиденцијата Главинов	castle	\N
278	21.4306041	41.995713626168	Методија Андонов - Ченто	memorial	\N
279	20.9681527	41.997443326168	terminal mitnitsa tetovo	monument	\N
280	21.2926787	41.988540526168	patarina-160	monument	\N
281	21.9562049	41.828971526168	Kanda - Geoglif Sv. Nikole	monument	\N
282	22.6569551	41.721344126168	Споменик на Малешевскиот (Малешки) народноослободителен одред	memorial	\N
284	22.5905605	41.985637726168	Калата	archaeological_site	Q43276459
285	21.628172	41.695236626168	Бањичко Кале	archaeological_site	Q61121392
286	20.7630424	41.374707926168	Mirče Acev Bataljon	monument	\N
287	20.795694	41.112095326168	Коста Абраш	memorial	\N
288	20.8071328	41.112403226168	Henry Dunant	memorial	\N
289	21.3684104	41.275459526168	Љубе Грујоски	monument	Q20562690
290	22.7227512	41.185719826168	Споменик на Дојрана	monument	\N
291	22.7233826	41.182594726168	Чешма Света Петка	monument	\N
292	20.7762352	41.185004826168	AXX110 / RA-42390	memorial	\N
293	21.6157628	41.977900126168	PMK301 / PH-KXL	memorial	\N
294	21.5605466	41.372464326168	Дабнички масакр	memorial	\N
295	21.6536957	41.206495326168	Толе Паша	monument	\N
296	21.5476216	42.022416026168	Ацо Ангеловски	memorial	\N
297	21.5480468	42.022555626168	Кирил Петрушевски	memorial	\N
298	21.5486015	42.022704426168	Ерол Готак	memorial	\N
299	21.1660504	41.976485126168	Нане Наумоски	memorial	\N
300	21.1773385	41.977847026168	Сашо Китаноски	memorial	\N
301	21.1679024	41.977530026168	Бранко Секулоски	memorial	\N
302	21.1745241	41.978197126168	Горан Миноски	memorial	\N
303	21.1713626	41.977893026168	Марко Деспотоски	memorial	\N
304	21.1675604	41.976716726168	Ердован Шабаноски	memorial	\N
306	21.1717935	41.977040626168	Дарко Велјаноски	memorial	\N
307	21.1747438	41.976789326168	Веби Рушитоски	memorial	\N
308	21.1770879	41.977042026168	Пеце Секулоски	memorial	\N
310	22.0284286	41.401426226168	Масакр во Ваташа	memorial	Q12908460
311	21.5583071	41.342870426168	Пере Тошев	tomb	\N
312	20.8721449	41.443659226168	Duko Tasev	memorial	\N
315	20.7949057	41.115020626168	Горна Порта	city_gate	\N
316	20.9658462	41.452899426168	Битката на Ѓурѓејца	battlefield	\N
317	21.942062	41.864689226168	Споменик Св. Никола	monument	\N
318	21.9410121	41.864464526168	Споменик „Лазар Колишевски“	monument	\N
319	21.9386585	41.862755726168	Св. Илија	memorial	\N
320	22.412778	41.915660226168	Споменик на Никола Карев	monument	\N
321	21.5629735	41.346494426168	Кире Гаврилоски-Јане / Круме Волнароски-Коља	memorial	\N
323	21.2464617	41.376172726168	Мирослав Јоксимовиќ	memorial	\N
324	21.2488407	41.365378626168	Кица Петрески	monument	\N
325	21.6650899	41.866812526168	VAM-304	monument	\N
326	22.6491133	41.449857726168	МАР-7712	monument	\N
327	21.4292436	41.999863226168	Ослободителите на Скопје	monument	\N
328	20.9185104	42.067376726168	Вејце	monument	\N
329	21.4485415	41.999861826168	Генерал Михаило Апостолски	monument	\N
330	21.4506665	41.998825126168	Генерал Михајло Апостолски	memorial	\N
331	21.4412009	41.996018426168	Krste Petkov Misirkov	monument	\N
332	21.4408764	41.996080226168	Blaže Koneski	monument	\N
333	21.0216359	41.656028226168	Sultana	memorial	\N
334	20.881732	41.719225226168	Xhemë Hasa	memorial	\N
335	20.9510739	41.596495626168	Albanian Mother	memorial	\N
336	21.3208996	41.010847626168	Св. Георгиј	wayside_shrine	\N
337	20.799333	41.111981826168	Фаќач на чесниот крст	monument	\N
338	21.4326511	41.994530426168	Павел Шатев	monument	\N
339	21.4332709	41.993726026168	Невена Георгиева-Дуња	memorial	\N
340	21.0288552	42.064009726168	Ѓоко Лазаревски	monument	\N
341	21.027212	42.070017826168	Теодорит	tomb	\N
356	21.0282911	42.066965426168	Кирил Пејчиновиќ-Тетоец	tomb	\N
357	21.0285176	42.066870126168	Загинати Лешочани во војните 1903-2001	monument	\N
358	20.798276	41.114153426168	Нада Филева	memorial	\N
359	21.4185013	42.004308226168	Dane kraptzew	memorial	\N
360	21.4296159	41.991818226168	Атентат на Киро Глигоров	memorial	\N
361	21.6070578	41.364326126168	Св. Петка	wayside_shrine	\N
362	21.3293819	41.018858026168	Ф-86Е	aircraft	\N
363	21.3292773	41.018671826168	Ф-86Д	aircraft	\N
364	22.4105061	41.913592726168	Браќата Просветители Св. Кирил и Методиј	monument	\N
365	22.410612	41.914347326168	Љупчо Сантов	monument	\N
366	21.4572557	41.204511026168	Братска гробница	tomb	\N
367	21.6216919	41.975516726168	Сухои Су-25УБ	aircraft	Q192137
368	21.6219516	41.975457726168	Сухои Су-25К	aircraft	Q192137
371	21.6200758	41.428641526168	Игуменија Катерина	tomb	\N
372	20.8876605	41.878183526168	Naim Frasheri	monument	\N
373	20.8835051	41.878351026168	Naser Ademi	monument	\N
374	20.883467	41.878215626168	Deshmoret e Ushtrise Clirimtare Kombetare	monument	\N
375	22.1778987	42.000150626168	Јаким Д Стојковски	memorial	\N
377	20.6778798	41.175797526168	Нико Нестор-Дживджан	memorial	\N
378	20.6791018	41.175635326168	Дрини дент	memorial	\N
379	21.4328484	41.996412526168	Споменик „Солунски атентатори и Гемиџии“	memorial	\N
380	21.288822	41.953818926168	Света Троица и Свети Ѓорѓија	ruins	\N
381	21.1617392	41.811712426168	Голема Пеш	archaeological_site	Q20565511
\.


--
-- Data for Name: user_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts (username, email, first_name, last_name, password) FROM stdin;
vlade25	john@example.com	Vlade	Angelovski	Test123!
\.


--
-- Data for Name: user_accounts_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_accounts_objects (user_username, objects_id) FROM stdin;
\.


--
-- Name: object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.object_id_seq', 381, true);


--
-- Name: object object_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT object_pkey PRIMARY KEY (id);


--
-- Name: object uk25xjh9klx1oi7k9rcvw7yh49p; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object
    ADD CONSTRAINT uk25xjh9klx1oi7k9rcvw7yh49p UNIQUE (name);


--
-- Name: user_accounts_objects uk_ijlfcjygkl7i4lp0981ma9rdm; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts_objects
    ADD CONSTRAINT uk_ijlfcjygkl7i4lp0981ma9rdm UNIQUE (objects_id);


--
-- Name: user_accounts user_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts
    ADD CONSTRAINT user_accounts_pkey PRIMARY KEY (username);


--
-- Name: user_accounts_objects fk2ve19httskcq3sua5qquw337i; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts_objects
    ADD CONSTRAINT fk2ve19httskcq3sua5qquw337i FOREIGN KEY (user_username) REFERENCES public.user_accounts(username);


--
-- Name: user_accounts_objects fkou8x7f6h8vmnv4t8qkayjy36v; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_accounts_objects
    ADD CONSTRAINT fkou8x7f6h8vmnv4t8qkayjy36v FOREIGN KEY (objects_id) REFERENCES public.object(id);


--
-- PostgreSQL database dump complete
--

