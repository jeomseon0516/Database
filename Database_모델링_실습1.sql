# 유저 테이블 데이터 입력
INSERT INTO `Users` VALUES('user1', '김유신', '1970-01-21', 'M', '010-1101-1976', 'kimys@naver.com', 7000, 1, '서울', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user2', '계백', '1975-06-11', 'M', '010-1102-1975', NULL, 5650, 1, '서울', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user3', '김춘추', '1989-05-30', 'M', '010-1103-1989', NULL, 4320, 2, '서울', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user4', '이사부', '1979-04-13', 'M', '010-2101-1979', 'leesabu@gmail.com', 0, 1, '서울', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user5', '장보고', '1966-09-12', 'M', '010-2104-1966', 'jangbg@naver.com', 3000, 4, '대전', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user6', '선덕여왕', '1979-07-28', 'M', '010-3101-1979', 'gueen@naver.com', 15840, 2, '대전', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user7', '강감찬', '1984-06-15', 'F', '010-4101-1984', 'kang@daum.net', 3610, 0, '대구', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user8', '신사임당', '1965-01-21', 'M', '010-5101-1965', 'sinsa@gmail.com', 0, 1, '대구', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user9', '이이', '1972-11-28', 'F', '010-6101-1972', 'leelee@nate.com', 0, 3, '부산', '2022-01-10 10:50:12');
INSERT INTO `Users` VALUES('user10', '허난설현', '1992-09-07', 'F', '010-7103-1992', NULL, 0, 3, '광주', '2022-01-10 10:50:12');

# 포인트 테이블 데이터 입력
INSERT INTO `Points` SET `userId` = 'user1', `point` = 1000, pointDesc = '회원가입 1000 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user1', `point` = 6000, pointDesc = '상품구매 5% 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user3', `point` = 2820, pointDesc = '상품구매 5% 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user7', `point` = 3610, pointDesc = '상품구매 5% 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user5', `point` = 3000, pointDesc = '이벤트 응모 3000 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user2', `point` = 1000, pointDesc = '회원가입 1000 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user2', `point` = 2000, pointDesc = '이벤트 응모 2000 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user2', `point` = 2650, pointDesc = '상품구매 5% 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user3', `point` = 1500, pointDesc = '이벤트 응모 1500 적립', pointDate = '2022-01-10 10:50:12'; 
INSERT INTO `Points` SET `userId` = 'user6', `point` = 15840, pointDesc = '상품구매 2% 적립', pointDate = '2022-01-10 10:50:12';

# 판매자 테이블 데이터 입력
INSERT INTO `Sellers` VALUES(10001, '(주)다팔아', '02-201-1976', '정우성', '서울');
INSERT INTO `Sellers` VALUES(10002, '판매의민족', '02-102-1975', '이정재', '서울');
INSERT INTO `Sellers` VALUES(10003, '멋남', '031-103-1989', '원빈', '경기');
INSERT INTO `Sellers` VALUES(10004, '스타일살아', '032-201-1979', '이나영', '경기');
INSERT INTO `Sellers` VALUES(10005, '(주)삼성전자', '02-214-1966', '장동건', '서울');
INSERT INTO `Sellers` VALUES(10006, '복실이옷짱', '051-301-1979', '고소영', '부산');
INSERT INTO `Sellers` VALUES(10007, '컴퓨존(주)', '055-401-1984', '유재석', '대구');
INSERT INTO `Sellers` VALUES(10008, '(주)LG전자', '02-511-1965', '강호동', '서울');
INSERT INTO `Sellers` VALUES(10009, '굿바디스포츠', '070-6101-1972', '조인성', '부산');
INSERT INTO `Sellers` VALUES(10010, '누리푸드', '051-710-1992', '강동원', '부산');

