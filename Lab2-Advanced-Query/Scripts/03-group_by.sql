USE SalesDB

SELECT Y.���� AS ӪҵԱ����, SUM(S.�������� * P.���ۼ۸�) AS �����۶�
FROM ���� S
JOIN ӪҵԱ Y ON S.���� = Y.����
JOIN ��Ʒ P ON S.��Ʒ���� = P.��Ʒ����
GROUP BY Y.����
HAVING SUM(S.�������� * P.���ۼ۸�) > 20000;
