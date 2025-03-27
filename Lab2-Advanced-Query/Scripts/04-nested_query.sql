USE SalesDB

SELECT 商品名称,销售价格
FROM 商品
WHERE 销售价格>=(SELECT AVG(销售价格) FROM 商品)

