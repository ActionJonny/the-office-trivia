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
    question character varying(255) NOT NULL,
    answer character varying(255) NOT NULL,
    "triviaGames_id" integer,
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
    name character varying(255) NOT NULL,
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
7	20200911142846_initial.js	1	2020-10-06 11:05:50.752-06
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

COPY public."theOfficeTrivia" (id, question, answer, "triviaGames_id", created_at, updated_at) FROM stdin;
413	The casting team originally wanted who to audition for the role of Dwight?	John Krasinski	7	2020-10-06 11:16:41.188729-06	2020-10-06 11:16:41.188729-06
414	John Krasinski, Mindy Kaling, and who else were all, at one point, interns at Late Night With Conan O’Brien?	Angela Kinsey	7	2020-10-06 11:16:41.208104-06	2020-10-06 11:16:41.208104-06
415	Who almost didn’t work in The Office because he was committed to another NBC show called Come to Papa?	Steve Carell	7	2020-10-06 11:16:41.210161-06	2020-10-06 11:16:41.210161-06
416	During his embarrassing Dundie award presentation, whom is Michael Scott presenting a Dundie award when he sings along to “You Sexy Thing” by ’70s British funk band Hot Chocolate?	Ryan	7	2020-10-06 11:16:41.2122-06	2020-10-06 11:16:41.2122-06
417	In “The Alliance” episode, Michael is asked by Oscar to donate to his nephew’s walkathon for a charity. How much money does Michael donate, not realizing that the donation is per mile and not a flat amount?	$25	7	2020-10-06 11:16:41.213735-06	2020-10-06 11:16:41.213735-06
418	Which character became Jim’s love interest after he moved to the Stamford branch in season three and joined the Scranton office during the merger?	Karen Filippelli	7	2020-10-06 11:16:41.219023-06	2020-10-06 11:16:41.219023-06
419	What county in Pennsylvania is Dunder Mifflin Scranton branch located?	Lackawanna County	7	2020-10-06 11:16:41.220664-06	2020-10-06 11:16:41.220664-06
420	What is the exclusive club that Pam, Oscar, and Toby Flenderson establish in the episode “Branch Wars”?	Finer Things Club	7	2020-10-06 11:16:41.222673-06	2020-10-06 11:16:41.222673-06
421	What substance does Jim put office supplies owned by Dwight into?	Jello	7	2020-10-06 11:16:41.223397-06	2020-10-06 11:16:41.223397-06
422	What is the name of the employee who started out as “the temp” in the Dunder Mifflin office?	Ryan	7	2020-10-06 11:16:41.230121-06	2020-10-06 11:16:41.230121-06
423	Rainn Wilson did not originally audition for the part of the iconic beet farming Dwight Schrute, instead he auditioned for which part?	Michael Scott	7	2020-10-06 11:16:41.230673-06	2020-10-06 11:16:41.230673-06
424	Dwight owns and runs a farm in his spare time. What does this farm primarily produce?	Beets	7	2020-10-06 11:16:41.231897-06	2020-10-06 11:16:41.231897-06
425	In “Diversity Day” episode what famous comedian’s stand up routine does Michael imitate?	Chris Rock	7	2020-10-06 11:16:41.236165-06	2020-10-06 11:16:41.236165-06
426	In the episode “The Client”, the employees were reading Michael’s movie script. Which employee read the part of Goldenface?	Oscar	7	2020-10-06 11:16:41.2367-06	2020-10-06 11:16:41.2367-06
427	What does Michael burn his foot on?	A George Foreman Grill that he was cooking bacon on	7	2020-10-06 11:16:41.237237-06	2020-10-06 11:16:41.237237-06
428	Who are the three main members of the party planning committee?	Phyllis, Angela, and Pam	7	2020-10-06 11:16:41.237734-06	2020-10-06 11:16:41.237734-06
429	What does Michael pretend to fire Pam over in season one?	Stealing Post-It notes	7	2020-10-06 11:16:41.240205-06	2020-10-06 11:16:41.240205-06
430	What kind of sandwich does Michael have a dream about when he’s the head of Michael Scott Paper Company?	Peanut butter and tunafish	7	2020-10-06 11:16:41.24092-06	2020-10-06 11:16:41.24092-06
431	What’s the name of Dwight’s porcupine who he used to make it look like Jim was pranking him?	Henrietta	7	2020-10-06 11:16:41.244098-06	2020-10-06 11:16:41.244098-06
432	What’s in the thermos that Michael offers Pam during morning deliveries for the Michael Scott Paper Company?	Milk and sugar	7	2020-10-06 11:16:41.244987-06	2020-10-06 11:16:41.244987-06
433	What brand is Michael Scott wearing on the day he accidentally wearing a woman’s suit?	MISSsterious	7	2020-10-06 11:16:41.246361-06	2020-10-06 11:16:41.246361-06
434	Who does Michael wear on his head during the activity on diversity day?	Martin Luther King Jr.	7	2020-10-06 11:16:41.246905-06	2020-10-06 11:16:41.246905-06
435	During the episode, “Prince Family Paper,” what’s the secret signal that Dwight and Michael agree on using?	Licking your lips	7	2020-10-06 11:16:41.247413-06	2020-10-06 11:16:41.247413-06
436	Who calls Jim by the nicknames “Tuna” or “Big Tuna”?	Andy	7	2020-10-06 11:16:41.248959-06	2020-10-06 11:16:41.248959-06
437	At Jim and Pam’s wedding in the “Niagara” episode, what was Kevin wearing on his feet?	Tissue Boxes	7	2020-10-06 11:16:41.251152-06	2020-10-06 11:16:41.251152-06
438	What does Jim use to make Dwight salivate in “Phyllis’ Wedding”?	Altoids	7	2020-10-06 11:16:41.253406-06	2020-10-06 11:16:41.253406-06
439	What does Michael eat instead of ice cream because they don’t have any?	Mayo and black olives	7	2020-10-06 11:16:41.253915-06	2020-10-06 11:16:41.253915-06
440	In the episode “The Coup”, the members of the Stamford branch play what video game with each other?	Call of Duty	7	2020-10-06 11:16:41.25492-06	2020-10-06 11:16:41.25492-06
441	What of the following colors does Angela think is “whore-ish”?	Green	7	2020-10-06 11:16:41.255655-06	2020-10-06 11:16:41.255655-06
442	Jim Halpert knows the flavor of yogurt that Pam likes best, what is it?	Mixed Berry	7	2020-10-06 11:16:41.256262-06	2020-10-06 11:16:41.256262-06
443	Who took over Pam as the receptionist after she went to art school in season 5?	Ryan	7	2020-10-06 11:16:41.256809-06	2020-10-06 11:16:41.256809-06
444	Who runs the warehouse below the Dunder Mifflin offices?	Darryl	7	2020-10-06 11:16:41.257465-06	2020-10-06 11:16:41.257465-06
445	What does Dwight keep a pair of in his car for special occasions?	Birkenstocks	7	2020-10-06 11:16:41.258606-06	2020-10-06 11:16:41.258606-06
446	What is Toby’s daughter’s name?	Sasha	7	2020-10-06 11:16:41.261176-06	2020-10-06 11:16:41.261176-06
447	What is the name of the actor who plays Toby Flenderson?	Paul Lieberstein	7	2020-10-06 11:16:41.263899-06	2020-10-06 11:16:41.263899-06
448	Which actor shares his entire name with his character?	Creed Bratton	7	2020-10-06 11:16:41.264563-06	2020-10-06 11:16:41.264563-06
449	In 2019 Jenna Fischer and who else started an Office re-watch podcast entitled “The Office Ladies”?	Angela Kingsey	7	2020-10-06 11:16:41.26556-06	2020-10-06 11:16:41.26556-06
450	In the episode “Fun Run”, who are the three employees that go out to eat in the middle of the run?	Creed, Oscar and Stanley	7	2020-10-06 11:16:41.26809-06	2020-10-06 11:16:41.26809-06
451	Who served on the jury for the Scranton strangler case?	Toby Flenderson	7	2020-10-06 11:16:41.269162-06	2020-10-06 11:16:41.269162-06
452	Who punches a hole in the wall in between Michael’s office and the conference room?	Andy	7	2020-10-06 11:16:41.269661-06	2020-10-06 11:16:41.269661-06
453	NBC passed a pilot for a spin-off called “The Farm.” Who was it about?	Dwight Schrute	7	2020-10-06 11:16:41.270132-06	2020-10-06 11:16:41.270132-06
454	After the show was first picked up, what did NBC planned on retitling the series in order to differentiate it from the original British version?	“The American Workplace”	7	2020-10-06 11:16:41.27068-06	2020-10-06 11:16:41.27068-06
455	What actor starred in the British version of The Office?	Ricky Gervais	7	2020-10-06 11:16:41.272992-06	2020-10-06 11:16:41.272992-06
456	Who is the proud owner of a Cornell hockey bobblehead?	Andy	7	2020-10-06 11:16:41.273529-06	2020-10-06 11:16:41.273529-06
457	Through out the show it was revealed that one of the members of the office graduated High School with Michael. Who was it?	Phyllis	7	2020-10-06 11:16:41.274538-06	2020-10-06 11:16:41.274538-06
458	In the Season 4 pilot episode “Fun Run”, what cause does Michael organize a fun run for?	Rabies	7	2020-10-06 11:16:41.275617-06	2020-10-06 11:16:41.275617-06
459	What is the number one rated Country and Western station in Scranton, Pennsylvania? (hint it’s a bumper sticker on Dwight’s desk)	Froggy 101	7	2020-10-06 11:16:41.276457-06	2020-10-06 11:16:41.276457-06
461	In what episode does Jim propose to Pam?	“Weight Loss”	7	2020-10-06 11:16:41.279071-06	2020-10-06 11:16:41.279071-06
460	What color does Dwight paint Michael’s office when he thinks he’s taking over Michael’s job?	Black	7	2020-10-06 11:16:41.278337-06	2020-10-06 11:16:41.278337-06
469	What is Michael’s username for the online dating website?	Little Kid Lover	7	2020-10-06 11:16:41.288706-06	2020-10-06 11:16:41.288706-06
478	In the episode “Basketball,” who does Michael say is on the team, ‘of course’?	Stanley	7	2020-10-06 11:16:41.298915-06	2020-10-06 11:16:41.298915-06
488	Who is the Regional Manager at Dunder Mifflin?	Michael Scott	7	2020-10-06 11:16:41.30929-06	2020-10-06 11:16:41.30929-06
497	Which warehouse employee was engaged to Pam?	Roy	7	2020-10-06 11:16:41.320659-06	2020-10-06 11:16:41.320659-06
507	Who is the Human Resources representative at Dunder Mifflin?	Toby	7	2020-10-06 11:16:41.331539-06	2020-10-06 11:16:41.331539-06
462	Which network produced “The Office”?	NBC	7	2020-10-06 11:16:41.280375-06	2020-10-06 11:16:41.280375-06
471	Whose mother does Michael date?	Pam	7	2020-10-06 11:16:41.289813-06	2020-10-06 11:16:41.289813-06
480	In the “St. Patrick’s Day” episode, who gets sick on their first date with Andy?	Erin	7	2020-10-06 11:16:41.301618-06	2020-10-06 11:16:41.301618-06
490	In the episode, “Diwali”, who attempts to kiss Pam?	Michael	7	2020-10-06 11:16:41.312371-06	2020-10-06 11:16:41.312371-06
499	When is Michael’s birthday?	March 15	7	2020-10-06 11:16:41.321571-06	2020-10-06 11:16:41.321571-06
509	In the episode “Take Your Daughter to Work Day,” one employee’s daughter is flirting with Ryan Howard. Whose daughter was it?	Stanley	7	2020-10-06 11:16:41.33413-06	2020-10-06 11:16:41.33413-06
463	What is the middle name of Gabe Lewis?	Susan	7	2020-10-06 11:16:41.281696-06	2020-10-06 11:16:41.281696-06
472	What is Scranton’s nickname?	The Electric City	7	2020-10-06 11:16:41.291088-06	2020-10-06 11:16:41.291088-06
481	What did Phyllis ask Michael to do in her wedding?	Push her father down the isle in his wheelchair	7	2020-10-06 11:16:41.302933-06	2020-10-06 11:16:41.302933-06
491	How does Michael describe the wine in the episode, “Dinner Party”?	An oaky afterbirth	7	2020-10-06 11:16:41.313548-06	2020-10-06 11:16:41.313548-06
504	Which character speaks the the first line of the series and which character delivers the final line?	Michael Scott (Steve Carell), Pam Beesly (Jenna Fischer)	7	2020-10-06 11:16:41.329989-06	2020-10-06 11:16:41.329989-06
464	What actor played Robert California?	James Spader	7	2020-10-06 11:16:41.282571-06	2020-10-06 11:16:41.282571-06
482	Who wins the Fun Run in season 4?	Toby Flenderson	7	2020-10-06 11:16:41.303821-06	2020-10-06 11:16:41.303821-06
494	Who was responsible for casting The Office characters?	Allison Jones	7	2020-10-06 11:16:41.318465-06	2020-10-06 11:16:41.318465-06
503	Who was sent to anger management?	Andy	7	2020-10-06 11:16:41.329038-06	2020-10-06 11:16:41.329038-06
513	After the Fun Run to beat Rabies, to whom is the oversized check made out?	Science	7	2020-10-06 11:16:41.338497-06	2020-10-06 11:16:41.338497-06
465	Which of Angela’s cats does Dwight freeze?	Sprinkles	7	2020-10-06 11:16:41.286034-06	2020-10-06 11:16:41.286034-06
474	Who convinces Dwight that he is being recruited by the CIA?	Pam	7	2020-10-06 11:16:41.295902-06	2020-10-06 11:16:41.295902-06
483	What song does Michael dance down the aisle to during Pam and Jim’s wedding?	“Forever” by Chris Brown	7	2020-10-06 11:16:41.305423-06	2020-10-06 11:16:41.305423-06
492	Who was a phone operator for 1-800-Dentist when she auditioned for The Office?	Angela Kinsey	7	2020-10-06 11:16:41.316149-06	2020-10-06 11:16:41.316149-06
501	Jenna Fischer kept what after the series wrapped up?	Pam’s engagement ring	7	2020-10-06 11:16:41.325816-06	2020-10-06 11:16:41.325816-06
511	In the episode, “Goodbye Michael,” what does Pam say Michael seems full of at the end of the episode?	Hope	7	2020-10-06 11:16:41.337567-06	2020-10-06 11:16:41.337567-06
466	Which cast member was having an affair with Angela’s fiancé, the senator?	Oscar	7	2020-10-06 11:16:41.286528-06	2020-10-06 11:16:41.286528-06
475	What is the name of Kevin’s cover band?	Scrantonicity	7	2020-10-06 11:16:41.296808-06	2020-10-06 11:16:41.296808-06
484	How does Jan break Michael’s TV in the“Dinner Party” episode?	With a Dundie award	7	2020-10-06 11:16:41.305866-06	2020-10-06 11:16:41.305866-06
493	Which one of Michael’s girlfriends in The Office was played by Steve Carell’s real-life wife?	Carol	7	2020-10-06 11:16:41.317674-06	2020-10-06 11:16:41.317674-06
502	Who is the Assistant to the Regional Manager?	Dwight Schrute	7	2020-10-06 11:16:41.327954-06	2020-10-06 11:16:41.327954-06
512	In the episode “Chair Model,” Pam would receive Michael’s chair when he got a new one. Who would get Pam’s chair?	Creed	7	2020-10-06 11:16:41.338048-06	2020-10-06 11:16:41.338048-06
467	Which office employee did Michael hit with his car?	Meredith	7	2020-10-06 11:16:41.287717-06	2020-10-06 11:16:41.287717-06
476	Where does Jim propose to Pam?	Gas station	7	2020-10-06 11:16:41.297724-06	2020-10-06 11:16:41.297724-06
486	What actor from The Office and John Krasinski went to the same high school?	B.J. Novak	7	2020-10-06 11:16:41.307417-06	2020-10-06 11:16:41.307417-06
495	In the episode “Basketball,” after the game between the office workers and warehouse workers, one of the office workers is shown continuously making shots. Which employee is it?	Kevin	7	2020-10-06 11:16:41.319725-06	2020-10-06 11:16:41.319725-06
505	Who plays Todd Packer, a former employee and Michael’s friend?	David Koechner	7	2020-10-06 11:16:41.330501-06	2020-10-06 11:16:41.330501-06
514	Based on where he eats most often, what is Michael Scott’s favorite restaurant?	Chili’s	7	2020-10-06 11:16:41.339365-06	2020-10-06 11:16:41.339365-06
468	Who started the fire?	Ryan	7	2020-10-06 11:16:41.288194-06	2020-10-06 11:16:41.288194-06
477	Angela, played by Angela Kinsey, mentions that her favorite song is what?	Little Drummer Boy	7	2020-10-06 11:16:41.298386-06	2020-10-06 11:16:41.298386-06
487	What item of clothing does Michael insist on having dry cleaned?	His jeans	7	2020-10-06 11:16:41.308411-06	2020-10-06 11:16:41.308411-06
496	What can Dwight Shrute supposedly raise and lower at his will?	His cholesterol	7	2020-10-06 11:16:41.320181-06	2020-10-06 11:16:41.320181-06
506	What is the name of Phyllis’ husband who also happens to work in the same office complex?	Bob Vance	7	2020-10-06 11:16:41.330968-06	2020-10-06 11:16:41.330968-06
515	What art school did Pam go to?	Pratt Institute	7	2020-10-06 11:16:41.340009-06	2020-10-06 11:16:41.340009-06
470	What vegetable does Michael force feed Kevin?	Broccoli	7	2020-10-06 11:16:41.289192-06	2020-10-06 11:16:41.289192-06
479	Where did Michael get his “World’s Best Boss” mug?	Spencer Gifts	7	2020-10-06 11:16:41.299702-06	2020-10-06 11:16:41.299702-06
489	Who wins the bronze medal in the episode, “Office Olympics”?	Jim	7	2020-10-06 11:16:41.311292-06	2020-10-06 11:16:41.311292-06
498	What movie does Michael say that Dwight cried during?	Armageddon	7	2020-10-06 11:16:41.321109-06	2020-10-06 11:16:41.321109-06
508	In the episode “Andy’s Play”, Andy Bernard performed in a local theatre production of what?	Sweeney Todd	7	2020-10-06 11:16:41.33256-06	2020-10-06 11:16:41.33256-06
473	In the season 2 episode “Christmas Party,” what Secret Santa gift does Jim get Pam?	Teapot	7	2020-10-06 11:16:41.292136-06	2020-10-06 11:16:41.292136-06
485	What actor on The Office shot the opening credit footage?	John Krasinski	7	2020-10-06 11:16:41.306792-06	2020-10-06 11:16:41.306792-06
500	In almost every meeting, Stanley is seen doing what?	A crossword puzzel	7	2020-10-06 11:16:41.322764-06	2020-10-06 11:16:41.322764-06
510	What is the the name of the annual employee awards night on the show?	Dundies	7	2020-10-06 11:16:41.335909-06	2020-10-06 11:16:41.335909-06
\.


--
-- Data for Name: triviaGames; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."triviaGames" (id, name, created_at, updated_at) FROM stdin;
7	The Office	2020-10-06 11:16:41.179611-06	2020-10-06 11:16:41.179611-06
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 7, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: theOfficeTrivia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."theOfficeTrivia_id_seq"', 515, true);


--
-- Name: triviaGames_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."triviaGames_id_seq"', 7, true);


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
-- Name: theOfficeTrivia theofficetrivia_triviagames_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."theOfficeTrivia"
    ADD CONSTRAINT theofficetrivia_triviagames_id_foreign FOREIGN KEY ("triviaGames_id") REFERENCES public."triviaGames"(id);


--
-- PostgreSQL database dump complete
--

