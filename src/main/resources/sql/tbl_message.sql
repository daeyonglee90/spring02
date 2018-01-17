-- 메시지 전송에 사용되는 로직

CREATE TABLE TBL_USER (
	USERID VARCHAR(50) NOT NULL,
    USERPW VARCHAR(50) NOT NULL,
    UNAME VARCHAR(100) NOT NULL,
    UPOINT NUMERIC DEFAULT 0,
    PRIMARY KEY (USERID)
);

CREATE TABLE TBL_MESSAGE(
	MID INT AUTO_INCREMENT,
    TARGETID VARCHAR(50) NOT NULL,
    SENDER VARCHAR(50) NOT NULL,
    MESSAGE VARCHAR(4000) NOT NULL,
    OPENDATE DATETIME,
    SENDDATE DATETIME DEFAULT NOW(),
    PRIMARY KEY(MID)
);

ALTER TABLE TBL_MESSAGE ADD CONSTRAINT FK_USERSENDER
FOREIGN KEY (SENDER) REFERENCES TBL_USER (USERID);

ALTER TABLE TBL_MESSAGE ADD CONSTRAINT FK_USERTARGET
FOREIGN KEY (TARGETID) REFERENCES TBL_USER(USERID);

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user01', '1234', 'kim');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user02', '1234', 'lee');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user03', '1234', 'park');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user04', '1234', 'choi');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user05', '1234', 'yoon');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user06', '1234', 'yang');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user07', '1234', 'cho');

INSERT INTO TBL_USER (USERID, USERPW, UNAME)
VALUES ('user08', '1234', 'koo');

COMMIT;