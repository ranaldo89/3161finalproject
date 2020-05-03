create database mybook;

use mybook;

create table users(
	userid varchar(100),
	username varchar(100),
	password varchar(100),
	firstname varchar(100),
	lastname varchar(100),
	gender varchar(100),
	email varchar(100),
	dob varchar(100)
	primary key (userid)
);


create table profiles(
	profile_id varchar(100),
	city varchar(100),
	school varchar(100),
	job varchar(100),
	numberoffriends varchar(100),
	numberofposts varchar(100),
	primary key (profile_id)
);

create table groups(
	group_id varchar(100),
	groupname varchar(100),

	primary key (group_id)
);

create table posts(
	post_id varchar(100),
	post_type varchar(100),

	primary key (post_id)
);

