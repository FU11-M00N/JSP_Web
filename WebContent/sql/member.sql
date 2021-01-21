create table member(
	id varchar(20) not null primary key,
	password varchar(16) not null,
	name varchar(20) not null,
	nickname varchar(20) not null,
	email varchar(50) not null,
	area varchar(50) not null,
    flag varchar(10) not null,
	createtime datetime not null
);


