USE SalesDB;
GO

SELECT DISTINCT 姓名 FROM 营业员;

SELECT*FROM 销售 WHERE 商品代码 IN ('SP002', 'SP004');

SELECT*FROM 营业员 WHERE 姓名 LIKE('%朱%')

SELECT*FROM 商品 ORDER BY 销售价格 ASC
