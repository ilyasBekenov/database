USE productsdb
GO
CREATE TRIGGER Products_INSERT
ON Products
AFTER INSERT
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, '�������� ����� ' + ProductName + '   ����� ' + Manufacturer
FROM INSERTED

