#root 계정으로 접속

#create database bbbot;
#grant all privileges on bbbot.* to ace@localhost identified by 'me';
#flush PRIVILEGES;

#mariaDB는 데이터베이스를 사용한다는 명령어를 써줘야 함bbbot
use bbbot; 

#데이터베이스 만든 후 heidiSQL에서 데이터베이스 오른쪽버튼 -편집-encoding - utf8mb3_general_ci로 설정
#각 테이블마다 인코딩을 해주는 것보다 효율적

#테이블 생성
CREATE TABLE member (
   member_code   int(50) PRIMARY KEY auto_increment,
   id   varchar(50)  NOT NULL UNIQUE,
   password   varchar(255)   NOT NULL,
   residence   varchar(100)   NOT NULL
)default character set utf8 collate utf8mb3_general_ci;

CREATE TABLE member_child (
   member_code   int(50)   NOT NULL,
   gender   int   not null check (gender in (1,2)),
   Field   date   NULL
)default character set utf8 collate utf8mb3_general_ci;

#챗봇 로그
CREATE TABLE chatbot (
   c_code    int(50)   PRIMARY KEY auto_increment,
    member_code    int(50)   NOT NULL,
    chat    TEXT   NOT NULL
)default character set utf8 collate utf8mb3_general_ci;
#사용자 EDA 
CREATE TABLE  chatbot_eda  (
    e_code    int(50)   PRIMARY KEY auto_increment,
    c_code    int(50)   NOT NULL ,
    member_code    int(50)   NOT NULL,
    ner    varchar(50)   NULL
)default character set utf8 collate utf8mb3_general_ci;

#의료진단 시각화 
CREATE TABLE  wellness_eda  (
    we_code    int(50)   PRIMARY KEY auto_increment,
    member_code    int(50)   NOT NULL,
    w_id    int(50)   NOT NULL
)default character set utf8 collate utf8mb3_general_ci;

#병명과 병명 번호
CREATE TABLE  wellness  (
    w_id int(50) PRIMARY KEY auto_increment,
    resource varchar(10) not null UNIQUE,
    label varchar(20) not null
)default character set utf8 collate utf8mb3_general_ci;

#증상부위
CREATE TABLE  wellness_sym  (
    w_id int(50) not null ,
    symptom_area varchar(20) not null
)default character set utf8 collate utf8mb3_general_ci;

#의료진단 속성 및 설명
CREATE TABLE  wellness_pro  (
    w_id int(50) not null,
    property varchar(30) not null,
    descript text not null
)default character set utf8 collate utf8mb3_general_ci;

CREATE TABLE  faq_board  (
    no    int(50)   PRIMARY KEY auto_increment,
    title    varchar(50)   NULL,
    content    text   NULL,
    answer    text   NULL,
    count    int(20)   NULL
)default character set utf8 collate utf8mb3_general_ci;

CREATE TABLE  facility  (
    f_code    int(50)   PRIMARY KEY auto_increment,
    place_name   varchar(20)  not null,
    type    varchar(20)   not null,
    address    varchar(30)    not null
)default character set utf8 collate utf8mb3_general_ci;

CREATE TABLE  product  (
    p_code    int(50)   PRIMARY KEY auto_increment,
    brand    varchar(50)   NULL,
    product   varchar(50)   not NULL,
    descript    text   NULL,
    price    int(20)   not NULL,
    image    VARCHAR(100)   NULL,
    link   varchar(100)   not NULL
)default character set utf8 collate utf8mb3_general_ci;

#질문 저장 후 의도(?) 파악
CREATE TABLE  bbb_question  (
	q_id    int(50)   PRIMARY KEY auto_increment,
    q_title    varchar(50)   NOT NULL,
    q_content    text   NULL,
    q_date    date   not NULL
)default character set utf8 collate utf8mb3_general_ci;

#답변 테이블
CREATE TABLE  bbb_comment  (
    id    int(50)   NOT NULL,
    comment    varchar(50)  not NULL
)default character set utf8 collate utf8mb3_general_ci;

CREATE TABLE  sentiment_analysis  (
    sentiment    int(50)   NULL,
    question    varchar(50)   NULL,
    answer    varchar(50)   NULL
)default character set utf8 collate utf8mb3_general_ci;


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
    w_id 
)
REFERENCES  wellness  (
    w_id 
);

ALTER TABLE  bbb_comment  ADD CONSTRAINT  FK_bbb_ question_TO_bbb_comment_1  FOREIGN KEY (
    id 
)
REFERENCES  bbb_ question  (
    id 
);
#의료진단 제약조건 설정
ALTER TABLE  wellness_pro  ADD CONSTRAINT  FK_wellness_TO_wellness_pro  FOREIGN KEY (
    w_id 
)
REFERENCES  wellness  (
    w_id 
);
ALTER TABLE  wellness_sym  ADD CONSTRAINT  FK_wellness_TO_wellness_sym  FOREIGN KEY (
    w_id 
)
REFERENCES  wellness  (
    w_id 
);

