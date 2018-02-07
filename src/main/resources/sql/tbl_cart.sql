CREATE TABLE TBL_CART (
	CART_ID INT AUTO_INCREMENT,
    USER_ID VARCHAR(50) NOT NULL,
    PRODUCT_ID INT NOT NULL,
    AMOUNT INT DEFAULT 0,
    PRIMARY KEY(CART_ID)
);

COMMIT;

ALTER TABLE TBL_CART ADD CONSTRAINT CART_USERID_FK FOREIGN KEY(USER_ID) REFERENCES TBL_MEMBER(USER_ID);
ALTER TABLE TBL_CART ADD CONSTRAINT CART_PRODUCT_FK FOREIGN KEY(PRODUCT_ID) REFERENCES TBL_PRODUCT(PRODUCT_ID);