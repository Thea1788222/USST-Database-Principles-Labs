USE SalesDB

SELECT ��Ʒ����,���ۼ۸�
FROM ��Ʒ
WHERE ���ۼ۸�>=(SELECT AVG(���ۼ۸�) FROM ��Ʒ)

