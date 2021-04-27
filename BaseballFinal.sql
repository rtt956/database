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
(1,"2010-10-13 23:53:25","2021-07-30 23:08:47","$472.71"),
(2,"2010-08-22 19:28:35","2011-06-13 22:51:14","$164.82"),
(3,"2010-01-08 21:11:49","2012-04-23 00:51:50","$999.08"),
(4,"2010-08-17 16:54:11","2017-02-26 12:06:30","$597.84"),
(5,"2010-10-03 11:53:48","2020-08-07 16:20:51","$293.87"),
(6,"2010-12-22 02:04:49","2018-04-08 01:29:51","$067.68"),
(7,"2010-08-27 22:55:56","2022-10-07 13:19:00","$605.14"),
(8,"2010-05-10 08:56:43","2012-12-31 01:28:49","$280.63"),
(9,"2010-10-16 20:20:28","2019-05-11 04:22:46","$996.36"),
(10,"2010-10-10 23:16:35","2013-08-15 20:02:44","$646.48"),
(11,"2010-11-13 15:18:34","2014-06-16 01:39:15","$773.26"),
(12,"2010-10-09 09:25:06","2016-10-17 09:38:43","$021.35"),
(13,"2010-12-22 20:15:07","2013-03-03 11:44:41","$359.62"),
(14,"2010-08-12 17:56:19","2021-10-09 01:22:26","$928.71"),
(15,"2010-01-30 17:48:04","2019-09-11 23:31:56","$311.49"),
(16,"2010-11-10 03:10:35","2012-06-17 23:52:25","$705.02"),
(17,"2010-01-18 11:37:40","2016-12-06 15:59:17","$342.76"),
(18,"2010-11-30 07:07:06","2021-09-05 02:02:07","$048.98"),
(19,"2010-01-14 19:21:15","2014-09-25 09:39:21","$507.45"),
(20,"2010-02-13 00:24:13","2014-04-07 23:47:17","$442.48"),
(21,"2010-07-06 15:50:35","2016-10-13 09:14:27","$064.91"),
(22,"2010-12-05 00:31:31","2014-01-30 19:25:51","$092.83"),
(23,"2010-03-15 18:27:45","2017-01-07 18:53:15","$423.44"),
(24,"2010-10-14 06:13:10","2011-08-24 13:06:08","$918.50"),
(25,"2010-07-24 08:59:13","2013-12-23 08:08:18","$524.66"),
(26,"2010-06-21 05:46:07","2011-03-16 08:20:52","$912.30"),
(27,"2010-04-13 23:53:54","2018-07-06 10:19:09","$515.93"),
(28,"2010-09-26 05:45:25","2014-02-12 12:32:52","$958.00"),
(29,"2010-12-23 20:44:53","2016-05-19 22:21:43","$247.22"),
(30,"2010-02-27 21:33:57","2021-06-01 13:21:07","$428.36"),
(31,"2010-03-16 10:29:11","2015-06-13 23:45:58","$678.49"),
(32,"2010-04-04 05:36:24","2018-03-26 01:51:22","$399.47"),
(33,"2010-06-20 00:29:51","2017-02-05 09:18:43","$522.66"),
(34,"2010-09-14 09:29:24","2013-08-27 19:24:56","$765.99"),
(35,"2010-10-14 21:45:39","2014-01-27 20:38:41","$763.68"),
(36,"2010-08-20 07:36:15","2016-07-25 17:44:58","$955.96"),
(37,"2010-08-03 16:27:24","2018-04-11 19:48:32","$917.11"),
(38,"2010-03-25 17:36:51","2012-04-01 22:44:03","$714.71"),
(39,"2010-07-12 06:54:15","2019-01-04 15:22:02","$355.01"),
(40,"2010-12-12 21:58:27","2022-05-07 08:43:16","$839.17"),
(41,"2010-02-18 17:00:58","2018-07-07 18:14:14","$691.89"),
(42,"2010-10-20 17:50:28","2022-04-01 12:45:39","$459.66"),
(43,"2010-03-15 16:39:30","2011-10-03 13:07:48","$919.32"),
(44,"2010-06-22 12:35:50","2022-05-04 13:36:11","$732.79"),
(45,"2010-11-21 20:23:02","2022-08-11 09:37:05","$215.67"),
(46,"2010-06-01 01:03:10","2013-06-01 14:51:59","$752.04"),
(47,"2010-08-31 16:15:02","2017-04-07 14:55:12","$004.91"),
(48,"2010-01-17 00:52:06","2022-03-15 03:08:21","$485.87"),
(49,"2010-02-07 05:33:27","2020-09-24 17:42:44","$842.30"),
(50,"2010-11-10 19:53:22","2015-11-15 06:23:13","$489.36");

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
(1,36101,0,"2022-06-29 03:49:41",13),
(1,36104,6,"2022-06-29 03:49:41",13),
(2,36102,5,"2022-02-25 19:04:55",18),
(2,36101,4,"2022-02-25 19:04:55",18),
(3,36103,4,"2014-12-16 10:17:34",12),
(3,36114,12,"2014-12-16 10:17:34",12),
(4,36120,5,"2020-11-15 08:14:48",18),
(4,36116,4,"2020-11-15 08:14:48",18),
(5,36105,5,"2013-11-17 13:48:14",14),
(5,36109,10,"2013-11-17 13:48:14",14),
(6,36129,0,"2022-05-17 11:29:49",15),
(6,36126,1,"2022-05-17 11:29:49",15),
(7,36107,12,"2012-07-09 09:08:03",18),
(7,36103,12,"2012-07-09 09:08:03",18),
(8,36108,8,"2015-11-27 00:35:16",12),
(8,36130,5,"2015-11-27 00:35:16",12);

create table park(
   park_id varchar(30) primary key,
   team_id varchar(30),
   foreign key(team_id) references team(team_id),
   city varchar(30) not null,
   state varchar(30) not null,
   park_name varchar(30) not null
);


create table agent(
   agent_id varchar(30) primary key,
   aname varchar(30),
   city varchar(30)
);
create table player(
   emp_id varchar(30) primary key,
   agent_id varchar(30),
   foreign key(agent_id) references agent(agent_id),
   height int,
   weight int,
   games int
);
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
   inning_pitched double,
   hits_allowed int,
   runs_allowed int,
   home_runs_allowed int,
   strike_outs int,
   batters_faced int
);
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
create table skill_t(
   skill_t varchar(30) primary key,
   skill_type varchar(30),
   skill_description varchar(50)
);
create table trainer_skill(
   emp_id varchar(30),
   skill_t varchar(30),
   primary key(emp_id,skill_t)
);

// Queries //
select *
from team
where wins > losses;

select employee.lname as "Last Name", employee.fname as "First Name"
from player
join employee on employee.emp_id = player.emp_id
where employee.team_id = 36113
order by employee.lname;

select team.team_name as "Team Name", avg(batter.runs) as "Average Runs"
from batter
join player on player.player_id = batter.player_id
join employee on employee.emp_id = player.emp_id
join team on team.team_id = employee.team_id
group by team.team_id
order by team.team_id;
