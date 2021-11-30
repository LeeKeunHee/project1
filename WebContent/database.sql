create table p_mem(m_id varchar2(15) primary key, m_pw varchar2(20) not null,
m_name varchar2(20) not null, m_birth1 number(4) not null, m_birth2 number(2) not null,
m_birth3 number(2) not null, 
m_email varchar2(30), m_tel varchar2(15), m_zipcode varchar2(10), m_address1 varchar2(150), 
m_address2 varchar2(150), regdate date)
select * from p_mem
drop table p_mem
insert into p_mem values('admin','1234','관리자','1111','11','11',null,null,null,null,null,null)
create table p_admin(a_id varchar2(15) primary key, a_pw varchar2(20))
insert into p_admin values('admin','admin1234')
delete from p_mem where m_id='admin'
select * from notice
create table notice(n_num number(6) not null, n_id varchar2(5) primary key, n_name varchar(15) not null, 
n_title varchar2(100) not null, n_sub varchar2(500) not null, 
n_date date not null, n_file varchar2(30))
delete from NOTICE where n_id='a001'
insert into notice values(seq_num.Nextval,'A001','관리자', '공지사항1 입니다','공지사항1 내용입니다', sysdate, null)
insert into notice values(seq_num.Nextval,'A002','관리자', '공지사항2 입니다','공지사항2 내용입니다', sysdate, null)
insert into notice values(seq_num.Nextval,'A003','관리자', '공지사항3 입니다','공지사항3 내용입니다', sysdate, null)
create table product(p_num varchar2(5) primary key, p_name varchar2(30) not null, p_kind varchar2(30) not null, p_price number(6) not null,
p_sub varchar2(2000) not null, p_img varchar2(20) not null)
create table n_product(n_num varchar2(5) primary key, n_name varchar2(30) not null, n_kind varchar2(30) not null, n_price number(6) not null,
n_sub varchar2(2000) not null, n_img varchar2(20) not null)
insert into PRODUCT values('a001','초코파이','파이류',3000,'초코파이 설명','초코파이.img')
insert into PRODUCT values('B001','스윙칩','스낵류',2000,'스윙칩 설명','스윙칩.img')
insert into PRODUCT values('C001','고래밥','비스킷류',1000,'고래밥 설명','고래밥.img')
insert into PRODUCT values('D001','아이셔','껌류',500,'아이셔 설명','아이셔.img')
select * from product
update product set p_num='b001', p_kind='비스킷류' where p_name='초코송이'
update product set p_img = './img/choco.jpg' where p_name='초코파이';
select * from cs
create table cs(cs_num number(6) not null,cs_id varchar2(5) primary key, cs_name varchar(15) not null, 
cs_title varchar2(100) not null, cs_sub varchar2(2000) not null, 
cs_date date not null, cs_file varchar2(30))
select * from n_PRODUCT
drop table cs
create sequence seq_num2 start with 1 increment by 1 maxvalue 1000000 cycle nocache;
create sequence seq_cs_num start with 1 increment by 1 maxvalue 1000000 cycle nocache;
drop sequence seq_num2
delete from product where p_name='와우'
select * from NOTICE
insert into cs values(seq_cs_num.Nextval,'고객','고객문의1입니다', '고객문의1 입니다', sysdate, null)