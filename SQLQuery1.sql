USE productilyas;

BEGIN TRANSACTION;
    INSERT INTO Department (id, DepartmentName)
        VALUES ('c1', '������');
    SAVE TRANSACTION a;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c2', '������������');
    SAVE TRANSACTION b;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c3', '����������');
    
    ROLLBACK TRANSACTION b;

    INSERT INTO Department (id, DepartmentName)
        VALUES ('c4', '���������');

    ROLLBACK TRANSACTION a;

COMMIT TRANSACTION;