--root
--create database bbbot;
--grant all privileges on bbbot.* to ace@localhost identified by 'me';
--flush PRIVILEGES;

use bbbot; 

CREATE TABLE member (
   member_code   int   NOT NULL,
   id   varchar  NOT NULL UNIQUE,
   password   varchar   NOT NULL,
   residence   varchar   NOT NULL
);

CREATE TABLE member_child (
   member_code   int   NOT NULL,
   gender   int   NULL,
   Field   date   NULL
);

CREATE TABLE chatbot (
   c_code    int   NOT NULL,
    member_code    int   NOT NULL,
    chat    text   NULL
);

CREATE TABLE  chatbot_eda  (
    e_code    int   NOT NULL,
    c_code    int   NOT NULL,
    member_code    int   NOT NULL,
    ner    varchar   NULL
);

CREATE TABLE  wellness_eda  (
    we_code    int   NOT NULL,
    member_code    int   NOT NULL,
    w_code    int   NOT NULL
);

CREATE TABLE  wellness  (
    w_code    int   NOT NULL,
    병명    varchar   NULL,
    구분    varchar   NULL,
    동의어    varchar   NULL,
    완화방법    varchar   NULL,
    원인    varchar   NULL,
    정의    varchar   NULL,
    증상    varchar   NULL,
    증상부위    varchar   NULL,
    치료방법    varchar   NULL,
    치료약    varchar   NULL,
    좋은음식    varchar   NULL
);

CREATE TABLE  faq_board  (
    no    int   NOT NULL,
    title    varchar   NULL,
    content    text   NULL,
    answer    text   NULL,
    count    int   NULL
);

CREATE TABLE  facility  (
    f_code    int   NOT NULL,
    장소명    varchar   NULL,
    구분    varchar   NULL,
    주소    varchar   NULL
);

CREATE TABLE  product  (
    p_code    int   NOT NULL,
    브랜드    varchar   NULL,
    제품명    varchar   NULL,
    설명    text   NULL,
    가격    int   NULL,
    이미지    varchar   NULL,
    링크    varchar   NULL
);

CREATE TABLE  bbb_ question  (
    id    int   NOT NULL,
    title    varchar   NULL,
    content    text   NULL,
    date    date   NULL
);

CREATE TABLE  bbb_comment  (
    id    int   NOT NULL,
    comment    varchar   NULL
);

CREATE TABLE  sentiment_analysis  (
    감정    int   NULL,
    질문    varchar   NULL,
    답변    varchar   NULL
);

ALTER TABLE  member  ADD CONSTRAINT  PK_MEMBER  PRIMARY KEY (
    member_code 
);

ALTER TABLE  member_child  ADD CONSTRAINT  PK_MEMBER_CHILD  PRIMARY KEY (
    member_code 
);

ALTER TABLE  chatbot  ADD CONSTRAINT  PK_CHATBOT  PRIMARY KEY (
    c_code ,
    member_code 
);

ALTER TABLE  chatbot_eda  ADD CONSTRAINT  PK_CHATBOT_EDA  PRIMARY KEY (
    e_code ,
    c_code ,
    member_code 
);

ALTER TABLE  wellness_eda  ADD CONSTRAINT  PK_WELLNESS_EDA  PRIMARY KEY (
    we_code ,
    member_code ,
    w_code 
);

ALTER TABLE  wellness  ADD CONSTRAINT  PK_WELLNESS  PRIMARY KEY (
    w_code 
);

ALTER TABLE  faq_board  ADD CONSTRAINT  PK_FAQ_BOARD  PRIMARY KEY (
    no 
);

ALTER TABLE  facility  ADD CONSTRAINT  PK_FACILITY  PRIMARY KEY (
    f_code 
);

ALTER TABLE  product  ADD CONSTRAINT  PK_PRODUCT  PRIMARY KEY (
    p_code 
);

ALTER TABLE  bbb_ question  ADD CONSTRAINT  PK_BBB_ QUESTION  PRIMARY KEY (
    id 
);

ALTER TABLE  bbb_comment  ADD CONSTRAINT  PK_BBB_COMMENT  PRIMARY KEY (
    id 
);

ALTER TABLE  member_child  ADD CONSTRAINT  FK_member_TO_member_child_1  FOREIGN KEY (
    member_code 
)
REFERENCES  member  (
    member_code 
);

ALTER TABLE  chatbot  ADD CONSTRAINT  FK_member_TO_chatbot_1  FOREIGN KEY (
    member_code 
)
REFERENCES  member  (
    member_code 
);

ALTER TABLE  chatbot_eda  ADD CONSTRAINT  FK_chatbot_TO_chatbot_eda_1  FOREIGN KEY (
    c_code 
)
REFERENCES  chatbot  (
    c_code 
);

ALTER TABLE  chatbot_eda  ADD CONSTRAINT  FK_member_TO_chatbot_eda_1  FOREIGN KEY (
    member_code 
)
REFERENCES  member  (
    member_code 
);

ALTER TABLE  wellness_eda  ADD CONSTRAINT  FK_member_TO_wellness_eda_1  FOREIGN KEY (
    member_code 
)
REFERENCES  member  (
    member_code 
);

ALTER TABLE  wellness_eda  ADD CONSTRAINT  FK_wellness_TO_wellness_eda_1  FOREIGN KEY (
    w_code 
)
REFERENCES  wellness  (
    w_code 
);

ALTER TABLE  bbb_comment  ADD CONSTRAINT  FK_bbb_ question_TO_bbb_comment_1  FOREIGN KEY (
    id 
)
REFERENCES  bbb_ question  (
    id 
);




--create table goodsinfo (
--	code char(5)	not null	primary key,
--	name varchar(30)	not null,
--	price int(8)	not null,
--	maker varchar(20)
--) default character set utf8 collate utf8_general_ci;
--
--insert into goodsinfo values ('10001','디지털TV',350000,'LG'),
--('10002','DVD플레이어',250000,'LG'),
--('10003','디지털 카메라',210000,'삼성'),
--('10004','전자사전',180000,'아이리버'),
--('10005','벽걸이 에어컨',400000,'삼성');