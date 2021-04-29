#DB PROJECT BY: Jacob Day, Christian, Ryan
create table league(
   league_id varchar(30) primary key,
   league_name varchar(30) not null
);
#league data
INSERT INTO league(`league_id`,`league_name`)VALUES
(1,"American League"),
(2,"National League");

create table team(
   team_id varchar(30) primary key,
   league_id varchar(30),
   foreign key(league_id) references league(league_id),
   team_name varchar(30),
   wins int,
   losses int
);
#Team Data
INSERT INTO team (`team_id`,`league_id`,`team_name`,`wins`,`losses`) VALUES 
(36101,1,"Tellus Inc.",5,9),
(36102,1,"Donec Nibh Quisque Incorporated",9,14),
(36103,1,"Malesuada Id Erat Corp.",3,22),
(36104,1,"Ut Semper Ltd",30,22),
(36105,1,"Habitant Morbi Institute",5,2),
(36106,1,"Id LLC",29,1),
(36107,1,"Eget Volutpat Ornare Consulting",26,2),
(36108,1,"Quis Accumsan Convallis Ltd",4,8),
(36109,1,"Consectetuer Adipiscing Elit Consulting",5,10),
(36110,1,"Ut Pharetra Limited",13,12),
(36111,1,"Vel Sapien Ltd",5,13),
(36112,1,"Conubia Nostra Per Corporation",27,1),
(36113,1,"Tincidunt Nunc Ac Associates",2,11),
(36114,1,"Enim Etiam Imperdiet Company",19,7),
(36115,1,"In Corporation",14,18),
(36116,2,"Massa LLP",24,18),
(36117,2,"Mauris Vel Turpis Consulting",15,10),
(36118,2,"Montes Nascetur Ridiculus Associates",8,16),
(36119,2,"Eu Dui Corporation",25,9),
(36120,2,"Et Magna Corporation",17,28),
(36121,2,"Velit Limited",1,7),
(36122,2,"Nec Quam LLC",8,17),
(36123,2,"Amet Risus Donec Incorporated",11,7),
(36124,2,"Erat Sed Inc.",27,11),
(36125,2,"Vitae Velit Corporation",24,13),
(36126,2,"Integer Ltd",27,18),
(36127,2,"Nec Tempus Mauris Industries",23,11),
(36128,2,"Mi Lorem Vehicula LLP",19,20),
(36129,2,"Cursus In LLC",7,29),
(36130,2,"Fames Ac Consulting",11,21);

create table contract(
   contract_id varchar(30) primary key,
   date_start date,
   date_finish date,
   salary float(24)
);
#Contract data
INSERT INTO contract (`contract_id`,`date_start`,`date_finish`,`salary`) VALUES 
(1,"2010-10-13","2021-07-30","472.71"),
(2,"2010-08-22","2011-06-13","164.82"),
(3,"2010-01-08","2012-04-23","999.08"),
(4,"2010-08-17","2017-02-26","597.84"),
(5,"2010-10-03","2020-08-07","293.87"),
(6,"2010-12-22","2018-04-08","067.68"),
(7,"2010-08-27","2022-10-07","605.14"),
(8,"2010-05-10","2012-12-31","280.63"),
(9,"2010-10-16","2019-05-11","996.36"),
(10,"2010-10-10","2013-08-15","646.48"),
(11,"2010-11-13","2014-06-16","773.26"),
(12,"2010-10-09","2016-10-17","021.35"),
(13,"2010-12-22","2013-03-03","359.62"),
(14,"2010-08-12","2021-10-09","928.71"),
(15,"2010-01-30","2019-09-11","311.49"),
(16,"2010-11-10","2012-06-17","705.02"),
(17,"2010-01-18","2016-12-06","342.76"),
(18,"2010-11-30","2021-09-05","048.98"),
(19,"2010-01-14","2014-09-25","507.45"),
(20,"2010-02-13","2014-04-07","442.48"),
(21,"2010-07-06","2016-10-13","064.91"),
(22,"2010-12-05","2014-01-30","092.83"),
(23,"2010-03-15","2017-01-07","423.44"),
(24,"2010-10-14","2011-08-24","918.50"),
(25,"2010-07-24","2013-12-23","524.66"),
(26,"2010-06-21","2011-03-16","912.30"),
(27,"2010-04-13","2018-07-06","515.93"),
(28,"2010-09-26","2014-02-12","958.00"),
(29,"2010-12-23","2016-05-19","247.22"),
(30,"2010-02-27","2021-06-01","428.36"),
(31,"2010-03-16","2015-06-13","678.49"),
(32,"2010-04-04","2018-03-26","399.47"),
(33,"2010-06-20","2017-02-05","522.66"),
(34,"2010-09-14","2013-08-27","765.99"),
(35,"2010-10-14","2014-01-27","763.68"),
(36,"2010-08-20","2016-07-25","955.96"),
(37,"2010-08-03","2018-04-11","917.11"),
(38,"2010-03-25","2012-04-01","714.71"),
(39,"2010-07-12","2019-01-04","355.01"),
(40,"2010-12-12","2022-05-07","839.17"),
(41,"2010-02-18","2018-07-07","691.89"),
(42,"2010-10-20","2022-04-01","459.66"),
(43,"2010-03-15","2011-10-03","919.32"),
(44,"2010-06-22","2022-05-04","732.79"),
(45,"2010-11-21","2022-08-11","215.67"),
(46,"2010-06-01","2013-06-01","752.04"),
(47,"2010-08-31","2017-04-07","004.91"),
(48,"2010-01-17","2022-03-15","485.87"),
(49,"2010-02-07","2020-09-24","842.30"),
(50,"2010-11-10","2015-11-15","489.36");

