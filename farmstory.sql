SET FOREIGN_KEY_CHECKS = 0;

# 데이터베이스 생성
DROP DATABASE IF EXISTS farmstory; 	-- 기존 farmstory 데이터베이스 제거
CREATE DATABASE farmstory;			-- farmstory 데이터베이스 생성
USE farmstory;						-- farmstory 데이터베이스 선택

# 사용자 생성 및 권한부여
DROP USER IF EXISTS 'farmstory'@'%';
CREATE USER 'farmstory'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `farmstory`.* TO 'astarteam0516'@'%';
FLUSH PRIVILEGES;