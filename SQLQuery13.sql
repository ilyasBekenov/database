USE productsdb
GO
CREATE TRIGGER INSTEAD   
ON Products
AFTER UPDATE
AS
INSERT INTO History (ProductId, Operation)
SELECT Id, 'Обновлен товар ' + ProductName + '   фирма ' + Manufacturer
FROM INSERTED