# 상품 카테고리 테이블 데이터 입력
INSERT INTO `Categories` VALUES(10, '여성의류패션');
INSERT INTO `Categories` VALUES(11, '남성의류패션');
INSERT INTO `Categories` VALUES(12, '식품·생필품');
INSERT INTO `Categories` VALUES(13, '취미·반려견');
INSERT INTO `Categories` VALUES(14, '홈·문구');
INSERT INTO `Categories` VALUES(15, '자동차·공구');
INSERT INTO `Categories` VALUES(16, '스포츠·건강');
INSERT INTO `Categories` VALUES(17, '컴퓨터·가전·디지털');
INSERT INTO `Categories` VALUES(18, '여행');
INSERT INTO `Categories` VALUES(19, '도서');

# 상품 테이블 데이터 입력
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount)
	VALUES(100101, 11, 10003, '반팔티 L-2XL', 869, 25000, 132, 20);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(100110, 10, 10004, '트레이닝 통바지', 1602, 38000, 398, 15);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(110101, 10, 10003, '신상 여성운동화', 160, 76000, 40, 5);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(120101, 12, 10010, '암소 1등급 구이셋트 1.2kg', NULL, 150000, 87, 15);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(120103, 12, 10010, '바로구이 부채살 250g', NULL, 21000, 61, 10);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 	
	VALUES(130101, 13, 10006, '[ANF] 식스프리 강아지 사료', 58, 56000, 142, 0);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(130112, 13, 10006, '중대형 사계절 강아지옷', 120, 15000, 80, 0);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(141001, 14, 10001, '라뗴 2인 소파/방수 패브릭', NULL, 320000, 42, 0);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(170115, 17, 10007, '지포스 3080 그래픽카드', 28, 900000, 12, 12);
INSERT INTO `Products` (prodNo, cateNo, sellerNo, prodName, prodStock, prodPrice, prodSold, prodDiscount) 
	VALUES(160103, 16, 10009, '치닝디핑 33BR 철봉', 32, 120000, 28, 0);

# 주문 테이블 데이터 입력
INSERT INTO `Orders` VALUES('22010210001', 'user2', 52300, '서울시 마포구 121', 1, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010210002', 'user3', 56700, '서울시 강남구 21-1', 1, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010210010', 'user4', 72200, '서울시 강서구 큰대로 38', 2, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010310001', 'user5', 127000, '경기도 광주시 초월로 21', 1, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010310100', 'user1', 120000, '경기도 수원시 120번지', 0, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010410101', 'user6', 792000, '부산시 남구 21-1 ', 2, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010510021', 'user7', 92200, '부산시 부산진구 56 10층', 4, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010510027', 'user8', 112000, '대구시 팔달로 19', 3, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010510031', 'user10', 792000, '대전시 한발로 24-1', 2, '2022-01-10 10:50:12');
INSERT INTO `Orders` VALUES('22010710110', 'user9', 94500, '광주시 충열로 11', 1, '2022-01-10 10:50:12');

# 주문 상품 상세 테이블
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010210001', 100110, 38000, 15, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010210001', 100101, 25000, 20, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010210002', 120103, 21000, 10, 3);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010310001', 130112, 15000, 0, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010310001', 130101, 56000, 0, 2);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010210010', 110101, 76000, 5, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010310100', 160103, 120000, 0, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010410101', 170115, 900000, 12, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010510021', 110101, 76000, 5, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010510027', 130101, 56000, 0, 2);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010510021', 100101, 25000, 20, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010510031', 170115, 900000, 12, 1);
INSERT INTO `OrderItems` (orderNo, prodNo, itemPrice, itemDiscount, itemCount) VALUES('22010710110', 120103, 21000, 10, 5);

# 장바구니 테이블 데이터 입력
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user1', 100101, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user1', 100110, 2, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user3', 120103, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user4', 130112, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user5', 130101, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user2', 110101, 3, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user2', 160103, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user2', 170115, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user3', 110101, 1, '2022-01-10 10:50:12');
INSERT INTO `Carts` (userId, prodNo, cartProdCount, cartProdDate) VALUES('user6', 130101, 1, '2022-01-10 10:50:12');

# 문제1
SELECT 
	u.userName AS 고객명,
    p.prodName AS 상품명,
    c.cartProdCount AS 상품수량
