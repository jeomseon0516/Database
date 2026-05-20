
#실습 6-2
INSERT INTO Customer VALUES('c101', '김유신', '010-1234-1001', '경남 김해시', '2023-01-01');
INSERT INTO Customer VALUES('c102', '김춘추', '010-1234-1002', '경남 경주시', '2023-01-02');
INSERT INTO Customer VALUES('c103', '장보고', '010-1234-1003', '전남 완도군', '2023-01-03');
INSERT INTO Customer VALUES('c104', '강감찬', '010-1234-1004', '서울시 관악구', '2023-01-04');
INSERT INTO Customer VALUES('c105', '이순신', '010-1234-1005', '부산시 금정구', '2023-01-05');

INSERT INTO Product VALUES(1, '새우깡', 5000, 1500, '농심');
INSERT INTO Product VALUES(2, '초코파이', 2500, 2500, '농심');
INSERT INTO Product VALUES(3, '포카칩', 3600, 1700, '농심');
INSERT INTO Product VALUES(4, '양파링', 1250, 1800, '농심');
INSERT INTO Product (prodNo, prodName, stock, company) 
	VALUES(5, '죠리퐁', 2200, '농심');

INSERT INTO `Order` (orderId, orderProduct, orderCount, orderDate) VALUES('c102', 3, 2, '2023-01-01 13:15:10');
INSERT INTO `Order` (orderId, orderProduct, orderCount, orderDate) VALUES('c101', 4, 1, '2023-01-01 13:15:12');
INSERT INTO `Order` (orderId, orderProduct, orderCount, orderDate) VALUES('c102', 1, 1, '2023-01-01 13:15:14');
INSERT INTO `Order` (orderId, orderProduct, orderCount, orderDate) VALUES('c103', 5, 5, '2023-01-01 13:15:16');
INSERT INTO `Order` (orderId, orderProduct, orderCount, orderDate) VALUES('c105', 2, 1, '2023-01-01 13:15:18');

#실습 6-3
SELECT 
	o.orderNo,
    c.name,
    p.prodName,
    o.orderCount,
    o.orderDate
FROM `Order` AS o
JOIN `Customer` AS c ON o.orderId = c.custId
JOIN `Product` AS p ON o.orderNo = p.prodNo;

SELECT
	o.orderNo,
    p.prodNo,
    p.prodName,
    p.price,
    o.orderCount,
    o.orderDate
FROM `Order` AS o
JOIN `Customer` AS c ON o.orderId = c.custId
JOIN `Product` AS p ON o.orderNo = p.prodNo
WHERE c.name = '김유신';

SELECT SUM(p.price * orderCount) AS `총주문금액`
	FROM `Order` AS o
	JOIN `Product` AS p ON o.orderProduct = p.prodNo;

#실습 6-4 뱅크ERD 실습하기
USE BankERD;

#실습 6-5
INSERT INTO bank_customer VALUES('730423-1000001', '김유신', 1, '010-1234-1001', '경남 김해시');
INSERT INTO bank_customer VALUES('730423-1000002', '김춘추', 1, '010-1234-1002', '경남 경주시');
INSERT INTO bank_customer VALUES('750423-1000003', '장보고', 1, '010-1234-1003', '전남 완도군');
INSERT INTO bank_customer VALUES('102-12-51094', '(주)정보산업', 2, '051-500-1004', '부산시 부산진구');
INSERT INTO bank_customer VALUES('930423-1000005', '이순신', 1, '010-1234-1005', '서울 종로구');

INSERT INTO bank_account VALUES('101-11-1001', 'S1', '자유저축예금', '730423-1000001', 1550000, '2011-04-11');
INSERT INTO bank_account VALUES('101-11-1002', 'S1', '자유저축예금', '930423-1000005', 260000, '2011-05-12');
INSERT INTO bank_account VALUES('101-11-1003', 'S1', '자유저축예금', '750423-1000003', 75000, '2011-06-13');
INSERT INTO bank_account VALUES('101-12-1001', 'S2', '자유저축예금', '102-12-51094', 15000000, '2011-07-14');
INSERT INTO bank_account VALUES('101-12-1001', 'S3', '자유저축예금', '730423-1000002', 1200000, '2011-08-15');

INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-11-1001', 1, 50000, '2023-01-01 13:15:10');
INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-12-1001', 2, 1000000, '2023-01-02 13:15:12');
INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-11-1002', 3, 260000, '2023-01-03 13:15:14');
INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-11-1002', 2, 100000, '2023-01-04 13:15:16');
INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-11-1003', 3, 75000, '2023-01-05 13:15:18');
INSERT INTO bank_transaction (t_a_no, t_dist, t_amount, t_datetime) VALUES('101-11-1001', 1, 150000, '2023-01-05 13:15:28');

#실습 6-6
SELECT 
	c.c_no,
    c.c_name,
    c.c_phone,
    a.a_c_no,
    a.a_item_name,
    a.a_balance
FROM bank_customer c, bank_account a WHERE c.c_no = a.a_c_no;
SELECT 
	t.t_dist,
    t.t_amount,
    t.t_datetime
FROM bank_transaction AS t
JOIN bank_account AS a ON t.t_a_no = a.a_no
JOIN bank_customer AS c ON a.a_c_no = c.c_no
WHERE c.c_name = '이순신';
SELECT 
	c.c_no,
    c.c_name,
    a.a_no,
    a.a_balance,
    a.a_open_date
FROM bank_customer AS c
JOIN bank_account AS a ON c.c_no = a.a_c_no
WHERE c.c_dist = 1
ORDER BY a.a_balance DESC LIMIT 1;
