create database hello;
use hello;
create table admi(aid varchar(10) primary key,auser varchar(20),apass varchar(20));
insert into admi values("admin",'admin123','Admin@405');
select * from admi;
create table faculty(fid varchar(20) primary key not null,fname char(20) not null,gender char(10) not null,fdob date not null,fpno long not null,Qualification varchar(20) not null,department varchar(20) not null,uname varchar(20) not null,pass varchar(20) not null);
select*from faculty;
create table leav(fname char(20),fid varchar(20),dat date,purpose varchar(30),fdate varchar(10),tdate varchar(10),foreign key leav(fid) references faculty(fid));
select*from leav;
create table monday(cfid varchar(20) primary key,mp1 varchar(20),mp2 varchar(20),mp3 varchar(20),mp4 varchar(20),mp5 varchar(20),mp6 varchar(20),mp7 varchar(20),mp8 varchar(20),fid varchar(20),foreign key monday (fid) references faculty(fid));
select*from monday;
create table tuesday(cfid varchar(20)primary key ,tp1 varchar(20),tp2 varchar(20),tp3 varchar(20),tp4 varchar(20),tp5 varchar(20),tp6 varchar(20),tp7 varchar(20),tp8 varchar(20),fid varchar(20),foreign key tuesday (fid) references faculty(fid));
select*from tuesday;
create table wednesday(cfid varchar(20)primary key ,tp1 varchar(20),tp2 varchar(20),tp3 varchar(20),tp4 varchar(20),tp5 varchar(20),tp6 varchar(20),tp7 varchar(20),tp8 varchar(20),fid varchar(20),foreign key wednesday (fid) references faculty(fid));
select* from wednesday;
create table thrusday(cfid varchar(20)primary key ,tp1 varchar(20),tp2 varchar(20),tp3 varchar(20),tp4 varchar(20),tp5 varchar(20),tp6 varchar(20),tp7 varchar(20),tp8 varchar(20),fid varchar(20),foreign key thrusday (fid) references faculty(fid));
select * from thrusday;
create table friday(cfid varchar(20)primary key ,tp1 varchar(20),tp2 varchar(20),tp3 varchar(20),tp4 varchar(20),tp5 varchar(20),tp6 varchar(20),tp7 varchar(20),tp8 varchar(20),fid varchar(20),foreign key friday (fid) references faculty(fid));
select * from friday;
create table saturday(cfid varchar(20)primary key ,tp1 varchar(20),tp2 varchar(20),tp3 varchar(20),tp4 varchar(20),tp5 varchar(20),tp6 varchar(20),tp7 varchar(20),tp8 varchar(20),fid varchar(20),foreign key saturday (fid) references faculty(fid));
select * from saturday;
create table message(fid varchar(20),mess varchar(300) not null,mid varchar(20),foreign key leav(fid) references faculty(fid));
select * from message;
SET sql_safe_updates=0;