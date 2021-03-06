CREATE TABLE TBL_BOARD (
BNO INT NOT NULL,
TITLE VARCHAR(200) NOT NULL,
CONTENT VARCHAR(4000),
WRITER VARCHAR(50) NOT NULL,
REGDATE DATETIME DEFAULT NOW(),
VIEWCNT INT DEFAULT 0,
USE_YN ENUM ('y', 'n'),
PRIMARY KEY (BNO)
)
;

-- utf8이 최신 흐름에 따라 변경되어 테이블을 utf_general_ci에서 ut8_unicode_ci로 변경
ALTER TABLE TBL_MEMBER convert to CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;
ALTER TABLE TBL_BOARD convert to CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;