create table employee(
   emp_id varchar(30) primary key,
   team_id varchar(30),
   foreign key(team_id) references team(team_id),
   contract_id varchar(30),
   foreign key(contract_id) references contract(contract_id),
   fname varchar(30),
   lname varchar(30),
   reports_to varchar(30)
);
#emp data
INSERT INTO employee (`emp_id`,`team_id`,`contract_id`,`fname`,`lname`,`reports_to`) VALUES (100,36104,NULL,"Kieran","Fields",160),(101,36110,NULL,"Omar","Rojas",166),(102,36105,NULL,"Simon","Bean",169),(103,36116,NULL,"Jin","Hopper",172),(104,36113,NULL,"Marsden","Valenzuela",167),(105,36118,NULL,"Ashton","Gilbert",168),(106,36110,NULL,"Zahir","Gardner",167),(107,36110,NULL,"Odysseus","Fowler",168),(108,36108,NULL,"Nasim","Miranda",162),(109,36104,NULL,"Griffith","Hayes",170),(110,36102,NULL,"Nehru","Garrison",170),(111,36114,NULL,"Brian","Tucker",161),(112,36117,NULL,"Orlando","Stephens",160),(113,36105,NULL,"Ivor","Mcpherson",164),(114,36107,NULL,"Callum","Nielsen",170),(115,36123,NULL,"Tarik","Gutierrez",165),(116,36120,NULL,"Uriel","Figueroa",163),(117,36113,NULL,"Byron","Brady",173),(118,36124,NULL,"Baker","Lambert",173),(119,36124,NULL,"Rajah","Shields",162),(120,36123,NULL,"Bernard","Taylor",165),(121,36115,NULL,"Vladimir","Barlow",173),(122,36109,NULL,"Lev","Mayo",168),(123,36108,NULL,"Samson","Duran",172),(124,36108,NULL,"Abdul","Parks",164),(125,36107,NULL,"Odysseus","Downs",173),(126,36124,NULL,"Kyle","Olson",168),(127,36107,NULL,"Zeph","Vincent",161),(128,36123,NULL,"Camden","Hale",160),(129,36101,NULL,"Kyle","Bond",164),(130,36105,NULL,"Yoshio","Guerra",166),(131,36115,NULL,"Kasimir","Spence",171),(132,36123,NULL,"Branden","Shelton",161),(133,36107,NULL,"Kibo","Harrington",168),(134,36109,NULL,"Jerome","Travis",168),(135,36106,NULL,"Austin","Beard",166),(136,36116,NULL,"Ulric","Levine",172),(137,36113,NULL,"Graham","Kinney",164),(138,36116,NULL,"Emery","Stafford",163),(139,36114,NULL,"Lucius","Scott",167),(140,36119,NULL,"Tad","Fernandez",160),(141,36124,NULL,"Rogan","Santos",160),(142,36114,NULL,"Dante","Knapp",161),(143,36114,NULL,"Castor","Blevins",168),(144,36118,NULL,"Blake","Hartman",160),(145,36113,NULL,"Caesar","Tran",173),(146,36116,NULL,"Jeremy","Moore",163),(147,36119,NULL,"Len","Odom",171),(148,36123,NULL,"Barclay","Hampton",166),(149,36118,NULL,"Prescott","Short",164),(150,36107,NULL,"Louis","Waters",171),(151,36120,NULL,"Solomon","Hester",164),(152,36112,NULL,"Dominic","Wright",161),(153,36122,NULL,"Dustin","Martin",162),(154,36123,NULL,"Damian","Rowland",161),(155,36110,NULL,"Dieter","Aguilar",167),(156,36123,NULL,"Odysseus","Joyce",163),(157,36116,NULL,"Harper","Cotton",170),(158,36107,NULL,"Jonas","Kelley",168),(159,36113,NULL,"Zachery","Galloway",169),(160,36109,NULL,"Colton","Sanford",164),(161,36114,NULL,"Tyrone","Bryan",165),(162,36107,NULL,"Alan","Holt",166),(163,36102,NULL,"Chancellor","Baker",161),(164,36102,NULL,"Warren","Moore",162),(165,36113,NULL,"Kibo","Mason",165),(166,36122,NULL,"Tiger","Guerra",170),(167,36103,NULL,"Ciaran","Harding",173),(168,36116,NULL,"Yasir","Daniel",163),(169,36125,NULL,"Elton","Frye",161),(170,36124,NULL,"Bernard","Oneal",170),(171,36106,NULL,"Jarrod","Cain",164),(172,36119,NULL,"Talon","Mullen",170),(173,36123,NULL,"Finn","Morgan",163),(174,36102,NULL,"Beau","Blackwell",166),(175,36123,NULL,"Chadwick","Torres",173),(176,36115,NULL,"Isaiah","Good",160),(177,36123,NULL,"Giacomo","Conway",160),(178,36107,NULL,"Howard","Rutledge",167),(179,36103,NULL,"Malachi","Thornton",160),(180,36110,NULL,"Stephen","Velazquez",164),(181,36108,NULL,"Dolan","Callahan",162),(182,36117,NULL,"Nigel","Phillips",166),(183,36119,NULL,"Caleb","Grant",173),(184,36125,NULL,"Merritt","Cabrera",173),(185,36108,NULL,"Galvin","Franco",172),(186,36103,NULL,"Xanthus","Sexton",173),(187,36118,NULL,"Denton","Peters",168),(188,36106,NULL,"Arsenio","Rojas",170),(189,36113,NULL,"Palmer","Beard",168),(190,36120,NULL,"Maxwell","Fuentes",167),(191,36108,NULL,"Melvin","Gates",170),(192,36125,NULL,"Acton","Sharp",171),(193,36105,NULL,"Todd","Alston",170),(194,36123,NULL,"Harrison","Dillon",161),(195,36115,NULL,"Cain","Stevens",171),(196,36114,NULL,"Malik","Madden",164),(197,36122,NULL,"Quinlan","Espinoza",168),(198,36104,NULL,"Tiger","Wall",164),(200,36118,NULL,"Kevin","Hester",171),(201,36116,NULL,"Tobias","Schroeder",173),(203,36101,NULL,"Zachary","Randolph",166),(204,36115,NULL,"Xander","Hammond",168),(205,36116,NULL,"Lance","Carrillo",168),(206,36113,NULL,"Salvador","Forbes",170),(207,36102,NULL,"Christopher","Puckett",171),(208,36117,NULL,"Howard","Bowers",167),(209,36111,NULL,"Russell","Richardson",173),(210,36112,NULL,"Carson","Mercer",167),(211,36109,NULL,"Aladdin","Hughes",163),(212,36104,NULL,"Reese","Dodson",172),(213,36110,NULL,"Brian","Francis",164),(214,36102,NULL,"Julian","Wells",163),(215,36111,NULL,"Sawyer","Kerr",162),(216,36120,NULL,"Hedley","Holmes",160),(217,36111,NULL,"Drake","Grimes",169),(218,36115,NULL,"Giacomo","Fitzgerald",164),(219,36114,NULL,"Kevin","Ball",170),(220,36121,NULL,"Caesar","Sosa",170),(221,36124,NULL,"Lyle","Watson",164),(222,36122,NULL,"Nigel","Everett",168),(223,36116,NULL,"Felix","Winters",160),(224,36125,NULL,"Daquan","Marks",162),(225,36123,NULL,"Louis","Bullock",172),(226,36114,NULL,"Martin","Simpson",172),(227,36110,NULL,"Graham","Pierce",165),(228,36115,NULL,"Ray","Harding",168),(229,36109,NULL,"Paki","Summers",163),(230,36125,NULL,"Clarke","Dillon",170),(231,36123,NULL,"Price","Wooten",160),(232,36101,NULL,"Alden","Delacruz",161),(233,36122,NULL,"Dane","Watkins",170),(234,36110,NULL,"Kuame","Mcgee",172),(235,36116,NULL,"Tyrone","Dickson",166),(236,36116,NULL,"Tanek","Galloway",168),(237,36103,NULL,"Clark","Price",168),(238,36104,NULL,"Byron","Booker",160),(239,36123,NULL,"Gil","Rowland",167),(240,36118,NULL,"Harlan","Valenzuela",161),(241,36102,NULL,"Levi","Richmond",161),(917,36111,NULL,"Byron","Campos",173),(243,36112,NULL,"Nigel","Cunningham",170),(244,36123,NULL,"Kane","Golden",161),(245,36101,NULL,"Jack","Stark",165),(246,36104,NULL,"Vladimir","Bryant",171),(247,36104,NULL,"Walker","Luna",160),(248,36121,NULL,"Fulton","Wells",160),(249,36115,NULL,"Kieran","Rodgers",173),(250,36109,NULL,"Phillip","Stanley",167),(251,36109,NULL,"Alden","Dawson",164),(252,36110,NULL,"Cairo","Curry",164),(253,36106,NULL,"Xenos","Hodges",163),(254,36107,NULL,"Lucian","Keller",162),(255,36106,NULL,"Ezekiel","Baker",161),(256,36113,NULL,"Elliott","Cantu",161),(257,36124,NULL,"Hunter","Steele",163),(258,36101,NULL,"Zachary","Cruz",160),(259,36120,NULL,"Griffin","Kim",162),(260,36120,NULL,"Graham","Boone",169),(261,36112,NULL,"Norman","Roman",168),(262,36109,NULL,"Cedric","Dillard",161),(263,36125,NULL,"Prescott","Moody",164),(264,36105,NULL,"Yoshio","Faulkner",169),(265,36107,NULL,"Dillon","Sampson",170),(266,36109,NULL,"Abraham","Hale",172),(267,36112,NULL,"Giacomo","Mccall",167),(268,36121,NULL,"Owen","William",173),(269,36111,NULL,"Barclay","Medina",164),(270,36119,NULL,"Mohammad","Hanson",167),(271,36103,NULL,"Daquan","Coleman",167),(272,36125,NULL,"Jelani","Adkins",163),(273,36113,NULL,"Hyatt","Torres",163),(274,36119,NULL,"Chaney","Navarro",169),(275,36109,NULL,"Rooney","Hobbs",165),(276,36110,NULL,"Amery","Robinson",169),(277,36124,NULL,"Henry","Payne",161),(278,36115,NULL,"Andrew","Moody",170),(279,36109,NULL,"Adrian","Townsend",171),(280,36118,NULL,"Jerome","Jarvis",161),(281,36109,NULL,"Bernard","Nguyen",160),(282,36112,NULL,"Travis","Cortez",168),(283,36123,NULL,"Ian","Suarez",166),(284,36125,NULL,"Berk","Huffman",168),(285,36117,NULL,"Trevor","Peters",166),(286,36116,NULL,"Garrison","Preston",160),(287,36112,NULL,"Nigel","Santana",172),(288,36105,NULL,"Alfonso","Norton",173),(289,36114,NULL,"Chaney","Melton",161),(290,36111,NULL,"Ira","Anderson",172),(291,36118,NULL,"Yoshio","Church",165),(292,36112,NULL,"Kareem","Walls",165),(293,36104,NULL,"Evan","Soto",171),(294,36108,NULL,"Raja","Suarez",164),(295,36114,NULL,"Steel","Edwards",164),(296,36113,NULL,"Maxwell","Harrington",169),(297,36121,NULL,"Reese","Diaz",173),(298,36125,NULL,"Zephania","Fields",173),(299,36112,NULL,"Burton","Gentry",166);

