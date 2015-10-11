drop table if exists user;
create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

drop table if exists guest;
create table guest (
  who_id integer,
  meetup_id integer
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
  date text not null
);
