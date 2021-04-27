create table team(
   team_id varchar(30) primary key,
   league_id varchar(30),
   foreign key(league_id) references league(league_id),
   team_name varchar(30),
   wins int,
   losses int
);

#Team Data
INSERT INTO Team VALUE(`team_id`,`league_id`,`team_name`,`wins`,`losses`) VALUES 
(36101,1,"Tellus Inc.",5,9),
(36102,1,"Donec Nibh Quisque Incorporated",9,14),
(36103,1,"Malesuada Id Erat Corp.",3,22),
(36104,1,"Ut Semper Ltd",30,22),(5,"Habitant Morbi Institute",5,2),
(36106,1,"Id LLC",29,1),(7,"Eget Volutpat Ornare Consulting",26,2),
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
where employee.team_id = 36113
order by employee.lname;

select team.team_name as "Team Name", avg(batter.runs) as "Average Runs"
from batter
join player on player.player_id = batter.player_id
join employee on employee.emp_id = player.emp_id
join team on team.team_id = employee.team_id
group by team.team_id
order by team.team_id;
