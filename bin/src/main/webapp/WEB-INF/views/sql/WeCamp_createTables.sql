drop table AUTHORITY cascade constraints;
drop table I_STATE cascade constraints;
drop table B_STATE cascade constraints;
drop table HEART cascade constraints;
drop table OWNER cascade constraints;
drop table L_MEMBER cascade constraints;
drop table SORT cascade constraints;
drop table CAMP cascade constraints;
drop table BOOKING cascade constraints;
drop table REVIEW cascade constraints;
drop table MEMBER cascade constraints;
drop table ADMIN cascade constraints;
drop table IMG cascade constraints;
drop table INQUIRY cascade constraints;
purge recyclebin;

--권한 테이블
create table AUTHORITY(
	A_NO number,
	A_NAME varchar2(100)
);

ALTER TABLE AUTHORITY ADD CONSTRAINT PK_AUTHORITY PRIMARY KEY(
	 A_NO 
);


--회원 테이블
create table MEMBER(
	 EMAIL varchar2(100),
	 A_NO number default '1',
	 NAME varchar2(100),
	 NICKNAME varchar2(100) unique,
	 PWD varchar2(255),
	 BIRTH date,
	 POINT number default 0,
	 GRADE varchar2(10) default 'SILVER',
     constraint MEMBER_GRADE_CK check(GRADE in ('SILVER', 'GOLD', 'DIAMOND'))
);

ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY(
	 EMAIL 
);
ALTER TABLE MEMBER ADD CONSTRAINT FK_AUTHORITY_TO_MEMBER FOREIGN KEY(
	 A_NO 
) REFERENCES AUTHORITY(
	 A_NO 
);


--탈퇴회원 테이블
create table L_MEMBER(
	 EMAIL varchar2(100),
	 NAME varchar2(100),
	 NICKNAME varchar2(100),
	 PWD varchar2(255),
	 BIRTH date
);
ALTER TABLE L_MEMBER ADD CONSTRAINT PK_L_MEMBER PRIMARY KEY(
	 EMAIL 
);

--관리자계정 테이블
create table ADMIN(
	 NAME varchar2(100),
	 PWD varchar2(255) 
);
ALTER TABLE ADMIN ADD CONSTRAINT PK_ADMIN PRIMARY KEY(
	 NAME 
);

--캠핑장 테이블
create table CAMP(
	 CAMP_IDX number,
	 CAMP_NAME varchar2(100),
	 LATITUDE number,
	 LONGITUDE number,
	 ADDRESS varchar2(255),
	 CAMP_TEL varchar2(20),
	 SITE_NUM number(10),
	 FULL_NUM number(10),
	 PARKING number(10),
	 CONV varchar2(255),
	 SEC_CONV varchar2(255),
	 ETC_CONV varchar2(255),
	 AGENCY_TEL varchar2(20),
	 AGENCY_NAME varchar2(100),
	 TOTAL_BOOKING number
);
ALTER TABLE CAMP ADD CONSTRAINT PK_CAMP PRIMARY KEY(
	 CAMP_IDX 
);

--사업자 테이블
create table OWNER(
	EMAIL varchar2(100),
	CAMP_IDX number,
	NAME varchar2(100),
	OWNER_NUM varchar2(20),
	COM_NAME varchar2(100),
	COM_ADDR varchar2(255),
	COM_TEL varchar2(20)
);

ALTER TABLE OWNER ADD CONSTRAINT PK_OWNER PRIMARY KEY(
	 EMAIL 
);

ALTER TABLE OWNER ADD CONSTRAINT FK_CAMP_TO_OWNER FOREIGN KEY(
	 CAMP_IDX 
) REFERENCES CAMP(
	 CAMP_IDX
);

--찜 테이블
create table HEART(
	HEART_IDX number,
	EMAIL varchar2(100),
	CAMP_IDX number
);

ALTER TABLE HEART ADD CONSTRAINT PK_HEART PRIMARY KEY(
	 HEART_IDX 
);

ALTER TABLE HEART ADD CONSTRAINT FK_MEMBER_TO_HEART FOREIGN KEY(
	 EMAIL
) REFERENCES MEMBER(
	 EMAIL
);

ALTER TABLE HEART ADD CONSTRAINT FK_CAMP_TO_HEART FOREIGN KEY(
	 CAMP_IDX 
) REFERENCES CAMP(
	 CAMP_IDX
);


--예약상태 테이블
create table B_STATE(
	S_NO number,
	S_NAME varchar2(100)
);

