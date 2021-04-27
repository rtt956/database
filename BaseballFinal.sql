create table team(
   team_id varchar(30) primary key,
   foreign key(league_id) references league(league_id),
   team_name varchar(30),
   wins int,
   losses int
);

#Team Data
INSERT INTO `Team` (`team_id`,`team_name`,`wins`,`losses`) VALUES (1,"Tellus Inc.",5,9),
(2,"Donec Nibh Quisque Incorporated",9,14),
(3,"Malesuada Id Erat Corp.",3,22),
(4,"Ut Semper Ltd",30,22),(5,"Habitant Morbi Institute",5,2),
(6,"Id LLC",29,1),(7,"Eget Volutpat Ornare Consulting",26,2),
(8,"Quis Accumsan Convallis Ltd",4,8),
(9,"Consectetuer Adipiscing Elit Consulting",5,10),
(10,"Ut Pharetra Limited",13,12),
(11,"Vel Sapien Ltd",5,13),
(12,"Conubia Nostra Per Corporation",27,1),
(13,"Tincidunt Nunc Ac Associates",2,11),
(14,"Enim Etiam Imperdiet Company",19,7),
(15,"In Corporation",14,18),
(16,"Massa LLP",24,18),
(17,"Mauris Vel Turpis Consulting",15,10),
(18,"Montes Nascetur Ridiculus Associates",8,16),
(19,"Eu Dui Corporation",25,9),
(20,"Et Magna Corporation",17,28),
(21,"Velit Limited",1,7),
(22,"Nec Quam LLC",8,17),
(23,"Amet Risus Donec Incorporated",11,7),
(24,"Erat Sed Inc.",27,11),
(25,"Vitae Velit Corporation",24,13),
(26,"Integer Ltd",27,18),
(27,"Nec Tempus Mauris Industries",23,11),
(28,"Mi Lorem Vehicula LLP",19,20),
(29,"Cursus In LLC",7,29),
(30,"Fames Ac Consulting",11,21);
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
