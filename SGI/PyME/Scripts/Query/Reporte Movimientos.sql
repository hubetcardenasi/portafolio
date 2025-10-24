    USE SGI
    GO
    
    DECLARE @pid_producto uniqueidentifier
    
    SET @pid_producto = '72e895fc-afaf-f011-b43d-0a62228132c4'

    SELECT id_producto, nombre, stock_actual
      FROM dbo.Producto NOLOCK
     WHERE id_producto = @pid_producto

    
    DECLARE @fecha_inicial date, @fecha_final date

    SET @fecha_inicial = (CONVERT(date, GETDATE()))
    SET @fecha_final = (CONVERT(date, GETDATE()))

    EXEC dbo.reporte_movimientos @fecha_inicial, @fecha_final