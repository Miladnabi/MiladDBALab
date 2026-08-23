USE CICD_Dev;
GO

PRINT 'Starting deployment...';
GO

IF COL_LENGTH('Sales.Customers', 'EmailAddress') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD EmailAddress VARCHAR(200) NULL;

    PRINT 'EmailAddress added.';
END
ELSE
BEGIN
    PRINT 'EmailAddress already exists.';
END;
GO

IF COL_LENGTH('Sales.Customers', 'PhoneNumber') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD PhoneNumber VARCHAR(25) NULL;

    PRINT 'PhoneNumber added.';
END
ELSE
BEGIN
    PRINT 'PhoneNumber already exists.';
END;
GO

IF COL_LENGTH('Sales.Customers', 'SSN') IS NULL
BEGIN
    ALTER TABLE Sales.Customers
    ADD SSN VARCHAR(25) NULL;

    PRINT 'SSN added.';
END
ELSE
BEGIN
    PRINT 'SSN already exists.';
END;
GO


    
PRINT 'Deployment complete.';
GO