create table game(
   game_num varchar(30),
   team_id varchar(30),
   foreign key(team_id) references team(team_id),
   primary key(game_num,team_id),
   score int,
   game_date date,
   game_time int
);
#Game data
INSERT INTO game (`game_num`,`team_id`,`score`,`game_date`,`game_time`) VALUES 
(1,36101,0,"2022-06-29",1300),
(1,36104,6,"2022-06-29",1300),
(2,36102,5,"2022-02-25",1800),
(2,36101,4,"2022-02-25",1800),
(3,36103,4,"2014-12-16",1200),
(3,36114,12,"2014-12-16",1200),
(4,36120,5,"2020-11-15",1800),
(4,36116,4,"2020-11-15",1800),
(5,36105,5,"2013-11-17",1400),
(5,36109,10,"2013-11-17",1400),
(6,36129,0,"2022-05-17",1500),
(6,36126,1,"2022-05-17",1500),
(7,36107,12,"2012-07-09",1800),
(7,36103,12,"2012-07-09",1800),
(8,36108,8,"2015-11-27",1200),
(8,36130,5,"2015-11-27",1200);

create table park(
   park_id varchar(30) primary key,
   team_id varchar(30),
   foreign key(team_id) references team(team_id),
   city varchar(30) not null,
   state varchar(30) not null,
   park_name varchar(30) not null
);
#Park data
INSERT INTO park (`park_id`,`team_id`,`city`,`state`,`park_name`) VALUES 
(1,36101,"Montgomery","AL","massa"),
(2,36102,"Meridian","ID","luctus"),
(3,36103,"Augusta","GA","eget,"),
(4,36104,"Annapolis","MD","ornare"),
(5,36105,"Olathe","KS","et"),
(6,36106,"Chesapeake","VA","lacinia"),
(7,36107,"Sterling Heights","MI","tempus"),
(8,36108,"Helena","MT","semper"),
(9,36109,"Casper","WY","Aenean"),
(10,36110,"Virginia Beach","VA","tellus."),
(11,36111,"Rutland","VT","vel"),
(12,36112,"Sacramento","CA","Suspendisse"),
(13,36113,"Knoxville","TN","Quisque"),
(14,36114,"Tucson","AZ","iaculis"),
(15,36115,"Lakewood","CO","dui."),
(16,36116,"Toledo","OH","enim"),
(17,36117,"Miami","FL","sociis"),
(18,36118,"South Bend","IN","risus"),
(19,36119,"Hilo","HI","laoreet"),
(20,36120,"Broken Arrow","OK","mauris"),
(21,36121,"Gaithersburg","MD","nunc"),
(22,36122,"South Burlington","VT","venenatis"),
(23,36123,"Ketchikan","AK","Praesent"),
(24,36124,"Mobile","AL","malesuada"),
(25,36125,"Norfolk","VA","est"),
(26,36126,"Madison","WI","dis"),
(27,36127,"Anchorage","AK","Pellentesque"),
(28,36128,"South Bend","IN","non"),
(29,36129,"Hattiesburg","MS","vitae"),
(30,36130,"Kenosha","WI","ante.");

