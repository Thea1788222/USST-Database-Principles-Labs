USE SalesDB;
GO

CREATE TABLE ӪҵԱ(
	���� CHAR(6) PRIMARY KEY,
	���� CHAR(6),
	�������� CHAR(8),
	�������� CHAR(8),
	��ϵ�绰 CHAR(8));

CREATE TABLE ��Ʒ(
	��Ʒ���� CHAR(6) PRIMARY KEY,
	��Ʒ���� CHAR(20),
	������ CHAR(20),
	���ۼ۸� FLOAT(2),
	�������� DATE);

CREATE TABLE ����(
	���� CHAR(6),
	��Ʒ���� CHAR(6),
	�������� DATE,
	�������� INT,
	PRIMARY KEY(����,��Ʒ����),
	FOREIGN KEY(����)REFERENCES ӪҵԱ(����),
	FOREIGN KEY(��Ʒ����)REFERENCES ��Ʒ(��Ʒ����));