FROM `Carts` AS c
JOIN `Users` AS u ON c.userId = u.userId
JOIN `Products` AS p ON c.prodNo = p.prodNo
WHERE c.cartProdCount >= 2; 

# 문제2
SELECT 
	p.prodNo AS 상품번호,
    c.cateName AS `상품 카테고리`,
    p.prodName AS 상품명,
    p.prodPrice AS 상품가격,
    s.sellerBizName AS 판매자이름,
    s.sellerPhone AS `판매자 연락처`
FROM `Products` AS p
JOIN `Categories` AS c ON p.cateNo = c.cateNo
JOIN `Sellers` AS s ON p.sellerNo = s.sellerNo;

# 문제3
SELECT
	u.userId AS 아이디,
    u.userName AS 이름,
    u.userHp AS 휴대폰,
    u.userPoint AS `현재 포인트`,
    SUM(IF(p.point > 0, p.point, 0)) AS `적립 포인트 총합`
FROM `Users` AS u
LEFT JOIN `Points` AS p ON u.userId = p.userId
GROUP BY u.userId;

# 문제4
SELECT
	o.orderNo AS 주문번호,
    u.userId AS `주문자 아이디`,
    u.userName AS 고객명,
    o.orderTotalPrice AS 주문가격,
    o.orderDate AS 주문일자
FROM `Orders` AS o
JOIN `Users` AS u ON o.userId = u.userId
WHERE o.orderTotalPrice >= o.orderTotalPrice
ORDER BY o.orderTotalPrice DESC, 고객명;

# 문제5
SELECT
	o.orderNo AS 주문번호,
    u.userId AS `주문자 아이디`,
    u.userName AS 고객명,
    GROUP_CONCAT(p.prodName SEPARATOR ', ') AS 상품명,
    o.orderDate AS 주문일자
FROM `Orders` AS o
JOIN `Users` AS u ON o.userId = u.userId
JOIN `OrderItems` AS oi ON o.orderNo = oi.orderNo
JOIN `Products` AS p ON oi.prodNo = p.prodNo
GROUP BY o.orderNo;

# 문제6
SELECT 
	p.prodNo AS 상품번호,
    p.prodName AS 상품명,
    p.prodPrice AS 상품가격,
    p.prodDiscount AS 할인율,
    ROUND(p.prodPrice * (1 - p.prodDiscount / 100.0)) AS `할인된 가격`
FROM `Products` AS p;

# 문제7
SELECT 
	p.prodNo AS 상품번호,
	p.prodName AS 상품명,
    p.prodPrice AS 상품가격,
    p.prodStock AS 재고수량,
    s.sellerManager AS 판매자이름
FROM `Sellers` AS s
JOIN `Products` AS p ON s.sellerNo = p.sellerNo
WHERE s.sellerManager='고소영';

# 문제 8
SELECT 
	s.sellerNo AS 판매자번호,
    s.sellerBizName AS 판매자상호,
    s.sellerManager AS `판매자 이름`,
    s.sellerPhone AS `판매자 연락처`
FROM `Sellers` AS s
LEFT JOIN `Products` AS p ON p.sellerNo = s.sellerNo
WHERE p.prodNo IS NULL;

# 문제 9
SELECT
	oi.orderNo AS 주문번호,
    ROUND(SUM(oi.itemPrice * (1 - oi.itemDiscount / 100.0))) AS 최종총합
FROM `OrderItems` AS oi
GROUP BY oi.orderNo
HAVING 최종총합 >= 100000
ORDER BY 최종총합 DESC;

# 문제 10
SELECT
	u.userName AS 고객명,
    GROUP_CONCAT(DISTINCT p.prodName SEPARATOR ', ') AS 상품명
FROM `Users` AS u
JOIN `Orders` AS o ON u.userId = o.userId
JOIN `OrderItems` AS oi ON o.orderNo = oi.orderNo
JOIN `Products` AS p ON oi.prodNo = p.prodNo
WHERE u.userName='장보고'
GROUP BY u.userId;


 