create table agent(
   agent_id varchar(30) primary key,
   aname varchar(30),
   city varchar(30)
);
#agent data 
INSERT INTO agent (`agent_id`,`aname`,`city`) VALUES (100,"Callum","Tofield"),
(101,"Ray","Bairnsdale"),
(102,"Plato","Wageningen"),
(103,"Uriah","Parndorf"),
(104,"Kibo","Toledo"),
(105,"Samuel","Knittelfeld"),
(106,"Hyatt","Saint-Malo"),
(107,"Eagan","Heidenheim"),
(108,"Logan","Maransart"),
(109,"Lionel","Portezuelo");

create table player(
   emp_id varchar(30) primary key,
   agent_id varchar(30),
   foreign key(agent_id) references agent(agent_id),
   height int,
   weight int,
   games int
);
#player data
INSERT INTO player (`emp_id`,`agent_id`,`height`,`weight`,`games`) VALUES (999,108,78,250,131),(998,105,82,172,72),(997,100,72,242,404),(996,108,65,184,107),(995,100,82,196,170),(994,105,71,194,316),(993,103,80,169,166),(992,109,71,231,426),(991,102,74,236,419),(990,105,69,171,378),(989,109,77,178,570),(988,101,81,163,517),(987,105,66,176,118),(986,103,80,239,427),(985,101,75,231,498),(984,104,69,241,277),(983,104,65,239,569),(982,108,67,199,589),(981,106,83,185,269),(980,102,84,170,137),(979,101,81,248,78),(978,100,82,224,368),(977,105,79,199,360),(976,106,69,220,600),(975,108,78,196,385),(974,107,71,225,257),(973,100,76,213,573),(972,106,78,207,175),(971,102,78,245,31),(970,105,79,175,105),(969,105,74,164,157),(968,102,69,214,273),(967,103,71,234,33),(966,102,71,185,533),(965,107,75,247,224),(964,109,68,170,140),(963,101,84,206,440),(962,106,84,178,438),(961,109,70,219,471),(960,105,73,186,57),(959,103,80,171,14),(958,102,83,203,432),(957,108,69,240,383),(956,109,66,226,274),(955,104,70,193,99),(954,105,70,245,120),(953,109,81,197,397),(952,100,72,180,100),(951,104,71,175,582),(950,109,79,250,197),(949,107,79,184,262),(948,109,65,198,374),(947,108,75,218,541),(946,100,78,176,160),(945,108,66,194,212),(944,106,76,173,206),(943,106,72,185,149),(942,109,75,226,474),(941,103,74,160,54),(940,100,78,209,559),(939,101,65,176,102),(938,106,72,220,565),(937,106,70,192,511),(936,107,73,160,247),(935,109,72,174,571),(934,105,68,177,530),(933,100,68,193,397),(932,101,84,195,502),(931,101,73,175,541),(930,107,77,160,396),(929,105,81,193,99),(928,100,65,177,194),(927,103,74,226,147),(926,105,78,172,12),(925,107,82,188,67),(924,105,77,202,361),(923,109,79,182,380),(922,108,82,249,413),(921,102,69,226,398),(920,107,70,225,30),(919,101,69,179,255),(918,104,78,219,411),(917,108,84,179,517),(916,108,72,173,569),(915,106,79,221,545),(914,106,78,210,130),(913,100,80,174,293),(912,108,81,189,568),(911,105,69,244,220),(910,104,71,175,343),(909,108,75,178,265),(908,106,82,206,125),(907,100,72,201,200),(906,102,68,241,538),(905,108,82,250,444),(904,109,81,174,64),(903,109,76,209,361),(902,107,73,174,321),(901,103,78,192,61),(900,100,72,215,431);

