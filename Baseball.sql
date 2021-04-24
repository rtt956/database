create table team(
   team_id varchar(30) primary key,
);
create table employee(
   emp_id varchar(30) primary key,
   foreign key(team_id) references team(team_id)
);
create table contract(
   contract_id varchar(30) primary key,
   foreign key(emp_id) references employee(emp_id)
);
create table game(
   game_num varchar(30),
   foreign key(team_id) references team(team_id),
   primary key(game_num,team_id)
);
create table park(
   park_id varchar(30) primary key,
   city varchar(30) not null,
   state varchar(30) not null,
);
create table league(
   league_id varchar(30) primary key,
   league_name varchar(30) not null,
);
