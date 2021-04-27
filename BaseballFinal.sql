create table team(
   team_id varchar(30) primary key,
   foreign key(league_id) references league(league_id),
   team_name varchar(30),
   wins int,
   losses int
);
create table contract(
   contract_id varchar(30) primary key,
   date_start date,
   date_finish date,
   salary float(24)
);
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
create table park(
   park_id varchar(30) primary key,
   team_id varchar(30),
   foreign key(team_id) references team(team_id),
   city varchar(30) not null,
   state varchar(30) not null,
   park_name varchar(30) not null
);
create table league(
   league_id varchar(30) primary key,
   league_name varchar(30) not null
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
where employee.team_id = 
order by employee.lname;
