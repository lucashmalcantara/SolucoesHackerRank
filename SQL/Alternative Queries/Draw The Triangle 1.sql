-- MS SQL Server

DECLARE @quantidade INT = 20;
DECLARE @i INT = 0;
DECLARE @j INT = 0;
DECLARE @triangulo NVARCHAR(MAX) = '';

WHILE @i < @quantidade
BEGIN
    SET @j = @i;
    
    WHILE @j < @quantidade
    BEGIN
        SET @triangulo = @triangulo + '* ';
        SET @j += 1;
    END
    
    SET @triangulo = @triangulo + CHAR(13) + CHAR(10);
    SET @i += 1;
END

PRINT @triangulo;
