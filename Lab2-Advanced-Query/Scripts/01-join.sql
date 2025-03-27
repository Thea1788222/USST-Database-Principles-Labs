USE SalesDB

SELECT Y.姓名,S.商品名称,X.销售数量,X.销售日期
FROM 销售 X
JOIN 营业员 Y ON Y.工号=X.工号
JOIN 商品 S ON S.商品代码=X.商品代码


