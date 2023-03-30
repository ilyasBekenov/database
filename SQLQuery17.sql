USE productsdb
GO
CREATE TRIGGER Products_DELETE
ON Products
AFTER DELETE
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, '������ ����� ' + ProductName + '   ����� ' + Manufacturer
FROM DELETED
