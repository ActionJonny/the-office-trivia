--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.18
-- Dumped by pg_dump version 12.2

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

--
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.knex_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: theOfficeTrivia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."theOfficeTrivia" (
    id integer NOT NULL,
    "triviaQuestion" character varying(255),
    "triviaAnswer" character varying(255),
    trivia_id integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: theOfficeTrivia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."theOfficeTrivia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: theOfficeTrivia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."theOfficeTrivia_id_seq" OWNED BY public."theOfficeTrivia".id;


--
-- Name: triviaGames; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."triviaGames" (
    id integer NOT NULL,
    "triviaName" character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: triviaGames_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."triviaGames_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: triviaGames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."triviaGames_id_seq" OWNED BY public."triviaGames".id;


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: theOfficeTrivia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."theOfficeTrivia" ALTER COLUMN id SET DEFAULT nextval('public."theOfficeTrivia_id_seq"'::regclass);


--
-- Name: triviaGames id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."triviaGames" ALTER COLUMN id SET DEFAULT nextval('public."triviaGames_id_seq"'::regclass);


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
1	20200910171443_initial.js	1	2020-09-22 13:10:14.653-06
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: theOfficeTrivia; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."theOfficeTrivia" (id, "triviaQuestion", "triviaAnswer", trivia_id, created_at, updated_at) FROM stdin;
1	The casting team originally wanted who to audition for the role of Dwight?	John Krasinski	\N	2020-09-22 13:14:47.093883-06	2020-09-22 13:14:47.093883-06
2	John Krasinski, Mindy Kaling, and who else were all, at one point, interns at Late Night With Conan O’Brien?	Angela Kinsey	\N	2020-09-22 13:14:47.10977-06	2020-09-22 13:14:47.10977-06
3	Who almost didn’t work in The Office because he was committed to another NBC show called Come to Papa?	Steve Carell	\N	2020-09-22 13:14:47.115715-06	2020-09-22 13:14:47.115715-06
4	During his embarrassing Dundie award presentation, whom is Michael Scott presenting a Dundie award when he sings along to “You Sexy Thing” by ’70s British funk band Hot Chocolate?	Ryan	\N	2020-09-22 13:14:47.116772-06	2020-09-22 13:14:47.116772-06
5	In “The Alliance” episode, Michael is asked by Oscar to donate to his nephew’s walkathon for a charity. How much money does Michael donate, not realizing that the donation is per mile and not a flat amount?	$25	\N	2020-09-22 13:14:47.118446-06	2020-09-22 13:14:47.118446-06
6	Which character became Jim’s love interest after he moved to the Stamford branch in season three and joined the Scranton office during the merger?	Karen Filippelli	\N	2020-09-22 13:14:47.11905-06	2020-09-22 13:14:47.11905-06
7	What county in Pennsylvania is Dunder Mifflin Scranton branch located?	Lackawanna County	\N	2020-09-22 13:14:47.120872-06	2020-09-22 13:14:47.120872-06
8	What is the exclusive club that Pam, Oscar, and Toby Flenderson establish in the episode “Branch Wars”?	Finer Things Club	\N	2020-09-22 13:14:47.122061-06	2020-09-22 13:14:47.122061-06
9	What substance does Jim put office supplies owned by Dwight into?	Jello	\N	2020-09-22 13:14:47.127066-06	2020-09-22 13:14:47.127066-06
10	What is the name of the employee who started out as “the temp” in the Dunder Mifflin office?	Ryan	\N	2020-09-22 13:14:47.127616-06	2020-09-22 13:14:47.127616-06
11	Dwight owns and runs a farm in his spare time. What does this farm primarily produce?	Beets	\N	2020-09-22 13:14:47.128973-06	2020-09-22 13:14:47.128973-06
12	Rainn Wilson did not originally audition for the part of the iconic beet farming Dwight Schrute, instead he auditioned for which part?	Michael Scott	\N	2020-09-22 13:14:47.128951-06	2020-09-22 13:14:47.128951-06
13	In “Diversity Day” episode what famous comedian’s stand up routine does Michael imitate?	Chris Rock	\N	2020-09-22 13:14:47.132443-06	2020-09-22 13:14:47.132443-06
14	In the episode “The Client”, the employees were reading Michael’s movie script. Which employee read the part of Goldenface?	Oscar	\N	2020-09-22 13:14:47.1336-06	2020-09-22 13:14:47.1336-06
15	What does Michael burn his foot on?	A George Foreman Grill that he was cooking bacon on	\N	2020-09-22 13:14:47.134205-06	2020-09-22 13:14:47.134205-06
16	Who are the three main members of the party planning committee?	Phyllis, Angela, and Pam	\N	2020-09-22 13:14:47.134731-06	2020-09-22 13:14:47.134731-06
17	What does Michael pretend to fire Pam over in season one?	Stealing Post-It notes	\N	2020-09-22 13:14:47.135248-06	2020-09-22 13:14:47.135248-06
18	What kind of sandwich does Michael have a dream about when he’s the head of Michael Scott Paper Company?	Peanut butter and tunafish	\N	2020-09-22 13:14:47.14117-06	2020-09-22 13:14:47.14117-06
19	What’s the name of Dwight’s porcupine who he used to make it look like Jim was pranking him?	Henrietta	\N	2020-09-22 13:14:47.142626-06	2020-09-22 13:14:47.142626-06
20	What’s in the thermos that Michael offers Pam during morning deliveries for the Michael Scott Paper Company?	Milk and sugar	\N	2020-09-22 13:14:47.143216-06	2020-09-22 13:14:47.143216-06
21	What brand is Michael Scott wearing on the day he accidentally wearing a woman’s suit?	MISSsterious	\N	2020-09-22 13:14:47.143721-06	2020-09-22 13:14:47.143721-06
22	Who does Michael wear on his head during the activity on diversity day?	Martin Luther King Jr.	\N	2020-09-22 13:14:47.144223-06	2020-09-22 13:14:47.144223-06
23	During the episode, “Prince Family Paper,” what’s the secret signal that Dwight and Michael agree on using?	Licking your lips	\N	2020-09-22 13:14:47.144702-06	2020-09-22 13:14:47.144702-06
24	Who calls Jim by the nicknames “Tuna” or “Big Tuna”?	Andy	\N	2020-09-22 13:14:47.14518-06	2020-09-22 13:14:47.14518-06
25	At Jim and Pam’s wedding in the “Niagara” episode, what was Kevin wearing on his feet?	Tissue Boxes	\N	2020-09-22 13:14:47.145675-06	2020-09-22 13:14:47.145675-06
26	What does Jim use to make Dwight salivate in “Phyllis’ Wedding”?	Altoids	\N	2020-09-22 13:14:47.146314-06	2020-09-22 13:14:47.146314-06
27	What does Michael eat instead of ice cream because they don’t have any?	Mayo and black olives	\N	2020-09-22 13:14:47.146964-06	2020-09-22 13:14:47.146964-06
28	In the episode “The Coup”, the members of the Stamford branch play what video game with each other?	Call of Duty	\N	2020-09-22 13:14:47.151684-06	2020-09-22 13:14:47.151684-06
29	What of the following colors does Angela think is “whore-ish”?	Green	\N	2020-09-22 13:14:47.152173-06	2020-09-22 13:14:47.152173-06
30	Jim Halpert knows the flavor of yogurt that Pam likes best, what is it?	Mixed Berry	\N	2020-09-22 13:14:47.152653-06	2020-09-22 13:14:47.152653-06
31	Who took over Pam as the receptionist after she went to art school in season 5?	Ryan	\N	2020-09-22 13:14:47.153373-06	2020-09-22 13:14:47.153373-06
32	Who runs the warehouse below the Dunder Mifflin offices?	Darryl	\N	2020-09-22 13:14:47.15399-06	2020-09-22 13:14:47.15399-06
33	What does Dwight keep a pair of in his car for special occasions?	Birkenstocks	\N	2020-09-22 13:14:47.154602-06	2020-09-22 13:14:47.154602-06
34	What is Toby’s daughter’s name?	Sasha	\N	2020-09-22 13:14:47.155476-06	2020-09-22 13:14:47.155476-06
35	What is the name of the actor who plays Toby Flenderson?	Paul Lieberstein	\N	2020-09-22 13:14:47.157102-06	2020-09-22 13:14:47.157102-06
36	Which actor shares his entire name with his character?	Creed Bratton	\N	2020-09-22 13:14:47.160591-06	2020-09-22 13:14:47.160591-06
37	In 2019 Jenna Fischer and who else started an Office re-watch podcast entitled “The Office Ladies”?	Angela Kingsey	\N	2020-09-22 13:14:47.161093-06	2020-09-22 13:14:47.161093-06
38	In the episode “Fun Run”, who are the three employees that go out to eat in the middle of the run?	Creed, Oscar and Stanley	\N	2020-09-22 13:14:47.161847-06	2020-09-22 13:14:47.161847-06
39	Who served on the jury for the Scranton strangler case?	Toby Flenderson	\N	2020-09-22 13:14:47.162796-06	2020-09-22 13:14:47.162796-06
40	Who punches a hole in the wall in between Michael’s office and the conference room?	Andy	\N	2020-09-22 13:14:47.163562-06	2020-09-22 13:14:47.163562-06
41	NBC passed a pilot for a spin-off called “The Farm.” Who was it about?	Dwight Schrute	\N	2020-09-22 13:14:47.166474-06	2020-09-22 13:14:47.166474-06
42	After the show was first picked up, what did NBC planned on retitling the series in order to differentiate it from the original British version?	“The American Workplace”	\N	2020-09-22 13:14:47.167885-06	2020-09-22 13:14:47.167885-06
43	What actor starred in the British version of The Office?	Ricky Gervais	\N	2020-09-22 13:14:47.168931-06	2020-09-22 13:14:47.168931-06
44	Who is the proud owner of a Cornell hockey bobblehead?	Andy	\N	2020-09-22 13:14:47.169691-06	2020-09-22 13:14:47.169691-06
45	Through out the show it was revealed that one of the members of the office graduated High School with Michael. Who was it?	Phyllis	\N	2020-09-22 13:14:47.170651-06	2020-09-22 13:14:47.170651-06
46	In the Season 4 pilot episode “Fun Run”, what cause does Michael organize a fun run for?	Rabies	\N	2020-09-22 13:14:47.177517-06	2020-09-22 13:14:47.177517-06
47	What is the number one rated Country and Western station in Scranton, Pennsylvania? (hint	it’s a bumper sticker on Dwight’s desk)	\N	2020-09-22 13:14:47.178345-06	2020-09-22 13:14:47.178345-06
48	What color does Dwight paint Michael’s office when he thinks he’s taking over Michael’s job?	Black	\N	2020-09-22 13:14:47.179091-06	2020-09-22 13:14:47.179091-06
49	In what episode does Jim propose to Pam?	“Weight Loss”	\N	2020-09-22 13:14:47.180182-06	2020-09-22 13:14:47.180182-06
50	Which network produced “The Office”?	NBC	\N	2020-09-22 13:14:47.182885-06	2020-09-22 13:14:47.182885-06
51	What is the middle name of Gabe Lewis?	Susan	\N	2020-09-22 13:14:47.183818-06	2020-09-22 13:14:47.183818-06
52	What actor played Robert California?	James Spader	\N	2020-09-22 13:14:47.184565-06	2020-09-22 13:14:47.184565-06
53	Which of Angela’s cats does Dwight freeze?	Sprinkles	\N	2020-09-22 13:14:47.185107-06	2020-09-22 13:14:47.185107-06
55	Which office employee did Michael hit with his car?	Meredith	\N	2020-09-22 13:14:47.188796-06	2020-09-22 13:14:47.188796-06
54	Which cast member was having an affair with Angela’s fiancé, the senator?	Oscar	\N	2020-09-22 13:14:47.18578-06	2020-09-22 13:14:47.18578-06
70	Who wins the Fun Run in season 4?	Toby Flenderson	\N	2020-09-22 13:14:47.224445-06	2020-09-22 13:14:47.224445-06
79	How does Michael describe the wine in the episode, “Dinner Party”?	An oaky afterbirth	\N	2020-09-22 13:14:47.235043-06	2020-09-22 13:14:47.235043-06
88	In almost every meeting, Stanley is seen doing what?	A crossword puzzel	\N	2020-09-22 13:14:47.244555-06	2020-09-22 13:14:47.244555-06
98	What is the the name of the annual employee awards night on the show?	Dundies	\N	2020-09-22 13:14:47.253236-06	2020-09-22 13:14:47.253236-06
56	Who started the fire?	Ryan	\N	2020-09-22 13:14:47.191666-06	2020-09-22 13:14:47.191666-06
64	Where does Jim propose to Pam?	Gas station	\N	2020-09-22 13:14:47.212937-06	2020-09-22 13:14:47.212937-06
73	What actor on The Office shot the opening credit footage?	John Krasinski	\N	2020-09-22 13:14:47.228228-06	2020-09-22 13:14:47.228228-06
82	Who was responsible for casting The Office characters?	Allison Jones	\N	2020-09-22 13:14:47.240788-06	2020-09-22 13:14:47.240788-06
92	Which character speaks the the first line of the series and which character delivers the final line?	Michael Scott (Steve Carell), Pam Beesly (Jenna Fischer)	\N	2020-09-22 13:14:47.249737-06	2020-09-22 13:14:47.249737-06
101	After the Fun Run to beat Rabies, to whom is the oversized check made out?	Science	\N	2020-09-22 13:14:47.260008-06	2020-09-22 13:14:47.260008-06
57	What is Michael’s username for the online dating website?	Little Kid Lover	\N	2020-09-22 13:14:47.195909-06	2020-09-22 13:14:47.195909-06
65	Angela, played by Angela Kinsey, mentions that her favorite song is what?	Little Drummer Boy	\N	2020-09-22 13:14:47.217473-06	2020-09-22 13:14:47.217473-06
74	What actor from The Office and John Krasinski went to the same high school?	B.J. Novak	\N	2020-09-22 13:14:47.228813-06	2020-09-22 13:14:47.228813-06
83	In the episode “Basketball,” after the game between the office workers and warehouse workers, one of the office workers is shown continuously making shots. Which employee is it?	Kevin	\N	2020-09-22 13:14:47.241452-06	2020-09-22 13:14:47.241452-06
93	Who plays Todd Packer, a former employee and Michael’s friend?	David Koechner	\N	2020-09-22 13:14:47.250302-06	2020-09-22 13:14:47.250302-06
102	Based on where he eats most often, what is Michael Scott’s favorite restaurant?	Chili’s	\N	2020-09-22 13:14:47.260372-06	2020-09-22 13:14:47.260372-06
58	What vegetable does Michael force feed Kevin?	Broccoli	\N	2020-09-22 13:14:47.198638-06	2020-09-22 13:14:47.198638-06
66	In the episode “Basketball,” who does Michael say is on the team, ‘of course’?	Stanley	\N	2020-09-22 13:14:47.219369-06	2020-09-22 13:14:47.219369-06
75	What item of clothing does Michael insist on having dry cleaned?	His jeans	\N	2020-09-22 13:14:47.229501-06	2020-09-22 13:14:47.229501-06
84	What can Dwight Shrute supposedly raise and lower at his will?	His cholesterol	\N	2020-09-22 13:14:47.242088-06	2020-09-22 13:14:47.242088-06
94	What is the name of Phyllis’ husband who also happens to work in the same office complex?	Bob Vance	\N	2020-09-22 13:14:47.250838-06	2020-09-22 13:14:47.250838-06
103	What art school did Pam go to?	Pratt Institute	\N	2020-09-22 13:14:47.260999-06	2020-09-22 13:14:47.260999-06
59	Whose mother does Michael date?	Pam	\N	2020-09-22 13:14:47.199627-06	2020-09-22 13:14:47.199627-06
67	Where did Michael get his “World’s Best Boss” mug?	Spencer Gifts	\N	2020-09-22 13:14:47.220744-06	2020-09-22 13:14:47.220744-06
76	Who is the Regional Manager at Dunder Mifflin?	Michael Scott	\N	2020-09-22 13:14:47.230281-06	2020-09-22 13:14:47.230281-06
85	Which warehouse employee was engaged to Pam?	Roy	\N	2020-09-22 13:14:47.24273-06	2020-09-22 13:14:47.24273-06
95	Who is the Human Resources representative at Dunder Mifflin?	Toby	\N	2020-09-22 13:14:47.251373-06	2020-09-22 13:14:47.251373-06
60	What is Scranton’s nickname?	The Electric City	\N	2020-09-22 13:14:47.201051-06	2020-09-22 13:14:47.201051-06
68	In the “St. Patrick’s Day” episode, who gets sick on their first date with Andy?	Erin	\N	2020-09-22 13:14:47.222329-06	2020-09-22 13:14:47.222329-06
77	Who wins the bronze medal in the episode, “Office Olympics”?	Jim	\N	2020-09-22 13:14:47.233515-06	2020-09-22 13:14:47.233515-06
86	What movie does Michael say that Dwight cried during?	Armageddon	\N	2020-09-22 13:14:47.243349-06	2020-09-22 13:14:47.243349-06
96	In the episode “Andy’s Play”, Andy Bernard performed in a local theatre production of what?	Sweeney Todd	\N	2020-09-22 13:14:47.251923-06	2020-09-22 13:14:47.251923-06
61	In the season 2 episode “Christmas Party,” what Secret Santa gift does Jim get Pam?	Teapot	\N	2020-09-22 13:14:47.201819-06	2020-09-22 13:14:47.201819-06
69	What did Phyllis ask Michael to do in her wedding?	Push her father down the isle in his wheelchair	\N	2020-09-22 13:14:47.223932-06	2020-09-22 13:14:47.223932-06
78	In the episode, “Diwali”, who attempts to kiss Pam?	Michael	\N	2020-09-22 13:14:47.23438-06	2020-09-22 13:14:47.23438-06
87	When is Michael’s birthday?	March 15	\N	2020-09-22 13:14:47.243964-06	2020-09-22 13:14:47.243964-06
97	In the episode “Take Your Daughter to Work Day,” one employee’s daughter is flirting with Ryan Howard. Whose daughter was it?	Stanley	\N	2020-09-22 13:14:47.25255-06	2020-09-22 13:14:47.25255-06
62	Who convinces Dwight that he is being recruited by the CIA?	Pam	\N	2020-09-22 13:14:47.202639-06	2020-09-22 13:14:47.202639-06
71	What song does Michael dance down the aisle to during Pam and Jim’s wedding?	“Forever” by Chris Brown	\N	2020-09-22 13:14:47.226935-06	2020-09-22 13:14:47.226935-06
81	Which one of Michael’s girlfriends in The Office was played by Steve Carell’s real-life wife?	Carol	\N	2020-09-22 13:14:47.239946-06	2020-09-22 13:14:47.239946-06
89	Jenna Fischer kept what after the series wrapped up?	Pam’s engagement ring	\N	2020-09-22 13:14:47.247864-06	2020-09-22 13:14:47.247864-06
99	In the episode, “Goodbye Michael,” what does Pam say Michael seems full of at the end of the episode?	Hope	\N	2020-09-22 13:14:47.257861-06	2020-09-22 13:14:47.257861-06
63	What is the name of Kevin’s cover band?	Scrantonicity	\N	2020-09-22 13:14:47.203227-06	2020-09-22 13:14:47.203227-06
80	Who was a phone operator for 1-800-Dentist when she auditioned for The Office?	Angela Kinsey	\N	2020-09-22 13:14:47.23582-06	2020-09-22 13:14:47.23582-06
90	Who is the Assistant to the Regional Manager?	Dwight Schrute	\N	2020-09-22 13:14:47.248447-06	2020-09-22 13:14:47.248447-06
100	In the episode “Chair Model,” Pam would receive Michael’s chair when he got a new one. Who would get Pam’s chair?	Creed	\N	2020-09-22 13:14:47.258401-06	2020-09-22 13:14:47.258401-06
72	How does Jan break Michael’s TV in the“Dinner Party” episode?	With a Dundie award	\N	2020-09-22 13:14:47.227542-06	2020-09-22 13:14:47.227542-06
91	Who was sent to anger management?	Andy	\N	2020-09-22 13:14:47.249088-06	2020-09-22 13:14:47.249088-06
\.


--
-- Data for Name: triviaGames; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."triviaGames" (id, "triviaName", created_at, updated_at) FROM stdin;
2	The Office	2020-09-22 13:14:47.085242-06	2020-09-22 13:14:47.085242-06
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 1, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: theOfficeTrivia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."theOfficeTrivia_id_seq"', 103, true);


--
-- Name: triviaGames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."triviaGames_id_seq"', 2, true);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: theOfficeTrivia theOfficeTrivia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."theOfficeTrivia"
    ADD CONSTRAINT "theOfficeTrivia_pkey" PRIMARY KEY (id);


--
-- Name: triviaGames triviaGames_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."triviaGames"
    ADD CONSTRAINT "triviaGames_pkey" PRIMARY KEY (id);


--
-- Name: theOfficeTrivia theofficetrivia_trivia_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."theOfficeTrivia"
    ADD CONSTRAINT theofficetrivia_trivia_id_foreign FOREIGN KEY (trivia_id) REFERENCES public."triviaGames"(id);


--
-- PostgreSQL database dump complete
--