ALTER TABLE B_STATE  ADD CONSTRAINT PK_B_STATE PRIMARY KEY(
	 S_NO
);

--예약 테이블
create table BOOKING(
	 BOOKING_IDX number,
	 EMAIL varchar2(100),
	 CAMP_IDX number,
	 S_NO number default 1,
	 TOTAL_FEE number,
	 BDATE date default SYSDATE,
	 UDATE date default SYSDATE,
	 TEL varchar2(20),
	 MEMO varchar2(255),
	 P_NUM number(10),
	 REVIEW_STATE char default 'F',
     constraint BOOKING_REVIEW_STATE_CK check(REVIEW_STATE in ('T', 'F'))
);
ALTER TABLE BOOKING ADD CONSTRAINT PK_BOOKING PRIMARY KEY(
	 BOOKING_IDX
);
ALTER TABLE BOOKING ADD CONSTRAINT FK_MEMBER_TO_BOOKING FOREIGN KEY(
	 EMAIL 
) REFERENCES MEMBER(
	 EMAIL 
);
ALTER TABLE BOOKING ADD CONSTRAINT FK_CAMP_TO_BOOKING FOREIGN KEY(
	 CAMP_IDX 
)REFERENCES CAMP(
	 CAMP_IDX 
);
ALTER TABLE BOOKING ADD CONSTRAINT FK_B_STATE_TO_BOOKING FOREIGN KEY(
	 S_NO 
) REFERENCES B_STATE(
	 S_NO 
);


--캠핑장 분류 테이블
create table SORT(
	SORT_IDX number,
	CAMP_IDX number,
	SORT_NAME varchar2(100),
	SITE_NAME varchar2(100),
	PEOPLE_NUM number,
	SITE_FEE number,
	FNAME varchar2(1000),
	OFNAME varchar2(1000) 
);
ALTER TABLE SORT ADD CONSTRAINT PK_SORT PRIMARY KEY(
	 SORT_IDX
);

ALTER TABLE SORT ADD CONSTRAINT FK_CAMP_TO_SORT FOREIGN KEY(
	 CAMP_IDX 
)REFERENCES CAMP(
	 CAMP_IDX 
);

--리뷰 테이블
create table REVIEW(
	 REVIEW_IDX number,
	 CAMP_IDX number,
	 EMAIL varchar2(100),
	 NICKNAME varchar2(100),
	 CONTENT varchar2(2000),
	 WDATE date default SYSDATE,
	 STAR number(1)
);
ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY(
	 REVIEW_IDX 
);
ALTER TABLE REVIEW ADD CONSTRAINT FK_CAMP_TO_REVIEW FOREIGN KEY(
	 CAMP_IDX 
)REFERENCES CAMP(
	 CAMP_IDX 
);


--이미지 테이블
create table IMG(
	 IMG_IDX number,
	 CAMP_IDX number,
	 FNAME varchar2(1000),
	 OFNAME varchar2(1000),
	 FSIZE number,
	 DIVISION varchar2(20)
);
ALTER TABLE IMG ADD CONSTRAINT PK_IMG PRIMARY KEY(
	 IMG_IDX 
);
ALTER TABLE IMG ADD CONSTRAINT FK_CAMP_TO_IMG FOREIGN KEY(
	 CAMP_IDX 
)REFERENCES CAMP(
	 CAMP_IDX 
);


--문의상태 테이블
create table I_STATE(
	S_NO number,
	S_NAME varchar2(100)
);

ALTER TABLE I_STATE ADD CONSTRAINT PK_I_STATE PRIMARY KEY(
	 S_NO 
);


--문의 테이블
create table INQUIRY(
	 INQ_IDX number,
	 EMAIL varchar2(100),
	 S_NO number default '1',
	 TITLE varchar2(1000),
	 OWNER_NUM varchar2(20),
	 CONTENT varchar2(4000),
	 WDATE date
);
ALTER TABLE INQUIRY ADD CONSTRAINT PK_INQUIRY PRIMARY KEY(
	 INQ_IDX 
);
ALTER TABLE INQUIRY ADD CONSTRAINT FK_MEMBER_TO_INQUIRY FOREIGN KEY(
	 EMAIL 
) REFERENCES MEMBER(
	 EMAIL 
);
ALTER TABLE INQUIRY ADD CONSTRAINT FK_I_STATE_TO_INQUIRY FOREIGN KEY(
	 S_NO 
) REFERENCES I_STATE(
	 S_NO 
);