create table trainer(
   emp_id varchar(30) primary key
);
create table coach(
   emp_id varchar(30) primary key,
   position varchar(30)
);
create table pitcher(
   pitcher_id varchar(30) primary key,
   emp_id varchar(30),
   foreign key(emp_id) references player(emp_id),
   innings_pitched double,
   hits_allowed int,
   runs_allowed int,
   home_runs_allowed int,
   strike_outs int,
   batters_faced int
);
#pitcher data
INSERT INTO pitcher (`pitcher_id`,`emp_id`,`innings_pitched`,`hits_allowed`,`runs_allowed`,`home_runs_allowed`,`strike_outs`,`batters_faced`) VALUES (1200,999,336,1541,890,426,263,3303),(1201,998,629,154,321,313,448,7190),(1202,997,515,1662,266,207,92,7542),(1203,996,426,4771,687,232,401,188),(1204,995,616,3241,368,170,433,5371),(1205,994,665,237,135,426,188,5927),(1206,993,444,1103,772,287,32,2705),(1207,992,33,2851,880,66,279,8968),(1208,991,518,1383,247,327,484,9728),(1209,990,484,4496,903,226,281,39),(1210,989,339,2455,632,19,467,9984),(1211,988,294,2804,634,455,179,1288),(1212,987,539,3663,842,326,173,9710),(1213,986,146,65,469,106,361,9571),(1214,985,340,1454,278,7,24,8419),(1215,984,524,1817,731,325,289,3801),(1216,983,692,3004,71,457,77,3256),(1217,982,691,3965,627,327,255,1891),(1218,981,44,3313,676,123,449,3646),(1219,980,523,1127,404,192,216,3162);

