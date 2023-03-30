USE productilyas;
CREATE TABLE TestTable (cola INT, colb CHAR(3));
-- Начало транзакции
DECLARE @MyCounter INT;
SET @MyCounter = 0;

DECLARE @a INT;
SET @a = 0;

DECLARE @c INT;
SET @c = 0;


BEGIN TRANSACTION
    UPDATE TestTable
	
        Set @MyCounter  = 10,
        @a = 16,
		@c = 0

		WHILE (@c <= 0)
		
BEGIN;
   SELECT @MyCounter + @a
   -- при верном условии прибовляем переменые @MyCounter и @a
END;
   
