# 날짜 : 2026/05/06
# 이름 : 남현호
# 내용 : 3장 제약조건

#실습 3-1. 기본키 실습
CREATE TABLE User2 (
	userid VARCHAR(10) PRIMARY KEY,
    name   VARCHAR(10),
    birth  CHAR(10),
    addr   VARCHAR(50)
);

# 3-2. User2 데이터 추가하기
INSERT INTO User2 VALUES('A101', '김유신', '2000.05.10', '경남 김해시');
INSERT INTO User2 VALUES('A102', '김춘추', '2000.05.11', '부산광역시 동구');
INSERT INTO User2 VALUES('A103', '강감찬', '2000.05.12', '경남 사천시');
INSERT INTO User2 VALUES('A104', '이순신', '2000.05.13', '대구광역시');

SELECT * FROM User2;

# 3-3. 고유키 실습
CREATE TABLE User3 (
	userid VARCHAR(10) PRIMARY KEY,
    name   VARCHAR(10),
    birth  CHAR(10),
    hp     CHAR(13) UNIQUE,
    addr   VARCHAR(50)
);

INSERT INTO User3 VALUES('A101', '김유신', '2000.05.10', '010-1234-1001', '경남 김해시');
INSERT INTO User3 VALUES('A102', '김춘추', '2000.05.11', NULL, '부산광역시 동구');
INSERT INTO User3 VALUES('A103', '강감찬', '2000.05.12', '010-1234-1002', '경남 사천시');
INSERT INTO User3 VALUES('A104', '이순신', '2000.05.13', '010-1234-1003', '대구광역시');
INSERT INTO User3 (userid, name, birth, addr) 
					VALUES('A105', '을지문덕', '2000.05.11', '부산광역시 동구');

INSERT INTO User3 SET
					userid = 'B101',
                    name = '홍길동',
                    birth = '1992-05-09',
                    addr = '부산 연제구';
SELECT * FROM User3;

#실습 3-5. 외래키 실습
CREATE TABLE Parent(
	pid   VARCHAR(10) PRIMARY KEY,
    name  VARCHAR(10),
    birth CHAR(10), -- 1990-01-23(총 10자리 고정문자열)
    addr  VARCHAR(100)
);

CREATE TABLE Child(
	cid    VARCHAR(10) PRIMARY KEY,
    name   VARCHAR(10),
    hp     CHAR(13) UNIQUE,
    parent VARCHAR(10),
    FOREIGN KEY (parent) REFERENCES Parent (pid)
);

INSERT INTO Parent VALUES('P101', '김유신', '1968-05-09', '경남 김해시');
INSERT INTO Parent VALUES('P102', '김춘추', '1972-11-23', '경남 경주시');
INSERT INTO Parent VALUES('P103', '장보고', '1978-03-01', '전남 완도시');
INSERT INTO Parent VALUES('P104', '강감찬', '1979-08-16', '서울시 관악구');
INSERT INTO Parent VALUES('P105', '이순신', '1981-05-23', '부산시 진구');
SELECT * FROM Parent;

INSERT INTO Child VALUES('C101', '김철수', '010-1234-1001', 'P101');
INSERT INTO Child VALUES('C102', '김영희', '010-1234-1002', 'P101');
INSERT INTO Child VALUES('C103', '강철수', '010-1234-1003', 'P103');
INSERT INTO Child VALUES('C104', '이철수', '010-1234-1004', 'P105');
INSERT INTO Child VALUES('C105', '이수영', '010-1234-1004', 'P100'); -- 부모키값 P100이 존재하지 않기 때문에
SELECT * FROM Child;
DELETE FROM Child;

#실습 3-7. DEFAULT와 NOT NULL 실습
CREATE TABLE User4 (
	userid 	VARCHAR(10) PRIMARY KEY,
    name 	VARCHAR(10) NOT NULL,
    gender 	CHAR(1),
    age 	INT 		DEFAULT 1,
    hp 		CHAR(13) 	UNIQUE,
    addr	VARCHAR(20)
);

INSERT INTO User4 VALUES('A101', '김유신', 'M', 25, '010-1234-1111', '경남 김해시');
INSERT INTO User4 VALUES('A102', '김춘추', 'M', 23, '010-1234-2222', '경남 경주시');
INSERT INTO User4 VALUES('A103', '장보고', 'M', 35, '010-1234-3333', '전남 완도시');
INSERT INTO User4 VALUES('A104', '강감찬', 'M', 42, '010-1234-4444', '서울시 관악구');
INSERT INTO User4 (userid, name, gender, hp, addr) 
				VALUES('A105', '이순신', 'M', '010-1234-5555', '부산시 진구');
INSERT INTO User4 VALUES('A106', '신사임당', 'F', 32, NULL, '강릉시');
INSERT INTO User4 VALUES('A107', '허난설현', 'F', 27, NULL, '경기도 광주시');
SELECT * FROM User4;

#실습 3-9. AUTO_INCREMENT
CREATE TABLE User5(
	seq 	INT PRIMARY KEY AUTO_INCREMENT,
	name 	VARCHAR(10) 	NOT NULL,
    gender 	CHAR(1) 		CHECK (gender IN ('M', 'F')),
    age 	INT DEFAULT 1 	CHECK (age > 0 AND age < 100),
    addr 	VARCHAR(20)
);

INSERT INTO User5 (name, gender, age, addr) VALUES('김유신', 'M', 25, '경남 김해시'); 
INSERT INTO User5 (name, gender, age, addr) VALUES('김춘추', 'M', 23, '경남 경주시'); 
INSERT INTO User5 (name, gender, age, addr) VALUES('장보고', 'M', 35, '전남 완도시'); 
INSERT INTO User5 (name, gender, age, addr) VALUES('강감찬', 'M', 45, '서울시 관악구'); 
INSERT INTO User5 (name, gender, age, addr) VALUES('이순신', 'M', 51, '부산시 진구'); 
INSERT INTO User5 (name, gender, age, addr) VALUES('신사임당', 'F', -1, '부산시 진구'); 
DELETE FROM User5;
SELECT * FROM User5;