create table batter(
   batter_id varchar(30) primary key,
   emp_id varchar(30),
   foreign key(emp_id) references player(emp_id),
   runs int,
   hits int,
   home_runs int,
   runners_batted_in int,
   strike_outs int
);
#batter data
INSERT INTO batter (`batter_id`,`emp_id`,`runs`,`hits`,`home_runs`,`runners_batted_in`,`strike_outs`) VALUES (1100,950,134,146,70,65,138),(1101,949,111,477,49,96,78),(1102,948,93,402,57,61,22),(1103,947,151,281,42,147,25),(1104,946,151,451,43,72,67),(1105,945,138,318,80,42,49),(1106,944,208,79,72,71,175),(1107,943,96,233,69,103,199),(1108,942,28,66,28,50,126),(1109,941,187,352,100,145,130),(1110,940,90,469,18,81,170),(1111,939,276,82,94,99,33),(1112,938,211,480,60,65,28),(1113,937,162,191,37,139,198),(1114,936,225,273,51,119,57),(1115,935,223,360,93,101,137),(1116,934,181,447,46,61,95),(1117,933,175,471,7,64,93),(1118,932,200,360,41,31,102),(1119,931,232,246,76,66,175),(1120,930,45,252,7,115,62),(1121,929,250,380,51,84,68),(1122,928,66,249,73,142,162),(1123,927,120,483,59,93,160),(1124,917,191,417,68,43,94),(1125,925,160,193,6,5,159),(1126,924,209,359,87,145,54),(1127,923,193,0,43,101,77),(1128,922,67,66,58,89,56),(1129,921,97,465,93,119,56),(1130,920,110,54,62,144,114),(1131,919,289,105,82,84,127),(1132,918,47,68,49,79,145),(1133,917,126,480,7,28,32),(1134,916,44,10,24,117,163),(1135,915,131,386,10,114,50),(1136,914,196,379,15,116,87),(1137,913,27,62,83,88,26),(1138,912,176,84,52,104,75),(1139,911,156,337,66,138,27);

