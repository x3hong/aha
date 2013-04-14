-- ref: http://www.h2database.com/html/datatypes.html

DROP TABLE IF EXISTS T_USER;

CREATE TABLE T_USER (
  ID IDENTITY, -- Auto increase
  NAME VARCHAR(255),
  AGE INT,
  MALE BOOLEAN,
  BIRTHDAY DATE,
  IMG_DATA VARBINARY,
  PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS T_USER_GROUP;
CREATE TABLE T_USER_GROUP (
  ID BIGINT,	-- increase by select from sequence
  NAME VARCHAR(255),
  PRIMARY KEY (ID)
);
DROP SEQUENCE IF EXISTS T_USER_GROUP_ID_SEQ;
CREATE SEQUENCE T_USER_GROUP_ID_SEQ;


DROP TABLE IF EXISTS T_USER_GROUP_MEMBER;
CREATE TABLE T_USER_GROUP_MEMBER (
  GID BIGINT,
  UID BIGINT,
  NAME VARCHAR(255),
  PRIMARY KEY (GID, UID) -- combined PK
);

