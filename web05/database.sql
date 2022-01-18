create table board(seq int not null auto_increment, title varchar(100) not null, content varchar(1000) not null, 
resdate TIMESTAMP DEFAULT NOW(), writer varchar(50) not null, hit int, primary key(seq)) engine=MyISAM charset=utf8;

 create table member(id varchar(30) primary key, pw varchar(30) not null, name varchar(30) not null, 
 email varchar(50) not null, tel varchar(20), regdate TIMESTAMP DEFAULT NOW()) engine=MyISAM charset=utf8;