create table skill_t(
   skill_ta varchar(30) primary key,
   skill_type varchar(30),
   skill_description varchar(50)
);
#skill_t data 
INSERT INTO skill_t (`skill_ta`,`skill_type`,`skill_description`) VALUES (1,"dui","facilisis non, bibendum sed,"),(2,"posuere","Etiam imperdiet dictum magna."),(3,"ligula","dui"),(4,"Lorem","semper pretium"),(5,"porttitor","massa. Suspendisse"),(6,"nibh.","et arcu"),(7,"Donec","aliquet. Phasellus fermentum"),(8,"amet","lobortis risus. In"),(9,"blandit","semper pretium neque."),(10,"quam,","non dui nec");

create table trainer_skill(
   emp_id varchar(30),
   skill_ta varchar(30),
   primary key(emp_id,skill_ta)
);

#Views
#returns the most dominating team limited to 1 result
CREATE VIEW dominating_team AS
select * 
from (select * from team group by team_id having wins > 25) t
where losses < 5
limit 1;

#returns the player names of 1 team
CREATE VIEW team_36113 AS
select employee.lname as "Last Name", employee.fname as "First Name"
from employee
where team_id = 36113
order by lname;

#avg runs of a team (note: only returns 1 team as there is only 
#1 batter that shares a emp_id due to oversight)
CREATE VIEW avg_runs_per_team AS
select team.team_name as "Team Name", avg(batter.runs) as "Average Runs"
from batter
join player on player.emp_id = batter.emp_id
join employee on employee.emp_id = player.emp_id
join team on team.team_id = employee.team_id
group by team.team_id
order by team.team_id;

#shows all the dates where at least 1 game was played
CREATE VIEW game_dates AS
select DISTINCT game_date
from game;


