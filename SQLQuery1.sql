USE productilyas;

BEGIN TRANSACTION;
    INSERT INTO Department (id, DepartmentName)
        VALUES ('c1', 'Скидки');
    SAVE TRANSACTION a;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c2', 'Исследование');
    SAVE TRANSACTION b;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c3', 'Менеджмент');
    
    ROLLBACK TRANSACTION b;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c4', 'Поддержка');

    ROLLBACK TRANSACTION a;

COMMIT TRANSACTION;