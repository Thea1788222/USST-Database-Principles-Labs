USE SalesDB

SELECT Y.姓名 AS 营业员姓名, SUM(S.销售数量 * P.销售价格) AS 总销售额
FROM 销售 S
JOIN 营业员 Y ON S.工号 = Y.工号
JOIN 商品 P ON S.商品代码 = P.商品代码
GROUP BY Y.姓名
HAVING SUM(S.销售数量 * P.销售价格) > 20000;
