USE SalesDB;  -- 确保当前数据库是 SalesDB

CREATE TABLE 营业员 (
    工号 INT PRIMARY KEY,
    姓名 NVARCHAR(50),
    工作年月 DATE,
    联系电话 NVARCHAR(20)
);

CREATE TABLE 商品 (
    商品代码 INT PRIMARY KEY,
    商品名称 NVARCHAR(100),
    生产商 NVARCHAR(100),
    销售价格 DECIMAL(10,2),
    生产日期 DATE
);

CREATE TABLE 销售 (
    工号 INT FOREIGN KEY REFERENCES 营业员(工号),
    商品代码 INT FOREIGN KEY REFERENCES 商品(商品代码),
    销售日期 DATE,
    销售数量 INT
);