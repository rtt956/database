create table team(
   team_id varchar(30) primary key,
   league_id varchar(30),
   foreign key(league_id) references league(league_id),
   team_name varchar(30),
   wins int,
   losses int
);

#Team Data
INSERT INTO `Team` (`team_id`,`league_id`,`team_name`,`wins`,`losses`) VALUES 
(1,1,"Tellus Inc.",5,9),
(2,1,"Donec Nibh Quisque Incorporated",9,14),
(3,1,"Malesuada Id Erat Corp.",3,22),
(4,1,"Ut Semper Ltd",30,22),(5,"Habitant Morbi Institute",5,2),
(6,1,"Id LLC",29,1),(7,"Eget Volutpat Ornare Consulting",26,2),
(8,1,"Quis Accumsan Convallis Ltd",4,8),
(9,1,"Consectetuer Adipiscing Elit Consulting",5,10),
(10,1,"Ut Pharetra Limited",13,12),
(11,1,"Vel Sapien Ltd",5,13),
(12,1,"Conubia Nostra Per Corporation",27,1),
(13,1,"Tincidunt Nunc Ac Associates",2,11),
(14,1,"Enim Etiam Imperdiet Company",19,7),
(15,1,"In Corporation",14,18),
(16,2,"Massa LLP",24,18),
(17,2,"Mauris Vel Turpis Consulting",15,10),
(18,2,"Montes Nascetur Ridiculus Associates",8,16),
(19,2,"Eu Dui Corporation",25,9),
(20,2,"Et Magna Corporation",17,28),
(21,2,"Velit Limited",1,7),
(22,2,"Nec Quam LLC",8,17),
(23,2,"Amet Risus Donec Incorporated",11,7),
(24,2,"Erat Sed Inc.",27,11),
(25,2,"Vitae Velit Corporation",24,13),
(26,2,"Integer Ltd",27,18),
(27,2,"Nec Tempus Mauris Industries",23,11),
(28,2,"Mi Lorem Vehicula LLP",19,20),
(29,2,"Cursus In LLC",7,29),
(30,2,"Fames Ac Consulting",11,21);
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

select team.team_name as "Team Name", avg(batter.runs) as "Average Runs"
from batter
join player on player.player_id = batter.player_id
join employee on employee.emp_id = player.emp_id
join team on team.team_id = employee.team_id
group by team.team_id
order by team.team_id;
