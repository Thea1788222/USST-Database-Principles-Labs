USE SalesDB;  -- ȷ����ǰ���ݿ��� SalesDB

CREATE TABLE ӪҵԱ (
    ���� INT PRIMARY KEY,
    ���� NVARCHAR(50),
    �������� DATE,
    ��ϵ�绰 NVARCHAR(20)
);

CREATE TABLE ��Ʒ (
    ��Ʒ���� INT PRIMARY KEY,
    ��Ʒ���� NVARCHAR(100),
    ������ NVARCHAR(100),
    ���ۼ۸� DECIMAL(10,2),
    �������� DATE
);

CREATE TABLE ���� (
    ���� INT FOREIGN KEY REFERENCES ӪҵԱ(����),
    ��Ʒ���� INT FOREIGN KEY REFERENCES ��Ʒ(��Ʒ����),
    �������� DATE,
    �������� INT
);