# 实验二  SQL高级查询

## 一、实验目的：
1. 创建三个关系表，营业员、销售、商品；
2. 执行高级查询，要求使用多表连接、统计函数、GROUP BY (HAVING)、嵌套查询。

## 二、实验环境：
1. **操作系统**：Windows 11  
2. **数据库软件**：SQL Server  
3. **编辑工具**：SQL Server Management Studio (SSMS)  

## 三、实验内容：

### **数据库与表的创建和数据插入** （文件名：`01-create-tables.sql`）
使用在实验一中创建的表和插入的数据。

### **JOIN 的使用** （文件名：`01-join.sql`）
1. 确保使用 SalesDB 数据库：
   ```sql
   USE SalesDB;
   GO
   ```
2. 将三个表以营业员工号以及商品代码为基准合并，并列出姓名、商品名称、销售数量以及销售日期等关键信息：
   ```sql
   SELECT Y.姓名, S.商品名称, X.销售数量, X.销售日期
   FROM 销售 X
   JOIN 营业员 Y ON Y.工号 = X.工号
   JOIN 商品 S ON S.商品代码 = X.商品代码;
   ```

### **统计函数** （文件名：`02-function.sql`）
1. 确保使用 SalesDB 数据库：
   ```sql
   USE SalesDB;
   GO
   ```
2. COUNT 计算总行数并命名为商品总数：
   ```sql
   SELECT COUNT(*) AS 商品种数 FROM 商品;
   ```
3. SUM 计算销售总数：
   ```sql
   SELECT SUM(销售数量) AS 销售总数 FROM 销售;
   ```
4. MAX 计算最大销售量：
   ```sql
   SELECT MAX(销售数量) AS 最大销售量 FROM 销售;
   ```
5. MIN 计算最小销售量：
   ```sql
   SELECT MIN(销售数量) AS 最小销售量 FROM 销售;
   ```

### **GROUP BY (HAVING) 的使用** （文件名：`03-group_by.sql`）
1. 确保使用 SalesDB 数据库：
   ```sql
   USE SalesDB;
   GO
   ```
2. 结合 SUM 函数使用 GROUP BY。合并三个表并计算每个营业员的总销售额，并用 GROUP BY 按照姓名分组，用 HAVING 筛选总销售额大于 20000 的营业员：
   ```sql
   SELECT Y.姓名 AS 营业员姓名, SUM(S.销售数量 * P.销售价格) AS 总销售额
   FROM 销售 S
   JOIN 营业员 Y ON S.工号 = Y.工号
   JOIN 商品 P ON S.商品代码 = P.商品代码
   GROUP BY Y.姓名
   HAVING SUM(S.销售数量 * P.销售价格) > 20000;
   ```

### **嵌套查询的使用** （文件名：`04-nested_query.sql`）
1. 确保使用 SalesDB 数据库：
   ```sql
   USE SalesDB;
   GO
   ```
2. 筛选出销售价格大于平均值的商品，并将计算平均值的查询嵌套进整体查询：
   ```sql
   SELECT 商品名称, 销售价格
   FROM 商品
   WHERE 销售价格 >= (SELECT AVG(销售价格) FROM 商品);
   ```

## 四、小结
本次实验主要练习了 SQL Server 的高级查询操作，包括多表连接、统计函数、GROUP BY (HAVING) 以及嵌套查询。通过实验，我熟悉了 SQL Server 高级查询的使用流程，并掌握了 JOIN、聚合函数、分组查询 以及 子查询 等 SQL 语句的应用。

实验过程中，我按照要求完成了表的创建，并成功插入了实验数据。在查询部分，我使用 JOIN 进行多表连接，实现了不同表之间数据的关联查询；使用 SUM()、AVG()、COUNT() 等统计函数对销售数据进行计算；结合 GROUP BY 进行了分组统计，并使用 HAVING 进行条件筛选；此外，还使用了嵌套查询来执行更复杂的数据筛选和计算，验证了这些语句的正确性。

通过本次实验，我进一步加深了对 SQL Server 高级查询的理解，提高了数据库操作能力，为后续的数据库学习和应用奠定了基础。