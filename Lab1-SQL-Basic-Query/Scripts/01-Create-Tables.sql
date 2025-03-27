USE SalesDB;
GO

CREATE TABLE 营业员(
	工号 CHAR(6) PRIMARY KEY,
	姓名 CHAR(6),
	工作年月 CHAR(8),
	出生年月 CHAR(8),
	联系电话 CHAR(8));

CREATE TABLE 商品(
	商品代码 CHAR(6) PRIMARY KEY,
	商品名称 CHAR(20),
	生产商 CHAR(20),
	销售价格 FLOAT(2),
	生产日期 DATE);

CREATE TABLE 销售(
	工号 CHAR(6),
	商品代码 CHAR(6),
	销售日期 DATE,
	销售数量 INT,
	PRIMARY KEY(工号,商品代码),
	FOREIGN KEY(工号)REFERENCES 营业员(工号),
	FOREIGN KEY(商品代码)REFERENCES 商品(商品代码));