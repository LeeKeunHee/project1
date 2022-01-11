create table mp_board(
    bno number primary key not null,
    title varchar2(100) not null,
    content varchar2(2000) not null,
    writer varchar2(100) not null,
    regdate date default sysdate,
    hit number)

drop table mp_board;

create sequence mp_board_seq start with 1 increment by 1;

create table mp_file(
    file_no number primary key not null,
    bno number not null,
    org_file_name varchar2(260) not null,
    stored_file_name varchar2(36) not null,
    file_size number,
    regdate date default sysdate not null,
    del_gb varchar2(1) default 'N' not null)
    drop table mp_file
create sequence seq_mp_file_no start with 1 increment by 1 nomaxvalue nocache;    
    
create table mp_member(
    userid varchar2(40) primary key not null,
    userpass varchar2(100) not null,
    username varchar2(40) not null,
    regdate date default sysdate)

drop table mp_member
    
create table mp_reply(
    bno number not null,
    rno number not null,
    content varchar2(1000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    constraint mp_reply_pk primary key(bno,rno)
    )

drop table mp_reply;    
create sequence mp_reply_seq start with 1 minvalue 0;  



//댓글 테이블(mp_reply)의 bno에 mp_board의 bno를 외래키로 추가
alter table mp_reply add constraint mp_reply_bno foreign key(bno) 
references mp_board(bno);

commit;


    