
DROP SEQUENCE MOVIE_SEQ;
DROP TABLE MOVIE;

DROP SEQUENCE MOVIECOMENT_SEQ;
DROP TABLE MOVIECOMENT;

CREATE TABLE MOVIE
(
    MOVIESEQ      NUMBER            NOT NULL, 
    MOVIETITLE    VARCHAR2(200)     NULL, 
    RATING        VARCHAR2(20)      NULL, 
    GENRE         VARCHAR2(200)     NULL, 
    TIME          VARCHAR2(2000)    NULL, 
    PUPDATE       VARCHAR2(200)     NULL, 
    MOVIESTATE    VARCHAR2(200)     NULL, 
    DIRECTOR      VARCHAR2(200)     NULL, 
    ACTOR         VARCHAR2(2000)    NULL, 
    IMGURL        VARCHAR2(2000)    NULL, 
    CODE          VARCHAR2(200)     NULL, 
    CONSTRAINT MOVIE_PK PRIMARY KEY (MOVIESEQ)
);


CREATE SEQUENCE MOVIE_SEQ
START WITH 1
INCREMENT BY 1;


-- UPDATETOEND확인용 더미 데이터

INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕2','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕3','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕4','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕5','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕6','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕7','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕8','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕9','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕10','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');
INSERT INTO MOVIE VALUES(MOVIE_SEQ.NEXTVAL,'반지의 제왕11','9.3','판타지','180분','2019.01.22','상영작','김민엽','김민엽','AAA','AAA');




SELECT * FROM MOVIE;

DELETE FROM MOVIE WHERE MOVIESEQ >50

UPDATE MOVIE SET MOVIESTATE='상영작' WHERE MOVIESEQ = 43

alter sequence MOVIE_SEQ increment by 7;



---------------------------------

DROP SEQUENCE MOVIECOMENT_SEQ;
DROP TABLE MOVIECOMENT;

CREATE SEQUENCE MOVIECOMENT_SEQ;


CREATE TABLE MOVIECOMENT
(
    MOVIECOMENTSEQ        NUMBER            NOT NULL, 
    MOVIESEQ              NUMBER            NULL, 
    USERNAME              VARCHAR2(200)     NULL, 
    MOVIECOMENTCONTENT    VARCHAR2(2000)    NULL, 
    MOVIECOMENTDATE       DATE              NULL, 
    USERSEQ               NUMBER            NULL, 
    CONSTRAINT MOVIECOMENT_PK PRIMARY KEY (MOVIECOMENTSEQ)
);

ALTER TABLE MOVIECOMENT
    ADD CONSTRAINT FK_MOVIECOMENT FOREIGN KEY (MOVIESEQ)
        REFERENCES MOVIE (MOVIESEQ);

ALTER TABLE MOVIECOMENT
    ADD CONSTRAINT FK_MOVIE_USERSEQ FOREIGN KEY (USERSEQ)
        REFERENCES USERS (USERSEQ);

INSERT INTO USERS VALUES(6,'a','a','진선1','앙','기','모','찌','하','이','요',9,8,7,'밐');

select * from users;

select * from cinema where cinemaseq in(69,71,59)