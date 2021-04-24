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
   salary float
);
create table game(
   game_num varchar(30),
   foreign key(team_id) references team(team_id),
   primary key(game_num,team_id),
   score int,
   date date,
   time int
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
