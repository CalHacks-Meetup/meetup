drop table if exists user;
create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

drop table if exists guest;
create table guest (
  user_id integer,
  request_id integer
);

drop table if exists request;
create table request (
  request_id integer primary key autoincrement,
  name text not null,
  author_id integer not null,
  time_range text not null,
  completed boolean
);

drop table if exists possible_day;
create table possible_day (
  request_id integer,
  date text not null
);

drop table if exists meetup;
create table meetup (
  meetup_id integer primary key autoincrement,
  date text not null,
  start_time text not null,
  end_time text not null
);

drop table if exists user;
create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

drop table if exists guest;
create table guest (
  user_id integer,
  request_id integer
);

drop table if exists request;
create table request (
  request_id integer primary key autoincrement,
  name text not null,
  author_id integer not null,
  time_range text not null
);

drop table if exists possible_day;
create table possible_day (
  request_id integer,
  date text not null
);

drop table if exists meetup;
create table meetup (
  meetup_id integer primary key autoincrement,
  date text not null,
  start_time text not null,
  end_time text not null
);

insert into user values (1, 'Garrett','garrett.t.tan@gmail.com','password');
insert into user values (2, 'Harshali','harshali@berkeley.edu','asdfjkl;');
insert into user values (3, 'Alfonso', 'alfonso@berkeley.edu', '123456');
insert into user values (4, 'Kenneth','kenneth@gmail.com','haha');
insert into user values (5, 'Tiffany','tiffany@hotmail.com','lol');
insert into user values (7, 'Andrew','andrew@berkeley.edu','-___-');
insert into user values (6, 'Tim','tim@hotmail.com','^.^');


insert into guest values (1, 1);
insert into guest values (3, 1);

insert into request values (1, 'Bomb ass meeting', 2, 'Monday through Wednesday');
select * from user;
select * from guest;
select * from request;



select g.user_id as 'guest_id', r.* from 
guest as g, request as r where g.request_id = r.request_id and g.user_id = 1;