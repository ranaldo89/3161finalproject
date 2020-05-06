create database mybook;

use mybook;

create table Users(
	userid varchar(100),
	password varchar(100),
	firstname varchar(100),
	lastname varchar(100),
	gender varchar(100),
	mobile varchar(100),
	email varchar(100),
	dob varchar(100),
	city varchar(100)
	primary key (userid)
);

create table Friends(
	friend_id varchar(100),
	userid varchar(100),
	friend_type varchar(100),
	primary key(friend_id),
	foreign key(userid) references Users(userid)
);

create table content_editors(
	admin_id int unique,
	friend_id varchar(100),
	primary key(admin_id),
	foreign key(friend_id) references Friends(friend_id)
);

create table profiles(
	profile_id varchar(100),
	userid varchar(100),
	username varchar(100),
	numberoffriends varchar(100),
	numberofposts varchar(100),
	primary key (profile_id),
	foreign key(userid) references Users(userid)
);

create table Posts(
	post_id varchar(100),
	post_type varchar(100),
    post_date DATE,
	primary key (post_id)
);

create table Img(
	img_id varchar(100),
	post_id varchar(100),
	src varbinary(100),
    primary key(img_id),
	foreign key(post_id) references Posts(post_id)
);

create table Txt(
	txt_id varchar(100),
	post_id varchar(100), 
	src varbinary,
	primary key(txt_id),
	foreign key(post_id) references Posts(post_id)
	);

create table comments(
	post_id varchar(100),
	userid varchar(100),
	comment varchar(100),
	likes int,
	primary key(post_id, userid),
	foreign key(post_id) references Posts(post_id),
	foreign key(userid) references Users(userid)
);

create table groups(
	group_id varchar(100),
	creator varchar(100),
	content_editors(100),
	groupname varchar(100),
	groupdesc varchar(100),
	content varchar(100),
	primary key (group_id),
	foreign key(creator) references Users(userid),
	foreign key(content_editors) references content_editors(admin_id)
);

create table Shares(
    post_id varchar(100),
	profile_id varchar(100),
	group_id varchar(100),
	userid varchar(100),
	foreign key(userid) references Users(userid),
	foreign key(post_id) references Posts(post_id),
	foreign key(group_id) references groups(group_id),
	foreign key(profile_id) references profiles(profile_id)
);

