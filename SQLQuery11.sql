USE productsdb
GO
CREATE TRIGGER AFTER
ON Products
AFTER UPDATE
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, 'Обновлен товар ' + ProductName + '   фирма ' + Manufacturer
FROM INSERTED
