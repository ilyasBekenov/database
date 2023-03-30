
USE productilyas;

-- Начало транзакции
BEGIN TRANSACTION
    UPDATE employee
        SET Id = 14568
        WHERE Id = 10102

    IF (@@error <> 0)
        -- Отменить транзакцию
        ROLLBACK
    
    UPDATE Works_on
        SET EmpId = 14568
        WHERE EmpId = 10102
    
    IF (@@error <> 0)
        ROLLBACK
-- Завершение транзакции
COMMIT