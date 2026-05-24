# 날짜 : 2026/05/22
# 이름 : 남현호
# 내용 : 8장 트랜잭션과 병행제어

# 실습 8-1
SELECT * FROM bank_account;

-- 트랜잭션 시작
START TRANSACTION;
UPDATE bank_account SET a_balance = a_balance - 10000 WHERE a_no='101-11-1001';
UPDATE bank_account SET a_balance = a_balance + 10000 WHERE a_no='101-11-1003';

-- 작업완료
COMMIT;

SELECT * FROM bank_account;
# 실습 8-2

-- 트랜잭션 시작
START TRANSACTION;
UPDATE bank_account SET a_balance = a_balance - 10000 WHERE a_no='101-11-1001';
UPDATE bank_account SET a_balance = a_balance + 10000 WHERE a_no='101-11-1003';

-- 작업취소
ROLLBACK;

SELECT * FROM bank_account;
# 실습 8-3
SELECT * FROM `bank_account` WHERE `a_no` = '101-11-1001';

START TRANSACTION;

UPDATE bank_account SET a_balance = a_balance - 10000 WHERE a_no='101-11-1001';

COMMIT;


