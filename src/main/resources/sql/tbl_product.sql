CREATE TABLE TBL_PRODUCT (
	PRODUCT_ID INT,
    PRODUCT_NAME VARCHAR(50),
    PRODUCT_PRICE INT DEFAULT 0,
    PRODUCT_DESC VARCHAR(500),
    PRODUCT_URL VARCHAR(500),
    PRIMARY KEY(PRODUCT_ID)
);

INSERT INTO TBL_PRODUCT VALUES (1, '나이키', 100000, '나이키 2018년 신상제품입니다.', 'nike.jpg');
INSERT INTO TBL_PRODUCT VALUES (2, '아디다스', 80000, '아디다스의 스테디 셀러!', 'adidas.jpg');
INSERT INTO TBL_PRODUCT VALUES (3, '뉴발란스', 110000, '뉴발란스의 2016년 최고의 신발', 'newbalance.jpg');
INSERT INTO TBL_PRODUCT VALUES (4, '푸마', 98000, '푸마 30프로 특가할인 제품입니다.', 'puma.jpg');
INSERT INTO TBL_PRODUCT VALUES (5, '팀버랜드', 150000, '팀버랜드 스테디 셀러! 특별할인 중입니다.', 'timberland.png');
INSERT INTO TBL_PRODUCT VALUES (6, '락포트', 99000, '편안한 로퍼 락포트입니다.', 'rockport.jpg');
INSERT INTO TBL_PRODUCT VALUES (7, '리복', 120000, '2017 신상 퓨리 입고되었습니다.', 'reebok.jpg');
INSERT INTO TBL_PRODUCT VALUES (8, '컨버스', 60000, '컨버스 특가할인 중입니다.', 'converse.jpg');