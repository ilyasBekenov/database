USE productsdb
GO
CREATE TRIGGER BEFORE
ON Products
AFTER UPDATE
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, '�������� ����� ' + ProductName + '   ����� ' + Manufacturer
FROM INSERTED