USE SalesDB

SELECT COUNT(*) AS 商品种数
FROM 商品

SELECT SUM(销售数量) AS 销售总数
FROM 销售

SELECT AVG(销售价格) AS 平均价格
FROM 商品

SELECT MAX(销售数量) AS 最大销售量
FROM 销售

SELECT MIN(销售数量) AS 最小销售量
FROM 销售
