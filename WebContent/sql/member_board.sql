create table member_board(
	board_num int not null AUTO_INCREMENT primary key ,
	board_nick varchar(50),
	board_subject varchar(100),
	board_content varchar(2000),
	board_file varchar(100),
	Board_re_ref int,
	Board_re_lev int,
	Board_re_seq int,
	Board_count int,
	Board_date date,
	board_category varchar(10),
	Board_like int not null default 0
);