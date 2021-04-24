create table team(
   team_id varchar(30) primary key,
   team_name varchar(30),
   wins int,
   losses int
);
create table employee(
   emp_id varchar(30) primary key,
   foreign key(team_id) references team(team_id),
   fname varchar(30),
   lname varchar(30),
   reports_to varchar(30)
);
create table contract(
   contract_id varchar(30) primary key,
   foreign key(emp_id) references employee(emp_id),
   date_start date,
   date_finish date,
   salary float(0)
);
create table game(
   game_num varchar(30),
   foreign key(team_id) references team(team_id),
   primary key(game_num,team_id),
   score int,
   game_date date,
   game_time int
);
create table park(
   park_id varchar(30) primary key,
   city varchar(30) not null,
   state varchar(30) not null
);
create table league(
   league_id varchar(30) primary key,
   league_name varchar(30) not null,
);
create table player(
   emp_id varchar(30),
   player_id varchar(30) primary key,
   height float(0),
   weight float(0),
   games int
);
create table trainer(
   emp_id varchar(30) primary key
);
create table coach(
   emp_id varchar(30) primary key,
   position varchar(30)
);
create table agent(
   agent_id varchar(30) primary key,
   aname varchar(30),
   city varchar(30)
);
create table pitcher(
   pitcher_id varchar(30) primary key,
   foreign key(emp_id) references player(emp_id),
   inning_pitched double,
   hits_allowed int,
   runs_allowed int,
   home_runs_allowed int,
   strike_outs int,
   batters_faced int
);
